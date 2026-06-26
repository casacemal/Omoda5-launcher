package com.omoda.lanc.service

import android.app.*
import android.content.Context
import android.content.Intent
import android.os.IBinder
import android.os.PowerManager
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.audio.AudioStreamReceiver
import com.omoda.lanc.audio.AudioStreamSender
import com.omoda.lanc.network.TelemetrySseClient

/**
 * Sürüm 3.0: Ana Altyapı Servisi (SSE + Telsiz + WakeLock)
 */
class HermesForegroundService : Service() {
    private val TAG = "Hermes-Service"
    private var receiver: AudioStreamReceiver? = null
    private var sender: AudioStreamSender? = null
    private var sseClient: TelemetrySseClient? = null
    private var wakeLock: PowerManager.WakeLock? = null

    companion object {
        const val CHANNEL_ID = "hermes_intercom_channel"
        const val NOTIF_ID = 1001
    }

    override fun onCreate() {
        createNotificationChannel()
        startForeground(NOTIF_ID, createInitialNotification())
        super.onCreate()
        Log.i(TAG, "Hermes Altyapı Servisi Oluşturuluyor...")
        acquireWakeLock()
        
        /*
        val baseUrl = AssistantApplication.serverIp.value
        val port = AssistantApplication.hermesPort.value
        
        // Sürüm 3.1: URL'ler Hermes 1.3 standartlarına göre güncellendi.
        // 404 hatasını önlemek için /v1/ws yerine /v1/events (Event Bus) kullanılıyor.
        receiver = AudioStreamReceiver(applicationContext, "ws://$baseUrl:$port/v1/events")
        sender = AudioStreamSender("ws://$baseUrl:$port/v1/events")
        
        // SSE için güncel endpoint (Sürüm 3.1 - Standart Event Stream)
        sseClient = null
        
        // Sürüm 3.0: Bağlantıları hemen başlat (onCreate içinde altyapı hazır olsun)
        receiver?.startListening()
        sender?.startStreaming()
        sseClient?.connect()
        */
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        Log.i(TAG, "Hermes Altyapı Servisi onStartCommand...")
        startForeground(NOTIF_ID, createInitialNotification())
        return START_STICKY
    }

    private fun createInitialNotification(): Notification {
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("Hermes Telsiz Aktif")
            .setContentText("Canlı telsiz ve telemetri bağlantısı çalışıyor")
            .setSmallIcon(android.R.drawable.ic_btn_speak_now)
            .setOngoing(true)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }

    private fun createNotificationChannel() {
        val channel = NotificationChannel(
            CHANNEL_ID, "Hermes Telsiz Servisi", NotificationManager.IMPORTANCE_LOW
        )
        (getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager)
            .createNotificationChannel(channel)
    }

    private fun acquireWakeLock() {
        val powerManager = getSystemService(Context.POWER_SERVICE) as PowerManager
        wakeLock = powerManager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "Hermes::IntercomWakeLock")
        wakeLock?.acquire(10 * 60 * 1000L) // 10 dakika, her startCommand'da tazelenir
    }

    override fun onDestroy() {
        Log.i(TAG, "Hermes Altyapı Servisi Durduruluyor...")
        receiver?.stop()
        sender?.stopStreaming()
        sseClient?.disconnect()
        if (wakeLock?.isHeld == true) wakeLock?.release()
        super.onDestroy()
    }

    override fun onBind(intent: Intent?): IBinder? = null
}

