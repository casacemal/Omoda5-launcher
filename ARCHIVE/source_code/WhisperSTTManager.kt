package com.omoda.lanc.stt

import android.content.Context
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.*
import java.io.File

class WhisperSTTManager(private val context: Context, private val scope: CoroutineScope) : STTManager {

    companion object {
        init {
            System.loadLibrary("whisper-jni")
        }
    }

    private var isModelLoaded = false

    init {
        loadModel()
    }

    private external fun loadModelJNI(path: String): Boolean
    private external fun processAudioJNI(audioData: FloatArray): String
    private external fun freeModelJNI()

    private fun loadModel() {
        scope.launch(Dispatchers.IO) {
            val modelFile = File(context.filesDir, "models/ggml-tiny-q5_1.bin")
            if (modelFile.exists()) {
                isModelLoaded = loadModelJNI(modelFile.absolutePath)
                if (isModelLoaded) {
                    AssistantApplication.addLog("Whisper modeli başarıyla yüklendi.")
                } else {
                    AssistantApplication.addLog("Whisper model yükleme hatası.")
                }
            } else {
                AssistantApplication.addLog("Whisper modeli bulunamadı: ${modelFile.absolutePath}")
            }
        }
    }

    override fun startListening(onResult: (String) -> Unit, onError: (Throwable) -> Unit) {
        if (!isModelLoaded) {
            AssistantApplication.addLog("Whisper modeli henüz yüklü değil, STT başlatılamadı.")
            return
        }
        // İleride AudioRecord'dan sesi okuyup processAudioJNI'a gönderecek döngü buraya eklenecek.
        // Şimdilik stub olarak bırakıyoruz, çünkü C++ ses yakalama/aktarma daha karmaşık bir NDK yapılandırması gerektirir.
        AssistantApplication.addLog("Whisper dinlemeye başladı (Stub).")
    }

    override fun stopListening() {
        AssistantApplication.addLog("Whisper dinlemeyi durdurdu (Stub).")
    }

    fun destroy() {
        freeModelJNI()
    }
}
