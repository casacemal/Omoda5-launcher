package com.omoda.lanc.voice

import android.content.Context
import android.util.Log
import java.io.File
import java.io.FileOutputStream
import java.io.InputStream

/**
 * SherpaModelInstaller v2.1 - Klasör yapısı korumalı kurulum
 */
class SherpaModelInstaller(private val context: Context) {
    private val TAG = "SherpaModelInstaller"
    
    // API 29+ compatibility: Use app-specific external storage to avoid permission issues
    private fun getModelsRoot(): File {
        val external = context.getExternalFilesDir(null)
        return if (external != null) {
            File(external, "Models")
        } else {
            File(context.filesDir, "Models")
        }
    }
    
    private val ASSETS_MAP = mapOf(
        "sherpa_tts/vits-piper-tr_TR-dfki-medium" to "tts",
        "sherpa_asr" to "asr",
        "sherpa_vad" to "vad"
    )

    fun ensureInstalled(): Boolean {
        try {
            val rootDir = getModelsRoot()
            if (!rootDir.exists()) rootDir.mkdirs()

            var allOk = true
            ASSETS_MAP.forEach { (assetPath, targetSubDir) ->
                val targetDir = File(rootDir, targetSubDir)
                if (!isDirInstalled(targetDir)) {
                    Log.i(TAG, "Bileşen kuruluyor: $assetPath -> ${targetDir.absolutePath}")
                    if (!copyAssetsRecursive(assetPath, targetDir)) {
                        allOk = false
                    }
                }
            }
            return allOk
        } catch (e: Exception) {
            Log.e(TAG, "Kurulum Hatası: ${e.message}")
            return false
        }
    }

    private fun isDirInstalled(dir: File): Boolean {
        if (!dir.exists()) return false
        val files = dir.listFiles() ?: return false
        return files.any { it.name.endsWith(".onnx") }
    }

    fun modelDirectory(): File = File(getModelsRoot(), "tts")
    fun asrDirectory(): File = File(getModelsRoot(), "asr")
    fun vadDirectory(): File = File(getModelsRoot(), "vad")

    private fun copyAssetsRecursive(assetPath: String, targetDir: File): Boolean {
        return try {
            val assets = context.assets.list(assetPath) ?: emptyArray()
            if (assets.isEmpty()) {
                // Bu bir dosyadır, doğrudan kopyala
                val targetFile = File(targetDir, assetPath.substringAfterLast("/"))
                copyFile(assetPath, targetFile)
            } else {
                // Bu bir klasördür
                if (!targetDir.exists()) targetDir.mkdirs()
                for (asset in assets) {
                    val subAssetPath = if (assetPath.isEmpty()) asset else "$assetPath/$asset"
                    val subTargetDir = File(targetDir, asset)
                    
                    // Eğer assets.list() bu alt öge için boş değilse, bu bir klasördür
                    val subAssets = context.assets.list(subAssetPath)
                    if (subAssets != null && subAssets.isNotEmpty()) {
                        copyAssetsRecursive(subAssetPath, subTargetDir)
                    } else {
                        // Dosya kopyalama
                        copyFile(subAssetPath, File(targetDir, asset))
                    }
                }
            }
            true
        } catch (e: Exception) {
            Log.e(TAG, "Kopyalama hatası ($assetPath): ${e.message}")
            false
        }
    }

    private fun copyFile(assetPath: String, targetFile: File) {
        try {
            if (targetFile.exists() && targetFile.length() > 0) {
                // For simplicity, if it exists and not empty, we assume it's okay
                // Assets are read-only and static per APK version.
                return 
            }
            targetFile.parentFile?.mkdirs()
            context.assets.open(assetPath).use { input ->
                FileOutputStream(targetFile).use { output ->
                    input.copyTo(output)
                }
            }
            Log.d(TAG, "Kopyalandı: ${targetFile.absolutePath}")
        } catch (e: Exception) {
            // Silently handle directories listed as files or other issues
        }
    }
}
