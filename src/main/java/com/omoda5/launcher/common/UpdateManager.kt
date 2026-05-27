package com.omoda5.launcher.common

import android.content.Context
import android.content.pm.PackageManager
import android.util.Log
import com.omoda5.launcher.BuildConfig
import okhttp3.*
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.security.SecureRandom
import java.security.cert.X509Certificate
import javax.net.ssl.*

class UpdateManager(private val context: Context, private val prefs: PreferencesManager) {

    private val TAG = "UpdateManager"
    private val client: OkHttpClient by lazy { getUnsafeOkHttpClient() }
    
    private fun getUnsafeOkHttpClient(): OkHttpClient {
        try {
            val trustAllCerts = arrayOf<TrustManager>(object : X509TrustManager {
                override fun checkClientTrusted(chain: Array<out X509Certificate>?, authType: String?) {}
                override fun checkServerTrusted(chain: Array<out X509Certificate>?, authType: String?) {}
                override fun getAcceptedIssuers(): Array<X509Certificate> = arrayOf()
            })

            val sslContext = SSLContext.getInstance("SSL")
            sslContext.init(null, trustAllCerts, SecureRandom())
            val sslSocketFactory = sslContext.socketFactory

            val builder = OkHttpClient.Builder()
            builder.sslSocketFactory(sslSocketFactory, trustAllCerts[0] as X509TrustManager)
            builder.hostnameVerifier { _, _ -> true }
            return builder.build()
        } catch (e: Exception) {
            throw RuntimeException(e)
        }
    }
    
    // Public GitHub Repo Bilgileri
    private val GITHUB_OWNER = "casacemal" 
    private val GITHUB_REPO = "Omoda5-launcher"
    private val API_URL = "https://api.github.com/repos/$GITHUB_OWNER/$GITHUB_REPO/releases/latest"

    interface UpdateCheckCallback {
        fun onUpdateAvailable(versionName: String, versionCode: Int, downloadUrl: String)
        fun onNoUpdate()
        fun onError(error: String)
    }

    interface DownloadCallback {
        fun onProgress(percentage: Int, speedMbps: Double, remainingSeconds: Long)
        fun onComplete(file: File?)
        fun onError(error: String)
    }

    fun checkForUpdates(callback: UpdateCheckCallback) {
        val request = Request.Builder()
            .url(API_URL)
            .header("User-Agent", "Omoda5Launcher-Updater") // GitHub API için zorunlu
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                callback.onError(e.message ?: "Bilinmeyen ağ hatası")
            }

            override fun onResponse(call: Call, response: Response) {
                val body = response.body?.string()
                if (response.isSuccessful && body != null) {
                    try {
                        val json = JSONObject(body)
                        val latestVersionName = json.getString("tag_name")
                        // tag_name'in sadece sayı olduğunu varsayıyoruz veya parse ediyoruz
                        val latestVersionCode = json.optInt("version_code", 0) 
                        
                        val currentVersionCode = try {
                            context.packageManager.getPackageInfo(context.packageName, 0).versionCode
                        } catch (e: Exception) { 0 }

                        val assets = json.getJSONArray("assets")
                        if (assets.length() > 0) {
                            val downloadUrl = assets.getJSONObject(0).getString("browser_download_url")
                            
                            // Yeni sürüm kontrolü (Eğer versionCode API'den gelmiyorsa tag_name kontrolü)
                            if (latestVersionCode > currentVersionCode || latestVersionName != BuildConfig.VERSION_NAME) {
                                callback.onUpdateAvailable(latestVersionName, latestVersionCode, downloadUrl)
                            } else {
                                callback.onNoUpdate()
                            }
                        }
                    } catch (e: Exception) {
                        callback.onError("JSON ayrıştırma hatası")
                    }
                } else {
                    callback.onError("GitHub API hatası: ${response.code}")
                }
            }
        })
    }

    fun downloadUpdate(url: String, fileName: String, callback: DownloadCallback) {
        val request = Request.Builder().url(url).build()
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "Indirme ag hatası: ${e.message}")
                callback.onError(e.message ?: "Ağ hatası")
            }

            override fun onResponse(call: Call, response: Response) {
                if (!response.isSuccessful) {
                    Log.e(TAG, "Indirme HTTP hatası: ${response.code}")
                    callback.onError("HTTP ${response.code}")
                    return
                }

                val body = response.body
                if (body == null) {
                    callback.onError("Boş yanıt")
                    return
                }

                try {
                    val totalBytes = body.contentLength()
                    val downloadFolder = File("/storage/emulated/0/Download")
                    if (!downloadFolder.exists()) downloadFolder.mkdirs()
                    
                    val destination = File(downloadFolder, fileName)
                    if (destination.exists()) destination.delete()
                    
                    val inputStream = body.byteStream()
                    val outputStream = FileOutputStream(destination)
                    
                    val buffer = ByteArray(8192)
                    var bytesRead: Int
                    var totalRead = 0L
                    val startTime = System.currentTimeMillis()
                    var lastUpdate = 0L

                    while (inputStream.read(buffer).also { bytesRead = it } != -1) {
                        outputStream.write(buffer, 0, bytesRead)
                        totalRead += bytesRead
                        
                        val now = System.currentTimeMillis()
                        if (now - lastUpdate > 500) { // 500ms'de bir güncelle
                            val percentage = if (totalBytes > 0) ((totalRead * 100) / totalBytes).toInt() else 0
                            val elapsedSeconds = (now - startTime) / 1000.0
                            val speedMbps = if (elapsedSeconds > 0) (totalRead * 8.0 / (1024 * 1024)) / elapsedSeconds else 0.0
                            val remainingBytes = totalBytes - totalRead
                            val remainingSeconds = if (speedMbps > 0) (remainingBytes * 8 / (1024 * 1024) / speedMbps).toLong() else 0L
                            
                            callback.onProgress(percentage, speedMbps, remainingSeconds)
                            lastUpdate = now
                        }
                    }
                    
                    outputStream.flush()
                    outputStream.close()
                    inputStream.close()
                    
                    Log.d(TAG, "Indirme basarili: ${destination.absolutePath}")
                    callback.onComplete(destination)
                } catch (e: Exception) {
                    Log.e(TAG, "Dosya yazma hatası: ${e.message}")
                    callback.onError(e.message ?: "Yazma hatası")
                }
            }
        })
    }
}
