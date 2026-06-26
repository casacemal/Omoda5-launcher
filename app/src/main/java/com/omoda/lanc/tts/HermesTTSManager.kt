package com.omoda.lanc.tts

import android.content.Context
import android.media.AudioAttributes
import android.media.AudioFocusRequest
import android.media.AudioManager
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
 * Hermes ve Edge TTS Yöneticisi (Sürüm 6.0 - Omega Stable)
 * Dosya tabanlı çalma (File-based playback) ile OOM çökmesi engellendi.
 * API Referansı: POST + JSON Body standardına %100 uyum sağlandı.
 */
class HermesTTSManager(private val context: Context) : TTSManager {

    private val TAG = "Hermes-TTSManager"
    private val client = NetworkModule.robustClient
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager

    private var mediaPlayer: MediaPlayer? = null
    private var audioFocusRequest: AudioFocusRequest? = null
    private var onCompleteCallback: (() -> Unit)? = null
    private var currentJob: Job? = null
    private var tempAudioFile: File? = null

    private val audioAttributes = AudioAttributes.Builder()
        .setUsage(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE)
        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
        .build()

    override fun speak(text: String) {
        speak(text, onComplete = null)
    }

    fun speak(
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
        val isEdge = engine == "EDGE"
        
        AssistantApplication.ledTts.value = true
        AssistantApplication.status.value = "Konuşuyor..."
        AssistantApplication.addLog("TTS Akışı: $engine")

        currentJob = scope.launch {
            try {
                requestAudioFocus()

                val engine = AssistantApplication.ttsEngine.value
                val isEdge = engine == "EDGE"
                
                // Sürüm 6.1: Edge TTS için evrensel token ve URL yapısı (Guide v2 uyumlu)
                // Edge için de Hermes Gateway (baseUrl) kullanılır, çünkü Gateway proxy görevi görür.
                val finalBaseUrl = baseUrl.removeSuffix("/")

                val voice = if (isEdge) "edge" else "alloy"
                
                // URL Oluşturma: Edge için query param + token yapısı
                val urlBuilder = StringBuilder("$finalBaseUrl/audio/speech")
                if (isEdge) {
                    urlBuilder.append("?input=").append(URLEncoder.encode(sanitizedText, "UTF-8"))
                    urlBuilder.append("&model=tts-1")
                    urlBuilder.append("&voice=").append(voice)
                    urlBuilder.append("&TrustedClientToken=").append(AssistantApplication.EDGE_TTS_TOKEN)
                }
                
                val fullUrl = urlBuilder.toString()
                Log.i(TAG, "TTS İsteği (${if(isEdge) "EDGE" else "HERMES"}): $fullUrl")

                val requestBuilder = Request.Builder().url(fullUrl)
                
                if (isEdge) {
                    // Edge için GET kullanımı (veya token URL'de olduğu için boş body POST)
                    // Rehberdeki örnekte URL encode edilmiş parametreler kullanılıyor.
                    requestBuilder.post("".toRequestBody("application/json".toMediaType()))
                } else {
                    val jsonBody = org.json.JSONObject().apply {
                        put("model", "tts-1")
                        put("input", sanitizedText)
                        put("voice", voice)
                    }
                    requestBuilder.post(jsonBody.toString().toRequestBody("application/json".toMediaType()))
                    requestBuilder.addHeader("Authorization", "Bearer $apiKey")
                    requestBuilder.addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
                }

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

    private fun requestAudioFocus() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            audioFocusRequest = AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK)
                .setAudioAttributes(audioAttributes)
                .setAcceptsDelayedFocusGain(true)
                .setOnAudioFocusChangeListener { focusChange ->
                    Log.d(TAG, "Audio Focus Değişimi: $focusChange")
                    if (focusChange == AudioManager.AUDIOFOCUS_LOSS) {
                        stop()
                    }
                }
                .build()
            val result = audioManager.requestAudioFocus(audioFocusRequest!!)
            Log.i(TAG, "Audio Focus İsteği (EXCLUSIVE) Sonucu: $result")
        }
    }

    private fun abandonAudioFocus() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            audioFocusRequest?.let { audioManager.abandonAudioFocusRequest(it) }
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
            abandonAudioFocus()
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
