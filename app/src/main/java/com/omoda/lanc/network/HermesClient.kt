package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.AssistantApplication
import okhttp3.*
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.io.File
import java.io.IOException
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume

class HermesClient(private val baseUrl: String, private val apiKey: String) {
    private val TAG = "Hermes-Client"
    private val client = NetworkModule.robustClient

    // ──────────────────────────────────────────────────────────────
    // Bağlantı Kontrolü (Hermes Chat Gateway)
    // ──────────────────────────────────────────────────────────────
    fun checkConnection() {
        val request = Request.Builder()
            .url("${baseUrl.removeSuffix("/")}/models")
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
            .get()
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "Bağlantı kontrolü başarısız: ${e.message}")
                AssistantApplication.hermesConnectionStatus.value = "DISCONNECTED"
            }
            override fun onResponse(call: Call, response: Response) {
                val status = if (response.isSuccessful) "CONNECTED" else "AUTH_ERROR"
                AssistantApplication.hermesConnectionStatus.value = status
                response.close()
            }
        })
    }

    // ──────────────────────────────────────────────────────────────
    // STT - Hermes Whisper API (Local/Gateway)
    // ──────────────────────────────────────────────────────────────
    suspend fun sendAudioToHermes(audioFile: File): String? = suspendCancellableCoroutine { continuation ->
        val hermesUrl = "${baseUrl.removeSuffix("/")}/audio/transcriptions"

        val requestBody = MultipartBody.Builder()
            .setType(MultipartBody.FORM)
            .addFormDataPart(
                "file", audioFile.name,
                audioFile.asRequestBody("audio/m4a".toMediaTypeOrNull())
            )
            .addFormDataPart("model", "whisper-1")
            .build()

        val request = Request.Builder()
            .url(hermesUrl)
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
            .post(requestBody)
            .build()

        Log.d(TAG, "Hermes STT isteği gönderiliyor → $hermesUrl")

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "Hermes STT Ağ Hatası: ${e.message}")
                if (continuation.isActive) continuation.resume(null)
            }
            override fun onResponse(call: Call, response: Response) {
                try {
                    response.use { resp ->
                        val body = resp.body?.string()
                        if (resp.isSuccessful && body != null) {
                            val text = JSONObject(body).optString("text")
                            Log.d(TAG, "Hermes STT başarılı: '$text'")
                            if (continuation.isActive) continuation.resume(text.ifBlank { null })
                        } else {
                            Log.e(TAG, "Hermes STT HTTP ${resp.code}: $body")
                            if (continuation.isActive) continuation.resume(null)
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Hermes STT parse hatası: ${e.message}")
                    if (continuation.isActive) continuation.resume(null)
                }
            }
        })
    }

    // ──────────────────────────────────────────────────────────────
    // STT - Groq Whisper API
    // ──────────────────────────────────────────────────────────────
    suspend fun sendAudio(audioFile: File): String? = suspendCancellableCoroutine { continuation ->
        val groqKey = AssistantApplication.groqApiKey.value
        val groqUrl = "${AssistantApplication.GROQ_BASE_URL}/audio/transcriptions"

        val requestBody = MultipartBody.Builder()
            .setType(MultipartBody.FORM)
            .addFormDataPart(
                "file", audioFile.name,
                audioFile.asRequestBody("audio/m4a".toMediaTypeOrNull())
            )
            .addFormDataPart("model", AssistantApplication.GROQ_STT_MODEL)
            .addFormDataPart("language", "tr")
            .addFormDataPart("response_format", "json")
            .build()

        val request = Request.Builder()
            .url(groqUrl)
            .addHeader("Authorization", "Bearer $groqKey")
            .post(requestBody)
            .build()

        Log.d(TAG, "Groq STT isteği gönderiliyor → $groqUrl (${audioFile.length()} bytes)")

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "Groq STT Ağ Hatası: ${e.message}")
                AssistantApplication.addLog("STT Hata: ${e.message}")
                if (continuation.isActive) continuation.resume(null)
            }
            override fun onResponse(call: Call, response: Response) {
                try {
                    response.use { resp ->
                        val respBody = resp.body
                        val body = respBody?.string()
                        if (resp.isSuccessful && body != null) {
                            val text = JSONObject(body).optString("text")
                            Log.d(TAG, "Groq STT başarılı: '$text'")
                            if (continuation.isActive) continuation.resume(text.ifBlank { null })
                        } else {
                            Log.e(TAG, "Groq STT HTTP ${resp.code}: ${body ?: "null"}")
                            AssistantApplication.addLog("STT Hata ${resp.code}")
                            if (continuation.isActive) continuation.resume(null)
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Groq STT parse hatası: ${e.message}")
                    if (continuation.isActive) continuation.resume(null)
                }
            }
        })
    }

    fun transcribe(audioFile: File, onResult: (String?) -> Unit) {
        val mode = AssistantApplication.sttMode.value
        // Zorunlu Bulut (Groq) kullanımı veya kullanıcı seçimi
        val useCloud = mode == "BULUT" || mode == "GROQ"
        val groqKey = AssistantApplication.groqApiKey.value
        
        val targetUrl = if (useCloud) {
            "${AssistantApplication.GROQ_BASE_URL}/audio/transcriptions"
        } else {
            "${baseUrl.removeSuffix("/")}/audio/transcriptions"
        }

        val authHeader = if (useCloud) "Bearer $groqKey" else "Bearer $apiKey"
        val modelName = if (useCloud) AssistantApplication.GROQ_STT_MODEL else "whisper-1"

        val requestBody = MultipartBody.Builder()
            .setType(MultipartBody.FORM)
            .addFormDataPart(
                "file", audioFile.name,
                audioFile.asRequestBody("audio/m4a".toMediaTypeOrNull())
            )
            .addFormDataPart("model", modelName)
            .addFormDataPart("language", "tr")
            .addFormDataPart("response_format", "json")
            .build()

        val requestBuilder = Request.Builder()
            .url(targetUrl)
            .addHeader("Authorization", authHeader)
            
        if (!useCloud) {
            requestBuilder.addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
        }
            
        val request = requestBuilder
            .post(requestBody)
            .build()

        Log.d(TAG, "STT isteği gönderiliyor (Hedef: ${if(useCloud) "GROQ" else "HERMES"}) → $targetUrl")

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "STT Ağ Hatası ($mode): ${e.message}")
                AssistantApplication.addLog("STT Ağ Hatası: ${e.message}")
                onResult(null)
            }
            override fun onResponse(call: Call, response: Response) {
                try {
                    response.use { resp ->
                        val body = resp.body?.string()
                        if (resp.isSuccessful && body != null) {
                            val text = JSONObject(body).optString("text")
                            Log.d(TAG, "STT Başarılı ($mode): '$text'")
                            onResult(text.ifBlank { null })
                        } else {
                            Log.e(TAG, "STT HTTP Hatası ($mode) ${resp.code}: ${body ?: "null"}")
                            AssistantApplication.addLog("STT Başarısız ($mode): ${resp.code}")
                            
                            // 401 Unauthorized durumunda API Key kontrolü uyarısı ekle
                            if (resp.code == 401) {
                                AssistantApplication.addLog("HATA: API Anahtarı geçersiz veya süresi dolmuş (401)")
                            }

                            onResult(null)
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "STT Parse Hatası ($mode): ${e.message}")
                    AssistantApplication.addLog("STT İşleme Hatası: ${e.message}")
                    onResult(null)
                }
            }
        })
    }

    // ──────────────────────────────────────────────────────────────
    // Telemetry - Sessiz Araç Verisi Takibi (Sürüm 1.3)
    // ──────────────────────────────────────────────────────────────
    fun sendTelemetry(vehicleId: String, sessionKey: String, state: com.omoda.lanc.model.VehicleState) {
        val telemetryJson = JSONObject().apply {
            put("vehicle_id", vehicleId)
            put("session_key", sessionKey)
            put("timestamp", System.currentTimeMillis() / 1000)
            put("telemetry", JSONObject().apply {
                put("speed_kmh", state.speed.toInt())
                put("gear_position", state.gearString)
                put("is_hvac_on", state.isHvacOn)
                put("is_engine_running", state.isEngineRunning)
            })
        }

        val requestBody = telemetryJson.toString().toRequestBody("application/json".toMediaTypeOrNull())
        val request = Request.Builder()
            .url("${baseUrl.removeSuffix("/")}/telemetry")
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("X-Hermes-Session-Key", sessionKey)
            .post(requestBody)
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.w(TAG, "Telemetri gönderimi başarısız: ${e.message}")
            }
            override fun onResponse(call: Call, response: Response) {
                response.close()
            }
        })
    }

    // ──────────────────────────────────────────────────────────────
    // TTS - Hermes TTS (HermesTTSManager bu metodu kullanıyor)
    // ──────────────────────────────────────────────────────────────
    fun getSpeechAudio(text: String, callback: (ByteArray?) -> Unit) {
        val json = JSONObject().apply {
            put("model", "tts-1")
            put("input", text)
            put("voice", "alloy")
        }

        val requestBody = json.toString().toRequestBody("application/json".toMediaTypeOrNull())
        val request = Request.Builder()
            .url("${baseUrl.removeSuffix("/")}/audio/speech")
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
            .post(requestBody)
            .build()

        Log.d(TAG, "Hermes TTS isteği: ${baseUrl}/audio/speech")

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "TTS Ağ Hatası: ${e.message}")
                AssistantApplication.addLog("TTS Hatası: ${e.message}")
                callback(null)
            }
            override fun onResponse(call: Call, response: Response) {
                try {
                    response.use { resp ->
                        if (resp.isSuccessful) {
                            callback(resp.body?.bytes())
                        } else {
                            Log.e(TAG, "TTS HTTP ${resp.code}")
                            AssistantApplication.addLog("TTS Hatası: ${resp.code}")
                            callback(null)
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "TTS parse hatası: ${e.message}")
                    AssistantApplication.addLog("TTS İşleme Hatası: ${e.message}")
                    callback(null)
                }
            }
        })
    }
}
