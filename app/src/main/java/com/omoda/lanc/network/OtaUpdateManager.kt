package com.omoda.lanc.network

import android.content.Context
import android.content.Intent
import android.util.Log
import androidx.core.content.FileProvider
import com.omoda.lanc.BuildConfig
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.*
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.security.cert.X509Certificate
import javax.net.ssl.*

data class AppUpdate(
    val name: String,
    val downloadUrl: String,
    val sizeBytes: Long,
    val version: String,
    val isSystemUpdate: Boolean
)

class OtaUpdateManager(private val context: Context) {

    private val TAG = "OtaUpdateManager"
    private val client: OkHttpClient by lazy { NetworkModule.robustClient }
    
    private val GITHUB_OWNER = "casacemal" 
    private val GITHUB_REPO = "Omoda5-launcher"
    private val API_URL = "https://api.github.com/repos/$GITHUB_OWNER/$GITHUB_REPO/releases/latest"
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
        val request = Request.Builder()
            .url(API_URL)
            .header("User-Agent", "Omoda5-Updater")
            .header("Authorization", "Bearer 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")
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { 
                callback.onError(e.message ?: "Ağ hatası") 
            }

            override fun onResponse(call: Call, response: Response) {
                val body = response.body?.string()
                if (response.isSuccessful && body != null) {
                    try {
                        val json = JSONObject(body)
                        val latestVersion = json.getString("tag_name").replace("v", "").trim()
                        val assets = json.getJSONArray("assets")
                        val updates = mutableListOf<AppUpdate>()

                        for (i in 0 until assets.length()) {
                            val asset = assets.getJSONObject(i)
                            val fileName = asset.getString("name")
                            val downloadUrl = asset.getString("browser_download_url")
                            val size = asset.getLong("size")
                            
                            if (fileName.endsWith(".apk")) {
                                val isSystemUpdate = fileName.contains("app-debug") || fileName.contains("app-release")
                                updates.add(AppUpdate(
                                    name = fileName,
                                    downloadUrl = downloadUrl,
                                    sizeBytes = size,
                                    version = latestVersion,
                                    isSystemUpdate = isSystemUpdate
                                ))
                            }
                        }
                        callback.onUpdatesFound(updates)
                    } catch (e: Exception) { 
                        callback.onError("JSON ayrıştırma hatası") 
                    }
                } else { 
                    callback.onError("GitHub API Hatası: ${response.code}") 
                }
            }
        })
    }

    fun downloadUpdate(update: AppUpdate, callback: DownloadCallback) {
        val request = Request.Builder()
            .url(update.downloadUrl)
            .header("Authorization", "Bearer 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")
            .build()
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { callback.onError(e.message ?: "Ağ hatası") }
            override fun onResponse(call: Call, response: Response) {
                val body = response.body ?: return callback.onError("Boş yanıt")
                try {
                    val totalBytes = body.contentLength()
                    val destination = File(context.getExternalFilesDir(null), update.name)
                    val inputStream = body.byteStream()
                    val outputStream = FileOutputStream(destination)
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
                            
                            // Bildirim ekranına (Overlay) durumu gönder
                            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("İndiriliyor: ${update.name} (%$pct)", android.graphics.Color.YELLOW))
                            
                            lastUpdate = now
                        }
                    }
                    outputStream.flush()
                    outputStream.close()
                    inputStream.close()
                    
                    EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("İndirme Tamamlandı: ${update.name}", android.graphics.Color.GREEN))
                    callback.onComplete(destination)
                } catch (e: Exception) { 
                    EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("İndirme Hatası!", android.graphics.Color.RED))
                    callback.onError(e.message ?: "Yazma hatası") 
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
            Log.e(TAG, "Yükleyici açılamadı: ${e.message}")
            // Fallback to ADB command via system service if possible
            try {
                val cmd = "pm install -r -d -g ${file.absolutePath}"
                context.sendBroadcast(Intent("com.omoda.assistant.EXECUTE_SHELL").apply {
                    putExtra("command", cmd)
                })
            } catch (ex: Exception) {
                Log.e(TAG, "Root/ADB fallback yüklemesi de başarısız: ${ex.message}")
            }
        }
    }

    /**
     * Omoda 5 App Store: Fetch static APKs from /apps folder
     */
    fun getStoreApps(callback: UpdateCheckCallback) {
        val request = Request.Builder()
            .url(STORE_URL)
            .header("User-Agent", "Omoda5-Updater")
            .header("Authorization", "Bearer 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")
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

    private fun getUnsafeOkHttpClient(): OkHttpClient {
        val trustAllCerts = arrayOf<TrustManager>(object : X509TrustManager {
            override fun checkClientTrusted(p0: Array<out X509Certificate>?, p1: String?) {}
            override fun checkServerTrusted(p0: Array<out X509Certificate>?, p1: String?) {}
            override fun getAcceptedIssuers(): Array<X509Certificate> = arrayOf()
        })
        val sslContext = SSLContext.getInstance("SSL")
        sslContext.init(null, trustAllCerts, java.security.SecureRandom())
        return OkHttpClient.Builder()
            .sslSocketFactory(sslContext.socketFactory, trustAllCerts[0] as X509TrustManager)
            .hostnameVerifier { _, _ -> true }
            .build()
    }
}
