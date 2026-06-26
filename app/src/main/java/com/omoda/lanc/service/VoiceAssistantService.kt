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
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.AssistantController
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.core.SherpaOfflineModelManager
import com.omoda.lanc.network.AdbClient
import com.omoda.lanc.vehicle.VehicleLayer
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.distinctUntilChanged

/**
 * VoiceAssistantService - PDF Plan v2.0
 * Sadece yaşam döngüsü, bildirimler ve sistem yayınlarını yönetir.
 * İş mantığı AssistantController'a devredilmiştir.
 */
class VoiceAssistantService : Service() {

    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private val CHANNEL_ID = "VoiceAssistantChannel"
    
    private lateinit var assistantController: AssistantController
    private lateinit var vehicleLayer: VehicleLayer
    private lateinit var modelManager: SherpaOfflineModelManager
    private var wakeWordManager: com.omoda.lanc.stt.WakeWordManager? = null

    private var locationManager: LocationManager? = null

    private val locationListener = object : LocationListener {
        override fun onLocationChanged(location: Location) {
            val gpsSpeedKmh = if (location.hasSpeed()) location.speed * 3.6f else -1f
            serviceScope.launch {
                EventBus.emit(Event.VehicleEvent.SpeedChanged(gpsSpeedKmh))
            }
        }
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
                    intent.getStringExtra("text")?.let { assistantController.speak(it) }
                }
                "com.omoda.assistant.START_LISTENING" -> assistantController.startListening()
                "com.omoda.assistant.STOP_LISTENING" -> assistantController.stopListening()
                "com.omoda.assistant.SHERPA_INSTALL" -> installSherpaModel()
            }
        }
    }

    override fun onCreate() {
        createNotificationChannel()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            startForeground(1, createNotification(), android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE)
        } else {
            startForeground(1, createNotification())
        }
        super.onCreate()

        assistantController = AssistantController(this, serviceScope)
        vehicleLayer = VehicleLayer(this, serviceScope)
        modelManager = SherpaOfflineModelManager(this)

        try {
            locationManager = getSystemService(Context.LOCATION_SERVICE) as LocationManager
            locationManager?.requestLocationUpdates(LocationManager.GPS_PROVIDER, 10000L, 10f, locationListener)
        } catch (e: SecurityException) {
            Log.e("Omoda-Service", "Konum izni yok")
        }

        val filter = IntentFilter().apply {
            addAction("com.saic.keyevent.hardkey.report")
            addAction("com.omoda.assistant.SPEAK")
            addAction("com.omoda.assistant.START_LISTENING")
            addAction("com.omoda.assistant.STOP_LISTENING")
            addAction("com.omoda.assistant.SHERPA_INSTALL")
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(voiceCommandReceiver, filter, Context.RECEIVER_EXPORTED)
        } else {
            registerReceiver(voiceCommandReceiver, filter)
        }

        serviceScope.launch {
            combine(
                AssistantApplication.serverIp,
                AssistantApplication.hermesPort,
                AssistantApplication.sttPort,
                AssistantApplication.ttsPort
            ) { _, _, _, _ -> Unit }
                .distinctUntilChanged()
                .collect { assistantController.updateConfig() }
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(Intent(this, HermesForegroundService::class.java))
        } else {
            startService(Intent(this, HermesForegroundService::class.java))
        }

        serviceScope.launch(Dispatchers.IO) {
            autoGrantPermissions()
        }

        // WakeWord Entegrasyonu (Kaynak: omodaassist_v2)
        wakeWordManager = com.omoda.lanc.stt.WakeWordManager(this) {
            assistantController.startListening()
        }

        serviceScope.launch {
            AssistantApplication.isWakeWordEnabled.collect { enabled ->
                if (enabled) wakeWordManager?.startListening()
                else wakeWordManager?.stopListening()
            }
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            startForeground(1, createNotification(), android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE)
        } else {
            startForeground(1, createNotification())
        }
        return START_STICKY
    }

    private fun installSherpaModel() {
        serviceScope.launch(Dispatchers.IO) {
            modelManager.installAllModels()
        }
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val chan = NotificationChannel(CHANNEL_ID, "Assistant", NotificationManager.IMPORTANCE_LOW)
            (getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(chan)
        }
    }

    private fun createNotification(): Notification = NotificationCompat.Builder(this, CHANNEL_ID)
        .setSmallIcon(android.R.drawable.ic_btn_speak_now)
        .setContentTitle("Omoda Assistant Active")
        .build()

    override fun onBind(intent: Intent?) = null
    
    override fun onDestroy() {
        super.onDestroy()
        locationManager?.removeUpdates(locationListener)
        stopService(Intent(this, HermesForegroundService::class.java))
        unregisterReceiver(voiceCommandReceiver)
        serviceScope.cancel()
    }

    private fun autoGrantPermissions() {
        val pkg = "com.omoda.lanc"
        val perms = listOf(
            android.Manifest.permission.RECORD_AUDIO,
            android.Manifest.permission.READ_EXTERNAL_STORAGE,
            android.Manifest.permission.WRITE_EXTERNAL_STORAGE,
            android.Manifest.permission.ACCESS_FINE_LOCATION,
            android.Manifest.permission.ACCESS_COARSE_LOCATION
        )
        
        perms.forEach { perm ->
            if (androidx.core.content.ContextCompat.checkSelfPermission(this, perm) != android.content.pm.PackageManager.PERMISSION_GRANTED) {
                AdbClient.executeCommand("pm grant $pkg $perm") { }
            }
        }
    }
}
