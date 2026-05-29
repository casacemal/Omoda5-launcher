package com.omoda5.launcher.common

import android.content.Context
import android.util.Log
import com.omoda5.launcher.BuildConfig
import okhttp3.*
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.security.cert.X509Certificate
import javax.net.ssl.*

class UpdateManager(private val context: Context, private val prefs: PreferencesManager) {
    private val TAG = "UpdateManager"
    private val client: OkHttpClient by lazy { getUnsafeOkHttpClient() }
    
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
        val request = Request.Builder().url(API_URL).header("User-Agent", "Omoda5-NextGen-Updater").build()
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { callback.onError(e.message ?: "Ağ hatası") }
            override fun onResponse(call: Call, response: Response) {
                val body = response.body?.string()
                if (response.isSuccessful && body != null) {
                    try {
                        val json = JSONObject(body)
                        val latestVersion = json.getString("tag_name").replace("v", "").trim()
                        val currentVersion = BuildConfig.VERSION_NAME.replace("v", "").trim()
                        val assets = json.getJSONArray("assets")
                        if (assets.length() > 0) {
                            val downloadUrl = assets.getJSONObject(0).getString("browser_download_url")
                            if (isVersionHigher(latestVersion, currentVersion)) {
                                callback.onUpdateAvailable(latestVersion, 0, downloadUrl)
                            } else { callback.onNoUpdate() }
                        }
                    } catch (e: Exception) { callback.onError("JSON hatası") }
                } else { callback.onError("GitHub API Hatası: ${response.code}") }
            }
        })
    }

    private fun isVersionHigher(remote: String, local: String): Boolean {
        if (remote == local) return false
        try {
            val remoteParts = remote.split(".").map { it.toInt() }
            val localParts = local.split(".").map { it.toInt() }
            val length = maxOf(remoteParts.size, localParts.size)
            for (i in 0 until length) {
                val r = if (i < remoteParts.size) remoteParts[i] else 0
                val l = if (i < localParts.size) localParts[i] else 0
                if (r > l) return true
                if (l > r) return false
            }
        } catch (e: Exception) { return remote != local }
        return false
    }

    fun downloadUpdate(url: String, fileName: String, callback: DownloadCallback) {
        val request = Request.Builder().url(url).build()
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { callback.onError(e.message ?: "Ağ hatası") }
            override fun onResponse(call: Call, response: Response) {
                val body = response.body ?: return callback.onError("Boş yanıt")
                try {
                    val totalBytes = body.contentLength()
                    val destination = File(context.getExternalFilesDir(null), fileName)
                    val inputStream = body.byteStream()
                    val outputStream = FileOutputStream(destination)
                    val buffer = ByteArray(8192)
                    var read: Int
                    var totalRead = 0L
                    while (inputStream.read(buffer).also { read = it } != -1) {
                        outputStream.write(buffer, 0, read)
                        totalRead += read
                        val pct = if (totalBytes > 0) (totalRead * 100 / totalBytes).toInt() else 0
                        callback.onProgress(pct, 0.0, 0L)
                    }
                    outputStream.close(); inputStream.close()
                    callback.onComplete(destination)
                } catch (e: Exception) { callback.onError(e.message ?: "Yazma hatası") }
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
        return OkHttpClient.Builder().sslSocketFactory(sslContext.socketFactory, trustAllCerts[0] as X509TrustManager).hostnameVerifier { _, _ -> true }.build()
    }
}
