package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.ActionExecutor
import com.omoda.lanc.core.CommandResult
import com.omoda.lanc.core.CommandRouter
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.Request
import okhttp3.Response
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.sse.EventSource
import okhttp3.sse.EventSourceListener
import okhttp3.sse.EventSources
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

class AgentManager(
    private val actionExecutor: ActionExecutor,
    private val commandRouter: CommandRouter,
    private val hermesClient: HermesClient,
    private val sttClient: HermesClient,
    private val onFeedback: (String) -> Unit,
    private val onSystemResponse: (String, Boolean) -> Unit // text, isFinal
) {
    private val TAG = "Hermes-AgentManager"
    private var currentEventSource: EventSource? = null
    private var currentVehicleContextText: String = "Veri bekleniyor..."
    private var lastMonitorStateText: String = ""
    private var lastAnomalyCheckTime: Long = 0

    private val messageHistory = JSONArray().apply {
        put(JSONObject().apply {
            put("role", "system")
            put("content", "Sen Chery Omoda 5 için geliştirilmiş akıllı bir HMI asistansın. Yanıtlarını kısa ve konuşma diline uygun tut.")
        })
    }

    fun updateVehicleContext(state: com.omoda.lanc.model.VehicleState) {
        try {
            val internetStatus = if (AssistantApplication.hasInternetConnection.value) "Aktif" else "Yok"
            val mediaState = com.omoda.lanc.media.MediaBridge.mediaState.value
            val statusText = buildString {
                append("Hız: ${state.speed.toInt()} km/h")
                append(", Vites: ${state.gearString}")
                append(", Motor: ${if (state.isEngineRunning) "Açık" else "Kapalı"}")
                append(", Motor Devri: ${state.engineRpm.toInt()} RPM")
                append(", Sürüş Modu: ${state.drivingModeString}")
                append(", Klima: ${if (state.isHvacOn) "Açık (Sürücü:${state.acTemperatureDriver}°C / Yolcu:${state.acTemperaturePassenger}°C)" else "Kapalı"}")
                append(", Dış Sıcaklık: ${state.outsideTemperature}°C")
                append(", Park Freni: ${if (state.parkingBrake) "Çekili" else "Serbest"}")
                append(", Far: ${if (state.headlights > 0) "Açık" else "Kapalı"}")
                append(", Kapılar: ${state.doorOpenString}")
                append(", Sinyal: ${state.turnSignalString}")
                append(", Yakıt: ${String.format("%.1f", state.fuelLevel)} L (Tahmini Menzil: ${state.rangeKm.toInt()} km)")
                append(", Toplam KM: ${state.odometer.toInt()} km")
                append(", İnternet: $internetStatus")
                append(", GPS Konum: Lat: ${state.latitude}, Lng: ${state.longitude}")
                append(", Medya: ${mediaState.title} - ${mediaState.artist} (${mediaState.pkg})")
                append(", Cihaz: ${android.os.Build.MODEL} (Android ${android.os.Build.VERSION.RELEASE})")
                append(" | YÜKLÜ UYGULAMALAR: Haritalar(com.google.android.apps.maps), Tarayıcı(com.vivaldi.browser), Müzik(in.krosbits.musicolet), Radyo(idu.com.radio.radyoturk), YouTube(by.green.tuber), Ayarlar(com.android.settings)")
            }
            currentVehicleContextText = statusText
            val systemMessage = messageHistory.getJSONObject(0)
            systemMessage.put("content", "Sen Chery Omoda 5 için geliştirilmiş akıllı bir HMI asistansın. Yanıtlarını kısa ve konuşma diline uygun tut. Mevcut Araç Verisi: $statusText")

            // Monitor modundaysa anomali analizini tetikle
            if (AssistantApplication.currentMode.value == "MONITOR") {
                val now = System.currentTimeMillis()
                // Veri akışını canlı tutmak için her 5 saniyede bir gönder (değişim olmasa bile)
                if ((now - lastAnomalyCheckTime) > 5000) {
                    lastMonitorStateText = statusText
                    lastAnomalyCheckTime = now
                    analyzeTelemetryForAnomaly(statusText)
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Context Güncelleme Hatası: ${e.message}")
        }
    }

    fun processVoiceInput(audioFile: File) {
        val mode = AssistantApplication.sttMode.value
        onFeedback("Ses çözümleniyor...")
        Log.d("Omoda-Workflow", ">>> [5] STT BAŞLADI (Mod: $mode, Dosya: ${audioFile.length()} bytes)")
        AssistantApplication.addLog("STT Başlatıldı ($mode)")
        
        sttClient.transcribe(audioFile) { text ->
            if (text == null) {
                Log.e("Omoda-Workflow", ">>> [!] STT YANIT VERMEDİ (NULL)")
                AssistantApplication.addLog("HATA: STT Yanıt Vermedi")
                onFeedback("Bağlantı hatası")
                onSystemResponse("", true)
                return@transcribe
            }
            
            val cleaned = text.trim().lowercase()
            // Genişletilmiş Halüsinasyon ve Çöp Metin Filtresi
            val isHallucination = cleaned.isBlank() || 
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

            if (!isHallucination) {
                Log.d("Omoda-Workflow", ">>> [6] STT BAŞARILI: '$text'")
                onFeedback("Anladım: $text")

                // Mod Geçiş Kontrolleri (Kaynak: omodaassist_v2)
                val lowerText = text.lowercase()
                when {
                    lowerText.contains("sohbet moduna geç") || lowerText.contains("sohbet modu") -> {
                        AssistantApplication.currentMode.value = "CHAT"
                        AssistantApplication.saveCurrentConfig()
                        onSystemResponse("Sohbet moduna geçtim, dinliyorum.", true)
                        return@transcribe
                    }
                    lowerText.contains("asistan moduna dön") || lowerText.contains("asistan modu") -> {
                        AssistantApplication.currentMode.value = "ASISTANT"
                        AssistantApplication.saveCurrentConfig()
                        onSystemResponse("Asistan moduna geçtim.", true)
                        return@transcribe
                    }
                    lowerText.contains("arkaplanı izle") || lowerText.contains("izleme modu") || lowerText.contains("monitör modu") -> {
                        AssistantApplication.currentMode.value = "MONITOR"
                        AssistantApplication.saveCurrentConfig()
                        onSystemResponse("İzleme modundayım, arkaplanda verileri takip edeceğim.", true)
                        return@transcribe
                    }
                }

                // Yerel Komut Kontrolü (CommandRouter)
                when (val result = commandRouter.analyzeAndExecute(text)) {
                    is CommandResult.Success -> {
                        Log.d("Omoda-Workflow", ">>> [6.1] YEREL KOMUT YÜRÜTÜLDÜ: ${result.message}")
                        onSystemResponse(result.message, true)
                        return@transcribe
                    }
                    is CommandResult.Blocked -> {
                        Log.w("Omoda-Workflow", ">>> [6.2] YEREL KOMUT ENGELLENDİ: ${result.reason}")
                        onSystemResponse(result.reason, true)
                        return@transcribe
                    }
                    is CommandResult.NotMatched -> {
                        // Devam et (AI'ye gönder)
                    }
                }

                if (AssistantApplication.useHermesDecision.value) {
                    sendHermesKararPrompt(text)
                } else {
                    sendChatPrompt(text)
                }
            } else {
                Log.w("Omoda-Workflow", ">>> [!] STT GEÇERSİZ/HALÜSİNASYON: '$text'")
                onFeedback("Anlaşılamadı")
                AssistantApplication.addLog("STT Geçersiz: '$text'")
                onSystemResponse("", true)
            }
        }
    }

    private fun sendChatPrompt(prompt: String) {
        currentEventSource?.cancel()
        Log.d("Omoda-Workflow", ">>> [7] LLM (CHAT) SORGUSU GONDERILIYOR (Chat Completions)...")
        
        val contextPrefix = when (AssistantApplication.currentMode.value) {
            "CHAT" -> "[BAĞLAM -> Mod: CHAT | Kimlik: ${AssistantApplication.vehicleId.value} | $currentVehicleContextText | Sohbet Geçmişi İçerilir] "
            else -> "[BAĞLAM -> Mod: ASISTANT | Kimlik: ${AssistantApplication.vehicleId.value} | $currentVehicleContextText | Komut Bekliyor] "
        }
        val fullPrompt = contextPrefix + prompt
        
        val instructions = when (AssistantApplication.currentMode.value) {
            "ASISTANT" -> "Sen Chery Omoda 5 için tasarlanmış bir HMI sesli asistansın. " +
                    "Sana her zaman güncel araç verileri (hız, klima, vites vb.) sistem mesajı içinde bağlam olarak verilir. " +
                    "Yanıtlarını çok kısa, net ve konuşma diline uygun tut. " +
                    "Kullanıcı bir araç ayarı (sıcaklık artır, sesi kıs, camı aç vb.) istediğinde ilgili aracı (function) çağır ve 'Hemen ayarlıyorum' gibi kısa bir onay ver. " +
                    "Araç verisindeki bir durumu (örn: yakıt az) fark edersen kullanıcıyı nazikçe uyarabilirsin."
            "CHAT" -> "Sen eğlenceli ve yardımsever bir yol arkadaşısın. Kullanıcıyla normal bir sohbet et, detaylı bilgiler ver. Araç verilerini de sohbete dahil edebilirsin."
            else -> "Sen sessiz bir araç analizörüsün. Sadece kritik durumlarda konuş."
        }

        val messagesArray = JSONArray().apply {
            put(JSONObject().apply {
                put("role", "system")
                put("content", instructions)
            })
            put(JSONObject().apply {
                put("role", "user")
                put("content", fullPrompt)
            })
        }

        val toolsArray = JSONArray().apply {
            put(JSONObject().apply {
                put("type", "function")
                put("function", JSONObject().apply {
                    put("name", "open_app")
                    put("description", "Bir uygulamayı başlatır.")
                    put("parameters", JSONObject().apply {
                        put("type", "object")
                        put("properties", JSONObject().apply {
                            put("package_name", JSONObject().apply {
                                put("type", "string")
                                put("description", "Açılacak uygulamanın paket adı (örn: com.google.android.apps.maps)")
                            })
                        })
                        put("required", JSONArray().apply { put("package_name") })
                    })
                })
            })
            put(JSONObject().apply {
                put("type", "function")
                put("function", JSONObject().apply {
                    put("name", "set_volume")
                    put("description", "Sistem ses seviyesini ayarlar.")
                    put("parameters", JSONObject().apply {
                        put("type", "object")
                        put("properties", JSONObject().apply {
                            put("volume_level", JSONObject().apply {
                                put("type", "integer")
                                put("description", "Ses seviyesi (0-15 arası)")
                            })
                        })
                        put("required", JSONArray().apply { put("volume_level") })
                    })
                })
            })
            put(JSONObject().apply {
                put("type", "function")
                put("function", JSONObject().apply {
                    put("name", "media_control")
                    put("description", "Medyayı kontrol eder (oynat, durdur, ileri, geri).")
                    put("parameters", JSONObject().apply {
                        put("type", "object")
                        put("properties", JSONObject().apply {
                            put("action", JSONObject().apply {
                                put("type", "string")
                                put("enum", JSONArray().apply { put("play_pause"); put("next"); put("prev") })
                            })
                        })
                        put("required", JSONArray().apply { put("action") })
                    })
                })
            })
            put(JSONObject().apply {
                put("type", "function")
                put("function", JSONObject().apply {
                    put("name", "set_hvac_temp")
                    put("description", "Klima sıcaklığını ayarlar.")
                    put("parameters", JSONObject().apply {
                        put("type", "object")
                        put("properties", JSONObject().apply {
                            put("temperature", JSONObject().apply {
                                put("type", "number")
                                put("description", "Hedef sıcaklık (örn: 22.5)")
                            })
                        })
                        put("required", JSONArray().apply { put("temperature") })
                    })
                })
            })
        }

        val requestBodyJson = JSONObject().apply {
            put("model", AssistantApplication.HERMES_CHAT_MODEL)
            put("messages", messagesArray)
            put("temperature", 0.7)
            put("tools", toolsArray)
        }

        val request = Request.Builder()
            .url("${AssistantApplication.HERMES_BASE_URL}/chat/completions")
            .addHeader("Authorization", "Bearer ${AssistantApplication.HERMES_API_KEY}")
            .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
            .post(requestBodyJson.toString().toRequestBody("application/json".toMediaType()))
            .build()

        NetworkModule.robustClient.newCall(request).enqueue(object : okhttp3.Callback {
            override fun onFailure(call: okhttp3.Call, e: java.io.IOException) {
                Log.e("Omoda-Workflow", ">>> [!] HERMES CHAT HATASI: ${e.message}")
                onSystemResponse("Üzgünüm, şu an bağlantı kuramıyorum.", true)
            }

            override fun onResponse(call: okhttp3.Call, response: Response) {
                val body = response.body?.string()
                if (response.isSuccessful && body != null) {
                    try {
                        val jsonResponse = JSONObject(body)
                        val choices = jsonResponse.optJSONArray("choices")
                        if (choices != null && choices.length() > 0) {
                            val message = choices.getJSONObject(0).optJSONObject("message")
                            val content = message?.optString("content") ?: "Cevap alınamadı."
                            
                            val toolCalls = message?.optJSONArray("tool_calls")
                            if (toolCalls != null && toolCalls.length() > 0) {
                                for (i in 0 until toolCalls.length()) {
                                    val toolCall = toolCalls.getJSONObject(i)
                                    val function = toolCall.optJSONObject("function")
                                    val name = function?.optString("name")
                                    val args = function?.optString("arguments")
                                    if (!name.isNullOrEmpty()) {
                                        Log.d("Omoda-Workflow", ">>> [!] TOOL CALL: $name($args)")
                                        AssistantApplication.addLog("Aksiyon: $name")
                                        actionExecutor.execute(name, args ?: "{}")
                                    }
                                }
                            }
                            
                            Log.d("Omoda-Workflow", ">>> [8] HERMES CHAT TAMAMLANDI: $content")
                            AssistantApplication.addLog("✅ Hermes yanıtı başarıyla tamamlandı")
                            onSystemResponse(content, true)
                        } else {
                            onSystemResponse("Sizi anlayamadım, tekrar eder misiniz?", true)
                        }
                    } catch (e: Exception) {
                        Log.e("Omoda-Workflow", "Hermes Parse Hatası: ${e.message}")
                        onSystemResponse("Sistem bir hata oluşturdu.", true)
                    }
                } else {
                    val errorBody = response.body?.string()
                    Log.e("Omoda-Workflow", ">>> [!] HERMES HTTP HATASI: ${response.code} - Body: $errorBody")
                    onSystemResponse("Sunucuya ulaşılamıyor.", true)
                }
                response.close()
            }
        })
    }

    private fun sendHermesKararPrompt(prompt: String) {
        currentEventSource?.cancel()
        Log.d("Omoda-Workflow", ">>> [7] HERMES KARAR (v1/responses) SORGUSU GONDERILIYOR...")
        
        val contextPrefix = "[BAĞLAM -> Mod: PRODUCTION_LIVE | Kimlik: Omoda 5 | $currentVehicleContextText] "
        AssistantApplication.addLog("Araç Verisi (Hermese Giden): $currentVehicleContextText")
        val fullPrompt = contextPrefix + prompt
        
        val instructions = "Sen Chery Omoda 5 için tasarlanmış bir HMI sesli asistansın. Yanıtlarını çok kısa, net ve konuşma diline uygun tut."

        val requestBodyJson = JSONObject().apply {
            put("model", AssistantApplication.HERMES_CHAT_MODEL)
            put("input", fullPrompt)
            put("instructions", instructions)
            put("conversation", "bugunku_surus_gecmisi")
            put("store", true)
        }

        val request = Request.Builder()
            .url("${AssistantApplication.HERMES_BASE_URL}/responses")
            .addHeader("Authorization", "Bearer ${AssistantApplication.HERMES_API_KEY}")
            .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
            .addHeader("X-Hermes-Session-Id", "anlik_surus_oturumu_001")
            .post(requestBodyJson.toString().toRequestBody("application/json".toMediaType()))
            .build()

        NetworkModule.robustClient.newCall(request).enqueue(object : okhttp3.Callback {
            override fun onFailure(call: okhttp3.Call, e: java.io.IOException) {
                Log.e("Omoda-Workflow", ">>> [!] HERMES KARAR HATASI: ${e.message}")
                onSystemResponse("Karar motoruna ulaşılamıyor.", true)
            }

            override fun onResponse(call: okhttp3.Call, response: Response) {
                val body = response.body?.string()
                if (response.isSuccessful && body != null) {
                    try {
                        val jsonResponse = JSONObject(body)
                        val outputArray = jsonResponse.optJSONArray("output")
                        if (outputArray != null && outputArray.length() > 0) {
                            val message = outputArray.getJSONObject(0)
                            val content = message.optString("content", "Cevap alınamadı.")
                            Log.d("Omoda-Workflow", ">>> [8] HERMES KARAR TAMAMLANDI: $content")
                            onSystemResponse(content, true)
                        } else {
                            onSystemResponse("Sizi anlayamadım.", true)
                        }
                    } catch (e: Exception) {
                        Log.e("Omoda-Workflow", "Hermes Karar Parse Hatası: ${e.message}")
                        onSystemResponse("Sistem hatası oluştu.", true)
                    }
                } else {
                    Log.e("Omoda-Workflow", ">>> [!] HERMES KARAR HTTP HATASI: ${response.code}")
                    onSystemResponse("Sunucu cevap vermedi.", true)
                }
                response.close()
            }
        })
    }

    fun analyzeTelemetryForAnomaly(vehicleStateJson: String) {
        val instructions = "Sen bir araç anomali analizörüsün. Sana JSON formatında araç verisi gelecek. " +
            "Sadece bir anomali (örn: kapı açıkken hareket ediliyor) veya eşik aşımı (örn: yakıt çok az) varsa kullanıcıyı uyarmak için çok kısa bir anons metni (Örn: 'Sağ arka kapı açık') yaz. " +
            "Her şey normalse veya önemsiz bir değişimse KESİNLİKLE hiçbir şey yazma, tamamen BOŞ yanıt ver."
            
        val messagesArray = JSONArray().apply {
            put(JSONObject().apply {
                put("role", "system")
                put("content", instructions)
            })
            put(JSONObject().apply {
                put("role", "user")
                put("content", vehicleStateJson)
            })
        }

        val requestBodyJson = JSONObject().apply {
            put("model", AssistantApplication.HERMES_CHAT_MODEL)
            put("messages", messagesArray)
            put("temperature", 0.0)
        }

        val request = Request.Builder()
            .url("${AssistantApplication.HERMES_BASE_URL}/chat/completions")
            .addHeader("Authorization", "Bearer ${AssistantApplication.HERMES_API_KEY}")
            .post(requestBodyJson.toString().toRequestBody("application/json".toMediaType()))
            .build()

        NetworkModule.robustClient.newCall(request).enqueue(object : okhttp3.Callback {
            override fun onFailure(call: okhttp3.Call, e: java.io.IOException) {
                Log.e("Omoda-Workflow", ">>> [!] ANOMALİ KONTROL HATASI: ${e.message}")
            }

            override fun onResponse(call: okhttp3.Call, response: Response) {
                val body = response.body?.string()
                if (response.isSuccessful && body != null) {
                    try {
                        val jsonResponse = JSONObject(body)
                        val choices = jsonResponse.optJSONArray("choices")
                        if (choices != null && choices.length() > 0) {
                            val content = choices.getJSONObject(0).optJSONObject("message")?.optString("content") ?: ""
                            val trimmed = content.trim()
                            if (trimmed.isNotBlank() && trimmed.lowercase() != "boş" && trimmed.lowercase() != "normal") {
                                Log.d("Omoda-Workflow", ">>> [!] ANOMALİ TESPİT EDİLDİ: $trimmed")
                                onSystemResponse(trimmed, true) // EdgeTTS anons etsin
                            }
                        }
                    } catch (e: Exception) {
                        Log.e("Omoda-Workflow", "Anomali Parse Hatası: ${e.message}")
                    }
                }
                response.close()
            }
        })
    }
}
