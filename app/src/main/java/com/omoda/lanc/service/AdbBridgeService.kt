package com.omoda.lanc.service

import android.app.*
import android.content.Intent
import android.os.*
import androidx.core.app.NotificationCompat
import com.omoda.lanc.R
import com.omoda.lanc.network.AdbClient

/**
 * AdbBridgeService - Intent tabanlı ADB Komut Yürütücü
 * MainActivity'den gelen shell komutlarını AdbClient üzerinden asenkron çalıştırır.
 */
class AdbBridgeService : Service() {

    companion object {
        const val ACTION_EXECUTE_SHELL = "ACTION_EXECUTE_SHELL"
    }

    override fun onBind(i: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        setupNotification()
    }

    private fun setupNotification() {
        if (Build.VERSION.SDK_INT >= 26) {
            val chan = NotificationChannel("adb", "Omoda Engine", NotificationManager.IMPORTANCE_LOW)
            (getSystemService(NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(chan)
        }
        startForeground(99, NotificationCompat.Builder(this, "adb")
            .setContentTitle("Omoda 5 ADB Bridge")
            .setContentText("Permission Engine Active")
            .setSmallIcon(R.mipmap.ic_launcher).build())
    }

    override fun onStartCommand(i: Intent?, f: Int, s: Int): Int {
        if (i?.action == ACTION_EXECUTE_SHELL) {
            i.getStringExtra("command")?.let { AdbClient.executeCommand(it) }
        }
        return START_STICKY
    }
}
