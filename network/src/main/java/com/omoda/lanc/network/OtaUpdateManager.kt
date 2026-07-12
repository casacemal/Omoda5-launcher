package com.omoda.lanc.network

import android.content.Context
import android.content.Intent
import android.util.Log
import androidx.core.content.FileProvider
import com.omoda.lanc.core.GlobalState
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.*
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.io.IOException

data class AppUpdate(
    val name: String,
    val downloadUrl: String,
    val sizeBytes: Long,
    val version: String,
    val isSystemUpdate: Boolean,
    val isDowngrade: Boolean = false
)

class OtaUpdateManager(private val context: Context) {

    private val TAG = "OtaUpdateManager"
    private val client: OkHttpClient by lazy { NetworkModule.robustClient }
    
    private val GITHUB_OWNER = "casacemal" 
    private val GITHUB_REPO = "Omoda5-launcher"
    private val API_URL = "https://api.github.com/repos/$GITHUB_OWNER/$GITHUB_REPO/releases"
    private val STORE_URL = "https://api.github.com/repos/$GITHUB_OWNER/$GITHUB_REPO/contents/apps?ref=jetpack_componse"

    interface UpdateCheckCallback {
        fun onUpdatesFound(updates: List<AppUpdate>)
        fun onError(error: String)
    }

    interface DownloadCallback {
        fun onProgress(percentage: Int, speedMbps: Double)
        fun onComplete(file: File?)
        fun onError(error: String)
    }

