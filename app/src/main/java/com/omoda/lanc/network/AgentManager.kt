package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.CommandFirewall
import com.omoda.lanc.core.CommandResult
import com.omoda.lanc.core.CommandRouter
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.sse.EventSource
import okhttp3.sse.EventSourceListener
import okhttp3.sse.EventSources
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

/**
 * AgentManager v3.0 — SSE Streaming + 2 Mod Sistemi
 *
 * Akış:
 *   Ses/Metin → STT → CommandRouter (yerel) → CommandFirewall → LLM SSE
 *
 * SSE chunk stratejisi:
 *   - reasoning_content → atla (TTS'e gönderme)
 *   - content → cümle tamponuna ekle → cümle sonu veya 40 char → TTS'e gönder
 *   - tool_calls delta → birleştir → finish_reason="tool_calls" → CommandFirewall
 *
 * Mod sistemi:
 *   ASISTANT = kısa, araç bağlamlı, wake word ile tetiklenir
 *   CHAT     = sohbet odaklı, daha uzun yanıtlar, sürekli dinleme
 */
class AgentManager(
    private val commandFirewall: CommandFirewall,
    private val commandRouter: CommandRouter,
    private val hermesClient: HermesClient,
    private val sttClient: HermesClient,
    private val onFeedback: (String) -> Unit,
    private val onSystemResponse: (String, Boolean) -> Unit // text, isFinal
) {
    private val TAG = "AgentManager"
    
    // Rate limiter: Hızlı ardışık VHAL komutlarını sınırlamak için
    private val lastCommandTimes = java.util.concurrent.ConcurrentHashMap<String, Long>()
    private var currentEventSource: EventSource? = null
    private var currentVehicleContextText: String = "Veri bekleniyor..."

    // ─────────────────────────────────────────────────
    // Araç Bağlamı
    // ─────────────────────────────────────────────────
    fun updateVehicleContext(state: com.omoda.lanc.model.VehicleState) {
        try {
            val internetStatus = if (AssistantApplication.hasInternetConnection.value) "Aktif" else "Yok"
            val mediaState = com.omoda.lanc.media.MediaBridge.mediaState.value
            currentVehicleContextText = buildString {
                append("Hız: ${state.speed.toInt()} km/h")
                append(", Vites: ${state.gearString}")
                append(", Motor: ${if (state.isEngineRunning) "Açık" else "Kapalı"}")
                append(", RPM: ${state.engineRpm.toInt()}")
                append(", Sürüş Modu: ${state.drivingModeString}")
                append(", Klima: ${if (state.isHvacOn) "Açık (Sürücü:${state.acTemperatureDriver}°C / Yolcu:${state.acTemperaturePassenger}°C)" else "Kapalı"}")
                append(", Dış Sıcaklık: ${state.outsideTemperature}°C")
                append(", Park Freni: ${if (state.parkingBrake) "Çekili" else "Serbest"}")
                append(", Far: ${if (state.headlights > 0) "Açık" else "Kapalı"}")
                append(", Kapılar: ${state.doorOpenString}")
                append(", Sinyal: ${state.turnSignalString}")
                append(", Yakıt: ${String.format("%.1f", state.fuelLevel)} L (Menzil: ${state.rangeKm.toInt()} km)")
                append(", Toplam KM: ${state.odometer.toInt()} km")
                append(", GPS: Lat ${state.latitude}, Lng ${state.longitude}")
                append(", İnternet: $internetStatus")
                append(", Medya: ${mediaState.title} - ${mediaState.artist}")
                append(", Cihaz: ${android.os.Build.MODEL}")
            }

        } catch (e: Exception) {
            Log.e(TAG, "Context güncelleme hatası: ${e.message}")
        }
    }

    // ─────────────────────────────────────────────────
    // Halüsinasyon Filtresi
    // ─────────────────────────────────────────────────
    private fun isHallucination(text: String): Boolean {
        val cleaned = text.trim().lowercase()
        return cleaned.isBlank() ||
               cleaned.length < 2 ||
               cleaned.contains("altyazı") ||
               cleaned.contains("abone") ||
               cleaned.contains("izlediğiniz") ||
               cleaned.contains("teşekkürler") ||
               cleaned.contains("thank you") ||
               cleaned.contains("thanks for") ||
               cleaned.contains("viewing") ||
               cleaned.contains("türkiye'nin") ||
               cleaned.contains("izlediğiniz için")
    }

    // ─────────────────────────────────────────────────
    // Metin Girişi İşleme
    // ─────────────────────────────────────────────────
    fun processTextInput(text: String) {
        if (isHallucination(text)) {
            Log.w(TAG, "Halüsinasyon filtrelendi: '$text'")
            onFeedback("Anlaşılamadı")
            onSystemResponse("", true)
            return
        }

        Log.d("Omoda-Workflow", ">>> [6] STT BAŞARILI: '$text'")
        onFeedback("Anladım: $text")

        // Mod geçiş komutları
        val lower = text.lowercase()
        when {
            lower.contains("sohbet moduna geç") || lower.contains("sohbet modu") -> {
                AssistantApplication.currentMode.value = "CHAT"
                AssistantApplication.saveCurrentConfig()
                onSystemResponse("Sohbet moduna geçtim, dinliyorum.", true)
                return
            }
            lower.contains("asistan moduna dön") || lower.contains("asistan modu") -> {
                AssistantApplication.currentMode.value = "ASISTANT"
                AssistantApplication.saveCurrentConfig()
                onSystemResponse("Asistan moduna geçtim.", true)
                return
            }
        }

        // Yerel komut eşleştirme (CommandRouter)
        when (val result = commandRouter.analyzeAndExecute(text)) {
            is CommandResult.Success -> { onSystemResponse(result.message, true); return }
            is CommandResult.Blocked -> { onSystemResponse(result.reason, true); return }
            is CommandResult.NotMatched -> { /* LLM'e gönder */ }
        }

        sendChatSse(text)
    }

    // ─────────────────────────────────────────────────
    // Ses Girişi İşleme (Kaskad: Proxy → Android STT)
    // ─────────────────────────────────────────────────
    fun processVoiceInput(audioFile: File) {
        onFeedback("Ses çözümleniyor...")
        Log.d("Omoda-Workflow", ">>> [5] STT başladı (${audioFile.length()} bytes)")

        val isConnected = AssistantApplication.hermesConnectionStatus.value == "CONNECTED"
        
        if (AssistantApplication.hasInternetConnection.value && isConnected) {
            // Proxy üzerinden Whisper
            sttClient.transcribe(audioFile) { text ->
                if (text != null) {
                    processTextInput(text)
                } else {
                    Log.w(TAG, "Proxy STT başarısız")
                    AssistantApplication.addLog("STT Hatası: Proxy başarısız")
                    onFeedback("Bağlantı hatası")
                    onSystemResponse("Sunucuya bağlanılamadı, lütfen internetinizi kontrol edin.", true)
                }
            }
        } else {
            // İnternet yok veya Gateway kapalı → lokal komut modu
            val errorMsg = if (!isConnected) "Sunucuya erişilemiyor" else "İnternet yok"
            Log.w(TAG, "$errorMsg — lokal mod aktif")
            onFeedback(errorMsg)
            onSystemResponse("Şu an sunucuya erişemiyorum. Sadece araç komutlarını uygulayabilirim.", true)
        }
    }

    // ─────────────────────────────────────────────────
    // Araç Tool Tanımları
    // ─────────────────────────────────────────────────
    private fun buildToolsArray(): JSONArray = JSONArray().apply {
        fun addTool(name: String, description: String, params: JSONObject) {
            put(JSONObject().apply {
                put("type", "function")
                put("function", JSONObject().apply {
                    put("name", name)
                    put("description", description)
                    put("parameters", params)
                })
            })
        }
        fun noParams() = JSONObject().apply { put("type", "object"); put("properties", JSONObject()) }
        fun intParam(paramName: String, desc: String) = JSONObject().apply {
            put("type", "object")
            put("properties", JSONObject().apply {
                put(paramName, JSONObject().apply { put("type", "integer"); put("description", desc) })
            })
            put("required", JSONArray().apply { put(paramName) })
        }
        fun numParam(paramName: String, desc: String) = JSONObject().apply {
            put("type", "object")
            put("properties", JSONObject().apply {
                put(paramName, JSONObject().apply { put("type", "number"); put("description", desc) })
            })
            put("required", JSONArray().apply { put(paramName) })
        }
        fun strParam(paramName: String, desc: String, enumVals: List<String>? = null) = JSONObject().apply {
            put("type", "object")
            put("properties", JSONObject().apply {
                put(paramName, JSONObject().apply {
                    put("type", "string"); put("description", desc)
                    enumVals?.let { put("enum", JSONArray(it)) }
                })
            })
            put("required", JSONArray().apply { put(paramName) })
        }

        addTool("open_app", "Bir uygulamayı başlatır.",
            strParam("package_name", "Açılacak uygulamanın paket adı (örn: com.google.android.apps.maps)"))
        addTool("set_volume", "Sistem ses seviyesini ayarlar (0-15).",
            intParam("volume_level", "Ses seviyesi (0-15 arası)"))
        addTool("media_control", "Medyayı kontrol eder.",
            strParam("action", "Eylem", listOf("play_pause", "next", "prev")))
        addTool("hvac_on",  "Klimayı açar.", noParams())
        addTool("hvac_off", "Klimayı kapatır.", noParams())
        addTool("set_hvac_temp", "Klima sıcaklığını ayarlar.",
            numParam("temperature", "Hedef sıcaklık (örn: 22.5)"))
        addTool("set_hvac_ac", "Klima AC kompresör gücünü açar veya kapatır.",
            intParam("value", "1 = AC Açık, 0 = AC Kapalı"))
        addTool("set_hvac_fan", "Klima fan hızını ayarlar (1-7).",
            intParam("value", "Fan hızı seviyesi (1 ile 7 arası)"))
        addTool("set_window_position", "Camları veya sunroof'u açar/kapatır.",
            JSONObject().apply {
                put("type", "object")
                put("properties", JSONObject().apply {
                    put("target", JSONObject().apply { 
                        put("type", "string")
                        put("description", "Hedef")
                        put("enum", JSONArray(listOf("window", "sunroof")))
                    })
                    put("position", JSONObject().apply { 
                        put("type", "integer")
                        put("description", "Açıklık oranı (0 = Tam Kapalı, 100 = Tam Açık)")
                    })
                })
                put("required", JSONArray(listOf("target", "position")))
            })
        addTool("install_app", "Cihaza belirtilen APK yolundan uygulama yükler.",
            strParam("apk_path", "APK dosyasının cihazdaki tam yolu (örn: /data/local/tmp/app.apk)"))
        addTool("uninstall_app", "Cihazdan belirtilen paket adına sahip uygulamayı kaldırır.",
            strParam("package_name", "Kaldırılacak uygulamanın paket adı (örn: com.example.app)"))
        addTool("fix_system_time", "Sistem saatini senkronize eder.", noParams())
        addTool("disconnect_vpn", "Tailscale VPN keser.", noParams())
        addTool("get_vehicle_status", "Aracın tüm sensör verilerini ve anlık durumunu detaylıca okur.", noParams())
        addTool("set_radio_frequency", "Radyo frekansını ayarlar (Örn: 94.5).",
            numParam("frequency", "Frekans (MHz)"))
        addTool("search_and_play", "Müzik veya video arar ve oynatır.",
            strParam("query", "Aranacak şarkı, sanatçı veya video adı"))
    }

    // ─────────────────────────────────────────────────
    // Ana SSE Chat Fonksiyonu — Session-based Hermes API
    // ─────────────────────────────────────────────────
    private fun sendChatSse(prompt: String) {
        currentEventSource?.cancel()
        Log.d("Omoda-Workflow", ">>> [7] SSE CHAT başlıyor...")

        // Ensure session exists
        if (hermesClient.sessionId == null) {
            Log.d(TAG, "Session bulunamadı, oluşturuluyor...")
            hermesClient.createSessionSync()
        }
        val mode = AssistantApplication.currentMode.value

        val systemPrompt = when (mode) {
            "CHAT" -> "Sen eğlenceli ve yardımsever bir yol arkadaşısın. Kullanıcıyla doğal sohbet et. " +
                      "Araç verilerini sohbete doğal biçimde katabilirsin. Detaylı, akıcı yanıtlar ver. " +
                      "Araç komutları için ilgili fonksiyonu çağır ve kısa onay ver. " +
                      "Mevcut Araç Verisi: $currentVehicleContextText"
            else   -> "Chery Omoda 5 asistanısın. Yanıtlarını tek cümleyle, çok kısa ve net tut. " +
                      "Araç komutu için fonksiyon çağır ve sadece kısa bir onay ver. " +
                      "Mevcut Araç Verisi: $currentVehicleContextText"
        }

        val serverUrl = AssistantApplication.HERMES_BASE_URL
            .removeSuffix("/v1").removeSuffix("/")
        
        // Session varsa Hermes session API, yoksa OpenAI-compatible chat completions kullan
        val sessionAvailable = hermesClient.sessionId != null
        val openaiUrl = "$serverUrl/v1/chat/completions"
        val sessionUrl = "$serverUrl/api/sessions/${hermesClient.sessionId ?: ""}/chat/stream"
        val targetUrl = if (sessionAvailable) sessionUrl else openaiUrl
        val authKey = if (sessionAvailable) AssistantApplication.HERMES_API_KEY else AssistantApplication.NINEROUTER_API_KEY
        
        val body = if (sessionAvailable) {
            JSONObject().apply {
                put("message", prompt)
                put("system_prompt", systemPrompt)
                put("tools", buildToolsArray())
            }
        } else {
            JSONObject().apply {
                put("model", AssistantApplication.HERMES_CHAT_MODEL)
                put("messages", JSONArray().apply {
                    put(JSONObject().apply { put("role", "system"); put("content", systemPrompt) })
                    put(JSONObject().apply { put("role", "user"); put("content", prompt) })
                })
                put("stream", true)
                put("tools", buildToolsArray())
            }
        }

        val request = Request.Builder()
            .url(targetUrl)
            .addHeader("Authorization", "Bearer $authKey")
            .addHeader("Accept", "text/event-stream")
            .post(body.toString().toRequestBody("application/json".toMediaType()))
            .build()

        val sentenceBuffer = StringBuilder()
        val toolCallAccumulator = mutableMapOf<Int, ToolCallAccum>()

        currentEventSource = EventSources.createFactory(NetworkModule.sseClient)
            .newEventSource(request, object : EventSourceListener() {

                override fun onEvent(source: EventSource, id: String?, type: String?, data: String) {
                    if (data == "[DONE]") {
                        flushAndExecute(sentenceBuffer, toolCallAccumulator)
                        return
                    }

                    when (type) {
                        "assistant.delta" -> {
                            try {
                                val json = JSONObject(data)
                                val content = json.optString("content")
                                if (content.isNotEmpty() && content != "null") {
                                    sentenceBuffer.append(content)
                                    processSentenceBuffer(sentenceBuffer)
                                }
                            } catch (e: Exception) {
                                Log.e(TAG, "assistant.delta parse: ${e.message}")
                            }
                        }
                        "tool.started" -> {
                            try {
                                val json = JSONObject(data)
                                val toolName = json.optString("tool")
                                val args = json.optString("arguments", "{}")
                                if (toolName.isNotBlank()) {
                                    val idx = toolCallAccumulator.size
                                    toolCallAccumulator[idx] = ToolCallAccum(
                                        id = "tool_$idx",
                                        name = toolName,
                                        arguments = args
                                    )
                                    Log.d("Omoda-Workflow", ">>> [8-SSE] TOOL STARTED: $toolName")
                                }
                            } catch (e: Exception) {
                                Log.e(TAG, "tool.started parse: ${e.message}")
                            }
                        }
                        "tool.completed" -> {
                            Log.d("Omoda-Workflow", ">>> [8-SSE] TOOL COMPLETED")
                        }
                        "run.completed" -> {
                            try {
                                val json = JSONObject(data)
                                val fullText = json.optString("content")
                                if (fullText.isNotEmpty() && fullText != "null") {
                                    sentenceBuffer.append(fullText)
                                }
                            } catch (e: Exception) {
                                Log.e(TAG, "run.completed parse: ${e.message}")
                            }
                            flushAndExecute(sentenceBuffer, toolCallAccumulator)
                        }
                        null -> {
                            // Fallback: OpenAI format (no event: field)
                            handleOpenAIChunk(data, sentenceBuffer, toolCallAccumulator)
                        }
                        else -> {
                            Log.w(TAG, "Bilinmeyen SSE event: type=$type, data=$data")
                        }
                    }
                }

                override fun onFailure(source: EventSource, t: Throwable?, response: okhttp3.Response?) {
                    val code = response?.code ?: -1
                    val errorMsg = t?.message ?: "Unknown Error"
                    Log.e("Omoda-Workflow", ">>> [!] SSE HATASI: $errorMsg (HTTP $code)")
                    AssistantApplication.addLog("SSE Hatası: $errorMsg")

                    // Session expired: recreate on next attempt
                    if (code == 404 || code == 401) {
                        hermesClient.sessionId = null
                    }

                    onFeedback("Bağlantı hatası")
                    onSystemResponse("Sunucuya bağlanılamadı. ($errorMsg)", true)
                }

                override fun onClosed(source: EventSource) {
                    Log.d(TAG, "SSE bağlantısı kapatıldı")
                    if (sentenceBuffer.isNotEmpty() || toolCallAccumulator.isNotEmpty()) {
                        flushAndExecute(sentenceBuffer, toolCallAccumulator)
                    }
                }
            })
    }

    // ── Cümle tamponlama ve TTS ────────────────────────
    private fun processSentenceBuffer(buf: StringBuilder) {
        val text = buf.toString()
        val sentenceEnd = text.lastIndexOfAny(charArrayOf('.', '?', '!', '\n'))
        if (sentenceEnd >= 0 && text.length >= 15) {
            val toSpeak = text.substring(0, sentenceEnd + 1).trim()
            if (toSpeak.isNotBlank()) {
                Log.d("Omoda-Workflow", ">>> [8-SSE] TTS parça: $toSpeak")
                onSystemResponse(toSpeak, false)
            }
            buf.clear()
            if (sentenceEnd + 1 < text.length) {
                buf.append(text.substring(sentenceEnd + 1))
            }
        } else if (text.length >= 40) {
            onSystemResponse(text.trim(), false)
            buf.clear()
        }
    }

    // ── Kalan metni flush et ve tool call'ları çalıştır ───
    private fun flushAndExecute(buf: StringBuilder, acc: MutableMap<Int, ToolCallAccum>) {
        val remaining = buf.toString().trim()
        if (remaining.isNotBlank()) {
            Log.d("Omoda-Workflow", ">>> [8-SSE] Son parça TTS: $remaining")
            onSystemResponse(remaining, true)
        } else {
            onSystemResponse("", true)
        }
        buf.clear()

        acc.values.forEach { accum ->
            if (accum.name.isNotBlank()) {
                Log.d("Omoda-Workflow", ">>> [8-SSE] TOOL CALL: ${accum.name}(${accum.arguments})")

                val now = System.currentTimeMillis()
                val lastTime = lastCommandTimes[accum.name] ?: 0L
                if (accum.name.startsWith("get_") && (now - lastTime) < 2000) {
                    Log.w(TAG, "Rate-Limit Engeli: ${accum.name}")
                    return@forEach
                }
                lastCommandTimes[accum.name] = now

                AssistantApplication.addLog("Aksiyon: ${accum.name}")
                commandFirewall.validateAndExecute(accum.name, accum.arguments.ifBlank { "{}" })
            }
        }
        acc.clear()
    }

    // ── OpenAI format fallback (event type == null) ────
    private fun handleOpenAIChunk(data: String, buf: StringBuilder, acc: MutableMap<Int, ToolCallAccum>) {
        try {
            val json = JSONObject(data)
            val choices = json.optJSONArray("choices") ?: return
            if (choices.length() == 0) return
            val choice = choices.getJSONObject(0)
            val delta = choice.optJSONObject("delta") ?: return
            val finishReason = choice.optString("finish_reason")

            val contentChunk = delta.optString("content").takeIf { it.isNotEmpty() && it != "null" }
            if (contentChunk != null) {
                buf.append(contentChunk)
                processSentenceBuffer(buf)
            }

            val toolChunks = delta.optJSONArray("tool_calls")
            if (toolChunks != null) {
                for (i in 0 until toolChunks.length()) {
                    val tc = toolChunks.getJSONObject(i)
                    val idx = tc.optInt("index", 0)
                    val accum = acc.getOrPut(idx) { ToolCallAccum() }
                    val fnChunk = tc.optJSONObject("function")
                    if (fnChunk != null) {
                        val namePart = fnChunk.optString("name")
                        val argsPart = fnChunk.optString("arguments")
                        if (namePart.isNotBlank()) accum.name += namePart
                        if (argsPart.isNotBlank() && argsPart != "null") accum.arguments += argsPart
                    }
                    val tcId = tc.optString("id")
                    if (tcId.isNotBlank() && tcId != "null") accum.id = tcId
                }
            }

            if (finishReason == "stop" || finishReason == "tool_calls") {
                Log.d(TAG, "SSE finish: $finishReason")
            }
        } catch (e: Exception) {
            Log.e(TAG, "SSE chunk parse hatası: ${e.message} | data=$data")
        }
    }

    private data class ToolCallAccum(
        var id: String = "",
        var name: String = "",
        var arguments: String = ""
    )
}
