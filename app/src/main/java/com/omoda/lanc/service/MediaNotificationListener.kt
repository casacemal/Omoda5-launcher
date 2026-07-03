package com.omoda.lanc.service

import android.app.Notification
import android.content.Intent
import android.service.notification.NotificationListenerService
import android.service.notification.StatusBarNotification
import android.util.Log
import com.omoda.lanc.media.MediaBridge

class MediaNotificationListener : NotificationListenerService() {

    companion object {
        const val ACTION_MEDIA_UPDATE = "com.omoda.lanc.MEDIA_UPDATE"
        var globalController: android.media.session.MediaController? = null
    }

    override fun onListenerConnected() {
        super.onListenerConnected()
        Log.d("MediaListener", "Medya bildirim dinleyicisi bağlandı.")
    }

    override fun onNotificationPosted(sbn: StatusBarNotification?) {
        super.onNotificationPosted(sbn)
        val packageName = sbn?.packageName ?: return
        Log.d("MediaListener", "Bildirim geldi: $packageName")
        
        // Müzik uygulamalarını filtrele
        if (packageName.contains("music") || packageName.contains("spotify") || 
            packageName.contains("musicolet") || packageName.contains("chery.media") || 
            packageName.contains("vivaldi") || packageName.contains("radio")) {
            
            val extras = sbn.notification.extras
            val title = extras.getString(Notification.EXTRA_TITLE) ?: ""
            val artist = extras.getString(Notification.EXTRA_TEXT) ?: ""
            
            val token = extras.getParcelable<android.media.session.MediaSession.Token>(Notification.EXTRA_MEDIA_SESSION)
            if (token != null) {
                globalController = android.media.session.MediaController(this, token)
            }
            
            Log.d("MediaListener", "Medya Yakalandı: $packageName -> $title - $artist")

            val isPlaying = globalController?.playbackState?.state == android.media.session.PlaybackState.STATE_PLAYING

            // Merkezi Köprü Güncellemesi
            MediaBridge.updateMedia(title, artist, packageName, isPlaying)

            // Uygulama içine broadcast gönder
            val intent = Intent(ACTION_MEDIA_UPDATE).apply {
                `package` = "com.omoda.lanc"
                putExtra("title", title)
                putExtra("artist", artist)
                putExtra("package", packageName)
            }
            sendBroadcast(intent)
        }
    }
}
