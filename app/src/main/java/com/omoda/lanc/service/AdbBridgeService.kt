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
        const val ACTION_STOP_SERVICE = "ACTION_STOP_SERVICE"

        // C-2: İzin verilen komut prefix'leri whitelist'i
        // Split-screen komutları eklendi: am stack, am task, enable_freeform_support
        private val ALLOWED_COMMAND_PREFIXES = listOf(
            "dumpsys car_service",
            "dumpsys deviceidle",
            "date -s",
            "input keyevent",
            "input tap",
            "am start",
            "am broadcast",
            "am force-stop",
            "am stack",
            "am task",
            "settings put",
            "settings get",
            "pm grant",
            "pm enable",
            "pm install",
            "appops set",
            "cmd window",
            "cmd notification",
            "cmd network_time_update_service",

            "cmd package set-home-activity",
            "monkey -p",
            "id",
            "su 0",
            "setprop service.adb.tcp.port",
            "stop adbd",
            "start adbd",
            "logcat",
            "svc wifi",
            "sleep"
        )

        fun isAllowedCommand(cmd: String): Boolean {
            val trimmed = cmd.trim()
            // C-2: Allow chain operators for internal macros. Still restrict arbitrary shell execution
            val DANGEROUS_CHARS = listOf("|", "`", "\$(", "\n", "\r")
            if (DANGEROUS_CHARS.any { trimmed.contains(it) }) {
                android.util.Log.w("AdbBridgeService", "Shell operatörü tespit edildi, komut reddedildi: $trimmed")
                return false
            }
            return ALLOWED_COMMAND_PREFIXES.any { prefix -> trimmed.startsWith(prefix) }
        }
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
        when (i?.action) {
            ACTION_EXECUTE_SHELL -> {
                i.getStringExtra("command")?.let { cmd ->
                    // C-2: Yalnızca izin verilen komut prefix'lerini çalıştır
                    if (isAllowedCommand(cmd)) {
                        AdbClient.executeCommand(cmd)
                    } else {
                        android.util.Log.w("AdbBridgeService", "Güvensiz komut reddedildi: $cmd")
                    }
                }
            }
            ACTION_STOP_SERVICE -> {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                    stopForeground(STOP_FOREGROUND_REMOVE)
                } else {
                    @Suppress("DEPRECATION")
                    stopForeground(true)
                }
                stopSelf()
            }
        }
        return START_STICKY
    }
}
