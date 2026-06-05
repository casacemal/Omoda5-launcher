package com.omoda5.launcher.common

import android.content.*
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import androidx.core.content.FileProvider
import com.omoda5.launcher.BuildConfig
import okhttp3.*
import org.json.JSONArray
import org.json.JSONObject
import java.io.*
import java.security.cert.X509Certificate
import javax.net.ssl.*

/**
 * v9.4.5 PRO-UPDATE ENGINE (Hybrid Store & OTA)
 */
class UpdateManager(private val ctx: Context, private val prefs: PreferencesManager) {
    
    private val client = OkHttpClient.Builder()
        .sslSocketFactory(getUnsafeSSL().socketFactory, getUnsafeTrustManager())
        .hostnameVerifier { _, _ -> true }
        .build()

    interface StoreCallback { 
        fun onAppsLoaded(apps: List<Pair<String, String>>)
        fun onError(e: String) 
    }

    interface UpdateCallback {
        fun onUpdateAvailable(current: String, new: String, url: String)
        fun onNoUpdate()
        fun onError(e: String)
    }

    abstract class DownloadCallback {
        abstract fun onProgress(p: Int)
        abstract fun onComplete(f: File)
        abstract fun onError(e: String)
    }

    /**
     * Legacy Store Integration (Omoda 5 App Store)
     */
    fun getStoreApps(cb: StoreCallback) {
        val url = "https://api.github.com/repos/casacemal/Omoda5-launcher/contents/apps?ref=jetpack_componse"
        client.newCall(Request.Builder().url(url).header("User-Agent","Omoda5Launcher-Updater").build()).enqueue(object: Callback {
            override fun onFailure(c: Call, e: IOException) = cb.onError(e.message ?: "Hata")
            override fun onResponse(c: Call, r: Response) {
                val b = r.body?.string() ?: return
                try {
                    if (!r.isSuccessful) {
                        var msg = "HTTP ${r.code}"
                        try { msg += ": " + JSONObject(b).optString("message", "") } catch (_: Exception) {}
                        Handler(Looper.getMainLooper()).post { cb.onError(msg) }
                        return
                    }
                    val arr = JSONArray(b)
                    val apps = mutableListOf<Pair<String, String>>()
                    for (i in 0 until arr.length()) {
                        val obj = arr.getJSONObject(i)
                        if (obj.getString("name").endsWith(".apk")) apps.add(obj.getString("name") to obj.getString("download_url"))
                    }
                    Handler(Looper.getMainLooper()).post { cb.onAppsLoaded(apps) }
                } catch (e: Exception) { Handler(Looper.getMainLooper()).post { cb.onError(e.message ?: "Veri Okuma Hatası") } }
            }
        })
    }

    /**
     * Professional OTA Update Check
     */
    fun checkForUpdates(cb: UpdateCallback) {
        val request = Request.Builder()
            .url("https://api.github.com/repos/casacemal/Omoda5-launcher/releases/latest")
            .header("User-Agent", "Omoda5Launcher-Updater")
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { cb.onError(e.message ?: "Bağlantı Hatası") }
            override fun onResponse(call: Call, r: Response) {
                val body = r.body?.string() ?: return
                try {
                    if (!r.isSuccessful) {
                        var msg = "HTTP ${r.code}"
                        try { msg += ": " + JSONObject(body).optString("message", "") } catch (_: Exception) {}
                        Handler(Looper.getMainLooper()).post { cb.onError(msg) }
                        return
                    }
                    val json = JSONObject(body)
                    val remoteTag = json.getString("tag_name")
                    val currentTag = BuildConfig.VERSION_NAME
                    
                    if (remoteTag != currentTag) {
                        val assets = json.getJSONArray("assets")
                        var downloadUrl = ""
                        for (i in 0 until assets.length()) {
                            val asset = assets.getJSONObject(i)
                            if (asset.getString("name").endsWith(".apk")) {
                                downloadUrl = asset.getString("browser_download_url")
                                break
                            }
                        }
                        if (downloadUrl.isNotEmpty()) {
                            Handler(Looper.getMainLooper()).post { cb.onUpdateAvailable(currentTag, remoteTag, downloadUrl) }
                        } else Handler(Looper.getMainLooper()).post { cb.onNoUpdate() }
                    } else Handler(Looper.getMainLooper()).post { cb.onNoUpdate() }
                } catch (e: Exception) { Handler(Looper.getMainLooper()).post { cb.onError("Veri İşleme Hatası: ${e.message}") } }
            }
        })
    }

    fun downloadAndInstall(url: String, newVersion: String, cb: DownloadCallback) {
        val request = Request.Builder().url(url).build()
        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { cb.onError(e.message ?: "İndirme Başarısız") }
            override fun onResponse(call: Call, r: Response) {
                if (!r.isSuccessful) { cb.onError("HTTP ${r.code}"); return }
                try {
                    val destFile = File(ctx.getExternalFilesDir(null), "Update_$newVersion.apk")
                    val body = r.body!!
                    val totalSize = body.contentLength()
                    val input = body.byteStream()
                    val output = FileOutputStream(destFile)
                    val buffer = ByteArray(16384); var bytesRead: Int; var totalRead = 0L
                    while (input.read(buffer).also { bytesRead = it } != -1) {
                        output.write(buffer, 0, bytesRead)
                        totalRead += bytesRead
                        if (totalSize > 0) cb.onProgress((totalRead * 100 / totalSize).toInt())
                    }
                    output.flush(); output.close(); input.close()
                    Handler(Looper.getMainLooper()).post { cb.onComplete(destFile); triggerSystemInstall(destFile) }
                } catch (e: Exception) { cb.onError(e.message ?: "Dosya Kayıt Hatası") }
            }
        })
    }

    private fun triggerSystemInstall(file: File) {
        try {
            val intent = Intent(Intent.ACTION_VIEW)
            val apkUri: Uri = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                FileProvider.getUriForFile(ctx, "${ctx.packageName}.provider", file)
            } else Uri.fromFile(file)
            intent.setDataAndType(apkUri, "application/vnd.android.package-archive")
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_ACTIVITY_NEW_TASK)
            ctx.startActivity(intent)
        } catch (e: Exception) {
            val cmd = "pm install -r -d -g ${file.absolutePath}"
            ctx.startService(Intent(ctx, com.omoda5.launcher.service.AdbBridgeService::class.java).apply { action="ACTION_EXECUTE_SHELL"; putExtra("command", cmd) })
        }
    }

    private fun getUnsafeSSL(): SSLContext {
        val sc = SSLContext.getInstance("SSL")
        sc.init(null, arrayOf(getUnsafeTrustManager()), java.security.SecureRandom())
        return sc
    }
    private fun getUnsafeTrustManager(): X509TrustManager = object : X509TrustManager {
        override fun checkClientTrusted(a: Array<out X509Certificate>?, b: String?) {}
        override fun checkServerTrusted(a: Array<out X509Certificate>?, b: String?) {}
        override fun getAcceptedIssuers(): Array<X509Certificate> = arrayOf()
    }
}
