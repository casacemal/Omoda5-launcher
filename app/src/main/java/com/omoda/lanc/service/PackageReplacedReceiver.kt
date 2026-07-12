package com.omoda.lanc.service

import android.annotation.SuppressLint
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.MainActivity
import com.omoda.lanc.R

/**
 * Uygulama güncellendiğinde (derleme veya OTA) tetiklenen alıcı.
 * Kullanıcıya işlemin başarılı olduğuna dair bildirim verir.
 */
class PackageReplacedReceiver : BroadcastReceiver() {

    private val CHANNEL_ID = "update_notification"

    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_MY_PACKAGE_REPLACED) {
            Log.d("UpdateReceiver", "Uygulama başarıyla güncellendi veya yeniden yüklendi.")
            showSuccessNotification(context)
        }
    }

    @SuppressLint("NotificationPermission")
    private fun showSuccessNotification(context: Context) {
        val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Güncelleme Bildirimleri",
                NotificationManager.IMPORTANCE_HIGH
            ).apply {
                description = "Uygulama güncellendiğinde bilgi verir"
            }
            notificationManager.createNotificationChannel(channel)
        }

        val pInfo = context.packageManager.getPackageInfo(context.packageName, 0)
        val versionName = pInfo.versionName
        val versionCode = if (Build.VERSION.SDK_INT >= 28) pInfo.longVersionCode else pInfo.versionCode

        val openIntent = Intent(context, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        }
        val pendingIntent = PendingIntent.getActivity(
            context, 0, openIntent, 
            PendingIntent.FLAG_UPDATE_CURRENT or (if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) PendingIntent.FLAG_IMMUTABLE else 0)
        )

        val notification = NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.stat_sys_download_done)
            .setContentTitle("Sistem Güncellendi")
            .setContentText("Omoda Asistan v$versionName ($versionCode) başarıyla yüklendi.")
            .setPriority(NotificationCompat.PRIORITY_HIGH)
            .setAutoCancel(true)
            .setContentIntent(pendingIntent)
            .build()

        notificationManager.notify(2001, notification)
    }
}
