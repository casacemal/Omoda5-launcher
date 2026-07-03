package com.omoda.lanc.tts

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.network.NetworkModule
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.Request
import okhttp3.RequestBody.Companion.toRequestBody
import java.io.File
import java.net.URLEncoder

/**
 * Hermes TTS Yöneticisi (Sürüm 6.0 - Omega Stable)
 * Dosya tabanlı çalma (File-based playback) ile OOM çökmesi engellendi.
 * API Referansı: POST + JSON Body standardına %100 uyum sağlandı.
 */
class HermesTTSManager(private val context: Context) : TTSManager {

    private val TAG = "Hermes-TTSManager"
    private val client = NetworkModule.robustClient
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private var mediaPlayer: MediaPlayer? = null
    private var onCompleteCallback: (() -> Unit)? = null
    private var currentJob: Job? = null
    private var tempAudioFile: File? = null

    private val audioAttributes = AudioAttributes.Builder()
        .setUsage(
            if (AssistantApplication.isCarHardware) 
                AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE 
            else 
                AudioAttributes.USAGE_MEDIA
        )
        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
        .build()

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        speakInternal(text, AssistantApplication.TTS_BASE_URL, AssistantApplication.HERMES_API_KEY, onComplete, onError)
    }

    override fun isSpeaking(): Boolean {
        return mediaPlayer?.isPlaying == true || currentJob?.isActive == true
    }

    private fun speakInternal(
        text: String,
        baseUrl: String = AssistantApplication.TTS_BASE_URL,
        apiKey: String = AssistantApplication.HERMES_API_KEY,
        onComplete: (() -> Unit)? = null,
        onError: (() -> Unit)? = null
    ) {
        val sanitizedText = text.replace("\n", " ").replace("\r", " ").trim()
        if (sanitizedText.isBlank()) {
            onComplete?.invoke()
            return
        }

        stop()
        onCompleteCallback = onComplete

        val engine = AssistantApplication.ttsEngine.value
        AssistantApplication.ledTts.value = true
        AssistantApplication.status.value = "Konuşuyor..."
        AssistantApplication.addLog("TTS Akışı: $engine")

        currentJob = scope.launch {
            try {
                val isWyoming = AssistantApplication.isBridgeMode.value && AssistantApplication.bridgeType.value == "WYOMING"
                
                val fullUrl = if (isWyoming) {
                    "${baseUrl.removeSuffix("/")}/tts"
                } else {
                    val base = baseUrl.removeSuffix("/").replace("/v2", "").replace("/v1", "")
                    "$base/v1/audio/speech"
                }
                
                Log.i(TAG, "TTS İsteği (${if(isWyoming) "WYOMING" else "OPENAI"}): $fullUrl")

                val requestBuilder = Request.Builder().url(fullUrl)
                
                val voice = if (AssistantApplication.isBridgeMode.value) "tr_TR-dfki-medium" else "alloy"
                
                val jsonBody = org.json.JSONObject().apply {
                    if (isWyoming) {
                        put("text", sanitizedText)
                    } else {
                        if (!AssistantApplication.isBridgeMode.value) {
                            put("model", "tts-1")
                        }
                        put("input", sanitizedText)
                        put("voice", voice)
                    }
                }
                requestBuilder.post(jsonBody.toString().toRequestBody("application/json".toMediaType()))
                requestBuilder.addHeader("Authorization", "Bearer $apiKey")
                requestBuilder.addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)

                val request = requestBuilder.build()
                val response = client.newCall(request).execute()
                
                if (!response.isSuccessful) {
                    val code = response.code
                    response.close()
                    throw java.io.IOException("HTTP Hatası: $code")
                }

                val body = response.body ?: throw java.io.IOException("Boş yanıt gövdesi")
                tempAudioFile = File(context.cacheDir, "hermes_tts_temp.wav")
                
                body.byteStream().use { input ->
                    tempAudioFile?.outputStream()?.use { output ->
                        input.copyTo(output)
                    }
                }
                response.close()

                withContext(Dispatchers.Main) {
                    tempAudioFile?.let { playFromFile(it) }
                }
            } catch (e: Exception) {
                Log.e(TAG, "TTS İndirme Hatası: ${e.message}")
                AssistantApplication.addLog("TTS Hata: ${e.message}")
                withContext(Dispatchers.Main) {
                    onError?.invoke()
                    handlePlaybackError()
                }
            }
        }
    }

    private fun playFromFile(file: File) {
        try {
            mediaPlayer = MediaPlayer().apply {
                setAudioAttributes(audioAttributes)
                setDataSource(file.absolutePath)

                setOnPreparedListener {
                    Log.i(TAG, "MediaPlayer hazır, oynatılıyor...")
                    start()
                }

                setOnCompletionListener {
                    Log.i(TAG, "MediaPlayer tamamlandı.")
                    handlePlaybackComplete()
                }

                setOnErrorListener { _, what, extra ->
                    Log.e(TAG, "MediaPlayer Hatası: what=$what, extra=$extra")
                    handlePlaybackError()
                    true
                }

                prepareAsync()
            }
        } catch (e: Exception) {
            Log.e(TAG, "MediaPlayer Kurulum Hatası: ${e.message}")
            handlePlaybackError()
        }
    }

    private fun handlePlaybackComplete() {
        cleanup()
        resetLed()
        onCompleteCallback?.invoke()
        onCompleteCallback = null
    }

    private fun handlePlaybackError() {
        cleanup()
        resetLed()
        onCompleteCallback?.invoke()
        onCompleteCallback = null
    }

    private fun cleanup() {
        try {
            mediaPlayer?.let {
                if (it.isPlaying) it.stop()
                it.reset()
                it.release()
            }
            tempAudioFile?.delete()
        } catch (e: Exception) {
            Log.e(TAG, "Temizleme Hatası: ${e.message}")
        } finally {
            mediaPlayer = null
            tempAudioFile = null
            currentJob = null
        }
    }

    private fun resetLed() {
        AssistantApplication.ledTts.value = false
        if (AssistantApplication.status.value == "Konuşuyor...") {
            AssistantApplication.status.value = "Hazır"
        }
    }

    override fun stop() {
        currentJob?.cancel()
        cleanup()
        resetLed()
    }

    override fun shutdown() {
        stop()
    }
}
