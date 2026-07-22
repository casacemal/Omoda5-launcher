package com.omoda.lanc.network

import android.annotation.SuppressLint
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.core.*
import com.omoda.lanc.mqtt.MqttTelemetryBridge
import com.omoda.lanc.log.AdvancedLogger
import kotlinx.coroutines.*
import java.net.InetAddress

@SuppressLint("MissingPermission")
class NetworkMonitor(private val context: Context) {
    private val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    
    private val mqttTelemetryBridge = GlobalState.mqttPublisher?.let { MqttTelemetryBridge(it) }
    private val actionExecutor = ActionExecutor(context, mqttTelemetryBridge)
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var healthCheckJob: Job? = null

    private var hasCheckedUpdatesOnConnect = false
    private val CHANNEL_ID = "omoda_updates"

    init {
        createNotificationChannel()
        val networkRequest = NetworkRequest.Builder()
            .addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
            .build()

        connectivityManager.registerNetworkCallback(networkRequest, object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                super.onAvailable(network)
                GlobalState.hasInternetConnection.value = true
                LoggerProvider.i("Ağ: İnternet Bağlantısı Sağlandı")
                
                AdvancedLogger.log(
                    "NetworkMonitor",
                    "INFO",
                    "Ağ Bağlantısı Aktif",
                    mapOf("network_type" to network.toString())
                )
                
                startHealthCheck()
                
                if (!hasCheckedUpdatesOnConnect) {
                    hasCheckedUpdatesOnConnect = true
                    scope.launch {
                        val otaManager = OtaUpdateManager(context)
                        otaManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
                            override fun onUpdatesFound(updates: List<AppUpdate>) {
                                val newerUpdates = updates.filter { !it.isDowngrade }
                                if (newerUpdates.isNotEmpty()) {
                                    val latest = newerUpdates.first()
                                    LoggerProvider.i("GÜNCELLEME: Yeni Omoda Sürümü Mevcut: v${latest.version}!")
                                    showUpdateNotification("Yeni Sistem Güncellemesi", "v${latest.version} indirilebilir.")
                                } else {
                                    LoggerProvider.i("Güncelleme Kontrolü: Uygulamanız en güncel sürümde.")
                                }
                            }
                            override fun onError(error: String) {
                                Log.w("NetworkMonitor", "OTA kontrolü başarısız: $error")
                            }
                        })
                    }
                }
            }

            override fun onLost(network: Network) {
                super.onLost(network)
                GlobalState.hasInternetConnection.value = false
                LoggerProvider.w("Ağ: İnternet Bağlantısı Koptu!")
                hasCheckedUpdatesOnConnect = false
                stopHealthCheck()
            }
        })
        
        val activeNetwork = connectivityManager.activeNetwork
        val caps = connectivityManager.getNetworkCapabilities(activeNetwork)
        GlobalState.hasInternetConnection.value = caps?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) == true
        startHealthCheck()
    }

    private fun startHealthCheck() {
        healthCheckJob?.cancel()
        healthCheckJob = scope.launch {
            while (isActive) {
                checkConnectivityHeal()
                // Hassasiyeti düşürdük: 15 saniye yerine 60 saniye bekler.
                // Wi-Fi servisinin sürekli sorgulanarak kilitlenmesini önler.
                delay(60000)
            }
        }
    }

    private fun stopHealthCheck() {
        healthCheckJob?.cancel()
    }

    private var lastWifiResetTime: Long = 0

    private suspend fun checkConnectivityHeal() {
        val gatewayIp = GlobalState.activeServerIp.value.trim()
        val gatewayPort = GlobalState.hermesPort.value.toIntOrNull() ?: 8642
        
        val isGatewayReachable = withContext(Dispatchers.IO) {
            try {
                java.net.Socket().use { socket ->
                    socket.connect(java.net.InetSocketAddress(gatewayIp, gatewayPort), 2000)
                    true
                }
            } catch (e: Exception) {
                false
            }
        }

        if (isGatewayReachable) {
            if (GlobalState.hermesConnectionStatus.value == "DISCONNECTED") {
                GlobalState.hermesConnectionStatus.value = "CONNECTED"
            }
            GlobalState.hasInternetConnection.value = true
            Log.d("NetworkMonitor", "Gateway ($gatewayIp) erişilebilir.")
        } else {
            GlobalState.hermesConnectionStatus.value = "DISCONNECTED"
            LoggerProvider.w("Ağ Hatası: Gateway ($gatewayIp) erişilemiyor!")
            
            // Eğer internet tamamen yoksa ve gateway'e de erişilemiyorsa (Kopma durumu)
            if (!GlobalState.hasInternetConnection.value) {
                val currentTime = System.currentTimeMillis()
                // En son Wi-Fi resetlemenin üzerinden en az 5 dakika geçmişse reset at (300000ms)
                if (currentTime - lastWifiResetTime > 300000) {
                    LoggerProvider.w("Ağ: Bağlantı kurulamadı. Wi-Fi otomatik onarım tetikleniyor...")
                    AdbClient.executeCommand("svc wifi disable | sleep 2 | svc wifi enable")
                    lastWifiResetTime = currentTime
                }
            }
        }
    }

    private fun createNotificationChannel() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            val name = "Sistem Güncellemeleri"
            val descriptionText = "Omoda Asistan güncelleme bildirimleri"
            val importance = NotificationManager.IMPORTANCE_DEFAULT
            val channel = NotificationChannel(CHANNEL_ID, name, importance).apply {
                description = descriptionText
            }
            val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            notificationManager.createNotificationChannel(channel)
        }
    }

    private fun showUpdateNotification(title: String, message: String) {
        // MainActivity reference might need to be resolved differently if they are in different modules.
        // For now, let's assume it's still accessible or use a generic intent.
        val builder = NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.stat_sys_download_done)
            .setContentTitle(title)
            .setContentText(message)
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setAutoCancel(true)

        val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.notify(1001, builder.build())
    }
}
