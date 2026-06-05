package com.omoda5.launcher.services
import android.accessibilityservice.AccessibilityService
import android.content.*
import android.graphics.*
import android.view.*
import android.view.accessibility.AccessibilityEvent
import com.omoda5.launcher.common.*
import java.io.*

class CheryAccessibilityService : AccessibilityService() {
    private lateinit var prefs: PreferencesManager
    private var wm: WindowManager? = null
    private var method2Overlay: View? = null

    override fun onServiceConnected() {
        super.onServiceConnected(); prefs = PreferencesManager(this); wm = getSystemService(WINDOW_SERVICE) as WindowManager
        // v10.1.1: Adjusted areas for Overscan (-80px right)
        setup(100, -1, Gravity.END) { performGlobalAction(GLOBAL_ACTION_BACK) }
        setup(-1, 60, Gravity.BOTTOM) { launchHome() }
        refreshHomeInterception()
        startLogcatWatchdog()
        startVpnWatchdog()
        LogManager.addLog("SYSTEM: v9.3.0 Engine Ready")
        
        // Split Screen Tetikleyici Receiver
        registerReceiver(object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                performGlobalAction(GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN)
                LogManager.addLog("SPLIT: Native Split Screen Tetiklendi")
            }
        }, IntentFilter("com.omoda5.launcher.TOGGLE_SPLIT"))
    }

    private fun startVpnWatchdog() {
        Thread {
            while (true) {
                try {
                    if (prefs.isTailscaleWatchdogEnabled) {
                        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as android.net.ConnectivityManager
                        var isVpnActive = false
                        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
                            val network = connectivityManager.activeNetwork
                            val caps = connectivityManager.getNetworkCapabilities(network)
                            isVpnActive = caps?.hasTransport(android.net.NetworkCapabilities.TRANSPORT_VPN) == true
                        }
                        
                        if (!isVpnActive) {
                            LogManager.addLog("VPN: Tailscale bağlı değil, başlatılıyor...")
                            val intent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER)
                                .setComponent(ComponentName("com.tailscale.ipn", "com.tailscale.ipn.IPNActivity"))
                                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            startActivity(intent)
                        }
                    }
                } catch (e: Exception) {}
                Thread.sleep(60000) // 1 minute check
            }
        }.start()
    }

    private fun setup(w: Int, h: Int, g: Int, action: () -> Unit) {
        val v = View(this).apply { setBackgroundColor(Color.TRANSPARENT); setOnTouchListener { _, e -> if (e.action == MotionEvent.ACTION_UP) action(); true } }
        wm?.addView(v, WindowManager.LayoutParams(w, h, WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY, 520, PixelFormat.TRANSLUCENT).apply { gravity = g })
    }

    fun refreshHomeInterception() {
        method2Overlay?.let { wm?.removeView(it); method2Overlay = null }
        if (prefs.homeInterceptMethod == 2) {
            method2Overlay = View(this).apply { setBackgroundColor(Color.TRANSPARENT); setOnClickListener { launchHome(); LogManager.addLog("HOME: Method 2 (Overlay)") } }
            wm?.addView(method2Overlay, WindowManager.LayoutParams(235, 150, WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY, 520, PixelFormat.TRANSLUCENT).apply { gravity = Gravity.BOTTOM or Gravity.START })
        }
    }

    override fun onKeyEvent(e: KeyEvent): Boolean {
        val keyCode = e.keyCode
        val isUp = e.action == KeyEvent.ACTION_UP

        // Broadcast for Diagnostic Lab
        if (isUp) {
            val keyIntent = Intent("com.omoda5.launcher.HARDKEY_EVENT")
            keyIntent.putExtra("keyCode", keyCode)
            keyIntent.setPackage(packageName)
            sendBroadcast(keyIntent)
        }

        // v9.5.0 Voice Assistant Trigger (KeyCode 293)
        if (keyCode == 293 && isUp) {
            VoiceAssistantManager.startListening()
            return true
        }

        if (prefs.homeInterceptMethod == 1 && (keyCode == 3 || keyCode == 294) && isUp) { launchHome(); LogManager.addLog("HOME: Method 1 (Key)"); return true }
        if (prefs.isKeyMonitoringEnabled) LogManager.addLog("CANBUS_KEY: $keyCode (${if(isUp) "UP" else "DOWN"})")
        return super.onKeyEvent(e)
    }

    private fun startLogcatWatchdog() {
        Thread {
            try {
                val process = Runtime.getRuntime().exec(arrayOf("logcat", "-v", "raw", "-T", "1"))
                val reader = BufferedReader(InputStreamReader(process.inputStream))
                var line: String?
                while (reader.readLine().also { line = it } != null) {
                    val l = line ?: ""
                    
                    // Home key kontrolü
                    if (prefs.homeInterceptMethod == 3 && (l.contains("HOME_KEY") || l.contains("KEYCODE_HOME"))) {
                        launchHome(); LogManager.addLog("HOME: Method 3 (Watchdog)")
                    }

                    // Genel Tuş (HardKey) Taraması (Çok agresif)
                    val lowerL = l.lowercase()
                    if (lowerL.contains("keyevent") || lowerL.contains("keycode")) {
                        val kcMatch = Regex("keycode[:=]\\s*([0-9]+)", RegexOption.IGNORE_CASE).find(l)
                        val kc = kcMatch?.groupValues?.getOrNull(1)?.toIntOrNull()
                        if (kc != null) {
                            val isUp = lowerL.contains("action_up") || lowerL.contains("up") || !lowerL.contains("down")
                            if (isUp) {
                                val keyIntent = Intent("com.omoda5.launcher.HARDKEY_EVENT")
                                keyIntent.putExtra("keyCode", kc)
                                keyIntent.setPackage(packageName)
                                sendBroadcast(keyIntent)
                                if (prefs.isKeyMonitoringEnabled) LogManager.addLog("LOGCAT_KEY: $kc (Watchdog)")
                            }
                        }
                    }
                }
            } catch (e: Exception) {}
        }.start()
    }

    override fun onAccessibilityEvent(e: AccessibilityEvent) { 
        if (e.eventType == AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED) {
            val pkg = e.packageName?.toString() ?: ""
            if (prefs.isDataMonitoringEnabled) LogManager.addLog("WINDOW: $pkg")
            if (pkg != "com.tailscale.ipn" && pkg != packageName) {
                // VPN Watchdog logic could go here
            }
        }
    }
    private fun launchHome() { 
        try { 
            // v10.1.2: Balyoz Metodu - Direkt Aktivite Çağrısı
            val intent = Intent(Intent.ACTION_MAIN)
            intent.component = ComponentName("com.omoda5.launcher", "com.omoda5.launcher.ui.MainActivity")
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP)
            startActivity(intent) 
            
            // Sistem seviyesinde Home tetikle (Yedek)
            performGlobalAction(GLOBAL_ACTION_HOME)
            LogManager.addLog("HOME: Balyoz Metodu Tetiklendi")
        } catch (e: Exception) { 
            performGlobalAction(GLOBAL_ACTION_HOME) 
        } 
    }
    override fun onInterrupt() {}
}
