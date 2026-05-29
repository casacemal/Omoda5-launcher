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

/**
 * v7.0.2 NEXTGEN - JEST VE HOME KONTROL MERKEZİ
 * Geri: Sağdan Sola | Home: Alttan Üste | Sidebar: Görünmez Buton
 */
class CheryAccessibilityService : AccessibilityService() {

    private var windowManager: WindowManager? = null
    private var homeButtonOverlay: View? = null
    private var backGestureOverlay: View? = null
    private var homeGestureOverlay: View? = null

    companion object {
        private const val TAG = "CheryAccessibility"
        private const val SWIPE_THRESHOLD = 120
        private const val EDGE_SIZE = 50
        private const val HOME_ZONE_WIDTH = 235
        private const val HOME_ZONE_HEIGHT = 150
    }

    override fun onServiceConnected() {
        super.onServiceConnected()
        Log.d(TAG, "Jest ve Home motoru başlatıldı")
        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        
        setupHomeButtonOverlay()
        setupBackGestureOverlay()
        setupHomeGestureOverlay()
    }

    private fun setupHomeButtonOverlay() {
        homeButtonOverlay = View(this).apply {
            setBackgroundColor(Color.TRANSPARENT)
            setOnClickListener { launchLauncher() }
        }
        val params = createParams(HOME_ZONE_WIDTH, HOME_ZONE_HEIGHT, Gravity.TOP or Gravity.START)
        try { windowManager?.addView(homeButtonOverlay, params) } catch (e: Exception) {}
    }

    private fun setupBackGestureOverlay() {
        backGestureOverlay = View(this).apply {
            setBackgroundColor(Color.TRANSPARENT)
            setOnTouchListener(object : View.OnTouchListener {
                private var startX = 0f
                override fun onTouch(v: View, event: MotionEvent): Boolean {
                    when (event.action) {
                        MotionEvent.ACTION_DOWN -> { startX = event.rawX; return true }
                        MotionEvent.ACTION_UP -> {
                            if (startX - event.rawX > SWIPE_THRESHOLD) {
                                performGlobalAction(GLOBAL_ACTION_BACK)
                            }
                            return true
                        }
                    }
                    return false
                }
            })
        }
        val params = createParams(EDGE_SIZE, WindowManager.LayoutParams.MATCH_PARENT, Gravity.END)
        try { windowManager?.addView(backGestureOverlay, params) } catch (e: Exception) {}
    }

    private fun setupHomeGestureOverlay() {
        homeGestureOverlay = View(this).apply {
            setBackgroundColor(Color.TRANSPARENT)
            setOnTouchListener(object : View.OnTouchListener {
                private var startY = 0f
                override fun onTouch(v: View, event: MotionEvent): Boolean {
                    when (event.action) {
                        MotionEvent.ACTION_DOWN -> { startY = event.rawY; return true }
                        MotionEvent.ACTION_UP -> {
                            if (startY - event.rawY > SWIPE_THRESHOLD) {
                                launchLauncher()
                            }
                            return true
                        }
                    }
                    return false
                }
            })
        }
        val params = createParams(WindowManager.LayoutParams.MATCH_PARENT, EDGE_SIZE, Gravity.BOTTOM)
        try { windowManager?.addView(homeGestureOverlay, params) } catch (e: Exception) {}
    }

    private fun createParams(w: Int, h: Int, g: Int): WindowManager.LayoutParams {
        return WindowManager.LayoutParams(w, h, WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
            PixelFormat.TRANSLUCENT).apply { gravity = g }
    }

    override fun onKeyEvent(event: KeyEvent): Boolean {
        val keyCode = event.keyCode
        val action = event.action

        Log.d(TAG, "Key Detected: $keyCode, Action: $action")
        broadcastKey("KEY: $keyCode ACTION: $action")

        // 3: Home, 294: Steering Home/Mode, 4: Back
        if (keyCode == KeyEvent.KEYCODE_HOME || keyCode == 294) {
            if (action == KeyEvent.ACTION_UP) launchLauncher()
            return true
        }
        
        // Ses ve Medya Tuşları (Tuş takımı okuma)
        if (keyCode == KeyEvent.KEYCODE_VOLUME_UP || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN || 
            keyCode == KeyEvent.KEYCODE_MEDIA_NEXT || keyCode == KeyEvent.KEYCODE_MEDIA_PREVIOUS) {
            // Sistem bu tuşları kendisi işlesin ama biz loglayalım veya özel aksiyon ekleyelim
            return false 
        }

        return super.onKeyEvent(event)
    }

    private fun broadcastKey(msg: String) {
        val intent = Intent("com.omoda5.launcher.LOG_BROADCAST").apply {
            putExtra("log", msg)
            setPackage(packageName)
        }
        sendBroadcast(intent)
    }

    private fun launchLauncher() {
        val intent = Intent(Intent.ACTION_MAIN).apply {
            addCategory(Intent.CATEGORY_HOME)
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED)
            `package` = packageName
        }
        try { startActivity(intent) } catch (e: Exception) { performGlobalAction(GLOBAL_ACTION_HOME) }
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {}
    override fun onInterrupt() {}
    override fun onDestroy() {
        super.onDestroy()
        listOf(homeButtonOverlay, backGestureOverlay, homeGestureOverlay).forEach { 
            try { windowManager?.removeView(it) } catch (e: Exception) {}
        }
    }
}
