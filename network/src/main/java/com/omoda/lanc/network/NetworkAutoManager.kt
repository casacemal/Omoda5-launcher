package com.omoda.lanc.network

import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.util.Log
import com.omoda.lanc.network.AdbClient
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.LoggerProvider
import kotlinx.coroutines.*
import java.net.InetAddress

/**
 * NetworkAutoManager - Otomatik Ağ ve VPN Yönetimi
 * Uygulama açılışında Wi-Fi kontrolü ve Tailscale VPN bağlantısını yönetir.
 */
object NetworkAutoManager {
    private const val TAG = "NetworkAutoManager"
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    fun start(context: Context) {
        scope.launch {
            LoggerProvider.i("Ağ: Otomatik yönetim başlatılıyor...")
            
            // 1. Wi-Fi Kontrolü
            checkAndEnableWifi()
            
            // Wi-Fi'ın açılması için biraz süre tanı (3 sn)
            delay(3000)

            // 2. İnternet Kontrolü ve Tailscale Bağlantısı
            if (hasInternet(context)) {
                connectTailscaleWithRetry()
            } else {
                LoggerProvider.w("Ağ: İnternet yok, Tailscale denemesi atlanıyor.")
            }
        }
    }

    private fun checkAndEnableWifi() {
        // Wi-Fi durumunu kontrol et ve kapalıysa aç
        // AAOS üzerinde svc wifi enable en garanti yöntemdir
        AdbClient.executeCommand("svc wifi enable") {
            Log.d(TAG, "Wi-Fi enable komutu gönderildi: $it")
        }
    }

    private suspend fun connectTailscaleWithRetry() {
        var attempts = 0
        val maxAttempts = 3 // İlk deneme + 2 retry

        while (attempts < maxAttempts) {
            attempts++
            LoggerProvider.i("VPN: Tailscale bağlantı denemesi $attempts/$maxAttempts")
            
            // Tailscale'i aç ve bağlan komutu (Komut Tailscale sürümüne göre değişebilir)
            // Genellikle bir intent ile tetiklemek daha sağlıklıdır ancak ADB üzerinden deniyoruz.
            AdbClient.executeCommand("am start -n com.tailscale.ipn/com.tailscale.ipn.IPNActivity")
            
            // Bağlantının kurulması için bekle
            delay(5000)
            
            if (isTailscaleConnected()) {
                LoggerProvider.i("VPN: Tailscale başarıyla bağlandı.")
                return
            }

            if (attempts < maxAttempts) {
                LoggerProvider.w("VPN: Bağlantı başarısız, 30 saniye sonra tekrar denenecek...")
                delay(30000)
            }
        }
        
        LoggerProvider.e("VPN: Tüm Tailscale denemeleri başarısız oldu.")
    }

    private fun hasInternet(context: Context): Boolean {
        val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    }

    private fun isTailscaleConnected(): Boolean {
        return try {
            // Tailscale arayüzünün (tun0 veya benzeri) varlığını kontrol et
            // Veya gateway IP'sine ping atarak kontrol et
            val serverIp = GlobalState.serverIp.value
            val address = InetAddress.getByName(serverIp)
            address.isReachable(2000)
        } catch (e: Exception) {
            false
        }
    }
}
