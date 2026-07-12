package com.omoda.lanc.network

import android.content.Context
import android.util.Log
import com.omoda.lanc.core.GlobalState
import kotlinx.coroutines.*
import java.net.NetworkInterface
import java.net.Inet4Address

class AdbConnectionMonitor(private val context: Context) {
    private val TAG = "AdbConnectionMonitor"
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var monitorJob: Job? = null

    fun start() {
        monitorJob?.cancel()
        monitorJob = scope.launch {
            while (isActive) {
                try {
                    val hasRemoteAdb = checkNetworkInterfaces()
                    if (GlobalState.isRemoteAdbConnected.value != hasRemoteAdb) {
                        Log.w(TAG, "Uzak Bağlantı Durumu Değişti: $hasRemoteAdb")
                        GlobalState.isRemoteAdbConnected.value = hasRemoteAdb
                        GlobalState.isAdbConnected.value = hasRemoteAdb
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Monitor hatası: ${e.message}")
                }
                delay(5000)
            }
        }
    }

    fun stop() {
        monitorJob?.cancel()
    }

    private fun checkNetworkInterfaces(): Boolean {
        try {
            val interfaces = NetworkInterface.getNetworkInterfaces()
            while (interfaces.hasMoreElements()) {
                val networkInterface = interfaces.nextElement()
                if (!networkInterface.isUp || networkInterface.isLoopback) continue
                
                val addresses = networkInterface.inetAddresses
                while (addresses.hasMoreElements()) {
                    val address = addresses.nextElement()
                    if (!address.isLoopbackAddress && address is Inet4Address) {
                        val ip = address.hostAddress
                        if (ip?.startsWith("100.") == true || (ip?.startsWith("192.168.") == true && ip != "192.168.1.14")) {
                             return true
                        }
                    }
                }
            }
            return isLocalPortOpen(5555)
        } catch (e: Exception) {
            Log.e(TAG, "Ağ tarama hatası: ${e.message}")
        }
        return false
    }

    private fun isLocalPortOpen(port: Int): Boolean {
        return try {
            java.net.Socket().use { socket ->
                socket.connect(java.net.InetSocketAddress("127.0.0.1", port), 500)
                true
            }
        } catch (e: Exception) {
            false
        }
    }
}
