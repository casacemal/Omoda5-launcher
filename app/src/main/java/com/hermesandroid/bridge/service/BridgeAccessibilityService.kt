package com.hermesandroid.bridge.service

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.AccessibilityServiceInfo
import android.content.Context
import android.content.Intent
import android.content.pm.ServiceInfo
import android.graphics.Color
import android.graphics.PixelFormat
import android.os.Build
import android.util.Log
import android.view.Gravity
import android.view.KeyEvent
import android.view.MotionEvent
import android.view.View
import android.view.WindowManager
import android.view.accessibility.AccessibilityEvent
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlin.math.abs

class BridgeAccessibilityService : AccessibilityService() {

    private var windowManager: WindowManager? = null
    private var backGestureOverlay: View? = null
    private var homeGestureOverlay: View? = null
    val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)

    companion object {
        private const val TAG = "BridgeA11yService"
        private const val KEY_CODE_STAR = 294
        private const val KEY_CODE_HOME = 3
        private const val SWIPE_THRESHOLD = 100
        private const val EDGE_SIZE = 40

        @Volatile
        var instance: BridgeAccessibilityService? = null
            private set
    }

    override fun onServiceConnected() {
        instance = this
        serviceInfo = serviceInfo.apply {
            eventTypes = AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED or
                    AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED or
                    AccessibilityEvent.TYPE_VIEW_CLICKED or
                    AccessibilityEvent.TYPE_VIEW_TEXT_CHANGED or
                    AccessibilityEvent.TYPE_VIEW_FOCUSED or
                    AccessibilityEvent.TYPE_VIEW_SCROLLED
            feedbackType = AccessibilityServiceInfo.FEEDBACK_GENERIC
            flags = AccessibilityServiceInfo.FLAG_RETRIEVE_INTERACTIVE_WINDOWS or
                    AccessibilityServiceInfo.FLAG_REPORT_VIEW_IDS or
                    AccessibilityServiceInfo.DEFAULT
            notificationTimeout = 100
        }
        
        Log.d(TAG, "Accessibility Service Baglandi - Jest overlay kurulumu basliyor")
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
                            
                            val deltaX = startX - endX
                            val deltaY = abs(startY - endY)

                            // Sagdan sola swipe -> Geri
                            if (deltaX > SWIPE_THRESHOLD && deltaX > deltaY) {
                                Log.d(TAG, "Geri hareketi algilandi")
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
                            
                            val deltaY = startY - endY
                            val deltaX = abs(startX - endX)

                            // Alttan uste swipe -> Home
                            if (deltaY > SWIPE_THRESHOLD && deltaY > deltaX) {
                                Log.d(TAG, "Home hareketi algilandi")
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

        if (keyCode == KeyEvent.KEYCODE_HOME || keyCode == KEY_CODE_STAR || keyCode == 3) {
            if (action == KeyEvent.ACTION_UP) {
                Log.d(TAG, "Home/Star Tusu Yakalandi -> Launcher Baslatiliyor")
                launchLauncher()
            }
            return true
        }
        
        return super.onKeyEvent(event)
    }

    private fun launchLauncher() {
        try {
            val intent = Intent(Intent.ACTION_MAIN).apply {
                addCategory(Intent.CATEGORY_HOME)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED)
                `package` = packageName
                putExtra("FROM_HOME_KEY", true)
            }
            startActivity(intent)
            Log.d(TAG, "Launcher baslatma intent'i gonderildi")
        } catch (e: Exception) {
            Log.e(TAG, "Launcher baslatilamadi: ${e.message}")
            performGlobalAction(GLOBAL_ACTION_HOME)
        }
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        if (event != null) {
            com.hermesandroid.bridge.event.EventStore.add(event)
        }
    }

    private var isForeground = false
    private var foregroundTypes = 0

    fun startForeground(includeMediaProjection: Boolean = false) {
        val requestedTypes = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE or
                if (includeMediaProjection) {
                    ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION
                } else {
                    0
                }
        } else {
            0
        }

        if (isForeground && (foregroundTypes and requestedTypes) == requestedTypes) return

        val channelId = "hermes_bridge_channel"
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = android.app.NotificationChannel(
                channelId,
                "Hermes Bridge",
                android.app.NotificationManager.IMPORTANCE_LOW
            ).apply {
                description = "Keeps Hermes Bridge running"
            }
            val manager = getSystemService(Context.NOTIFICATION_SERVICE) as android.app.NotificationManager
            manager.createNotificationChannel(channel)
        }
        val notification = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            android.app.Notification.Builder(this, channelId)
                .setContentTitle("Hermes Bridge")
                .setContentText("Connected to server")
                .setSmallIcon(android.R.drawable.ic_dialog_info)
                .setOngoing(true)
                .build()
        } else {
            @Suppress("DEPRECATION")
            android.app.Notification.Builder(this)
                .setContentTitle("Hermes Bridge")
                .setContentText("Connected to server")
                .setSmallIcon(android.R.drawable.ic_dialog_info)
                .setOngoing(true)
                .build()
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            Log.i(TAG, "Starting foreground service with types=$requestedTypes")
            startForeground(1, notification, requestedTypes)
        } else {
            startForeground(1, notification)
        }
        isForeground = true
        foregroundTypes = requestedTypes
    }

    fun stopForeground() {
        if (!isForeground) return
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            stopForeground(STOP_FOREGROUND_REMOVE)
        } else {
            @Suppress("DEPRECATION")
            stopForeground(true)
        }
        isForeground = false
        foregroundTypes = 0
    }

    override fun onInterrupt() {
        // No-op
    }

    override fun onDestroy() {
        com.hermesandroid.bridge.executor.ActionExecutor.shutdownTts()
        serviceScope.cancel()
        backGestureOverlay?.let { windowManager?.removeView(it) }
        homeGestureOverlay?.let { windowManager?.removeView(it) }
        instance = null
        super.onDestroy()
    }
}
