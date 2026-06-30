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
    private val TAG = "Hermes-AgentManager"
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

        if (AssistantApplication.hasInternetConnection.value) {
            // Proxy üzerinden Whisper
            sttClient.transcribe(audioFile) { text ->
                if (text != null) {
                    processTextInput(text)
                } else {
                    Log.w(TAG, "Proxy STT başarısız")
                    AssistantApplication.addLog("STT Hatası: Proxy başarısız")
                    onFeedback("Bağlantı hatası")
                    onSystemResponse("Ses anlaşılamadı, tekrar dener misiniz?", true)
                }
            }
        } else {
            // İnternet yok → lokal komut modu
            Log.w(TAG, "İnternet yok — lokal mod aktif")
            onFeedback("İnternet yok")
            onSystemResponse("İnternet bağlantısı yok. Sadece araç komutları çalışıyor.", true)
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
        addTool("fix_system_time", "Sistem saatini senkronize eder.", noParams())
        addTool("connect_vpn",    "Tailscale VPN bağlar.", noParams())
        addTool("disconnect_vpn", "Tailscale VPN keser.", noParams())
    }

    // ─────────────────────────────────────────────────
    // Ana SSE Chat Fonksiyonu
    // ─────────────────────────────────────────────────
    private fun sendChatSse(prompt: String) {
        currentEventSource?.cancel()
        Log.d("Omoda-Workflow", ">>> [7] SSE CHAT başlıyor...")

        val mode = AssistantApplication.currentMode.value

        val systemPrompt = when (mode) {
            "CHAT" -> "Sen eğlenceli ve yardımsever bir yol arkadaşısın. Kullanıcıyla doğal sohbet et. " +
                      "Araç verilerini sohbete doğal biçimde katabilirsin. Detaylı, akıcı yanıtlar ver. " +
                      "Araç komutları için ilgili fonksiyonu çağır ve kısa onay ver. " +
                      "Mevcut Araç Verisi: $currentVehicleContextText"
            else   -> "Sen Chery Omoda 5 için tasarlanmış HMI sesli asistanısın. " +
                      "'araba', 'arabam', 'arac', 'araç', 'omoda' veya 'omoda5' olarak çağrılabilirsin. " +
                      "Yanıtlarını çok kısa ve net tut. Araç komutu için fonksiyon çağır ve kısa onay ver. " +
                      "Mevcut Araç Verisi: $currentVehicleContextText"
        }

        val messages = JSONArray().apply {
            put(JSONObject().apply { put("role", "system"); put("content", systemPrompt) })
            put(JSONObject().apply { put("role", "user"); put("content", prompt) })
        }

        val body = JSONObject().apply {
            put("model", AssistantApplication.HERMES_CHAT_MODEL)
            put("messages", messages)
            put("stream", true)
            put("temperature", if (mode == "CHAT") 0.8 else 0.5)
            put("tools", buildToolsArray())
        }

        val request = Request.Builder()
            .url("${AssistantApplication.HERMES_BASE_URL}/chat/completions")
            .addHeader("Authorization", "Bearer ${AssistantApplication.NINEROUTER_API_KEY}")
            .addHeader("Accept", "text/event-stream")
            .post(body.toString().toRequestBody("application/json".toMediaType()))
            .build()

        // SSE durum takibi
        val sentenceBuffer = StringBuilder()
        val toolCallAccumulator = mutableMapOf<Int, ToolCallAccum>()

        currentEventSource = EventSources.createFactory(com.omoda.lanc.network.NetworkModule.sseClient)
            .newEventSource(request, object : EventSourceListener() {

                override fun onEvent(source: EventSource, id: String?, type: String?, data: String) {
                    if (data == "[DONE]") {
                        // Tampondaki kalan metni gönder
                        val remaining = sentenceBuffer.toString().trim()
                        if (remaining.isNotBlank()) {
                            Log.d("Omoda-Workflow", ">>> [8-SSE] Son parça TTS: $remaining")
                            onSystemResponse(remaining, true)
                            sentenceBuffer.clear()
                        } else {
                            onSystemResponse("", true)
                        }

                        // Tool calls birleştir ve CommandFirewall'a gönder
                        toolCallAccumulator.values.forEach { accum ->
                            if (accum.name.isNotBlank()) {
                                Log.d("Omoda-Workflow", ">>> [8-SSE] TOOL CALL: ${accum.name}(${accum.arguments})")
                                AssistantApplication.addLog("Aksiyon: ${accum.name}")
                                commandFirewall.validateAndExecute(accum.name, accum.arguments.ifBlank { "{}" })
                            }
                        }
                        return
                    }

                    try {
                        val json = JSONObject(data)
                        val choices = json.optJSONArray("choices") ?: return
                        if (choices.length() == 0) return
                        val choice = choices.getJSONObject(0)
                        val delta = choice.optJSONObject("delta") ?: return
                        val finishReason = choice.optString("finish_reason")

                        // ── Content (metin) ──────────────────────────
                        val contentChunk = delta.optString("content").takeIf { it.isNotEmpty() && it != "null" }
                        if (contentChunk != null) {
                            sentenceBuffer.append(contentChunk)
                            val buf = sentenceBuffer.toString()
                            val sentenceEnd = buf.lastIndexOfAny(charArrayOf('.', '?', '!', '\n'))
                            if (sentenceEnd >= 0 && buf.length >= 15) {
                                val toSpeak = buf.substring(0, sentenceEnd + 1).trim()
                                if (toSpeak.isNotBlank()) {
                                    Log.d("Omoda-Workflow", ">>> [8-SSE] TTS parça: $toSpeak")
                                    onSystemResponse(toSpeak, false)
                                }
                                sentenceBuffer.clear()
                                if (sentenceEnd + 1 < buf.length) {
                                    sentenceBuffer.append(buf.substring(sentenceEnd + 1))
                                }
                            } else if (buf.length >= 40) {
                                onSystemResponse(buf.trim(), false)
                                sentenceBuffer.clear()
                            }
                        }

                        // ── Tool Call Chunks ─────────────────────────
                        val toolChunks = delta.optJSONArray("tool_calls")
                        if (toolChunks != null) {
                            for (i in 0 until toolChunks.length()) {
                                val tc = toolChunks.getJSONObject(i)
                                val idx = tc.optInt("index", 0)
                                val accum = toolCallAccumulator.getOrPut(idx) { ToolCallAccum() }

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

                override fun onFailure(source: EventSource, t: Throwable?, response: okhttp3.Response?) {
                    val code = response?.code ?: -1
                    Log.e("Omoda-Workflow", ">>> [!] SSE HATASI: ${t?.message} (HTTP $code)")
                    AssistantApplication.addLog("SSE Hatası: ${t?.message}")
                    onFeedback("Bağlantı hatası")
                    onSystemResponse("Sunucuya bağlanılamadı.", true)
                }

                override fun onClosed(source: EventSource) {
                    Log.d(TAG, "SSE bağlantısı kapatıldı")
                }
            })
    }

    private data class ToolCallAccum(
        var id: String = "",
        var name: String = "",
        var arguments: String = ""
    )
}
