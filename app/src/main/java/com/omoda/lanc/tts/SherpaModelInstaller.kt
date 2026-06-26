package com.omoda.lanc.tts

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream

class SherpaModelInstaller(private val context: Context) {

    private val TAG = "SherpaModelInstaller"
    private val ASSET_PATH = "sherpa_tts/vits-piper-tr_TR-dfki-medium"
    private val ONNX_FILE = "tr_TR-dfki-medium.onnx"
    private val TOKENS_FILE = "tokens.txt"

    suspend fun ensureInstalled(): Boolean = withContext(Dispatchers.IO) {
        /* GEÇİCİ OLARAK DEVRE DIŞI - PERFORMANS
        val root = File(context.filesDir, "sherpa_tts")
        val modelDir = File(root, "vits-piper-tr_TR-dfki-medium")

        if (!modelDir.exists()) modelDir.mkdirs()

        if (isModelReady(modelDir)) {
            AssistantApplication.sherpaModelInstallState.value = "INSTALLED"
            return@withContext true
        }

        AssistantApplication.addLog("Modeller assets'ten kuruluyor...")
        AssistantApplication.status.value = "Modeller Hazırlanıyor..."

        try {
            // 1. ONNX Kopyala
            copyAssetFile("$ASSET_PATH/$ONNX_FILE", File(modelDir, ONNX_FILE))

            // 2. Tokens Kopyala
            copyAssetFile("$ASSET_PATH/$TOKENS_FILE", File(modelDir, TOKENS_FILE))

            // 3. espeak-ng-data Klasörünü Kopyala
            copyAssetFolder("$ASSET_PATH/espeak-ng-data", File(modelDir, "espeak-ng-data"))

            if (isModelReady(modelDir)) {
                AssistantApplication.sherpaModelInstallState.value = "INSTALLED"
                AssistantApplication.addLog("Sherpa modelleri başarıyla yüklendi.")
                AssistantApplication.status.value = "Hazır"
                return@withContext true
            }
        } catch (e: Exception) {
            Log.e(TAG, "Asset kopyalama hatası: ${e.message}")
            AssistantApplication.addLog("Kurulum hatası: ${e.message}")
            AssistantApplication.status.value = "Kurulum Başarısız"
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

    private fun copyAssetFolder(assetFolder: String, destinationFolder: File) {
        val assets = context.assets.list(assetFolder) ?: return
        if (!destinationFolder.exists()) destinationFolder.mkdirs()

        for (asset in assets) {
            val assetPath = "$assetFolder/$asset"
            val destFile = File(destinationFolder, asset)
            
            // Eğer dosyanın uzantısı yoksa veya liste boş değilse bu bir klasördür (basit mantık)
            val isDirectory = context.assets.list(assetPath)?.isNotEmpty() ?: false
            
            if (isDirectory) {
                copyAssetFolder(assetPath, destFile)
            } else {
                copyAssetFile(assetPath, destFile)
            }
        }
    }

    fun modelDirectory(): File {
        return File(context.filesDir, "sherpa_tts/vits-piper-tr_TR-dfki-medium")
    }

    private fun isModelReady(modelDir: File): Boolean {
        val model = File(modelDir, ONNX_FILE)
        val tokens = File(modelDir, TOKENS_FILE)
        val data = File(modelDir, "espeak-ng-data")
        
        return model.exists() && model.length() > 1000000 &&
               tokens.exists() && tokens.length() > 500 &&
               data.exists() && data.isDirectory
    }
}
