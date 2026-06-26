package com.omoda.lanc.stt

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream

class SherpaSttModelInstaller(private val context: Context) {

    private val TAG = "SherpaSttModelInstaller"
    private val ASSET_PATH = "sherpa_stt/whisper-tiny"
    
    private val ENCODER_FILE = "tiny-encoder.onnx"
    private val DECODER_FILE = "tiny-decoder.onnx"
    private val TOKENS_FILE = "tiny-tokens.txt"

    suspend fun ensureInstalled(): Boolean = withContext(Dispatchers.IO) {
        /* GEÇİCİ OLARAK DEVRE DIŞI - PERFORMANS
        val root = File(context.filesDir, "sherpa_stt")
        val modelDir = File(root, "whisper-tiny")

        if (!modelDir.exists()) modelDir.mkdirs()

        if (isModelReady(modelDir)) {
            AssistantApplication.sherpaSttModelInstallState.value = "INSTALLED"
            AssistantApplication.sherpaSttModelInstallDetail.value = modelDir.absolutePath
            return@withContext true
        }

        AssistantApplication.addLog("STT Modelleri assets'ten kuruluyor (Bu işlem biraz zaman alabilir)...")
        AssistantApplication.status.value = "STT Hazırlanıyor..."

        try {
            // 1. Encoder Kopyala
            copyAssetFile("$ASSET_PATH/$ENCODER_FILE", File(modelDir, ENCODER_FILE))

            // 2. Decoder Kopyala
            copyAssetFile("$ASSET_PATH/$DECODER_FILE", File(modelDir, DECODER_FILE))

            // 3. Tokens Kopyala
            copyAssetFile("$ASSET_PATH/$TOKENS_FILE", File(modelDir, TOKENS_FILE))

            if (isModelReady(modelDir)) {
                AssistantApplication.sherpaSttModelInstallState.value = "INSTALLED"
                AssistantApplication.sherpaSttModelInstallDetail.value = modelDir.absolutePath
                AssistantApplication.addLog("Sherpa STT modelleri başarıyla yüklendi.")
                return@withContext true
            }
        } catch (e: Exception) {
            Log.e(TAG, "STT Asset kopyalama hatası: ${e.message}")
            AssistantApplication.addLog("STT Kurulum hatası: ${e.message}")
            AssistantApplication.status.value = "STT Kurulum Başarısız"
        }
        */
        return@withContext false
    }

    private fun copyAssetFile(assetPath: String, destination: File) {
        context.assets.open(assetPath).use { inputStream ->
            FileOutputStream(destination).use { outputStream ->
                val buffer = ByteArray(16384)
                var bytesRead: Int
                while (inputStream.read(buffer).also { bytesRead = it } != -1) {
                    outputStream.write(buffer, 0, bytesRead)
                }
                outputStream.flush()
            }
        }
    }

    private fun isModelReady(modelDir: File): Boolean {
        val encoder = File(modelDir, ENCODER_FILE)
        val decoder = File(modelDir, DECODER_FILE)
        val tokens = File(modelDir, TOKENS_FILE)
        
        return encoder.exists() && encoder.length() > 20000000 &&
               decoder.exists() && decoder.length() > 20000000 &&
               tokens.exists() && tokens.length() > 1000
    }
}
