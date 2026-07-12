package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.log.AdvancedLogger
import okhttp3.Call
import okhttp3.Callback
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.Request
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.Response
import org.json.JSONObject
import java.io.File
import java.io.IOException

/**
 * SttClient - Ses-metin dönüşümü ve sunucu bağlantı kontrolü.
 * Merkezi sunucu (100.95.239.119:8642/20128) ile iletişim kurar.
 */
class SttClient(private val baseUrl: String, private val apiKey: String) {
    private val TAG = "SttClient"
    private val client = NetworkModule.robustClient

    fun checkConnection() {
        Log.d(TAG, "STT servis baglantisi kontrol ediliyor: $baseUrl")
        tryFallbackCheck(apiKey) { success, code ->
            if (success) {
                // Eğer Hermes de bağlıysa durumu tam bağlandı yap
                if (GlobalState.hermesConnectionStatus.value == "CONNECTED") {
                    GlobalState.hermesConnectionStatus.value = "FULL_CONNECTED"
                } else {
                    GlobalState.hermesConnectionStatus.value = "STT_ONLY"
                }
            } else if (code == 429) {
                GlobalState.hermesConnectionStatus.value = "LIMIT_REACHED"
            } else if (code == 401 || code == 403) {
                tryFallbackCheck(GlobalState.NINEROUTER_API_KEY) { success2, code2 ->
                    GlobalState.hermesConnectionStatus.value = when {
                        success2 -> "FALLBACK_CONNECTED"
                        code2 == 429 -> "LIMIT_REACHED"
                        else -> "AUTH_ERROR"
                    }
                }
            } else {
                GlobalState.hermesConnectionStatus.value = "DISCONNECTED"
            }
        }
    }

    private fun tryFallbackCheck(key: String, onResult: (Boolean, Int) -> Unit) {
        val request = Request.Builder()
            .url("${baseUrl.removeSuffix("/")}/models")
            .addHeader("Authorization", "Bearer $key")
            .get()
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "Baglanti kontrolu basarisiz: ${e.message}")
                AdvancedLogger.log(
                    "SttClient",
                    "ERROR",
                    "Baglanti kontrolu basarisiz: ${e.message}",
                    mapOf("endpoint" to request.url.toString(), "exception" to e.javaClass.simpleName)
                )
                onResult(false, -1)
            }
            override fun onResponse(call: Call, response: Response) {
                val code = response.code
                response.close()
                if (code == 429) {
                    onResult(false, 429)
                } else {
                    onResult(response.isSuccessful, code)
                }
            }
        })
    }

    fun transcribe(audioFile: File, onResult: (String?, String?) -> Unit) {
        performTranscribe(audioFile, apiKey, true, false, onResult)
    }

    private fun performTranscribe(
        audioFile: File,
        currentKey: String,
        allowRetry: Boolean,
        useBridge: Boolean,
        onResult: (String?, String?) -> Unit
    ) {
        val targetUrl = if (useBridge) {
            GlobalState.BRIDGE_STT_URL
        } else {
            "${baseUrl.removeSuffix("/")}/audio/transcriptions"
        }

        val authHeader = "Bearer $currentKey"
        val modelName = GlobalState.STT_MODEL

        AdvancedLogger.log(
            "SttClient",
            "INFO",
            "STT istegi baslatiliyor",
            mapOf(
                "route" to if (useBridge) "WHISPER_BRIDGE" else "DIRECT_9ROUTER",
                "target_url" to targetUrl,
                "using_key" to if (currentKey == apiKey) "PRIMARY" else "FALLBACK"
            )
        )

        val requestBody = MultipartBody.Builder()
            .setType(MultipartBody.FORM)
            .addFormDataPart(
                "file", audioFile.name,
                audioFile.asRequestBody("audio/wav".toMediaTypeOrNull())
            )
            .addFormDataPart("model", modelName)
            .addFormDataPart("language", "tr")
            .addFormDataPart("initial_prompt", "Omoda asistanı OMOS. Klima aç, kapat, sıcaklığı artır, azalt. Müzik çal, durdur, sonraki şarkı. Navigasyon, haritayı aç. YouTube başlat. Camları kapat, sunroof aç.")
            .addFormDataPart("response_format", "json")
            .build()

        val request = Request.Builder()
            .url(targetUrl)
            .addHeader("Authorization", authHeader)
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .post(requestBody)
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "STT Ag Hatasi: ${e.message}")
                if (!useBridge) {
                    Log.w(TAG, "Birincil STT basarisiz, kopru deneniyor...")
                    performTranscribe(audioFile, currentKey, allowRetry, true, onResult)
                } else {
                    onResult(null, "Ağ Hatası: ${e.message}")
                }
            }
            override fun onResponse(call: Call, response: Response) {
                try {
                    response.use { resp ->
                        val body = resp.body?.string()
                        if (resp.isSuccessful && body != null) {
                            val text = JSONObject(body).optString("text")
                            if (text.isNotBlank()) {
                                Log.i(TAG, "STT Basarili ($targetUrl): $text")
                                onResult(text, null)
                            } else {
                                Log.w(TAG, "STT Basarili ama bos metin dondu.")
                                onResult(null, "Ses anlaşılamadı (Boş Yanıt)")
                            }
                        } else if (resp.code == 401 && allowRetry) {
                            Log.w(TAG, "STT 401 Hatasi! Yedek anahtar deneniyor...")
                            performTranscribe(audioFile, GlobalState.NINEROUTER_API_KEY, false, useBridge, onResult)
                        } else if (resp.code == 429 && !useBridge) {
                            Log.w(TAG, "STT 429 (Rate Limit) Hatasi! Kopru deneniyor...")
                            performTranscribe(audioFile, currentKey, allowRetry, true, onResult)
                        } else if (!useBridge) {
                            Log.w(TAG, "STT Ana Sunucu Hatasi (${resp.code})! Kopru deneniyor... Body: ${body ?: "null"}")
                            performTranscribe(audioFile, currentKey, allowRetry, true, onResult)
                        } else {
                            Log.e(TAG, "STT Kopru Hatasi (${resp.code}): ${body ?: "null"}")
                            val errorMsg = try {
                                JSONObject(body ?: "").optJSONObject("error")?.optString("message") 
                                    ?: "Hata Kodu: ${resp.code}"
                            } catch (e: Exception) { "Hata Kodu: ${resp.code}" }
                            onResult(null, "STT Hatası: $errorMsg")
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "STT Parse Hatasi: ${e.message}")
                    onResult(null, "Sistem Hatası: ${e.message}")
                }
            }
        })
    }
}
