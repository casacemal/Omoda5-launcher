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
        // H-10: WeakReference kullan\u0131l\u0131yor, eski instance'lar GC taraf\u0131ndan serbest b\u0131rak\u0131labilir
        private var _globalControllerRef: java.lang.ref.WeakReference<android.media.session.MediaController>? = null
        var globalController: android.media.session.MediaController?
            get() = _globalControllerRef?.get()
            set(value) { _globalControllerRef = value?.let { java.lang.ref.WeakReference(it) } }
    }

    override fun onListenerConnected() {
        super.onListenerConnected()
        Log.d("MediaListener", "Medya bildirim dinleyicisi bağlandı.")
    }

    override fun onNotificationPosted(sbn: StatusBarNotification?) {
        super.onNotificationPosted(sbn)
        val packageName = sbn?.packageName ?: return
        Log.d("MediaListener", "Bildirim geldi: $packageName")
        
        val extras = sbn.notification.extras
        val isMedia = extras.containsKey(Notification.EXTRA_MEDIA_SESSION)
        
        // Medya oturumu varsa veya bilinen paketse işle
        if (isMedia || packageName.contains("music") || packageName.contains("spotify") || 
            packageName.contains("musicolet") || packageName.contains("chery.media") || 
            packageName.contains("radio") || packageName.contains("youtube")) {
            
            val title = extras.getString(Notification.EXTRA_TITLE) ?: ""
            val artist = extras.getString(Notification.EXTRA_TEXT) ?: ""

            
            @Suppress("DEPRECATION")
            var albumArt = extras.getParcelable<android.graphics.Bitmap>(Notification.EXTRA_LARGE_ICON)
                ?: extras.getParcelable<android.graphics.Bitmap>(Notification.EXTRA_PICTURE)
                ?: extras.getParcelable<android.graphics.Bitmap>("android.picture")
            
            @Suppress("DEPRECATION")
            val token = extras.getParcelable<android.media.session.MediaSession.Token>(Notification.EXTRA_MEDIA_SESSION)
            if (token != null) {
                globalController = android.media.session.MediaController(this, token)
                // If notification didn't have art, try controller metadata
                if (albumArt == null) {
                    val metadata = globalController?.metadata
                    albumArt = metadata?.getBitmap(android.media.MediaMetadata.METADATA_KEY_ALBUM_ART)
                        ?: metadata?.getBitmap(android.media.MediaMetadata.METADATA_KEY_ART)
                }
            }
            
            Log.d("MediaListener", "Medya Yakalandı: $packageName -> $title - $artist, Art: ${albumArt != null}")

            val isPlaying = globalController?.playbackState?.state == android.media.session.PlaybackState.STATE_PLAYING
            val queue = globalController?.queue?.map { it.description.title?.toString() ?: "Bilinmeyen" } ?: emptyList()

            // Bitmap boyut sınırı: OOM önlemi (max 512x512)
            val safeAlbumArt = albumArt?.let { bmp ->
                try {
                    val maxSize = 512
                    if (bmp.width > maxSize || bmp.height > maxSize) {
                        val scale = maxSize.toFloat() / maxOf(bmp.width, bmp.height)
                        val newW = (bmp.width * scale).toInt().coerceAtLeast(1)
                        val newH = (bmp.height * scale).toInt().coerceAtLeast(1)
                        android.graphics.Bitmap.createScaledBitmap(bmp, newW, newH, true)
                            .also { if (it != bmp) bmp.recycle() }
                    } else bmp
                } catch (e: Exception) {
                    Log.w("MediaListener", "AlbumArt küçültme hatası, görselsiz devam: ${e.message}")
                    null  // Bitmap bozuksa hiç gösterme
                }
            }

            // Merkezi Köprü Güncellemesi
            MediaBridge.updateMedia(title, artist, packageName, isPlaying, safeAlbumArt, queue)



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
