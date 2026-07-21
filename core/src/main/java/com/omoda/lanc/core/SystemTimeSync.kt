package com.omoda.lanc.core

import android.util.Log
import com.omoda.lanc.network.AdbClient
import java.text.SimpleDateFormat
import java.util.*

/**
 * SystemTimeSync - GPS üzerinden sistem tarih ve saatini günceller.
 * Uygulama özelliklerinden bağımsız, sistem seviyesinde çalışır.
 */
object SystemTimeSync {
    private const val TAG = "SystemTimeSync"
    private var lastSyncTime = 0L
    private const val MIN_SYNC_INTERVAL = 10 * 60 * 1000L // 10 dakikada bir kontrol et
    private const val MAX_DRIFT_ALLOWED = 30 * 1000L // 30 saniyeden fazla sapma varsa düzelt

    fun syncWithGps(gpsTimeMillis: Long) {
        if (gpsTimeMillis <= 0) return

        val currentTime = System.currentTimeMillis()
        val drift = Math.abs(gpsTimeMillis - currentTime)

        // Eğer fark 30 saniyeden fazlaysa ve son senkronizasyondan bu yana yeterli süre geçtiyse
        if (drift > MAX_DRIFT_ALLOWED && (currentTime - lastSyncTime > MIN_SYNC_INTERVAL)) {
            // TR Saati (+3 Offset) hesabı: GPS zamanı UTC'dir. 
            // Türkiye saati için +3 saat (10800000 ms) ekliyoruz.
            val trTimeMillis = gpsTimeMillis + (3 * 3600 * 1000L)
            
            // Cihazın date utility'si ISO 8601 bekliyor: YYYY-MM-DD HH:mm:ss
            val sdf = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US)
            sdf.timeZone = TimeZone.getTimeZone("UTC") // trTimeMillis zaten offsetli
            val gpsDateStr = sdf.format(Date(trTimeMillis))
            
            Log.i(TAG, "Sistem saati senkronize ediliyor (TR+3)... Drift: ${drift/1000}s | Yeni Zaman: $gpsDateStr")
            
            // Root yetkisiyle sistem saatini set et
            AdbClient.executeCommand("su 0 date '$gpsDateStr'") {
                Log.d(TAG, "Saat güncelleme sonucu: $it")
            }
            
            lastSyncTime = System.currentTimeMillis()
        }
    }
}
