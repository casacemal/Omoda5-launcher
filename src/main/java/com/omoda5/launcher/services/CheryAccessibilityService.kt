package com.omoda5.launcher.services

import android.accessibilityservice.AccessibilityService
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.graphics.PixelFormat
import android.util.Log
import android.view.Gravity
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import android.view.accessibility.AccessibilityEvent
import kotlin.math.abs

class CheryAccessibilityService : AccessibilityService() {

    private var windowManager: WindowManager? = null
    private var backGestureOverlay: View? = null
    private var homeGestureOverlay: View? = null

    companion object {
        private const val TAG = "CheryAccessibility"
        private const val KEY_CODE_STAR = 294
        private const val KEY_CODE_HOME = 3
        private const val SWIPE_THRESHOLD = 100
        private const val EDGE_SIZE = 40 // Hassasiyet için kenar alan genişliği/yüksekliği
    }

    override fun onServiceConnected() {
        super.onServiceConnected()
        Log.d(TAG, "Accessibility Service Bağlandı")
        setupBackGestureOverlay()
        setupHomeGestureOverlay()
    }

    private fun setupBackGestureOverlay() {
        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        
        backGestureOverlay = View(this).apply {
            setBackgroundColor(Color.TRANSPARENT)
            setOnTouchListener(object : View.OnTouchListener {
                private var startX = 0f
                private var startY = 0f

                override fun onTouch(v: View, event: MotionEvent): Boolean {
                    when (event.action) {
                        MotionEvent.ACTION_DOWN -> {
                            startX = event.rawX
                            startY = event.rawY
                            return true
                        }
                        MotionEvent.ACTION_UP -> {
                            val endX = event.rawX
                            val endY = event.rawY
                            
                            val deltaX = startX - endX // Sağdan sola pozitif
                            val deltaY = abs(startY - endY)

                            // Sağdan sola çekme kontrolü (Geri)
                            if (deltaX > SWIPE_THRESHOLD && deltaX > deltaY) {
                                Log.d(TAG, "Geri hareketi algılandı")
                                performGlobalAction(GLOBAL_ACTION_BACK)
                            }
                            return true
                        }
                    }
                    return false
                }
            })
        }

        val params = WindowManager.LayoutParams(
            EDGE_SIZE,
            WindowManager.LayoutParams.MATCH_PARENT,
            WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.END or Gravity.CENTER_VERTICAL
        }

        try {
            windowManager?.addView(backGestureOverlay, params)
            Log.d(TAG, "Geri hareketi overlay eklendi")
        } catch (e: Exception) {
            Log.e(TAG, "Geri overlay eklenemedi: ${e.message}")
        }
    }

    private fun setupHomeGestureOverlay() {
        homeGestureOverlay = View(this).apply {
            setBackgroundColor(Color.TRANSPARENT)
            setOnTouchListener(object : View.OnTouchListener {
                private var startY = 0f
                private var startX = 0f

                override fun onTouch(v: View, event: MotionEvent): Boolean {
                    when (event.action) {
                        MotionEvent.ACTION_DOWN -> {
                            startY = event.rawY
                            startX = event.rawX
                            return true
                        }
                        MotionEvent.ACTION_UP -> {
                            val endY = event.rawY
                            val endX = event.rawX
                            
                            val deltaY = startY - endY // Alttan üste pozitif
                            val deltaX = abs(startX - endX)

                            // Alttan üste çekme kontrolü (Home)
                            if (deltaY > SWIPE_THRESHOLD && deltaY > deltaX) {
                                Log.d(TAG, "Home hareketi algılandı")
                                performGlobalAction(GLOBAL_ACTION_HOME)
                            }
                            return true
                        }
                    }
                    return false
                }
            })
        }

        val params = WindowManager.LayoutParams(
            WindowManager.LayoutParams.MATCH_PARENT,
            EDGE_SIZE,
            WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.BOTTOM or Gravity.CENTER_HORIZONTAL
        }

        try {
            windowManager?.addView(homeGestureOverlay, params)
            Log.d(TAG, "Home hareketi overlay eklendi")
        } catch (e: Exception) {
            Log.e(TAG, "Home overlay eklenemedi: ${e.message}")
        }
    }

    override fun onKeyEvent(event: KeyEvent): Boolean {
        val keyCode = event.keyCode
        val action = event.action

        // Tüm tuş basışlarını logla (Hangi tuşun hangi kodu gönderdiğini görmek için)
        if (action == KeyEvent.ACTION_UP) {
            Log.d(TAG, "Tuş Basıldı: Kod=$keyCode")
        }

        // Home (3) veya Yıldız (294) tuşlarını yakala
        if (keyCode == KeyEvent.KEYCODE_HOME || keyCode == KEY_CODE_STAR || keyCode == 3) {
            if (action == KeyEvent.ACTION_UP) {
                Log.d(TAG, "Home/Star Tuşu Yakalandı -> Launcher Tetikleniyor")
                launchLauncher()
            }
            return true // Sistemin bu tuşu işlemesini engelle (override)
        }
        
        return super.onKeyEvent(event)
    }

    private fun launchLauncher() {
        try {
            // Doğrudan bizim MainActivity'mizi hedefleyen Home intent'i oluştur
            val intent = Intent(Intent.ACTION_MAIN).apply {
                addCategory(Intent.CATEGORY_HOME)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED)
                `package` = packageName
                // MainActivity'ye özel bir extra ekleyerek Home tuşundan geldiğimizi belirtebiliriz
                putExtra("FROM_HOME_KEY", true)
            }
            startActivity(intent)
            Log.d(TAG, "Launcher başlatma intent'i (Anasayfa zorlamalı) gönderildi")
        } catch (e: Exception) {
            Log.e(TAG, "Launcher başlatılamadı: ${e.message}")
            // Fallback: Global Home action tetikle
            performGlobalAction(GLOBAL_ACTION_HOME)
        }
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {}

    override fun onInterrupt() {}

    override fun onDestroy() {
        super.onDestroy()
        backGestureOverlay?.let { windowManager?.removeView(it) }
        homeGestureOverlay?.let { windowManager?.removeView(it) }
    }
}
