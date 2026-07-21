package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.dsl.*
import kotlinx.coroutines.*
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.sse.EventSource
import okhttp3.sse.EventSourceListener
import okhttp3.sse.EventSources
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

class AgentManager(
    private val firewallV2: FirewallV2,
    private val hybridRouter: HybridRouter,
    private val sttClient: SttClient,
    private val hermesClient: HermesClient,
    private val toolRegistry: List<ToolDefinition>,
    private val onFeedback: (String) -> Unit,
    private val onSystemResponse: (String, Boolean) -> Unit,
    private val onCancelPrevious: (() -> Unit)? = null  // Yeni istek gelince önceki TTS'i durdur
) {
    private val TAG = "AgentManager"
    private var currentEventSource: EventSource? = null
    private var thinkingTimeoutJob: kotlinx.coroutines.Job? = null
    private var vehicleContext: String = ""

    private val networkScope = CoroutineScope(Dispatchers.Main + SupervisorJob())

    fun updateVehicleContext(state: com.omoda.lanc.model.VehicleState) {
        val mqttStatus = if (GlobalState.isMqttConnected.value) "AKTİF" else "KOPUK"
        val media = com.omoda.lanc.media.MediaBridge.mediaState.value
        val mediaInfo = if (media.title.isNotEmpty()) "Çalan: ${media.title} - ${media.artist} (${if(media.isPlaying) "Oynatılıyor" else "Duraklatıldı"})" else "Medya Çalmıyor"
        vehicleContext = "Hız: ${state.speed}km/h, Vites: ${state.gearString}, Klima: ${if(state.isHvacOn) "Açık" else "Kapalı"}, Temp: ${state.acTemperatureDriver}C, MQTT: $mqttStatus, $mediaInfo"
    }

    fun processVoiceInput(audioFile: File) {
        onFeedback("Ses çözümleniyor...")
        
        val sttTimeoutJob = networkScope.launch {
            delay(10000) // STT için 10 saniye limit
            Log.w(TAG, "STT zaman aşımı!")
            onSystemResponse("Hata: Ses çözümleme hizmetinden yanıt alınamadı.", true)
        }

        sttClient.transcribe(audioFile) { text, error ->
            sttTimeoutJob.cancel()
            if (text != null) processTextInput(text)
            else onSystemResponse(error ?: "Ses anlaşılamadı.", true)
        }
    }

    fun processTextInput(text: String) {
        val lowerText = text.lowercase().trim()
        
        // HALLUCINATION FILTER (Whisper sessizlikte sacmalayabiliyor)
        val hallucinationPatterns = listOf(
            "abone", "viewing", "m.k", "m k", "m. k",
            "kalka", "kalkış", "subtitles", "subscribe", "thanks for watching"
        )
        if (hallucinationPatterns.any { lowerText.contains(it) }) {
            Log.w(TAG, "Engellenen Halüsinasyon: $text")
            return
        }

        onFeedback("Anladım: $text")
        
        // 1. KRİTİK YEREL KOMUTLAR (Hybrid Router DSL üzerinden)
        val hybridResult = hybridRouter.analyzeAndExecute(text)
        if (hybridResult != null) {
            onSystemResponse(hybridResult, true)
            return
        }

        // 2. KARAR MEKANİZMASI SEÇİMİ
        if (GlobalState.useHermesDecision.value) {
            // Sunucu Karar Motoru (LLM) - Doğrudan buluta gönder
            Log.d(TAG, "Karar Motoru: SUNUCU (Hermes)")
            sendChatSse(text)
        } else {
            // Sadece sohbet için buluta gönder (Hybrid Router yerel eşleşme bulamazsa buraya düşer)
            sendChatSse(text)
        }
    }

    private fun buildSystemPrompt(mode: String): String {
        val speed = vehicleContext // already formatted string
        return when (mode) {
            "CHAT" -> """
Sen Omoda 5'in eğlence ve sohbet asistanısın. Adın Chery.

GÖREV: Sürücüyle samimi, eğlenceli ve akıcı bir sohbet yürüt.

ARAÇ DURUMU: $speed

KONUŞMA KURALLARI:
- Türkçe konuş, samimi ve doğal bir dil kullan.
- CEVAPLARINI ÇOK KISA TUT. En fazla 1 veya 2 cümle kullan, detaylara boğma.
- Yabancı/İngilizce marka, terim veya isimleri MUTLAKA TÜRKÇE OKUNUŞUYLA yaz. Örnek: "Bluetooth" yerine "bulutut", "YouTube" yerine "yutub", "Apple" yerine "epıl". Bu TTS (seslendirme) motorunun doğru okuması için çok kritiktir. Yabancı dilde kelime bırakma.
- Emoji veya özel karakter KULLANMA (sesli okunacak).
- Noktalama işaretleri kullan (., ?, !) - bunlar ses senkronizasyonu için kritik.
- Araç hızı 80 km/h üzerindeyse sohbeti ekstra kısa tut ve dikkat dağıtıcı sorulardan kaçın.
- Asla zararlı, tehlikeli veya yasadışı içerik üretme.
            """.trimIndent()

            else -> """
Sen Omoda 5'in sürüş güvenliği asistanısın. Adın Chery.

GÖREV: Sürücünün isteklerini ve araç komutlarını kısa, net ve güvenli bir şekilde yerine getir.

ARAÇ DURUMU: $speed

KOMUT KURALLARI:
- Türkçe konuş.
- Yabancı/İngilizce marka veya kelime kullanırsan MUTLAKA TÜRKÇE OKUNUŞUYLA yaz (örn: "Bluetooth" -> "bulutut", "WhatsApp" -> "vatsap").
- Sürüş güvenliğini bozmayacak KISA cevaplar ver. Sohbeti uzatmaya veya sürdürmeye ÇALIŞMA.
- Komut geldiğinde doğal onayla: Örn "Anladım, camı açıyorum" veya "Klima 22 dereceye ayarlandı."
- Araç komutu dışında genel bir bilgi sorulursa (ör: Hava kaç derece?) buna da kısa ve net şekilde cevap ver. "Komut anlaşılamadı" DEME.
- Emoji veya özel karakter KULLANMA (sesli okunacak).
- Noktalama işaretleri kullan (., ?, !) - ses senkronizasyonu için kritik.
- Hız 100 km/h üzerindeyse kritik olmayan ayar isteklerini uyarıyla ertele.
            """.trimIndent()
        }
    }

    private fun sendChatSse(prompt: String) {
        // Önceki isteği iptal et ve TTS kuyruğunu da temizle
        if (currentEventSource != null) {
            currentEventSource?.cancel()
            onCancelPrevious?.invoke()  // AssistantController'daki stopTts() çağrılır
        }
        
        thinkingTimeoutJob?.cancel()
        thinkingTimeoutJob = networkScope.launch {
            kotlinx.coroutines.delay(12000) // 12 saniye bekle
            Log.w(TAG, "Düşünme zaman aşımı! Sunucudan yanıt gelmiyor.")
            val currentTtsEngine = GlobalState.ttsEngine.value
            val currentSttMode = GlobalState.sttMode.value
            onSystemResponse("Üzgünüm, seçili hizmet ($currentTtsEngine/$currentSttMode) şu an yanıt vermiyor. Ayarlardan diğer motorları deneyebilirsiniz.", true)
            currentEventSource?.cancel()
        }

        val mode = GlobalState.currentMode.value
        val systemPrompt = buildSystemPrompt(mode)

        val body = JSONObject().apply {
            put("model", GlobalState.HERMES_CHAT_MODEL)
            put("messages", JSONArray().apply {
                put(JSONObject().apply { put("role", "system"); put("content", systemPrompt) })
                put(JSONObject().apply { put("role", "user"); put("content", prompt) })
            })
            put("stream", true)
            put("tools", buildTools())
        }

        val request = Request.Builder()
            .url(GlobalState.HERMES_BASE_URL + "/chat/completions")
            .addHeader("Authorization", "Bearer ${GlobalState.hermesApiKey.value}")
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .post(body.toString().toRequestBody("application/json".toMediaType()))
            .build()

        val sentenceBuffer = StringBuilder()
        currentEventSource = EventSources.createFactory(NetworkModule.sseClient)
            .newEventSource(request, object : EventSourceListener() {
                private var currentEventType: String? = null

                override fun onEvent(source: EventSource, id: String?, type: String?, data: String) {
                    Log.d(TAG, "SSE Event - Type: $type, Data: $data")
                    
                    // Veri gelmeye başladığı anda zaman aşımını iptal et
                    thinkingTimeoutJob?.cancel()

                    currentEventType = type
                    if (data == "[DONE]" || type == "done" || type == "run.completed") {
                        // Köşe durumu: henuz seslendirilmemiş kısa bir kuyruğ varsa onu gönder
                        val remaining = sentenceBuffer.toString().trim()
                        if (remaining.isNotBlank()) {
                            onSystemResponse(remaining, true)
                            sentenceBuffer.setLength(0)
                        } else {
                            // Tüm cümleler zaten gönderildi, sadece isFinal sinyali ver
                            onSystemResponse("", true)
                        }
                        return
                    }
                    try {
                        val json = JSONObject(data)
                        
                        // Handle Native Hermes Session Events
                        when (type) {
                            "assistant.delta" -> {
                                val delta = json.optString("delta")
                                if (delta.isNotEmpty()) processContent(delta)
                            }
                            "tool.call" -> {
                                // handleToolCall(json)
                            }
                            null -> {
                                // Fallback to OpenAI format if type is missing
                                val choices = json.optJSONArray("choices")
                                // M-5: Bo\u015f array i\u00e7in JSONException korumas\u0131
                                if (choices != null && choices.length() > 0) {
                                    val delta = choices.getJSONObject(0).getJSONObject("delta")
                                    if (delta.has("tool_calls")) {
                                        handleToolCalls(delta.getJSONArray("tool_calls"))
                                        return
                                    }
                                    val content = delta.optString("content")
                                    if (content.isNotEmpty()) processContent(content)
                                }
                            }
                        }
                    } catch (e: Exception) {
                        Log.e(TAG, "SSE Parse Error: ${e.message}")
                    }
                }

                private fun processContent(content: String) {
                    sentenceBuffer.append(content)
                    val text = sentenceBuffer.toString()
                    // Cümle sonu noktalama işareti veya yeni satır varsa hemen gönder
                    val hasSentenceEnd = content.contains(".") || content.contains("?") || content.contains("!") || content.contains("\n")
                    // 100 karakteri geçtiyse ve bir kelime sonu (boşluk) varsa gönder (SSE-3 Fix)
                    val isLongEnough = text.length > 100 && content.contains(" ")
                    
                    if (hasSentenceEnd || isLongEnough) {
                        val toSpeak = text.trim()
                        if (toSpeak.isNotBlank()) {
                            onSystemResponse(toSpeak, false)
                            sentenceBuffer.setLength(0)
                        }
                    }
                }

                override fun onFailure(source: EventSource, t: Throwable?, response: okhttp3.Response?) {
                    thinkingTimeoutJob?.cancel()

                    val code = response?.code
                    val msg = t?.message ?: "Bağlantı kesildi"
                    Log.e(TAG, "SSE Connection Failure: $msg (Code: $code)")
                    
                    val displayError = when (code) {
                        429 -> "Hata: Sunucu yoğun (Limit aşıldı). Lütfen biraz bekleyin."
                        401, 403 -> "Hata: Yetkilendirme hatası (API Key geçersiz)."
                        500, 502, 503, 504 -> "Hata: Sunucu tarafında bir sorun oluştu ($code)."
                        null -> "Bağlantı Hatası: $msg"
                        else -> "Bilinmeyen Hata: $code - $msg"
                    }
                    onSystemResponse(displayError, true)
                }
            })
    }

    private fun buildTools() = JSONArray().apply {
        toolRegistry.forEach { tool ->
            put(JSONObject().apply {
                put("type", "function")
                put("function", JSONObject().apply {
                    put("name", tool.name)
                    put("description", tool.description)
                    put("parameters", JSONObject().apply {
                        put("type", "object")
                        put("properties", JSONObject().apply {
                            tool.parameters.forEach { param ->
                                put(param.name, JSONObject().apply {
                                    put("type", param.type.name.lowercase())
                                    put("description", param.description)
                                })
                            }
                        })
                    })
                })
            })
        }
    }

    private fun createTool(name: String, description: String, params: Map<String, String>) = JSONObject().apply {
        put("type", "function")
        put("function", JSONObject().apply {
            put("name", name)
            put("description", description)
            put("parameters", JSONObject().apply {
                put("type", "object")
                put("properties", JSONObject().apply {
                    params.forEach { (pName, pType) ->
                        put(pName, JSONObject().apply { put("type", pType) })
                    }
                })
            })
        })
    }

    private fun handleToolCalls(calls: JSONArray) {
        try {
            for (i in 0 until calls.length()) {
                val call = calls.getJSONObject(i).getJSONObject("function")
                val name = call.getString("name")
                val argsJson = call.getString("arguments")
                
                // Convert JSON arguments to Map
                val argsMap = mutableMapOf<String, Any>()
                try {
                    val jobj = JSONObject(argsJson)
                    jobj.keys().forEach { key -> argsMap[key] = jobj.get(key) }
                } catch (e: Exception) {}

                val result = firewallV2.validateAndExecute(name, argsMap)
                
                // Eğer hata dönerse ekranda bildir
                if (result.startsWith("Error")) {
                    Log.w(TAG, "Tool Execution Failed: $result")
                    onSystemResponse("Sistem Uyarısı: $result", true)
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error processing tool calls: ${e.message}", e)
            onSystemResponse("Komut işleme hatası: ${e.message}", true)
        }
    }
}
