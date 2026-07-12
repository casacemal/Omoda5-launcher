package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.core.GlobalState
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

class AgentManager(
    private val commandFirewall: CommandFirewall,
    private val commandRouter: CommandRouter,
    private val sttClient: SttClient,
    private val hermesClient: HermesClient,
    private val onFeedback: (String) -> Unit,
    private val onSystemResponse: (String, Boolean) -> Unit,
    private val onCancelPrevious: (() -> Unit)? = null  // Yeni istek gelince önceki TTS'i durdur
) {
    private val TAG = "AgentManager"
    private var currentEventSource: EventSource? = null
    private var vehicleContext: String = ""

    fun updateVehicleContext(state: com.omoda.lanc.model.VehicleState) {
        val mqttStatus = if (GlobalState.isMqttConnected.value) "AKTİF" else "KOPUK"
        vehicleContext = "Hız: ${state.speed}km/h, Vites: ${state.gearString}, Klima: ${if(state.isHvacOn) "Açık" else "Kapalı"}, Temp: ${state.acTemperatureDriver}C, MQTT Akışı: $mqttStatus"
    }

    fun processVoiceInput(audioFile: File) {
        onFeedback("Ses çözümleniyor...")
        sttClient.transcribe(audioFile) { text, error ->
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
        
        // 1. KRİTİK YEREL KOMUTLAR (Mod Değişiklikleri) - Her zaman yerel çalışır
        if (lowerText.contains("sohbet modu") || lowerText.contains("asistan modu") || lowerText.contains("izleme modu")) {
            when (val res = commandRouter.analyzeAndExecute(text)) {
                is CommandResult.Success -> { onSystemResponse(res.message, true); return }
                else -> {}
            }
        }

        // 2. KARAR MEKANİZMASI SEÇİMİ
        if (GlobalState.useHermesDecision.value) {
            // Sunucu Karar Motoru (LLM) - Doğrudan buluta gönder
            Log.d(TAG, "Karar Motoru: SUNUCU (Hermes)")
            sendChatSse(text)
        } else {
            // Yerel Karar Motoru (Regex) - Önce yerel kontrol, yoksa buluta gönder (sohbet için)
            Log.d(TAG, "Karar Motoru: YEREL (CommandRouter)")
            when (val res = commandRouter.analyzeAndExecute(text)) {
                is CommandResult.Success -> { onSystemResponse(res.message, true); return }
                is CommandResult.Blocked -> { onSystemResponse(res.reason, true); return }
                else -> {
                    // Yerel eşleşme yok, genel sohbet için buluta gönder
                    sendChatSse(text)
                }
            }
        }
    }

    private fun buildSystemPrompt(mode: String): String {
        val speed = vehicleContext // already formatted string
        return when (mode) {
            "CHAT" -> """
Sen Omoda 5'in eğlence ve sohbet asistanısın. Adın OMOS.

GÖREV: Sürücüyle samimi, eğlenceli ve akıcı bir sohbet yürüt. Gündelik konular, müzik, genel kültür, espri, seyahat tavsiyeleri hakkında konuşabilirsin.

ARAÇ DURUMU (MQTT TELEMETRİ): $speed

KONUŞMA KURALLARI:
- Türkçe konuş, samimi ve doğal bir dil kullan
- Cevaplar 1-3 cümle olsun, çok uzun yazma
- Emoji veya özel karakter KULLANMA (sesli okunacak)
- Noktalama işaretleri kullan (., ?, !) - bunlar ses senkronizasyonu için kritik
- Araç hızı 80 km/h üzerindeyse sohbeti kısa tut ve dikkat dağıtıcı sorulardan kaçın
- Sürücü yorgunluk veya dikkat belirtisi gösterirse uyar
- Müzik, podcast veya rota önerisi isterse yardımcı ol
- Asla zararlı, tehlikeli veya yasadışı içerik üretme
            """.trimIndent()

            else -> """
Sen Omoda 5'in sürüş güvenliği asistanısın. Adın OMOS.

GÖREV: Araç komutlarını kısa ve net şekilde onayla, sürüş güvenliğini her şeyin önünde tut.

ARAÇ DURUMU (MQTT TELEMETRİ): $speed

KOMUT KURALLARI:
- Türkçe konuş
- Maksimum 1-2 cümle ile cevap ver
- Emoji veya özel karakter KULLANMA (sesli okunacak)
- Noktalama işaretleri kullan (., ?, !) - ses senkronizasyonu için kritik
- Komut onaylarken sadece eylemi söyle: "Klima 22 dereceye ayarlandı." gibi
- Sürücünün dikkatini dağıtma, teknik detaya girme
- Hız 100 km/h üzerindeyse kritik olmayan ayar isteklerini uyarıyla ertele
- Trafik veya hava koşullarına göre güvenlik önerisi ver
- Yönlendirme, müzik, klima, cam komutlarına yanıt ver
- Bilmediğin araç komutlarını kabul etme, kibarca reddet
            """.trimIndent()
        }
    }

    private fun sendChatSse(prompt: String) {
        // Önceki isteği iptal et ve TTS kuyruğunu da temizle
        if (currentEventSource != null) {
            currentEventSource?.cancel()
            onCancelPrevious?.invoke()  // AssistantController'daki stopTts() çağrılır
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
            .addHeader("Authorization", "Bearer ${GlobalState.HERMES_API_KEY}")
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .post(body.toString().toRequestBody("application/json".toMediaType()))
            .build()

        val sentenceBuffer = StringBuilder()
        currentEventSource = EventSources.createFactory(NetworkModule.sseClient)
            .newEventSource(request, object : EventSourceListener() {
                private var currentEventType: String? = null

                override fun onEvent(source: EventSource, id: String?, type: String?, data: String) {
                    Log.d(TAG, "SSE Event - Type: $type, Data: $data")
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
                                if (choices != null) {
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
        // Araç Kontrol Araçları (Granular Tools)
        put(createTool("set_hvac_temp", "Klima sıcaklığını ayarlar", 
            mapOf("temperature" to "number")))
        put(createTool("set_hvac_fan", "Klima fan hızını ayarlar (1-7)", 
            mapOf("value" to "integer")))
        put(createTool("set_hvac_ac", "Klima AC (soğutma) modunu açar veya kapatır", 
            mapOf("value" to "integer"))) // 1: On, 0: Off
        put(createTool("hvac_on", "Klimayı genel olarak açar", emptyMap()))
        put(createTool("hvac_off", "Klimayı genel olarak kapatır", emptyMap()))
        
        put(createTool("set_volume", "Ses seviyesini ayarlar (0-15)", 
            mapOf("volume_level" to "integer")))
        put(createTool("media_control", "Medya oynatmayı kontrol eder", 
            mapOf("action" to "string"))) // play_pause, next, prev
        
        put(createTool("set_window_position", "Cam veya sunroof pozisyonunu ayarlar (0-100)", 
            mapOf("target" to "string", "position" to "integer")))
            
        put(createTool("open_app", "Belirtilen uygulamayı başlatır", 
            mapOf("package_name" to "string")))
            
        put(createTool("search_youtube", "YouTube üzerinde video arar", 
            mapOf("query" to "string")))
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
                val args = call.getString("arguments")
                val result = commandFirewall.validateAndExecute(name, args)
                
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
