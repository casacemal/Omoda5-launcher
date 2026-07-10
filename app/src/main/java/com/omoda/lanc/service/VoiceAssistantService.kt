package com.omoda.lanc.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.os.Build
import android.os.Bundle
import android.os.PowerManager
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.core.*
import com.omoda.lanc.vehicle.VehicleLayer
import com.omoda.lanc.audio.AudioStreamReceiver
import com.omoda.lanc.audio.AudioStreamSender
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.distinctUntilChanged

class VoiceAssistantService : Service() {

    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private val CHANNEL_ID = "VoiceAssistantChannel"
    
    internal lateinit var assistantController: AssistantController
    internal lateinit var vehicleLayer: VehicleLayer

    internal var locationManager: LocationManager? = null

    private var radioReceiver: AudioStreamReceiver? = null
    private var radioSender: AudioStreamSender? = null
    private var wakeLock: PowerManager.WakeLock? = null

    private val locationListener = object : LocationListener {
        override fun onLocationChanged(location: Location) {
            val gpsSpeedKmh = if (location.hasSpeed()) location.speed * 3.6f else -1f
            serviceScope.launch {
                EventBus.emit(Event.VehicleEvent.GpsLocationChanged(
                    location.latitude,
                    location.longitude,
                    gpsSpeedKmh
                ))
            }
        }
        @Deprecated("Deprecated in Java")
        override fun onStatusChanged(provider: String?, status: Int, extras: Bundle?) {}
        override fun onProviderEnabled(provider: String) {}
        override fun onProviderDisabled(provider: String) {}
    }

    private val voiceCommandReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val action = intent?.action ?: return
            when (action) {
                "com.saic.keyevent.hardkey.report" -> {
                    val keyCode = intent.getIntExtra("android.intent.extra.hardkey.keycode", -1)
                    val isDown = intent.getBooleanExtra("android.intent.extra.hardkey.down", false)
                    if (isDown) {
                        serviceScope.launch {
                            EventBus.emit(Event.SystemEvent.HardKeyPressed(keyCode))
                        }
                    }
                }
                "com.omoda.assistant.SPEAK" -> {
                    if (::assistantController.isInitialized) {
                        intent.getStringExtra("text")?.let { assistantController.speak(it) }
                    }
                }
                "com.omoda.assistant.PROCESS_TEXT" -> {
                    if (::assistantController.isInitialized) {
                        intent.getStringExtra("text")?.let { assistantController.processText(it) }
                    }
                }
                "com.omoda.assistant.START_LISTENING" -> {
                    if (::assistantController.isInitialized) assistantController.startListening()
                }
                "com.omoda.assistant.STOP_LISTENING" -> {
                    if (::assistantController.isInitialized) assistantController.stopListening()
                }
            }
        }
    }

    override fun onCreate() {
        createNotificationChannel()
        val notification = createNotification()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            startForeground(1, notification, android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE)
        } else {
            startForeground(1, notification)
        }
        super.onCreate()

        acquireWakeLock()
        initHermesInfrastructure()
        
        // OTA Güncelleme servisini başlat
        startService(Intent(this, OtaUpdateService::class.java))

        serviceScope.launch {
            assistantController = AssistantController(this@VoiceAssistantService, serviceScope)
            vehicleLayer = VehicleLayer(this@VoiceAssistantService, serviceScope)

            try {
                locationManager = getSystemService(Context.LOCATION_SERVICE) as LocationManager
                locationManager?.requestLocationUpdates(LocationManager.GPS_PROVIDER, 10000L, 10f, locationListener)
            } catch (e: SecurityException) {
                Log.e("Omoda-Service", "Konum izni yok")
            }

            val filter = IntentFilter().apply {
                addAction("com.saic.keyevent.hardkey.report")
                addAction("com.omoda.assistant.SPEAK")
                addAction("com.omoda.assistant.PROCESS_TEXT")
                addAction("com.omoda.assistant.START_LISTENING")
                addAction("com.omoda.assistant.STOP_LISTENING")
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                registerReceiver(voiceCommandReceiver, filter, Context.RECEIVER_EXPORTED)
            } else {
                registerReceiver(voiceCommandReceiver, filter)
            }

            launch {
                combine(
                    listOf(
                        GlobalState.serverIp,
                        GlobalState.hermesPort,
                        GlobalState.sttPort,
                        GlobalState.ttsPort,
                        GlobalState.isBridgeMode,
                        GlobalState.bridgeServerIp,
                        GlobalState.bridgeType,
                        GlobalState.isRadioMode
                    )
                ) { _ -> Unit }
                    .distinctUntilChanged()
                    .collect { 
                        if (::assistantController.isInitialized) {
                            assistantController.updateConfig() 
                        }
                        restartHermesInfrastructure()
                    }
            }
        }
    }

    private fun initHermesInfrastructure() {
        if (!GlobalState.isRadioMode.value) return
        
        val wsUrl = GlobalState.HERMES_WS_URL
        
        radioReceiver = AudioStreamReceiver(applicationContext, wsUrl)
        radioSender = AudioStreamSender(wsUrl)
        
        radioReceiver?.startListening()
        radioSender?.startStreaming()
    }

    private fun restartHermesInfrastructure() {
        radioReceiver?.stop()
        radioSender?.stopStreaming()
        initHermesInfrastructure()
    }

    private fun acquireWakeLock() {
        val powerManager = getSystemService(Context.POWER_SERVICE) as PowerManager
        wakeLock = powerManager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "Omoda::WakeLock")
        wakeLock?.acquire()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        return START_STICKY
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val chan = NotificationChannel(CHANNEL_ID, "Omoda Assistant", NotificationManager.IMPORTANCE_LOW)
            (getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(chan)
        }
    }

    private fun createNotification(): Notification = NotificationCompat.Builder(this, CHANNEL_ID)
        .setSmallIcon(android.R.drawable.ic_btn_speak_now)
        .setContentTitle("Omoda Assistant Active")
        .setContentText("Lite Sürüm: Bulut STT/TTS aktif")
        .setPriority(NotificationCompat.PRIORITY_LOW)
        .build()

    override fun onBind(intent: Intent?) = null
    
    override fun onDestroy() {
        try {
            locationManager?.removeUpdates(locationListener)
        } catch (_: Exception) {}
        try {
            unregisterReceiver(voiceCommandReceiver)
        } catch (_: Exception) {}
        
        radioReceiver?.stop()
        radioSender?.stopStreaming()
        if (wakeLock?.isHeld == true) wakeLock?.release()
        
        if (::assistantController.isInitialized) {
            assistantController.destroy()
        }
        if (::vehicleLayer.isInitialized) {
            vehicleLayer.destroy()
        }
        serviceScope.cancel()
        super.onDestroy()
    }
}
