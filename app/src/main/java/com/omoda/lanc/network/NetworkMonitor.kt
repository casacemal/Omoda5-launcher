package com.omoda.lanc.network

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
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.MainActivity
import com.omoda.lanc.core.ActionExecutor
import com.omoda.lanc.mqtt.MqttTelemetryBridge
import kotlinx.coroutines.*
import java.net.InetAddress

class NetworkMonitor(private val context: Context) {
    private val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    private val mqttTelemetryBridge = MqttTelemetryBridge(AssistantApplication.mqttPublisher)
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
                AssistantApplication.hasInternetConnection.value = true
                AssistantApplication.addLog("Ağ: İnternet Bağlantısı Sağlandı")
                startHealthCheck()
                
                // İnternet yeni aktif olduğunda 1 defa güncelleme kontrolü yap
                if (!hasCheckedUpdatesOnConnect) {
                    hasCheckedUpdatesOnConnect = true
                    scope.launch {
                        val otaManager = OtaUpdateManager(context)
                        otaManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
                            override fun onUpdatesFound(updates: List<AppUpdate>) {
                                val newerUpdates = updates.filter { !it.isDowngrade }
                                if (newerUpdates.isNotEmpty()) {
                                    val latest = newerUpdates.first()
                                    val msg = "Yeni Omoda Sürümü Mevcut: v${latest.version}! Ayarlar -> App Store sayfasından yükleyebilirsiniz."
                                    AssistantApplication.addLog("GÜNCELLEME: $msg")
                                    
                                    // Android Bildirimi Gönder
                                    showUpdateNotification(
                                        title = "Yeni Sistem Güncellemesi",
                                        message = "Omoda Asistan v${latest.version} indirilebilir."
                                    )
                                } else {
                                    AssistantApplication.addLog("Güncelleme Kontrolü: Uygulamanız en güncel sürümde.")
                                }
                            }
                            override fun onError(error: String) {
                                Log.w("NetworkMonitor", "Bağlantı sonrası OTA kontrolü başarısız: $error")
                            }
                        })
                    }
                }
            }

            override fun onLost(network: Network) {
                super.onLost(network)
                AssistantApplication.hasInternetConnection.value = false
                AssistantApplication.addLog("Ağ: İnternet Bağlantısı Koptu!")
                hasCheckedUpdatesOnConnect = false // İnternet kopunca bayrağı sıfırla ki tekrar bağlandığında kontrol etsin
                stopHealthCheck()
            }
        })
        
        // Initial state
        val activeNetwork = connectivityManager.activeNetwork
        val caps = connectivityManager.getNetworkCapabilities(activeNetwork)
        val hasInternet = caps?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) == true
        AssistantApplication.hasInternetConnection.value = hasInternet
        
        // Her zaman health check başlat ki ağ durumu ConnectivityManager tarafından yanlış algılanırsa ping ile düzelsin
        startHealthCheck()
    }

    private fun startHealthCheck() {
        healthCheckJob?.cancel()
        healthCheckJob = scope.launch {
            while (isActive) {
                checkConnectivityHeal()
                delay(15000) // Her 15 saniyede bir kontrol et (Daha hızlı tepki)
            }
        }
    }

    private fun stopHealthCheck() {
        healthCheckJob?.cancel()
    }

    private suspend fun checkConnectivityHeal() {
        val gatewayIp = AssistantApplication.safeServerIp
        val gatewayPort = AssistantApplication.hermesPort.value.toIntOrNull() ?: 20128
        
        val isGatewayReachable = withContext(Dispatchers.IO) {
            try {
                // Sadece IP değil, servis portuna (20128) soket bağlantısı dene (Daha kesin sonuç)
                val socket = java.net.Socket()
                socket.connect(java.net.InetSocketAddress(gatewayIp, gatewayPort), 2000)
                socket.close()
                true
            } catch (e: Exception) {
                false
            }
        }

        if (isGatewayReachable) {
            if (AssistantApplication.hermesConnectionStatus.value == "DISCONNECTED") {
                AssistantApplication.hermesConnectionStatus.value = "CONNECTED"
            }
            AssistantApplication.hasInternetConnection.value = true
            AssistantApplication.isVpnConnected.value = true
            Log.d("NetworkMonitor", "Gateway ($gatewayIp) erişilebilir.")
        } else {
            AssistantApplication.hermesConnectionStatus.value = "DISCONNECTED"
            AssistantApplication.isVpnConnected.value = false
            AssistantApplication.addLog("Ağ Hatası: Gateway ($gatewayIp) erişilemiyor!")
            
            if (AssistantApplication.hasInternetConnection.value && AssistantApplication.isAutoTasksEnabled.value) {
                AssistantApplication.addLog("Otomatik Onarım: Tailscale yeniden başlatılıyor...")
                healTailscale()
            }
        }
    }

    private fun healTailscale() {
        try {
            // 1. Saati düzelt (SSL hatalarını önlemek için kritik)
            actionExecutor.execute("fix_system_time", "{}")
            
            // 2. Tailscale bağlantısını tazele
            actionExecutor.execute("connect_vpn", "{}")
            
            // 3. Logla
            AssistantApplication.addLog("Onarım: Saat senkronize edildi ve VPN tetiklendi.")
        } catch (e: Exception) {
            Log.e("NetworkMonitor", "Heal hatası: ${e.message}")
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
        val intent = Intent(context, MainActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK
        }
        val pendingIntent = PendingIntent.getActivity(
            context, 
            0, 
            intent, 
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )

        val builder = NotificationCompat.Builder(context, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.stat_sys_download_done) // Standart sistem ikonu
            .setContentTitle(title)
            .setContentText(message)
            .setPriority(NotificationCompat.PRIORITY_DEFAULT)
            .setContentIntent(pendingIntent)
            .setAutoCancel(true)

        val notificationManager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        notificationManager.notify(1001, builder.build())
    }
}
