package com.omoda.lanc.tts

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.util.Log
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File

import com.k2fsa.sherpa.onnx.OfflineTts
import com.k2fsa.sherpa.onnx.OfflineTtsConfig
import com.k2fsa.sherpa.onnx.OfflineTtsModelConfig
import com.k2fsa.sherpa.onnx.OfflineTtsVitsModelConfig
import com.k2fsa.sherpa.onnx.GenerationConfig

class SherpaOnnxSpeechManager(private val context: Context) : TTSManager {

    private val TAG = "SherpaOnnxSpeech"
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val installer = SherpaModelInstaller(context)

    private var currentJob: Job? = null
    private var mediaPlayer: MediaPlayer? = null
    private var pendingOnComplete: (() -> Unit)? = null

    private var sharedTts: OfflineTts? = null

    init {
        scope.launch {
            try {
                // Önce modellerin kurulu olduğundan emin ol (assets'ten kopyalar)
                if (installer.ensureInstalled()) {
                    getOrCreateTts()
                    Log.i(TAG, "Sherpa ONNX TTS motoru hazır.")
                } else {
                    Log.e(TAG, "Sherpa modelleri yüklenemedi, motor başlatılamıyor.")
                    AssistantApplication.addLog("HATA: Sherpa modelleri yüklenemedi.")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Sherpa ONNX init hatası: ${e.message}")
            }
        }
    }

    fun isReady(): Boolean {
        return sharedTts != null
    }

    override fun speak(text: String) {
        speak(text, null)
    }

    fun speak(text: String, onComplete: (() -> Unit)? = null): Boolean {
        if (text.isBlank()) {
            onComplete?.invoke()
            return true
        }

        if (!isReady()) {
            Log.w(TAG, "Speak çağrıldı ama Sherpa henüz hazır değil.")
            return false
        }

        stop()
        pendingOnComplete = onComplete
        AssistantApplication.addLog("Sherpa TTS konuşuyor...")

        currentJob = scope.launch {
            try {
                val outputFile = withContext(Dispatchers.IO) {
                    synthesizeToWav(text)
                }

                if (outputFile == null || !outputFile.exists()) {
                    throw IllegalStateException("Sherpa ses dosyası oluşturamadı.")
                }

                withContext(Dispatchers.Main) {
                    playFile(outputFile)
                }
            } catch (e: Exception) {
                Log.e(TAG, "Sherpa TTS hatası: ${e.message}")
                withContext(Dispatchers.Main) {
                    cleanup()
                    pendingOnComplete?.invoke()
                    pendingOnComplete = null
                }
            }
        }

        return true
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
            numThreads = 1 // Semidrive stabilite için çekirdek sayısı düşürüldü
            debug = false
        }

        val ttsConfig = OfflineTtsConfig().apply {
            model = modelConfig
        }

        try {
            // AssetManager null geçiliyor çünkü dosyalar artık dahili hafızada (filesDir)
            sharedTts = OfflineTts(assetManager = null as android.content.res.AssetManager?, config = ttsConfig)
        } catch (e: Exception) {
            Log.e(TAG, "OfflineTts oluşturma hatası: ${e.message}")
            // Reflection fallback if needed
            try {
                val constructor = OfflineTts::class.java.constructors.first()
                sharedTts = constructor.newInstance(null, ttsConfig) as OfflineTts
            } catch (ex: Exception) {
                Log.e(TAG, "Kritik: Sherpa constructor hatası!")
            }
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
        
        if (generatedAudio == null || generatedAudio.samples == null || generatedAudio.samples.isEmpty()) {
             return null
        }

        val outputFile = File(context.cacheDir, "sherpa_tts_output.wav")
        generatedAudio.save(outputFile.absolutePath)

        return outputFile
    }

    private fun playFile(file: File) {
        try {
            mediaPlayer = MediaPlayer().apply {
                setAudioAttributes(
                    AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_ASSISTANT)
                        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
                        .build()
                )
                setDataSource(file.absolutePath)
                setOnPreparedListener {
                    try {
                        start()
                    } catch (e: Exception) {
                        Log.e(TAG, "Oynatma başlatılamadı: ${e.message}")
                        handlePlaybackError()
                    }
                }
                setOnCompletionListener {
                    handlePlaybackComplete()
                }
                setOnErrorListener { _, what, extra ->
                    Log.e(TAG, "MediaPlayer hatası: what=$what extra=$extra")
                    handlePlaybackError()
                    true
                }
                prepareAsync()
            }
        } catch (e: Exception) {
            Log.e(TAG, "MediaPlayer kurulum hatası: ${e.message}")
            handlePlaybackError()
        }
    }

    private fun handlePlaybackComplete() {
        cleanup()
        pendingOnComplete?.invoke()
        pendingOnComplete = null
    }

    private fun handlePlaybackError() {
        cleanup()
        pendingOnComplete?.invoke()
        pendingOnComplete = null
    }

    private fun cleanup() {
        try {
            mediaPlayer?.let { player ->
                if (player.isPlaying) {
                    player.stop()
                }
                player.reset()
                player.release()
            }
        } catch (e: Exception) {
            Log.e(TAG, "Cleanup hatası: ${e.message}")
        } finally {
            mediaPlayer = null
        }
    }

    override fun stop() {
        currentJob?.cancel()
        currentJob = null
        cleanup()
        pendingOnComplete = null
    }

    override fun shutdown() {
        stop()
        synchronized(this) {
            sharedTts?.release()
            sharedTts = null
        }
    }
}
