package com.omoda.lanc.voice

import android.content.Context
import android.os.Environment
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import java.io.File
import java.io.FileOutputStream

/**
 * Architecture 2.0: Sherpa Model Repair & Auto-Download
 * Eksik ses modellerini tespit eder ve onarır.
 */
object ModelRepairManager {
    private const val TAG = "ModelRepair"
    private const val BASE_URL = "https://github.com/casacemal/Omoda5-launcher/releases/download/v1.0.0-models/"
    
    suspend fun checkAndRepair(context: Context, onProgress: (String) -> Unit) {
        val omodaDir = File(Environment.getExternalStorageDirectory(), "Omoda")
        val modelDir = File(omodaDir, "Models")
        if (!modelDir.exists()) modelDir.mkdirs()

        val requiredFiles = listOf(
            "asr/encoder.onnx",
            "asr/decoder.onnx",
            "asr/joiner.onnx",
            "asr/tokens.txt",
            "tts/tr_TR-dfki-medium.onnx",
            "tts/tokens.txt"
        )

        val missing = requiredFiles.filter { !File(modelDir, it).exists() }

        if (missing.isEmpty()) {
            onProgress("Tüm modeller hazır.")
            return
        }

        onProgress("${missing.size} dosya eksik, onarım başlıyor...")

        withContext(Dispatchers.IO) {
            val client = OkHttpClient()
            missing.forEach { fileName ->
                try {
                    onProgress("İndiriliyor: $fileName")
                    downloadFile(client, "$BASE_URL${fileName.replace("/", "_")}", File(modelDir, fileName))
                } catch (e: Exception) {
                    Log.e(TAG, "İndirme hatası ($fileName): ${e.message}")
                }
            }
        }
        onProgress("Onarım tamamlandı.")
    }

    private fun downloadFile(client: OkHttpClient, url: String, target: File) {
        target.parentFile?.let { if (!it.exists()) it.mkdirs() }
        
        val request = Request.Builder().url(url).build()
        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) throw Exception("HTTP ${response.code}")
            val body = response.body ?: throw Exception("Empty body")
            
            FileOutputStream(target).use { out ->
                body.byteStream().copyTo(out)
            }
        }
    }
}
