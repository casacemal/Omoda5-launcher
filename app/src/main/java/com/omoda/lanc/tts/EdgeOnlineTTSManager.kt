package com.omoda.lanc.tts

import android.content.Context
import android.media.AudioAttributes
import android.media.AudioFormat
import android.media.AudioTrack
import android.util.Log
import com.omoda.lanc.AssistantApplication
import okhttp3.*
import okio.ByteString
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.SecureRandom
import java.text.SimpleDateFormat
import java.util.*
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.security.MessageDigest

class EdgeOnlineTTSManager(
    private val context: Context,
    private val voiceName: String = "tr-TR-EmelNeural",
    private val rate: String = "+0%",
    private val volume: String = "+0%",
    private val pitch: String = "+0Hz"
) : TTSManager {
    companion object {
        private const val TAG = "EdgeOnlineTTS"
        private const val TRUSTED_CLIENT_TOKEN="6A5AA1D4EAFF4E9FB37E23D68491D6F4"
        private const val SEC_MS_GEC_VERSION = "1-143.0.3650.75"

        @Volatile
        var clockSkewSeconds: Long = 0L

        fun generateMuid(): String {
            val bytes = ByteArray(16)
            SecureRandom().nextBytes(bytes)
            return bytes.joinToString("") { "%02x".format(it) }
        }
    }

    private var audioTrack: AudioTrack? = null
    private var mediaPlayer: android.media.MediaPlayer? = null
    private var tempFile: java.io.File? = null
    private var fileOutputStream: java.io.FileOutputStream? = null
    private val isSpeakingFlag = AtomicBoolean(false)
    private var lastResponseCode: Int = 0
    private var lastResponseDate: String? = null
    
    private val TRUSTED_CLIENT_TOKEN = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
    private val SEC_MS_GEC_VERSION = "1-143.0.3650.75"
    private var clockSkewSeconds: Long = 0L

    override fun isSpeaking(): Boolean = isSpeakingFlag.get()

    private fun generateSecMsGec(): String {
        val winEpoch = 11644473600L
        var ticks = (System.currentTimeMillis() / 1000L) + clockSkewSeconds
        ticks += winEpoch
        ticks -= ticks % 300L
        ticks *= 10_000_000L
        
        val strToHash = "${ticks}${TRUSTED_CLIENT_TOKEN}"
        val md = MessageDigest.getInstance("SHA-256")
        val bytes = md.digest(strToHash.toByteArray(Charsets.US_ASCII))
        return bytes.joinToString("") { "%02X".format(it) }
    }

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        speakInternal(text, isRetry = false, onComplete = onComplete, onError = onError)
    }

    private fun speakInternal(text: String, isRetry: Boolean = false, onComplete: (() -> Unit)? = null, onError: (() -> Unit)? = null) {
        if (text.isBlank()) { onComplete?.invoke(); return }
        if (isSpeakingFlag.get()) return
        isSpeakingFlag.set(true)
        Log.d(TAG, "TTS: ${text.take(50)}...")

        try {
            val client = OkHttpClient.Builder()
                .connectTimeout(10, TimeUnit.SECONDS)
                .readTimeout(30, TimeUnit.SECONDS)
                .build()

            val reqId = UUID.randomUUID().toString().replace("-", "")
            val secMsGec = generateSecMsGec()
            val url = "wss://speech.platform.bing.com/consumer/speech/synthesize/readaloud/edge/v1" +
                "?TrustedClientToken=$TRUSTED_CLIENT_TOKEN" +
                "&ConnectionId=$reqId" +
                "&Sec-MS-GEC=$secMsGec" +
                "&Sec-MS-GEC-Version=$SEC_MS_GEC_VERSION"

            val muid = generateMuid()
            val request = Request.Builder()
                .url(url)
                .addHeader("Origin", "chrome-extension://jdiccldimpdaibmpdkjnbmckianbfold")
                .addHeader("Pragma", "no-cache")
                .addHeader("Cache-Control", "no-cache")
                .addHeader("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0")
                .addHeader("Accept-Encoding", "gzip, deflate, br, zstd")
                .addHeader("Accept-Language", "en-US,en;q=0.9")
                .addHeader("Cookie", "muid=$muid")
                .build()

            client.newWebSocket(request, object : WebSocketListener() {
                override fun onOpen(webSocket: WebSocket, response: Response) {
                    lastResponseCode = response.code
                    lastResponseDate = response.header("Date")
                    sendSpeechConfig(webSocket)
                    sendSynthesize(webSocket, text)
                }

                override fun onMessage(webSocket: WebSocket, bytes: ByteString) {
                    processAudio(bytes.toByteArray())
                }

                override fun onMessage(webSocket: WebSocket, text: String) {
                    Log.d(TAG, "WS Text Msg: $text")
                    if (text.contains("Path:turn.end")) {
                        webSocket.close(1000, "Done")
                    }
                }

                override fun onClosing(webSocket: WebSocket, code: Int, reason: String) {
                    finishPlayback()
                }

                override fun onFailure(webSocket: WebSocket, t: Throwable, response: Response?) {
                    Log.e(TAG, "Hata: ${t.message}")
                    val code = response?.code ?: lastResponseCode
                    if (!isRetry && code == 403) {
                        try {
                            val dateStr = response?.header("Date") ?: lastResponseDate
                            dateStr?.let { date ->
                                val fmt = SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss z", Locale.US)
                                val serverTime = fmt.parse(date)?.time ?: 0L
                                if (serverTime > 0L) {
                                    clockSkewSeconds = (serverTime - System.currentTimeMillis()) / 1000L
                                    Log.i(TAG, "Clock skew adjusted: $clockSkewSeconds seconds")
                                }
                            }
                        } catch (e: Exception) { Log.e(TAG, "Time sync error: ${e.message}") }
                        isSpeakingFlag.set(false)
                        speakInternal(text, isRetry = true, onComplete = onComplete, onError = onError)
                        return
                    }
                    finishPlayback()
                    onError?.invoke() ?: onComplete?.invoke()
                }
            })
        } catch (e: Exception) {
            Log.e(TAG, "Hata: ${e.message}")
            isSpeakingFlag.set(false)
            onError?.invoke() ?: onComplete?.invoke()
        }
    }

    /*
     * DİKKAT: KESİNLİKLE DEĞİŞTİRMEYİN! (22 HAZİRAN 2026 NOTU)
     * Microsoft TTS sunucusundan "raw-pcm" almak veya MediaPlayer yerine "AudioTrack" kullanmak 
     * Chery Omoda 5 ekranında (Android Auto donanımlarında) sessizlik sorunlarına ve cızırtıya yol açıyor.
     * Bu kod her zaman "audio-24khz-48kbitrate-mono-mp3" üzerinden çalışmalı ve MP3 dosyasına kaydedildikten 
     * sonra standart MediaPlayer ile oynatılmalıdır.
     */
    private fun sendSpeechConfig(ws: WebSocket) {
        val ts = SimpleDateFormat("EEE MMM dd yyyy HH:mm:ss 'GMT'Z", Locale.US).format(Date())
        val msg = "X-Timestamp:$ts\r\n" +
                "Content-Type:application/json; charset=utf-8\r\n" +
                "Path:speech.config\r\n\r\n" +
                "{\"context\":{\"synthesis\":{\"audio\":{\"metadataoptions\":{\"sentenceBoundaryEnabled\":\"false\",\"wordBoundaryEnabled\":\"false\"},\"outputFormat\":\"audio-24khz-48kbitrate-mono-mp3\"}}}}\r\n"
        ws.send(msg)
        
        tempFile = java.io.File(context.cacheDir, "tts_response.mp3")
        if (tempFile!!.exists()) tempFile!!.delete()
        fileOutputStream = java.io.FileOutputStream(tempFile)
    }

    private fun sendSynthesize(ws: WebSocket, text: String) {
        val currentVoice = AssistantApplication.edgeVoiceName.value
        val currentPitch = AssistantApplication.edgePitch.value
        val currentRate = AssistantApplication.edgeRate.value
        
        val ssml = "<speak version='1.0' xmlns='http://www.w3.org/2001/10/synthesis' xml:lang='tr-TR'>" +
                "<voice name='$currentVoice'>" +
                "<prosody pitch='$currentPitch' rate='$currentRate' volume='$volume'>" +
                escapeXml(text) +
                "</prosody></voice></speak>"

        val reqId = UUID.randomUUID().toString()
        val ts = SimpleDateFormat("EEE MMM dd yyyy HH:mm:ss 'GMT'Z", Locale.US).format(Date())
        val msg = "X-RequestId:$reqId\r\n" +
                "Content-Type:application/ssml+xml\r\n" +
                "X-Timestamp:$ts\r\n" +
                "Path:ssml\r\n\r\n" +
                ssml
        ws.send(msg)
    }

    private fun processAudio(data: ByteArray) {
        Log.d(TAG, "processAudio received bytes: ${data.size}")
        if (data.size < 2) return
        try {
            val headerLen = ((data[0].toInt() and 0xFF) shl 8) or (data[1].toInt() and 0xFF)
            Log.d(TAG, "headerLen: $headerLen")
            if (data.size > headerLen + 2) {
                val mp3 = data.copyOfRange(2 + headerLen, data.size)
                Log.d(TAG, "Audio chunk extracted: mp3.size=${mp3.size}")
                fileOutputStream?.write(mp3)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Audio hatası: ${e.message}")
        }
    }

    private fun finishPlayback(onComplete: (() -> Unit)? = null) {
        try { fileOutputStream?.close() } catch (_: Exception) {}
        try { audioTrack?.stop(); audioTrack?.release() } catch (_: Exception) {}
        audioTrack = null
        
        android.os.Handler(android.os.Looper.getMainLooper()).post {
            try {
                // DİKKAT: USAGE_ASSISTANCE_NAVIGATION_GUIDANCE kesinlikle değiştirilmemelidir!
                // Müzik çalarken asistanın sesinin ezilmemesi ve navigasyon hoparlöründen 
                // net bir şekilde gelebilmesi için bu ses kanalının kullanılması zorunludur.
                mediaPlayer = android.media.MediaPlayer().apply {
                    val usage = if (AssistantApplication.isCarHardware) {
                        AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE
                    } else {
                        AudioAttributes.USAGE_MEDIA
                    }
                    setAudioAttributes(
                        AudioAttributes.Builder()
                            .setUsage(usage)
                            .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
                            .build()
                    )
                    setDataSource(tempFile!!.absolutePath)
                    prepare()
                    start()
                    setOnCompletionListener {
                        it.release()
                        isSpeakingFlag.set(false)
                        onComplete?.invoke()
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "MediaPlayer hatası: ${e.message}")
                isSpeakingFlag.set(false)
                onComplete?.invoke()
            }
        }
    }

    override fun stop() { 
        try { fileOutputStream?.close() } catch (_: Exception) {}
        try { audioTrack?.stop(); audioTrack?.release() } catch (_: Exception) {}
        try { mediaPlayer?.stop(); mediaPlayer?.release() } catch (_: Exception) {}
        isSpeakingFlag.set(false)
    }

    override fun shutdown() {
        stop()
    }

    private fun escapeXml(s: String): String {
        return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;")
    }
}
