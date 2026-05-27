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
     * Google Maps Multi-Task tetikleyici (Overlay Yöntemi).
     */
    fun launchMapsMultiTask(context: Context) {
        Log.d(TAG, "Multi-task Overlay tetiklendi.")
        
        // 1. Google Maps'i tam ekran başlat
        val mapsIntent = context.packageManager.getLaunchIntentForPackage(MAPS_PACKAGE)
        if (mapsIntent != null) {
            mapsIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            context.startActivity(mapsIntent)
            
            // 2. Sol paneli Overlay (Üst Katman) olarak başlat
            val overlayIntent = Intent(context, MultiTaskOverlayService::class.java)
            context.startService(overlayIntent)
        } else {
            Log.e(TAG, "Maps paketi bulunamadı!")
        }
    }
}
