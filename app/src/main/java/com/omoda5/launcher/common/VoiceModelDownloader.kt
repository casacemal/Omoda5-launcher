package com.omoda5.launcher.common

import android.content.Context
import android.os.Handler
import android.os.Looper
import okhttp3.*
import java.io.*
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream

/**
 * v10.1.0 VOICE MODEL DOWNLOADER
 * Downloads and extracts VOSK models from a URL (GitHub or Alphacephei)
 * Saves to external app files directory to keep APK small.
 */
object VoiceModelDownloader {
    
    private val client = OkHttpClient()
    // Github Store (apps/) klasöründeki yedeği kullanıyoruz (Alphacephei bazen yavaş/engelli)
    private const val MODEL_URL = "https://raw.githubusercontent.com/casacemal/Omoda5-launcher/jetpack_componse/apps/vosk-model-small-tr-0.3.zip"

    fun downloadModel(context: Context, onProgress: (String) -> Unit) {
        onProgress("Model İndiriliyor...")
        
        val request = Request.Builder().url(MODEL_URL).build()
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                postProgress(onProgress, "Hata: ${e.message}")
            }

            override fun onResponse(call: Call, response: Response) {
                if (!response.isSuccessful) {
                    postProgress(onProgress, "Sunucu Hatası: ${response.code}")
                    return
                }

                val body = response.body ?: return
                val targetDir = File(context.getExternalFilesDir(null), "model-tr")
                val tempZip = File(context.cacheDir, "model.zip")

                try {
                    // 1. Download
                    body.byteStream().use { input ->
                        FileOutputStream(tempZip).use { output ->
                            input.copyTo(output)
                        }
                    }

                    // 2. Extract
                    postProgress(onProgress, "Paket Açılıyor...")
                    if (targetDir.exists()) targetDir.deleteRecursively()
                    targetDir.mkdirs()
                    
                    unzip(tempZip, targetDir)
                    
                    // The zip contains a folder, move contents up if needed
                    val subFolder = targetDir.listFiles()?.firstOrNull { it.isDirectory }
                    if (subFolder != null) {
                        subFolder.listFiles()?.forEach { file ->
                            file.renameTo(File(targetDir, file.name))
                        }
                        subFolder.delete()
                    }

                    tempZip.delete()
                    postProgress(onProgress, "Tamamlandı ✅")
                    
                    // Reload VOSK
                    VoiceAssistantManager.tryInitExternalVosk()
                    
                } catch (e: Exception) {
                    postProgress(onProgress, "Yükleme Hatası: ${e.message}")
                }
            }
        })
    }

    private fun postProgress(onProgress: (String) -> Unit, msg: String) {
        Handler(Looper.getMainLooper()).post { onProgress(msg) }
    }

    private fun unzip(zipFile: File, targetDir: File) {
        ZipInputStream(FileInputStream(zipFile)).use { zis ->
            var entry: ZipEntry? = zis.nextEntry
            while (entry != null) {
                val newFile = File(targetDir, entry.name)
                if (entry.isDirectory) {
                    newFile.mkdirs()
                } else {
                    newFile.parentFile?.mkdirs()
                    FileOutputStream(newFile).use { fos ->
                        zis.copyTo(fos)
                    }
                }
                zis.closeEntry()
                entry = zis.nextEntry
            }
        }
    }
}
