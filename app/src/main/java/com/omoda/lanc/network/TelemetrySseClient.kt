package com.omoda.lanc.network

import android.content.Context
import android.content.Intent
import android.util.Log
import com.omoda.lanc.AssistantApplication
import okhttp3.*
import java.util.concurrent.TimeUnit

/**
 * SSE Client (Sürüm 3.0): Sunucudan gelen bildirimleri (Telegram durumu, proaktif uyarılar) dinler.
 * "sadece adb ile komut gönderecez" prensibine uygun olarak, komut icrası yine uygulama tarafında kalabilir 
 * veya sadece anons yapılır.
 */
class TelemetrySseClient(private val context: Context, private val url: String) {
    private val TAG = "Hermes-SSE"
    private val client = OkHttpClient.Builder()
        .readTimeout(0, TimeUnit.MILLISECONDS)
        .pingInterval(10, TimeUnit.SECONDS)
        .build()

    @Volatile private var isRunning = false
    private val processedIds = LinkedHashSet<String>()

    fun connect() {
        if (isRunning) return
        isRunning = true
        Log.i(TAG, "SSE Bağlantısı başlatılıyor: $url")
        AssistantApplication.addLog("SSE: Bağlanıyor...")
        
        val request = Request.Builder()
            .url(url)
            .addHeader("Accept", "text/event-stream")
            .build()

    try {
            client.newCall(request).enqueue(object : Callback {
                override fun onResponse(call: Call, response: Response) {
                    if (!response.isSuccessful) {
                        Log.e(TAG, "SSE Bağlantı Hatası: ${response.code}")
                        AssistantApplication.addLog("SSE Hata: ${response.code}")
                        reconnect()
                        return
                    }
                    response.body?.source()?.let { source ->
                        try {
                            while (isRunning && !source.exhausted()) {
                                source.readUtf8Line()?.let(::parseSseLine)
                            }
                        } catch (e: Exception) {
                            Log.e(TAG, "SSE Akış Hatası: ${e.message}")
                        }
                    }
                    if (isRunning) reconnect()
                }

                override fun onFailure(call: Call, e: java.io.IOException) {
                    Log.e(TAG, "SSE Ağ Hatası: ${e.message}")
                    AssistantApplication.addLog("SSE Ağ Hatası")
                    if (isRunning) reconnect()
                }
            })
        } catch (e: Exception) {
            Log.e(TAG, "SSE Başlatma Hatası: ${e.message}")
            reconnect()
        }
    }

    private fun parseSseLine(line: String) {
        if (!line.startsWith("data:")) return
        val json = line.removePrefix("data:").trim()
        Log.d(TAG, "SSE Data: $json")
        
        val id = extractField(json, "transaction_id") ?: extractField(json, "alert_id") ?: return
        if (processedIds.contains(id)) return
        if (processedIds.size > 20) processedIds.remove(processedIds.first())
        processedIds.add(id)

        val status = extractField(json, "status")
        val action = extractField(json, "action")
        val announce = extractField(json, "announce_tts") ?: extractField(json, "content")
        val path = extractField(json, "execution_path")
        val expiresAt = extractField(json, "expires_at")

        // Sürüm 3.1: Zaman aşımı kontrolü (TTL)
        if (expiresAt != null) {
            try {
                // Not: Android 10'da Instant.parse kullanılabilir (API 26+)
                if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                    val expiry = java.time.Instant.parse(expiresAt)
                    if (java.time.Instant.now().isAfter(expiry)) {
                        Log.w(TAG, "Zamanı geçmiş komut atlanıyor: $id")
                        return
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "TTL parse hatası: ${e.message}")
            }
        }

        // Sürüm 3.0: path == "external_tcu" -> bu komut TCU'da yürütülüyor, AAOS sadece anons eder.
        // Ayrıca proaktif uyarılar (PROACTIVE_SPEAK) da anons edilir.
        if ((status == "EXECUTING" || action == "PROACTIVE_SPEAK") && announce != null) {
            AssistantApplication.addLog("SSE Anons: $announce")
            context.sendBroadcast(Intent("com.omoda.assistant.SPEAK").apply {
                putExtra("text", announce)
            })
        }
    }

    private fun extractField(json: String, key: String): String? =
        "\"$key\"\\s*:\\s*\"([^\"]*)\"".toRegex().find(json)?.groupValues?.get(1)

    private fun reconnect() {
        if (!isRunning) return
        try { 
            Thread.sleep(5000)
            if (isRunning) connect() 
        } catch (e: Exception) {
            Log.e(TAG, "Reconnection error: ${e.message}")
        }
    }

    fun disconnect() { 
        isRunning = false 
        Log.i(TAG, "SSE Bağlantısı kapatıldı.")
    }
}
