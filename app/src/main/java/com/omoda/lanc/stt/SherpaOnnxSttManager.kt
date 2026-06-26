package com.omoda.lanc.stt

import android.content.Context
import android.util.Log
import com.k2fsa.sherpa.onnx.FeatureConfig
import com.k2fsa.sherpa.onnx.OfflineModelConfig
import com.k2fsa.sherpa.onnx.OfflineRecognizer
import com.k2fsa.sherpa.onnx.OfflineRecognizerConfig
import com.k2fsa.sherpa.onnx.OfflineWhisperModelConfig
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Sürüm 3.1: Hata Toleranslı Sherpa STT Yöneticisi
 */
class SherpaOnnxSttManager(
    private val context: Context,
    private val scope: CoroutineScope
) : STTManager {

    private val TAG = "SherpaOnnxStt"
    private var recognizer: OfflineRecognizer? = null
    private val isInitializing = AtomicBoolean(false)

    init {
        scope.launch {
            AssistantApplication.sherpaSttModelInstallDetail.collect { path ->
                if (path.isNotEmpty() && !path.startsWith("Modelleri")) {
                    initRecognizer(File(path))
                }
            }
        }
    }

    fun isReady(): Boolean = recognizer != null

    private fun initRecognizer(modelDir: File) {
        if (recognizer != null || isInitializing.getAndSet(true)) return 
        
        scope.launch(Dispatchers.IO) {
            try {
                Log.i(TAG, "Recognizer başlatılıyor. Klasör: ${modelDir.absolutePath}")
                
                val files = modelDir.listFiles() ?: emptyArray()
                val encoderPath = files.find { it.name.lowercase().contains("encoder") && it.name.endsWith(".onnx") }?.absolutePath
                val decoderPath = files.find { it.name.lowercase().contains("decoder") && it.name.endsWith(".onnx") }?.absolutePath
                val tokensPath = files.find { it.name.lowercase().contains("token") && it.name.endsWith(".txt") }?.absolutePath

                Log.d(TAG, "Bulunan Bileşenler:")
                Log.d(TAG, "-> Encoder: $encoderPath")
                Log.d(TAG, "-> Decoder: $decoderPath")
                Log.d(TAG, "-> Tokens: $tokensPath")

                if (encoderPath == null || decoderPath == null || tokensPath == null) {
                    AssistantApplication.addLog("HATA: Model bileşenleri eksik!")
                    Log.e(TAG, "Eksik bileşenler var. Klasör içeriği: ${files.joinToString { it.name }}")
                    isInitializing.set(false)
                    return@launch
                }

                val whisperConfig = OfflineWhisperModelConfig().apply {
                    encoder = encoderPath
                    decoder = decoderPath
                    language = "tr"
                    task = "transcribe"
                    tailPaddings = -1
                }

                val modelConfig = OfflineModelConfig().apply {
                    whisper = whisperConfig
                    tokens = tokensPath
                    numThreads = 1 // Semidrive stabilite için çekirdek sayısı düşürüldü
                    debug = false
                }

                val featConfig = FeatureConfig().apply {
                    sampleRate = 16000
                    featureDim = 80 
                }

                val config = OfflineRecognizerConfig()
                config.modelConfig = modelConfig
                config.featConfig = featConfig
                config.decodingMethod = "greedy"

                recognizer = OfflineRecognizer(
                    assetManager = null as android.content.res.AssetManager?,
                    config = config
                )
                
                AssistantApplication.addLog("Lokal STT Motoru Hazır.")
                Log.i(TAG, "OfflineRecognizer başarıyla oluşturuldu.")
            } catch (e: Exception) {
                Log.e(TAG, "Recognizer Init Hatası: ${e.message}")
                AssistantApplication.addLog("STT Motoru Hatası: ${e.message}")
            } finally {
                isInitializing.set(false)
            }
        }
    }

    override fun startListening(onResult: (String) -> Unit, onError: (Throwable) -> Unit) {}
    override fun stopListening() {}

    suspend fun transcribe(samples: FloatArray): String = withContext(Dispatchers.IO) {
        if (samples.isEmpty()) return@withContext ""
        
        val rec = recognizer ?: return@withContext "[STT Hazır Değil]"
        
        return@withContext try {
            val stream = rec.createStream() ?: return@withContext ""
            stream.acceptWaveform(samples, 16000)
            rec.decode(stream)
            val result = rec.getResult(stream)
            stream.release()
            result.text.trim()
        } catch (e: Exception) {
            Log.e(TAG, "Transcribe Hatası: ${e.message}")
            ""
        }
    }

    fun release() {
        recognizer?.release()
        recognizer = null
    }
}
