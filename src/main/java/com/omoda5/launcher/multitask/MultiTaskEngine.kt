package com.omoda5.launcher.multitask

import android.content.Context
import android.content.Intent
import android.util.Log

/**
 * MULTI-TASK YÖNETİM MOTORU
 * Google Maps ve Arka Plan Split mekanizmalarını yönetir.
 */
object MultiTaskEngine {

    private const val TAG = "MultiTaskEngine"
    private const val MAPS_PACKAGE = "com.google.android.apps.maps"

    /**
     * Google Maps Multi-Task tetikleyici.
     */
    fun launchMapsSplit(context: Context) {
        Log.d(TAG, "Multi-task Maps tetiklendi.")
        
        // 1. Google Maps'i başlat (Zorlamalı Sınırlar)
        val mapsIntent = context.packageManager.getLaunchIntentForPackage(MAPS_PACKAGE)
        if (mapsIntent != null) {
            mapsIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT)
            
            // AAOS 10 Özel: Split stack (3/4) yerine bu sürümde 'Freeform' mantığı denenecek.
            context.startActivity(mapsIntent)
            
            // 2. Yanına Medya Paneli veya Ayarları aç (Mevcut split mekanizması arka planda)
            // Bu kısım SplitScreenManager ile entegre çalışacak.
        } else {
            Log.e(TAG, "Maps paketi bulunamadı!")
        }
    }
}
