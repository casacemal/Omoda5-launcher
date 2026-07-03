package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.AssistantApplication
import okhttp3.Call
import okhttp3.Callback
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.Request
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.Response
import org.json.JSONObject
import java.io.File
import java.io.IOException

/**
 * HermesClient - Omoda AI Haberleşme İstemcisi.
 * 
 * Bu sınıf, uygulama ile merkezi Hermes Gateway (100.95.239.119:20128) 
 * arasındaki tüm HTTP trafiğini yönetir.
 */
class HermesClient(private val baseUrl: String, private val apiKey: String) {
    private val TAG = "Hermes-Client"
    private val client = NetworkModule.robustClient

    /** Session ID from POST /api/sessions (Hermes session-based API) */
    var sessionId: String? = null
    var sessionCreationFailed = false

    /** Create a Hermes session synchronously. Returns session_id or null. */
    fun createSessionSync(): String? {
        if (sessionCreationFailed) return null
        val serverUrl = baseUrl.removeSuffix("/v1").removeSuffix("/")
        val request = Request.Builder()
            .url("$serverUrl/api/sessions")
            .addHeader("Authorization", "Bearer $apiKey")
            .post("".toRequestBody(null))  // empty body for session creation
            .build()
        return try {
            val response = client.newCall(request).execute()
            response.use { resp ->
                if (resp.isSuccessful) {
                    val body = resp.body?.string()
                    val json = JSONObject(body ?: return null)
                    json.optString("session_id", "").ifBlank { null }?.also {
                        sessionId = it
                    }
                } else {
                    sessionCreationFailed = true
                    null
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Session oluşturma hatası: ${e.message}")
            sessionCreationFailed = true
            null
        }
    }

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

    fun transcribe(audioFile: File, onResult: (String?) -> Unit) {
        val isWyoming = AssistantApplication.isBridgeMode.value && AssistantApplication.bridgeType.value == "WYOMING"
        
        val targetUrl = if (isWyoming) {
            "${baseUrl.removeSuffix("/")}/stt"
        } else {
            "${baseUrl.removeSuffix("/")}/audio/transcriptions"
        }
        
        val authHeader = "Bearer $apiKey"
        val modelName = AssistantApplication.STT_MODEL

        val requestBody = if (isWyoming) {
            try {
                val bytes = audioFile.readBytes()
                val base64 = android.util.Base64.encodeToString(bytes, android.util.Base64.NO_WRAP)
                val json = JSONObject().apply {
                    put("audio", base64)
                }
                json.toString().toRequestBody("application/json".toMediaTypeOrNull())
            } catch (e: Exception) {
                Log.e(TAG, "Wyoming STT Hazırlama Hatası: ${e.message}")
                onResult(null)
                return
            }
        } else {
            MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart(
                    "file", audioFile.name,
                    audioFile.asRequestBody("audio/wav".toMediaTypeOrNull())
                )
                .addFormDataPart("model", modelName)
                .addFormDataPart("language", "tr")
                .addFormDataPart("response_format", "json")
                .build()
        }

        val request = Request.Builder()
            .url(targetUrl)
            .addHeader("Authorization", authHeader)
            .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
            .post(requestBody)
            .build()

        Log.d(TAG, "STT isteği gönderiliyor → $targetUrl")

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "STT Ağ Hatası: ${e.message}")
                AssistantApplication.addLog("STT Ağ Hatası: ${e.message}")
                onResult(null)
            }
            override fun onResponse(call: Call, response: Response) {
                try {
                    response.use { resp ->
                        val body = resp.body?.string()
                        if (resp.isSuccessful && body != null) {
                            val text = JSONObject(body).optString("text")
                            Log.d(TAG, "STT Başarılı: '$text'")
                            onResult(text.ifBlank { null })
                        } else {
                            Log.e(TAG, "STT HTTP Hatası ${resp.code}: ${body ?: "null"}")
                            AssistantApplication.addLog("STT Başarısız: ${resp.code}")
                            onResult(null)
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "STT Parse Hatası: ${e.message}")
                    onResult(null)
                }
            }
        })
    }
}
