package com.omoda5.launcher.services

import android.accessibilityservice.AccessibilityService
import android.content.Intent
import android.util.Log
import android.view.KeyEvent
import android.view.accessibility.AccessibilityEvent

class CheryAccessibilityService : AccessibilityService() {

    companion object {
        private const val TAG = "CheryAccessibility"
        private const val KEY_CODE_STAR = 294
    }

    override fun onKeyEvent(event: KeyEvent): Boolean {
        val keyCode = event.keyCode
        val action = event.action

        // Yıldız tuşunu (294) yakalıyoruz
        if (keyCode == KEY_CODE_STAR) {
            if (action == KeyEvent.ACTION_UP) {
                Log.d(TAG, "Yıldız Tuşu Yakalandı -> Launcher Başlatılıyor")
                
                // Launcher'ı aç
                val intent = packageManager.getLaunchIntentForPackage(packageName)
                intent?.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                intent?.let { startActivity(it) }
            }
            return true // Tuşu 'tüketiyoruz', sistemin orijinal menüsü açılmaz.
        }
        return super.onKeyEvent(event)
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        // Gerekli değil
    }

    override fun onInterrupt() {
        // Gerekli değil
    }
}