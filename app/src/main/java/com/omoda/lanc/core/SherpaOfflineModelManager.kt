package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream

/**
 * Sürüm 4.0: STT ve TTS için Ortak Offline Model Yöneticisi
 */
class SherpaOfflineModelManager(private val context: Context) {
    private val TAG = "SherpaModelManager"

    // TTS Tanımları
    private val TTS_ASSET_PATH = "sherpa_tts/vits-piper-tr_TR-dfki-medium"
    private val TTS_ONNX = "tr_TR-dfki-medium.onnx"
    private val TTS_TOKENS = "tokens.txt"

    // STT Tanımları
    private val STT_ASSET_PATH = "sherpa_stt/whisper-tiny"
    private val STT_ENCODER = "tiny-encoder.onnx"
    private val STT_DECODER = "tiny-decoder.onnx"
    private val STT_TOKENS = "tiny-tokens.txt"

    suspend fun installAllModels(): Pair<Boolean, Boolean> = withContext(Dispatchers.IO) {
        /* GEÇİCİ OLARAK DEVRE DIŞI - PERFORMANS NEDENİYLE
        val ttsResult = installTTS()
        val sttResult = installSTT()
        
        if (!ttsResult || !sttResult) {
            AssistantApplication.addLog("Offline Kurulum Özeti: TTS=$ttsResult, STT=$sttResult")
        }
        return@withContext Pair(ttsResult, sttResult)
        */
        AssistantApplication.addLog("Offline modeller performans nedeniyle geçici olarak devre dışı bırakıldı.")
        return@withContext Pair(false, false)
    }

    private suspend fun installTTS(): Boolean {
        val modelDir = File(context.filesDir, "sherpa_tts/vits-piper-tr_TR-dfki-medium")
        if (!modelDir.exists()) modelDir.mkdirs()

        if (isTtsReady(modelDir)) {
            AssistantApplication.sherpaModelInstallState.value = "INSTALLED"
            return true
        }

        return try {
            AssistantApplication.addLog("TTS modelleri kuruluyor...")
            copyAssetFile("$TTS_ASSET_PATH/$TTS_ONNX", File(modelDir, TTS_ONNX))
            copyAssetFile("$TTS_ASSET_PATH/$TTS_TOKENS", File(modelDir, TTS_TOKENS))
            copyAssetFolder("$TTS_ASSET_PATH/espeak-ng-data", File(modelDir, "espeak-ng-data"))
            
            val ready = isTtsReady(modelDir)
            if (ready) AssistantApplication.sherpaModelInstallState.value = "INSTALLED"
            ready
        } catch (e: Exception) {
            Log.e(TAG, "TTS Kurulum Hatası: ${e.message}")
            false
        }
    }

    private suspend fun installSTT(): Boolean {
        val modelDir = File(context.filesDir, "sherpa_stt/whisper-tiny")
        if (!modelDir.exists()) modelDir.mkdirs()

        if (isSttReady(modelDir)) {
            AssistantApplication.sherpaSttModelInstallState.value = "INSTALLED"
            AssistantApplication.sherpaSttModelInstallDetail.value = modelDir.absolutePath
            return true
        }

        return try {
            AssistantApplication.addLog("STT modelleri kuruluyor (Sabır lütfen)...")
            copyAssetFile("$STT_ASSET_PATH/$STT_ENCODER", File(modelDir, STT_ENCODER))
            copyAssetFile("$STT_ASSET_PATH/$STT_DECODER", File(modelDir, STT_DECODER))
            copyAssetFile("$STT_ASSET_PATH/$STT_TOKENS", File(modelDir, STT_TOKENS))
            
            val ready = isSttReady(modelDir)
            if (ready) {
                AssistantApplication.sherpaSttModelInstallState.value = "INSTALLED"
                AssistantApplication.sherpaSttModelInstallDetail.value = modelDir.absolutePath
            }
            ready
        } catch (e: Exception) {
            Log.e(TAG, "STT Kurulum Hatası: ${e.message}")
            false
        }
    }

    private fun copyAssetFile(assetPath: String, destination: File) {
        context.assets.open(assetPath).use { input ->
            FileOutputStream(destination).use { output ->
                val buffer = ByteArray(16384)
                var length: Int
                while (input.read(buffer).also { length = it } > 0) {
                    output.write(buffer, 0, length)
                }
                output.flush()
            }
        }
    }

    private fun copyAssetFolder(assetFolder: String, destination: File) {
        val assets = context.assets.list(assetFolder) ?: return
        if (!destination.exists()) destination.mkdirs()
        for (asset in assets) {
            val assetPath = "$assetFolder/$asset"
            val destFile = File(destination, asset)
            val isDir = context.assets.list(assetPath)?.isNotEmpty() ?: false
            if (isDir) copyAssetFolder(assetPath, destFile) else copyAssetFile(assetPath, destFile)
        }
    }

    private fun isTtsReady(modelDir: File): Boolean {
        return File(modelDir, TTS_ONNX).exists() && File(modelDir, "espeak-ng-data").isDirectory
    }

    private fun isSttReady(modelDir: File): Boolean {
        return File(modelDir, STT_ENCODER).exists() && File(modelDir, STT_DECODER).exists()
    }
}
