package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.network.AdbClient
import kotlinx.coroutines.*

/**
 * SplitManager - Agresif Split-Screen Yöneticisi
 * Haritayı belirlenen koordinatlarda tutar ve uygulama kapanınca temizler.
 * v6.3.0: Adaptif Hız Desteği eklendi.
 */
object SplitManager {
    private const val TAG = "SplitManager"
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var watchdogJob: Job? = null
    private var lastTaskId: String? = null
    private var lastPackage: String? = null

    const val MAPS_YANDEX = "ru.yandex.yandexnavi/.core.NavigatorActivity"
    const val MAPS_GOOGLE = "com.google.android.apps.maps/com.google.android.maps.MapsActivity"
    const val MAPS_WAZE = "com.waze/com.waze.FreeMapAppActivity"
    const val MEDIA_SPOTIFY = "com.spotify.music/com.spotify.music.MainActivity"

    /**
     * Haritayı başlatır ve belirli koordinatlara mühürler.
     */
    fun launchSplitMaps(context: Context, mapsType: String = MAPS_YANDEX, initialWidth: Int = 1200) {
        val packageName = mapsType.substringBefore("/")
        lastPackage = packageName
        
        watchdogJob?.cancel()
        watchdogJob = scope.launch {
            try {
                // 1. Temizlik ve Başlatma
                AdbClient.executeCommand("am force-stop $packageName")
                delay(500)
                AdbClient.executeCommand("am start -n $mapsType --windowingMode 5")
                
                // 2. Watchdog: Task'ı bul ve boyutlandır
                repeat(5) { 
                    updateTaskId(packageName)
                    delay(800)
                    lastTaskId?.let { id ->
                        resizeTask(id, initialWidth)
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Split Hatası: ${e.message}")
            }
        }
    }

    /**
     * Aktif haritayı hıza göre yeniden boyutlandırır (Adaptif).
     */
    fun adaptToSpeed(speed: Float) {
        val packageName = lastPackage ?: return
        val targetWidth = if (speed > 80f) 1350 else 1150 // Hıza göre dinamik genişlik
        
        scope.launch {
            if (lastTaskId == null) updateTaskId(packageName)
            lastTaskId?.let { id ->
                resizeTask(id, targetWidth)
            }
        }
    }

    private fun updateTaskId(packageName: String) {
        AdbClient.executeCommand("am stack list") { line ->
            if (line.contains(packageName) && line.contains("taskId=")) {
                lastTaskId = line.substringAfter("taskId=").substringBefore(":").substringBefore(" ")
            }
        }
    }

    private fun resizeTask(taskId: String, width: Int) {
        // Omoda 5 Ekran: 1920x720
        // Sol Sidebar: 235dp (Overscan ile yönetiliyorsa 0'dan başlar)
        // Koordinatlar: [left, top, right, bottom]
        AdbClient.executeCommand("am task resize $taskId 0 0 $width 720")
    }

    /**
     * Tüm harita pencerelerini kapatır.
     */
    fun resetAll() {
        watchdogJob?.cancel()
        lastTaskId = null
        AdbClient.executeCommand("am force-stop ru.yandex.yandexnavi")
        AdbClient.executeCommand("am force-stop com.google.android.apps.maps")
        AdbClient.executeCommand("am force-stop com.waze")
        AdbClient.executeCommand("am force-stop com.spotify.music")
        Log.i(TAG, "Split-screen temizlendi.")
    }

    /**
     * Coolwalk düzeni için özel boyutlandırma.
     */
    fun launchCoolwalkSplit(context: Context, mapsType: String = MAPS_GOOGLE) {
        val packageName = mapsType.substringBefore("/")
        lastPackage = packageName
        
        watchdogJob?.cancel()
        watchdogJob = scope.launch {
            try {
                AdbClient.executeCommand("am force-stop $packageName")
                delay(500)
                AdbClient.executeCommand("am start -n $mapsType --windowingMode 5")
                
                repeat(5) { 
                    updateTaskId(packageName)
                    delay(800)
                    lastTaskId?.let { id ->
                        AdbClient.executeCommand("am task resize $id 822 12 1908 644")
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Coolwalk Split Hatası: ${e.message}")
            }
        }
    }
}
