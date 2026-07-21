package com.omoda.lanc.tts

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.util.Log
import com.omoda.lanc.core.GlobalState
import okhttp3.*
import okio.ByteString
import java.io.File
import java.io.FileOutputStream
import java.util.*
import java.util.concurrent.TimeUnit

class EdgeOnlineTTSManager(private val context: Context) : TTSManager {

    private val TAG = "EdgeTTS-Online"
    private val client = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .build()

    private var webSocket: WebSocket? = null
    private var mediaPlayer: MediaPlayer? = null
    private var pendingOnComplete: (() -> Unit)? = null
    private var pendingOnError: (() -> Unit)? = null
    @Volatile private var isPlaying = false
    @Volatile private var isStopped = false  // H-13: stop() çağrılınca finalizeAndPlay() engellenir
    private var currentAudioFile: File? = null
    private var outputStream: FileOutputStream? = null

    private val voiceName = "tr-TR-AhmetNeural"

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        if (text.isBlank()) {
            onComplete?.invoke()
            return
        }

        stop()
        isStopped = false  // H-13: Yeni konuşma başlıyor, durdurma bayragi sıfırlanır
        pendingOnComplete = onComplete
        pendingOnError = onError
        
        val requestId = UUID.randomUUID().toString().replace("-", "")
        currentAudioFile = File(context.cacheDir, "edge_tts_$requestId.mp3")
        outputStream = FileOutputStream(currentAudioFile)

        val url = "wss://speech.platform.bing.com/consumer/speech/synthesize/readaloud/edge/v1?TrustedClientToken=${GlobalState.edgeTtsToken.value}"
        val request = Request.Builder().url(url)
            .header("Origin", "chrome-extension://jdiccldimpdaibmpdkjnbmckianbfold")
            .header("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36")
            .build()

        webSocket = client.newWebSocket(request, object : WebSocketListener() {
            override fun onOpen(webSocket: WebSocket, response: Response) {
                val configMsg = "Content-Type:application/json; charset=utf-8\r\nPath:speech.config\r\n\r\n" +
                        "{\"context\":{\"synthesis\":{\"audio\":{\"metadataoptions\":{\"sentenceBoundaryEnabled\":\"false\",\"wordBoundaryEnabled\":\"false\"}," +
                        "\"outputFormat\":\"audio-24khz-48kbitrate-mono-mp3\"}}}}"
                webSocket.send(configMsg)

                val rateValue = ((GlobalState.ttsRate.value - 1.0f) * 100).toInt()
                val pitchValue = ((GlobalState.ttsPitch.value - 1.0f) * 100).toInt()
                
                val rateStr = if (rateValue >= 0) "+$rateValue%" else "$rateValue%"
                val pitchStr = if (pitchValue >= 0) "+$pitchValue%" else "$pitchValue%"

                val escapedText = text.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&apos;")

                val ssml = "<speak version='1.0' xmlns='http://www.w3.org/2001/10/synthesis' xml:lang='tr-TR'>" +
                        "<voice name='$voiceName'><prosody rate='$rateStr' pitch='$pitchStr'>$escapedText</prosody></voice></speak>"
                val ssmlMsg = "X-RequestId:$requestId\r\nContent-Type:application/ssml+xml\r\nPath:ssml\r\n\r\n$ssml"
                webSocket.send(ssmlMsg)
            }

            override fun onMessage(webSocket: WebSocket, bytes: ByteString) {
                val data = bytes.toByteArray()
                if (data.size > 2) {
                    val headerLen = ((data[0].toInt() and 0xFF) shl 8) or (data[1].toInt() and 0xFF)
                    if (data.size > headerLen + 2) {
                        outputStream?.write(data, headerLen + 2, data.size - (headerLen + 2))
                    }
                }
            }

            override fun onMessage(webSocket: WebSocket, text: String) {
                if (text.contains("Path:turn.end")) {
                    webSocket.close(1000, "Done")
                    finalizeAndPlay()
                }
            }

            override fun onFailure(webSocket: WebSocket, t: Throwable, response: Response?) {
                Log.e(TAG, "WebSocket Hatası: ${t.message}")
                outputStream?.close()
                onError?.invoke()
            }
        })
    }

    private fun finalizeAndPlay() {
        // H-13: stop() çağrıldıysa oynatma iptal edilir
        if (isStopped) return
        try {
            outputStream?.flush()
            outputStream?.close()
            outputStream = null

            val audioFile = currentAudioFile  // H-12: Yerel değişkene kopyala (eszamanlı null riski)
            if (audioFile != null && audioFile.exists() && audioFile.length() > 0) {
                android.os.Handler(android.os.Looper.getMainLooper()).post {
                    if (!isStopped) playCapturedFile(audioFile)  // H-13: Tekrar kontrol
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Finalize Hatası: ${e.message}")
        }
    }

    private fun playCapturedFile(audioFile: File) {  // H-12: null-safe paramètre
        if (webSocket == null && !isPlaying && mediaPlayer == null) {
            // Already stopped before we could play
            return
        }
        try {
            mediaPlayer = MediaPlayer().apply {
                setAudioAttributes(
                    AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE)
                        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
                        .build()
                )
                setDataSource(audioFile.absolutePath)  // H-12: !! kaldırıldı, null-safe paramètre
                setOnPreparedListener { 
                    this@EdgeOnlineTTSManager.isPlaying = true
                    start() 
                }
                setOnCompletionListener { 
                    this@EdgeOnlineTTSManager.isPlaying = false
                    pendingOnComplete?.invoke()
                }
                setOnErrorListener { _, _, _ -> 
                    this@EdgeOnlineTTSManager.isPlaying = false
                    pendingOnError?.invoke()
                    true 
                }
                prepareAsync()
            }
        } catch (e: Exception) {
            Log.e(TAG, "Oynatma Hatası: ${e.message}")
            this@EdgeOnlineTTSManager.isPlaying = false
            pendingOnComplete?.invoke()
        }
    }

    override fun stop() {
        isStopped = true  // H-13: finalizeAndPlay() bu bayrağı görünce dur
        try {
            webSocket?.close(1000, null)
            webSocket = null
            val player = mediaPlayer
            mediaPlayer = null
            this@EdgeOnlineTTSManager.isPlaying = false
            if (player != null) {
                try { if (player.isPlaying) player.stop() } catch (_: Exception) {}
                try { player.release() } catch (_: Exception) {}  // H-11 pattern
            }
        } catch (_: Exception) {}
        try { outputStream?.close() } catch (_: Exception) {}
        outputStream = null
        
        // TTS-5 Fix: Clean old cache files
        cleanupCache()
    }

    private fun cleanupCache() {
        try {
            val files = context.cacheDir.listFiles { _, name -> name.startsWith("edge_tts_") }
            files?.filter { it.lastModified() < System.currentTimeMillis() - 3600000 } // 1 hour old
                ?.forEach { it.delete() }
        } catch (_: Exception) {}
    }

    override fun isSpeaking(): Boolean = isPlaying
    override fun shutdown() { stop() }
}
