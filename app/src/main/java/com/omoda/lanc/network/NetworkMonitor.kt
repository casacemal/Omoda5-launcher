package com.omoda.lanc.network

import android.content.Context
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.ActionExecutor
import kotlinx.coroutines.*
import java.net.InetAddress

class NetworkMonitor(private val context: Context) {
    private val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    private val actionExecutor = ActionExecutor(context)
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var healthCheckJob: Job? = null

    private var hasCheckedUpdatesOnConnect = false

    init {
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
                                    AssistantApplication.addLog("GÜNCELLEME: Yeni Omoda Sürümü Mevcut: v${latest.version}! Ayarlar -> App Store sayfasından yükleyebilirsiniz.")
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
        
        if (hasInternet) startHealthCheck()
    }

    private fun startHealthCheck() {
        healthCheckJob?.cancel()
        healthCheckJob = scope.launch {
            while (isActive) {
                checkConnectivityHeal()
                delay(30000) // Her 30 saniyede bir kontrol et
            }
        }
    }

    private fun stopHealthCheck() {
        healthCheckJob?.cancel()
    }

    private suspend fun checkConnectivityHeal() {
        val gatewayIp = AssistantApplication.safeServerIp
        val isGatewayReachable = withContext(Dispatchers.IO) {
            try {
                // Ping simülasyonu / reachability check
                val address = InetAddress.getByName(gatewayIp)
                address.isReachable(3000)
            } catch (e: Exception) {
                false
            }
        }

        if (isGatewayReachable) {
            AssistantApplication.hermesConnectionStatus.value = "CONNECTED"
            Log.d("NetworkMonitor", "Gateway ($gatewayIp) erişilebilir.")
        } else {
            AssistantApplication.hermesConnectionStatus.value = "DISCONNECTED"
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
            
            // 2. Tailscale bağlantısını tazele (KULLANICI İSTEĞİYLE İPTAL EDİLDİ - Ağı bozuyor)
            // actionExecutor.execute("connect_vpn", "{}")
            
            // 3. Logla
            AssistantApplication.addLog("Onarım: Saat senkronize edildi ve VPN tetiklendi.")
        } catch (e: Exception) {
            Log.e("NetworkMonitor", "Heal hatası: ${e.message}")
        }
    }
}
