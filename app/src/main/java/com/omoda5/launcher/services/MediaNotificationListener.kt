package com.omoda5.launcher.services

import android.service.notification.NotificationListenerService
import android.util.Log

class MediaNotificationListener : NotificationListenerService() {
    override fun onListenerConnected() {
        super.onListenerConnected()
        Log.d("MediaListener", "Bildirim dinleyicisi bağlandı.")
    }
}
