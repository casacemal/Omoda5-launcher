package com.omoda.lanc.service

import android.annotation.SuppressLint
import android.app.*
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.network.AppUpdate
import com.omoda.lanc.network.OtaUpdateManager
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import kotlinx.coroutines.*
import java.io.File

class OtaUpdateService : Service() {

    private val serviceJob = SupervisorJob()
    private val serviceScope = CoroutineScope(Dispatchers.Main + serviceJob)
    private lateinit var updateManager: OtaUpdateManager
    
    private val CHANNEL_ID = "OTA_UPDATE_CHANNEL"
    private val NOTIF_ID = 1001

    override fun onCreate() {
        super.onCreate()
        updateManager = OtaUpdateManager(this)
        createNotificationChannel()
        startPeriodicCheck()
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val name = "Sistem Güncellemeleri"
            val descriptionText = "Yeni sürüm bildirimleri ve indirme durumu"
            val importance = NotificationManager.IMPORTANCE_DEFAULT
            val channel = NotificationChannel(CHANNEL_ID, name, importance).apply {
                description = descriptionText
            }
            val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }

    private fun startPeriodicCheck() {
        serviceScope.launch {
            while (isActive) {
                checkForUpdates()
                // 1 saat bekle
                delay(60 * 60 * 1000L)
            }
        }

        // MQTT veya EventBus üzerinden gelen manuel tetiklemeleri dinle
        serviceScope.launch {
            EventBus.events.collect { event ->
                if (event is Event.UIEvent.CheckOtaUpdate) {
                    checkForUpdates()
                } else if (event is Event.UIEvent.TriggerOtaUpdate) {
                    // Kontrol et ve hemen indir
                    updateManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
                        override fun onUpdatesFound(updates: List<AppUpdate>) {
                            val latestUpdate = updates.find { it.isSystemUpdate && !it.isDowngrade }
                            if (latestUpdate != null) {
                                handleUpdateFound(latestUpdate) // İndirmeyi ve kurulumu tetikler
                            }
                        }
                        override fun onError(error: String) {}
                    })
                }
            }
        }
    }

    private fun checkForUpdates() {
        Log.d("OtaUpdateService", "Güncelleme kontrolü yapılıyor...")
        updateManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                val latestUpdate = updates.find { it.isSystemUpdate && !it.isDowngrade }
                if (latestUpdate != null) {
                    Log.d("OtaUpdateService", "Yeni güncelleme bulundu: ${latestUpdate.version}")
                    handleUpdateFound(latestUpdate)
                }
            }

            override fun onError(error: String) {
                Log.e("OtaUpdateService", "Güncelleme kontrol hatası: $error")
            }
        })
    }

    private fun handleUpdateFound(update: AppUpdate) {
        val destination = File(getExternalFilesDir(null), update.name)
        if (destination.exists() && destination.length() == update.sizeBytes) {
            // Zaten indirilmiş
            showUpdateReadyNotification(update, destination)
        } else {
            // İndirmeye başla
            downloadInBackground(update)
        }
    }

    private fun downloadInBackground(update: AppUpdate) {
        Log.d("OtaUpdateService", "İndirme başlatılıyor: ${update.name}")
        updateManager.downloadUpdate(update, object : OtaUpdateManager.DownloadCallback {
            override fun onProgress(percentage: Int, speedMbps: Double) {
                updateProgressNotification(update, percentage)
            }

            override fun onComplete(file: File?) {
                if (file != null) {
                    showUpdateReadyNotification(update, file)
                }
            }

            override fun onError(error: String) {
                Log.e("OtaUpdateService", "İndirme hatası: $error")
            }
        })
    }

    @SuppressLint("NotificationPermission")
    private fun updateProgressNotification(update: AppUpdate, progress: Int) {
        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.stat_sys_download)
            .setContentTitle("Güncelleme İndiriliyor")
            .setContentText("${update.version} sürümü indiriliyor: %$progress")
            .setProgress(100, progress, false)
            .setOngoing(true)
            .build()

        val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.notify(NOTIF_ID, notification)
    }

    @SuppressLint("NotificationPermission")
    private fun showUpdateReadyNotification(update: AppUpdate, file: File) {
        val installIntent = Intent(this, OtaInstallReceiver::class.java).apply {
            putExtra("apk_path", file.absolutePath)
            putExtra("expected_size", update.sizeBytes)
        }
        val pendingIntent = PendingIntent.getBroadcast(
            this, 
            0, 
            installIntent, 
            PendingIntent.FLAG_UPDATE_CURRENT or (if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) PendingIntent.FLAG_IMMUTABLE else 0)
        )

        val notification = NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.stat_sys_download_done)
            .setContentTitle("Güncelleme Hazır")
            .setContentText("${update.version} sürümü indirildi. Yüklemek için dokunun.")
            .setContentIntent(pendingIntent)
            .setAutoCancel(true)
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setCategory(NotificationCompat.CATEGORY_SERVICE)
            .build()

        val notificationManager = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.notify(NOTIF_ID, notification)
    }


    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        serviceJob.cancel()
        super.onDestroy()
    }
}