    fun checkForUpdates(callback: UpdateCheckCallback) {
        val token = GlobalState.GITHUB_TOKEN
        Log.i(TAG, "GitHub güncelleme kontrolü başlatılıyor...")
        val request = Request.Builder()
            .url(API_URL)
            .header("User-Agent", "Omoda5-Updater")
            .header("Authorization", "Bearer ${GlobalState.GITHUB_TOKEN}")
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "GitHub bağlantı hatası: ${e.message}")
                callback.onError("OTA-NET: ${e.message}")
            }

            override fun onResponse(call: Call, response: Response) {
                response.use { resp ->
                    val body = resp.body?.string()
                    Log.d(TAG, "GitHub Yanıt Kodu: ${resp.code}")
                    if (resp.isSuccessful && body != null) {
                        try {
                            val releasesArray = org.json.JSONArray(body)
                            val updates = mutableListOf<AppUpdate>()

                            val pInfo = context.packageManager.getPackageInfo(context.packageName, 0)
                            @Suppress("DEPRECATION")
                            val localVersionCode = pInfo.versionCode

                            val limit = minOf(releasesArray.length(), 10)
                            if (limit > 0) {
                                val latestTag = releasesArray.getJSONObject(0).getString("tag_name")
                                GlobalState.latestVersion.value = latestTag
                            }
                            for (r in 0 until limit) {
                                val json = releasesArray.getJSONObject(r)
                                val latestVersion = json.getString("tag_name").replace("v", "").trim()
                                val assets = json.getJSONArray("assets")

                                val githubVersionCode = try {
                                    val cleanTag = latestVersion.replace("v", "").trim()
                                    val parts = cleanTag.split(".")
                                    when {
                                        parts.size >= 4 -> parts.last().toInt()
                                        parts.size == 3 -> {
                                            val major = parts[0].toInt()
                                            val minor = parts[1].toInt()
                                            val patch = parts[2].toInt()
                                            if (major >= 6) (major * 100) + (minor * 10) + patch else patch
                                        }
                                        else -> cleanTag.replace("[^0-9]".toRegex(), "").toInt()
                                    }
                                } catch (e: Exception) { -1 }

                                val isDowngrade = githubVersionCode > 0 && githubVersionCode < localVersionCode

                                for (i in 0 until assets.length()) {
                                    val asset = assets.getJSONObject(i)
                                    val fileName = asset.getString("name")
                                    val downloadUrl = asset.getString("browser_download_url")
                                    val size = asset.getLong("size")
                                    
                                    if (fileName.endsWith(".apk")) {
                                        val isSystemUpdate = fileName.startsWith("app-debug") || 
                                                           fileName.startsWith("app-release") ||
                                                           fileName.startsWith("app-update") ||
                                                           fileName.startsWith("app-full")
                                        updates.add(AppUpdate(fileName, downloadUrl, size, latestVersion, isSystemUpdate, isDowngrade))
                                    }
                                }
                            }
                            callback.onUpdatesFound(updates)
                        } catch (e: Exception) { 
                            Log.e(TAG, "JSON Parse Hatası: ${e.message}")
                            callback.onError("Veri işleme hatası (JSON)") 
                        }
                    } else {
                        Log.e(TAG, "GitHub API Hatası: ${resp.code} - ${body ?: "No Body"}")
                        val errorDetail = when (resp.code) {
                            401 -> "OTA-401: Token geçersiz veya süresi dolmuş"
                            403 -> "OTA-403: Yetkilendirme reddedildi (rate limit veya izin eksik)"
                            404 -> "OTA-404: Repo bulunamadı ($GITHUB_OWNER/$GITHUB_REPO)"
                            422 -> "OTA-422: Geçersiz istek parametresi"
                            500, 502, 503 -> "OTA-${resp.code}: GitHub sunucu hatası"
                            else -> "OTA-${resp.code}: Bilinmeyen hata"
                        }
                        callback.onError(errorDetail)
                    }
                }
            }
        })
    }

    fun downloadUpdate(update: AppUpdate, callback: DownloadCallback) {
        val request = Request.Builder()
            .url(update.downloadUrl)
            .header("Authorization", "Bearer ${GlobalState.GITHUB_TOKEN}")
            .build()
        Log.i(TAG, "İndirme başlatılıyor: ${update.name} (${update.sizeBytes} byte)")
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "İndirme bağlantı hatası: ${e.message}")
                callback.onError("OTA-DL-NET: ${e.message}")
            }
            override fun onResponse(call: Call, response: Response) {
                Log.i(TAG, "İndirme yanıtı: ${response.code} - ${response.message}")
                response.use { resp ->
                    if (!resp.isSuccessful) {
                        Log.e(TAG, "İndirme başarısız: ${resp.code} - ${resp.message}")
                        callback.onError("OTA-DL-${resp.code}: ${resp.message}")
                        return
                    }
                    val body = resp.body ?: return callback.onError("OTA-DL: Boş yanıt")
                    try {
                        val totalBytes = body.contentLength()
                        val destination = File(context.getExternalFilesDir(null), update.name)
                        body.byteStream().use { inputStream ->
                            FileOutputStream(destination).use { outputStream ->
                                val buffer = ByteArray(8192)
                                var read: Int
                                var totalRead = 0L
                                val start = System.currentTimeMillis()
                                var lastUpdate = start

                                while (inputStream.read(buffer).also { read = it } != -1) {
                                    outputStream.write(buffer, 0, read)
                                    totalRead += read
                                    val now = System.currentTimeMillis()
                                    if (now - lastUpdate > 500) {
                                        val pct = if (totalBytes > 0) (totalRead * 100 / totalBytes).toInt() else 0
                                        val elapsedSec = (now - start) / 1000.0
                                        val speedMbps = if (elapsedSec > 0) ((totalRead * 8) / 1_000_000.0) / elapsedSec else 0.0
                                        callback.onProgress(pct, speedMbps)
                                        GlobalState.downloadProgressText.value = String.format("İndiriliyor: %d%% (%.1f Mbps)", pct, speedMbps)
                                        lastUpdate = now
                                    }
                                }
                                outputStream.flush()
                            }
                        }
                        
                        // DOSYA BÜTÜNLÜK KONTROLÜ
                        if (destination.exists() && destination.length() == update.sizeBytes) {
                            GlobalState.downloadProgressText.value = "İndirme Tamamlandı"
                            android.os.Handler(android.os.Looper.getMainLooper()).postDelayed({
                                GlobalState.downloadProgressText.value = null
                            }, 3000)
                            callback.onComplete(destination)
                        } else {
                            val actualSize = if (destination.exists()) destination.length() else 0
                            Log.e(TAG, "İndirme eksik: Beklenen ${update.sizeBytes}, Gelen $actualSize")
                            if (destination.exists()) destination.delete()
                            callback.onError("Dosya eksik indirildi. Lütfen tekrar deneyin.")
                        }
                    } catch (e: Exception) { 
                        GlobalState.downloadProgressText.value = "İndirme Hatası!"
                        android.os.Handler(android.os.Looper.getMainLooper()).postDelayed({
                            GlobalState.downloadProgressText.value = null
                        }, 3000)
                        callback.onError(e.message ?: "Yazma hatası") 
                    }
                }
            }
        })
    }

    fun installPackage(file: File) {
        try {
            val uri = FileProvider.getUriForFile(context, "${context.packageName}.fileprovider", file)
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(uri, "application/vnd.android.package-archive")
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(intent)
        } catch (e: Exception) {
            Log.e(TAG, "Standard install failed, trying shell: ${e.message}")
            val cmd = "pm install -r -d -g ${file.absolutePath}"
            context.sendBroadcast(Intent("com.omoda.assistant.EXECUTE_SHELL").apply {
                putExtra("command", cmd)
            })
        }
    }

    fun isUpdateDownloaded(update: AppUpdate): Boolean {
        val destination = File(context.getExternalFilesDir(null), update.name)
        return destination.exists() && destination.length() == update.sizeBytes
    }

    fun getStoreApps(callback: UpdateCheckCallback) {
        val request = Request.Builder()
            .url(STORE_URL)
            .header("User-Agent", "Omoda5-Updater")
            .header("Authorization", "Bearer ${GlobalState.GITHUB_TOKEN}")
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                callback.onError(e.message ?: "Ağ hatası")
            }

            override fun onResponse(call: Call, response: Response) {
                val body = response.body?.string()
                response.use {
                    if (response.isSuccessful && body != null) {
                        try {
                            val arr = org.json.JSONArray(body)
                            val apps = mutableListOf<AppUpdate>()
                            for (i in 0 until arr.length()) {
                                val obj = arr.getJSONObject(i)
                                val fileName = obj.getString("name")
                                if (fileName.endsWith(".apk")) {
                                    apps.add(AppUpdate(
                                        name = fileName,
                                        downloadUrl = obj.getString("download_url"),
                                        sizeBytes = obj.getLong("size"),
                                        version = "Store",
                                        isSystemUpdate = false
                                    ))
                                }
                            }
                            callback.onUpdatesFound(apps)
                        } catch (e: Exception) {
                            callback.onError("Mağaza verisi ayrıştırma hatası")
                        }
                    } else {
                        callback.onError("Mağaza hatası: ${response.code}")
                    }
                }
            }
        })
    }
}
