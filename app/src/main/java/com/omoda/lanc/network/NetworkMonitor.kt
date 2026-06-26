package com.omoda.lanc.network

import android.content.Context
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import com.omoda.lanc.AssistantApplication

class NetworkMonitor(context: Context) {
    private val connectivityManager = context.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager

    init {
        val networkRequest = NetworkRequest.Builder()
            .addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
            .build()

        connectivityManager.registerNetworkCallback(networkRequest, object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                super.onAvailable(network)
                AssistantApplication.hasInternetConnection.value = true
                AssistantApplication.addLog("Sistem: İnternet Bağlantısı Sağlandı")
            }

            override fun onLost(network: Network) {
                super.onLost(network)
                AssistantApplication.hasInternetConnection.value = false
                AssistantApplication.addLog("Sistem: İnternet Bağlantısı Koptu!")
            }
        })
        
        // Initial state
        val activeNetwork = connectivityManager.activeNetwork
        val caps = connectivityManager.getNetworkCapabilities(activeNetwork)
        AssistantApplication.hasInternetConnection.value = caps?.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET) == true
    }
}
