package com.omoda5.launcher.services

import android.app.Notification
import android.content.Intent
import android.service.notification.NotificationListenerService
import android.service.notification.StatusBarNotification
import android.util.Log
import com.omoda5.launcher.common.SystemBridgeManager

class MediaNotificationListener : NotificationListenerService() {

    companion object {
        const val ACTION_MEDIA_UPDATE = "com.omoda5.launcher.MEDIA_UPDATE"
        var globalController: android.media.session.MediaController? = null
        var playAction: android.app.PendingIntent? = null
        var pauseAction: android.app.PendingIntent? = null
        var nextAction: android.app.PendingIntent? = null
        var prevAction: android.app.PendingIntent? = null
    }

    override fun onListenerConnected() {
        super.onListenerConnected()
        Log.d("MediaListener", "Bildirim dinleyicisi sisteme bağlandı.")
    }

    override fun onNotificationPosted(sbn: StatusBarNotification?) {
        super.onNotificationPosted(sbn)
        val packageName = sbn?.packageName ?: return
        
        // Sadece müzik uygulamalarını dinle (Filtreleme)
        if (packageName.contains("music") || packageName.contains("spotify") || packageName.contains("musicolet") || packageName.contains("chery.media") || packageName.contains("vivaldi")) {
            val extras = sbn.notification.extras
            val title = extras.getString(Notification.EXTRA_TITLE) ?: ""
            val artist = extras.getString(Notification.EXTRA_TEXT) ?: ""
            
            // v10.5: Extract MediaSession Token for universal playback control
            val token = extras.getParcelable<android.media.session.MediaSession.Token>(Notification.EXTRA_MEDIA_SESSION)
            var isPlaying = false
            if (token != null) {
                val ctrl = android.media.session.MediaController(this, token)
                globalController = ctrl
                isPlaying = ctrl.playbackState?.state == android.media.session.PlaybackState.STATE_PLAYING
            }
            
            // v10.6: Extract real PendingIntents for guaranteed clicks!
            sbn.notification.actions?.forEach { action ->
                val title = action.title?.toString()?.lowercase() ?: ""
                if (title.contains("play") || title.contains("çal") || title.contains("başlat") || title.contains("oynat")) playAction = action.actionIntent
                if (title.contains("pause") || title.contains("dur") || title.contains("bekle")) pauseAction = action.actionIntent
                if (title.contains("next") || title.contains("sonra") || title.contains("ileri")) nextAction = action.actionIntent
                if (title.contains("prev") || title.contains("önce") || title.contains("geri")) prevAction = action.actionIntent
            }
            
            Log.d("MediaListener", "YAKALANDI: $packageName -> $title - $artist | isPlaying: $isPlaying")

            // v10.0.0 Bridge: Update Merkezi Sistem Köprüsü (şimdi state ile)
            SystemBridgeManager.updateMedia(title, artist, packageName)

            // Uygulama içine bilgiyi gönder (Legacy support)
            val intent = Intent(ACTION_MEDIA_UPDATE).apply {
                `package` = "com.omoda5.launcher"
                putExtra("title", title)
                putExtra("artist", artist)
                putExtra("package", packageName)
                putExtra("isPlaying", isPlaying)
            }
            sendBroadcast(intent)
        }
    }

    override fun onNotificationRemoved(sbn: StatusBarNotification?) {
        super.onNotificationRemoved(sbn)
        // Müzik durdurulduğunda veya bildirim gittiğinde istersen temizlik yapabiliriz
    }
}
