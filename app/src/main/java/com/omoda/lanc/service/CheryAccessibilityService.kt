package com.omoda.lanc.service

import android.accessibilityservice.AccessibilityService
import android.content.*
import android.graphics.*
import android.view.*
import android.view.accessibility.AccessibilityEvent
import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import kotlinx.coroutines.*
import java.io.*

class CheryAccessibilityService : AccessibilityService() {
    private val TAG = "CheryAccessibility"
    private var wm: WindowManager? = null
    private var method2Overlay: View? = null
    // Tüm eklenen overlay view'larını takip et — onDestroy'da tam temizlik
    private val addedOverlays = mutableListOf<View>()
    private var receiver: BroadcastReceiver? = null
    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private var logcatProcess: Process? = null

    // Varsayılan konfigürasyon değerleri
    private var isTailscaleWatchdogEnabled = true
    private var homeInterceptMethod = 2 // 2: Overlay method
    private var isKeyMonitoringEnabled = true
    private var isDataMonitoringEnabled = true

    override fun onServiceConnected() {
        super.onServiceConnected()
        wm = getSystemService(WINDOW_SERVICE) as WindowManager
        
        // SharedPreferences'tan ayarları oku
        val sharedPrefs = getSharedPreferences("app_config", Context.MODE_PRIVATE)
        isTailscaleWatchdogEnabled = sharedPrefs.getBoolean("isTailscaleWatchdogEnabled", true)
        homeInterceptMethod = sharedPrefs.getInt("homeInterceptMethod", 2)
        isKeyMonitoringEnabled = sharedPrefs.getBoolean("isKeyMonitoringEnabled", true)
        isDataMonitoringEnabled = sharedPrefs.getBoolean("isDataMonitoringEnabled", true)

        // v10.1.1: Adjusted areas for Overscan (-80px right)
        setup(100, -1, Gravity.END) { 
            performGlobalAction(GLOBAL_ACTION_BACK) 
            AssistantApplication.addLogStatic("ACCESSIBILITY: Geri jeti algilandi (Sağdan Sola)")
        }
        setup(-1, 60, Gravity.BOTTOM) { 
            launchHome() 
        }
        refreshHomeInterception()
        startLogcatWatchdog()
        startVpnWatchdog()
        AssistantApplication.addLogStatic("ACCESSIBILITY: Chery Accessibility Engine Ready")
        
        // Split Screen Tetikleyici Receiver
        receiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                performGlobalAction(GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN)
                AssistantApplication.addLogStatic("SPLIT: Native Split Screen Tetiklendi")
            }
        }
        // M-11: API 33+ RECEIVER_NOT_EXPORTED — harici uygulamaların tetiklemesi engellenir
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(receiver, IntentFilter("com.omoda.lanc.TOGGLE_SPLIT"),
                RECEIVER_NOT_EXPORTED)
        } else {
            registerReceiver(receiver, IntentFilter("com.omoda.lanc.TOGGLE_SPLIT"))
        }
    }

    private fun startVpnWatchdog() {
        serviceScope.launch {
            while (isActive) {
                try {
                    if (isTailscaleWatchdogEnabled) {
                        // ... logic same ...
                        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as android.net.ConnectivityManager
                        var isVpnActive = false
                        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.M) {
                            val network = connectivityManager.activeNetwork
                            val caps = connectivityManager.getNetworkCapabilities(network)
                            isVpnActive = caps?.hasTransport(android.net.NetworkCapabilities.TRANSPORT_VPN) == true
                        }
                        
                        if (!isVpnActive) {
                            AssistantApplication.addLogStatic("VPN: Tailscale bağlı değil, başlatılıyor...")
                            val intent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER)
                                .setComponent(ComponentName("com.tailscale.ipn", "com.tailscale.ipn.IPNActivity"))
                                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                            startActivity(intent)
                        }
                    }
                } catch (e: Exception) {}
                delay(60000)
            }
        }
    }

    private fun setup(w: Int, h: Int, g: Int, action: () -> Unit) {
        try {
            val v = View(this).apply { 
                setBackgroundColor(Color.TRANSPARENT)
                setOnTouchListener { _, e -> 
                    if (e.action == MotionEvent.ACTION_UP) action()
                    true 
                } 
            }
            val layoutParams = WindowManager.LayoutParams(
                w, h, 
                WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY, 
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, 
                PixelFormat.TRANSLUCENT
            ).apply { gravity = g }
            wm?.addView(v, layoutParams)
            addedOverlays.add(v)  // Takip listesine ekle
        } catch (e: Exception) {
            Log.e(TAG, "Setup overlay hatasi: ${e.message}")
        }
    }

    fun refreshHomeInterception() {
        try {
            method2Overlay?.let { wm?.removeView(it); method2Overlay = null }
            if (homeInterceptMethod == 2) {
                method2Overlay = View(this).apply { 
                    setBackgroundColor(Color.TRANSPARENT)
                    setOnClickListener { 
                        launchHome()
                        AssistantApplication.addLogStatic("HOME: Method 2 (Overlay)") 
                    } 
                }
                val layoutParams = WindowManager.LayoutParams(
                    235, 150, 
                    WindowManager.LayoutParams.TYPE_ACCESSIBILITY_OVERLAY, 
                    WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, 
                    PixelFormat.TRANSLUCENT
                ).apply { gravity = Gravity.BOTTOM or Gravity.START }
                wm?.addView(method2Overlay, layoutParams)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Home Interception refresh hatasi: ${e.message}")
        }
    }

    override fun onKeyEvent(e: KeyEvent): Boolean {
        val keyCode = e.keyCode
        val isUp = e.action == KeyEvent.ACTION_UP

        // Broadcast for Diagnostic Lab
        if (isUp) {
            val keyIntent = Intent("com.omoda.lanc.HARDKEY_EVENT")
            keyIntent.putExtra("keyCode", keyCode)
            keyIntent.setPackage(packageName)
            sendBroadcast(keyIntent)
        }

        // Voice Assistant Trigger (KeyCode 293 veya KeyCode 290)
        if ((keyCode == 293 || keyCode == 290) && isUp) {
            AssistantApplication.addLogStatic("ACCESSIBILITY: HardKey $keyCode algilandi, asistan tetikleniyor.")
            EventBus.tryEmit(Event.SystemEvent.HardKeyPressed(keyCode))
            return true
        }

        if (homeInterceptMethod == 1 && (keyCode == 3 || keyCode == 294) && isUp) { 
            launchHome()
            AssistantApplication.addLogStatic("HOME: Method 1 (Key)")
            return true 
        }
        if (isKeyMonitoringEnabled) {
            AssistantApplication.addLogStatic("CANBUS_KEY: $keyCode (${if(isUp) "UP" else "DOWN"})")
        }
        return super.onKeyEvent(e)
    }

    private fun startLogcatWatchdog() {
        serviceScope.launch(Dispatchers.IO) {
            try {
                logcatProcess = Runtime.getRuntime().exec(arrayOf("logcat", "-v", "raw", "-T", "1"))
                // M-10: BufferedReader try blogu içinde oluşturuluyor — kapatılması garantilenir
                val stream = logcatProcess?.inputStream ?: return@launch
                BufferedReader(InputStreamReader(stream)).use { reader ->
                    while (isActive) {
                        val line = reader.readLine() ?: break
                        val l = line
                        
                        // Home key kontrolü
                        if (homeInterceptMethod == 3 && (l.contains("HOME_KEY") || l.contains("KEYCODE_HOME"))) {
                            withContext(Dispatchers.Main) { launchHome() }
                            AssistantApplication.addLogStatic("HOME: Method 3 (Watchdog)")
                        }

                        // Genel Tuş (HardKey) Taraıması (Çok agresif)
                        val lowerL = l.lowercase()
                        if (lowerL.contains("keyevent") || lowerL.contains("keycode")) {
                            val kcMatch = Regex("keycode[:=]\\s*([0-9]+)", RegexOption.IGNORE_CASE).find(l)
                            val kc = kcMatch?.groupValues?.getOrNull(1)?.toIntOrNull()
                            if (kc != null) {
                                val isUp = lowerL.contains("action_up") || lowerL.contains("up") || !lowerL.contains("down")
                                if (isUp) {
                                    val keyIntent = Intent("com.omoda.lanc.HARDKEY_EVENT")
                                    keyIntent.putExtra("keyCode", kc)
                                    keyIntent.setPackage(packageName)
                                    sendBroadcast(keyIntent)
                                    if (isKeyMonitoringEnabled) {
                                        AssistantApplication.addLogStatic("LOGCAT_KEY: $kc (Watchdog)")
                                    }
                                }
                            }
                        }
                    }
                }
            } catch (e: Exception) {
                Log.w(TAG, "Logcat watchdog sona erdi: ${e.message}")
            }
        }
    }

    override fun onAccessibilityEvent(e: AccessibilityEvent) { 
        if (e.eventType == AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED) {
            val pkg = e.packageName?.toString() ?: ""
            if (isDataMonitoringEnabled) {
                AssistantApplication.addLogStatic("WINDOW: $pkg")
            }
        }
    }

    private fun launchHome() { 
        try { 
            // v10.1.2: Balyoz Metodu - Direkt Aktivite Çağrısı
            val intent = Intent(Intent.ACTION_MAIN)
            intent.component = ComponentName("com.omoda.lanc", "com.omoda.lanc.MainActivity")
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP)
            startActivity(intent) 
            
            // Sistem seviyesinde Home tetikle (Yedek)
            performGlobalAction(GLOBAL_ACTION_HOME)
            AssistantApplication.addLogStatic("HOME: Balyoz Metodu Tetiklendi (Ana Ekrana Yonlendirme)")
        } catch (e: Exception) { 
            performGlobalAction(GLOBAL_ACTION_HOME) 
        } 
    }

    override fun onDestroy() {
        serviceScope.cancel()
        logcatProcess?.destroy()
        logcatProcess = null
        super.onDestroy()
        try {
            receiver?.let { unregisterReceiver(it) }
            // Tüm overlay view'larını temizle (method2Overlay dahil)
            val allViews = addedOverlays.toList() + listOfNotNull(method2Overlay)
            allViews.forEach { view ->
                try { wm?.removeView(view) } catch (_: Exception) {}
            }
            addedOverlays.clear()
            method2Overlay = null
        } catch (e: Exception) {
            Log.e(TAG, "onDestroy overlay temizleme hatası: ${e.message}")
        }
    }

    override fun onInterrupt() {}
}
