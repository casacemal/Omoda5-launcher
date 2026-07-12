package com.omoda.lanc.voice

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.tts.TTSManager
import kotlinx.coroutines.*
import java.io.File

import com.k2fsa.sherpa.onnx.OfflineTts
import com.k2fsa.sherpa.onnx.OfflineTtsConfig
import com.k2fsa.sherpa.onnx.OfflineTtsModelConfig
import com.k2fsa.sherpa.onnx.OfflineTtsVitsModelConfig
import com.k2fsa.sherpa.onnx.GenerationConfig

/**
 * SherpaOnnxSpeechManager - Yerel (Offline) Piper TTS Yöneticisi.
 */
class SherpaOnnxSpeechManager(private val context: Context) : TTSManager {

    private val TAG = "SherpaOnnxSpeech"
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val installer = SherpaModelInstaller(context)

    private var currentJob: Job? = null
    private var mediaPlayer: MediaPlayer? = null
    private var pendingOnComplete: (() -> Unit)? = null
    private var pendingOnError: (() -> Unit)? = null

    private var sharedTts: OfflineTts? = null

    init {
        scope.launch {
            try {
                // Modellerin yüklendiğinden emin ol, ama yükleme başarısız olsa da devam et
                val installed = installer.ensureInstalled()
                if (installed) {
                    getOrCreateTts()
                    Log.i(TAG, "Sherpa ONNX TTS motoru hazır.")
                } else {
                    Log.w(TAG, "Sherpa modelleri tam değil, bazı özellikler çalışmayabilir.")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Sherpa ONNX init hatası: ${e.message}")
            }
        }
    }

    private fun isReady(): Boolean = sharedTts != null

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        if (text.isBlank()) {
            onComplete?.invoke()
            return
        }

        if (!isReady()) {
            Log.w(TAG, "Sherpa hazır değil, fallback tetiklenebilir.")
            onError?.invoke()
            return
        }

        stop()
        pendingOnComplete = onComplete
        pendingOnError = onError

        currentJob = scope.launch {
            try {
                // KRİTİK: Sentezleme sırasında oluşabilecek native çökmeleri engellemek için try-catch
                val outputFile = try {
                    synthesizeToWav(text)
                } catch (e: Exception) {
                    Log.e(TAG, "Native Sentezleme Hatası: ${e.message}")
                    null
                }

                if (outputFile == null || !outputFile.exists()) {
                    throw IllegalStateException("Sentezleme başarısız.")
                }

                withContext(Dispatchers.Main) {
                    playFile(outputFile)
                }
            } catch (e: Exception) {
                Log.e(TAG, "Sherpa TTS genel hatası: ${e.message}")
                withContext(Dispatchers.Main) {
                    cleanup()
                    onError?.invoke()
                }
            }
        }
    }

    @Synchronized
    private fun getOrCreateTts(): OfflineTts? {
        if (sharedTts != null) return sharedTts
        
        val modelDir = installer.modelDirectory()
        
        val vitsConfig = OfflineTtsVitsModelConfig().apply {
            model = File(modelDir, "tr_TR-dfki-medium.onnx").absolutePath
            lexicon = ""
            tokens = File(modelDir, "tokens.txt").absolutePath
            dataDir = File(modelDir, "espeak-ng-data").absolutePath
        }

        val modelConfig = OfflineTtsModelConfig().apply {
            vits = vitsConfig
            numThreads = 1
            debug = false
        }

        val ttsConfig = OfflineTtsConfig().apply {
            model = modelConfig
        }

        try {
            sharedTts = OfflineTts(null as android.content.res.AssetManager?, ttsConfig)
        } catch (e: Exception) {
            Log.e(TAG, "OfflineTts oluşturulamadı: ${e.message}")
        }
        return sharedTts
    }

    private fun synthesizeToWav(text: String): File? {
        val tts = getOrCreateTts() ?: return null

        val genConfig = GenerationConfig().apply {
            sid = 0
            speed = 1.0f
            silenceScale = 0.2f
        }

        val generatedAudio = tts.generateWithConfig(text, genConfig)
        @Suppress("SENSELESS_COMPARISON")
        if (generatedAudio == null || generatedAudio.samples == null) return null

        val outputFile = File(context.cacheDir, "sherpa_tts_output.wav")
        generatedAudio.save(outputFile.absolutePath)
        return outputFile
    }

    private fun playFile(file: File) {
        try {
            mediaPlayer = MediaPlayer().apply {
                setAudioAttributes(
                    AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE) // NAVİGASYON KANALI
                        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
                        .build()
                )
                setDataSource(file.absolutePath)
                setOnPreparedListener { start() }
                setOnCompletionListener { handlePlaybackComplete() }
                setOnErrorListener { _, _, _ -> handlePlaybackError(); true }
                prepareAsync()
            }
        } catch (e: Exception) {
            handlePlaybackError()
        }
    }

    private fun handlePlaybackComplete() {
        cleanup()
        val callback = pendingOnComplete
        pendingOnComplete = null
        pendingOnError = null
        callback?.invoke()
    }

    private fun handlePlaybackError() {
        cleanup()
        val callback = pendingOnError
        pendingOnComplete = null
        pendingOnError = null
        callback?.invoke() // TTS-2 Fix
    }

    private fun cleanup() {
        try {
            mediaPlayer?.let {
                if (it.isPlaying) it.stop()
                it.reset()
                it.release()
            }
        } catch (e: Exception) {
        } finally {
            mediaPlayer = null
        }
    }

    override fun stop() {
        currentJob?.cancel()
        cleanup()
        pendingOnComplete = null
        pendingOnError = null
    }

    override fun isSpeaking(): Boolean = mediaPlayer?.isPlaying == true || currentJob?.isActive == true
    override fun shutdown() {
        stop()
        sharedTts?.release()
        sharedTts = null
    }
}
