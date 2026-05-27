@file:Suppress("SpellCheckingInspection", "DEPRECATION")

package com.omoda5.launcher.ui

import android.app.ActivityOptions
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Rect
import android.graphics.drawable.BitmapDrawable
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.util.Log
import android.view.Gravity
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import androidx.viewpager2.widget.ViewPager2
import androidx.fragment.app.FragmentManager
import com.omoda5.launcher.R
import com.omoda5.launcher.common.*
import com.omoda5.launcher.databinding.ActivityMainBinding
import com.omoda5.launcher.model.LauncherItem
import com.omoda5.launcher.ui.adapters.LauncherAdapter
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.util.ArrayDeque

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var splitScreenManager: SplitScreenManager
    private lateinit var appSelectionRepository: AppSelectionRepository
    private lateinit var updateManager: UpdateManager
    private val mainHandler = Handler(Looper.getMainLooper())
    private var currentStatusView: View? = null
    private val statusQueue = ArrayDeque<String>()
    private var isStatusShowing = false
    private var currentStatusMessage: String? = null

    private var wallpaperFiles: List<String> = emptyList()
    private var cachedInstalledApps: List<LauncherItem>? = null
    private var isTailscaleStarted = false
    private var pendingPinnedResizeBounds: String? = null

    private val adbStatusReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val message = intent?.getStringExtra("message") ?: return
            handlePinnedStackInfo(message)
            val overlayMessage = formatStatusMessage(message) ?: return
            showLargeStatus(overlayMessage)
        }
    }

    private val packageReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            cachedInstalledApps = null
            loadAppsAndSetupViewPager()
        }
    }

    companion object {
        private const val TAG = "MainActivity"
        private const val WALLPAPER_ASSET_DIR = "wallpapers"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        splitScreenManager = SplitScreenManager(prefs)
        appSelectionRepository = AppSelectionRepository()
        updateManager = UpdateManager(this, prefs)

        startAdbServiceAndAutoSetup()
        startHvacIfEnabled()
        autoCheckForUpdates()
        ensureWallpaperDirectory()

        bindListeners()
        loadWallpaperFileList()
        setDefaultWallpaper()
        loadAppsAndSetupViewPager()
        registerPackageReceiver()
        registerAdbStatusReceiver()
        setupNetworkMonitoring()
    }

    private fun setupNetworkMonitoring() {
        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val networkRequest = NetworkRequest.Builder()
            .addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
            .build()

        connectivityManager.registerNetworkCallback(networkRequest, object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                if (!isTailscaleStarted) {
                    Log.d(TAG, "Internet baglantisi algilandi. Tailscale baslatiliyor...")
                    // Tailscale'i arka planda baslatmaya calis (Monkey ile)
                    val intent = Intent(this@MainActivity, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                        action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                        putExtra("command", "monkey -p com.tailscale.ipn 1")
                    }
                    startService(intent)
                    isTailscaleStarted = true
                }
            }
            
            override fun onLost(network: Network) {
                isTailscaleStarted = false
            }
        })
    }

    private fun startAdbServiceAndAutoSetup() {
        val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java)
        ContextCompat.startForegroundService(this, intent)
        
        mainHandler.postDelayed({
            val leftO = if (prefs.isLeftBarHidden) -235 else 0
            val rightO = if (prefs.isRightBarHidden) -70 else 0
            
            val commands = arrayOf(
                "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
                "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE",
                "pm grant $packageName android.permission.SYSTEM_ALERT_WINDOW",
                "appops set $packageName SYSTEM_ALERT_WINDOW allow",
                "appops set $packageName GET_USAGE_STATS allow",
                "settings put secure enabled_accessibility_services $packageName/com.omoda5.launcher.services.CheryAccessibilityService",
                "settings put secure accessibility_enabled 1",
                "settings put secure enabled_notification_listeners $packageName/com.omoda5.launcher.services.CheryAccessibilityService:$packageName/com.omoda5.launcher.multitask.MultiTaskOverlayService",
                "setprop service.adb.tcp.port 5555",
                "stop adbd",
                "start adbd",
                "wm overscan $leftO,0,$rightO,0",
                "cmd package set-home-activity $packageName/.ui.MainActivity"
            )
            commands.forEach { cmd ->
                val cmdIntent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                    action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                    putExtra("command", cmd)
                }
                startService(cmdIntent)
            }
        }, 3000)
    }

    private fun ensureWallpaperDirectory() {
        // Chrome ve sistemin kullandığı gerçek Download yolu
        val downloadPath = File(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_DOWNLOADS), "wallpapers")
        if (!downloadPath.exists()) {
            downloadPath.mkdirs()
            Log.d(TAG, "Duvar kağıdı klasörü oluşturuldu: ${downloadPath.absolutePath}")
        }
    }

    private fun bindListeners() {
        binding.ilWallpaperChangeTrigger.setOnClickListener { cycleWallpaper() }
        binding.btnGoHome.setOnClickListener { returnToHome() }
        binding.btnSplitTrigger.setOnClickListener { toggleSplitScreen() }
        
        binding.ilWallpaperChangeTrigger.setOnLongClickListener {
            toggleSplitScreen()
            true
        }

        binding.viewPager.registerOnPageChangeCallback(object : ViewPager2.OnPageChangeCallback() {
            override fun onPageSelected(position: Int) {
                binding.indicatorDot1.alpha = if (position == 0) 1.0f else 0.3f
                binding.indicatorDot2.alpha = if (position == 1) 1.0f else 0.3f
            }
        })
    }

    private fun loadAppsAndSetupViewPager() {
        lifecycleScope.launch(Dispatchers.Default) {
            val apps = cachedInstalledApps ?: getInstalledApps().also { cachedInstalledApps = it }
            val pages = buildPages(apps)
            withContext(Dispatchers.Main) {
                binding.viewPager.adapter = LauncherAdapter(
                    pages,
                    onItemClick = { launchItem(it) },
                    onItemLongClick = { item ->
                        val pkg = item.packageName ?: item.id
                        if (pkg.contains(".")) startSplitWithPrimary(pkg, "left")
                    },
                    getBadgeForItem = { null }
                )
            }
        }
    }

    private fun buildPages(installedApps: List<LauncherItem>): List<List<LauncherItem>> {
        val page1Items = listOf(
            LauncherItem("media", "Medya", R.drawable.launcher_media_icon_bg, packageName = "com.chery.media"),
            LauncherItem("phone", "Telefon", R.drawable.launcher_phone_icon_bg, packageName = "com.chery.dialer"),
            LauncherItem("settings", "Sistem", R.drawable.launcher_system_setting_icon_bg, packageName = "com.chery.settings"),
            LauncherItem("vehicle", "Klima", R.drawable.launcher_vehicle_icon_bg, packageName = "com.chery.hvac"),
            LauncherItem("pictures", "Resimler", R.drawable.launcher_picture_icon_bg, packageName = "com.chery.media"),
            LauncherItem("video", "Video", R.drawable.launcher_video_icon_bg, packageName = "com.chery.media"),
            LauncherItem("manual", "Kılavuz", R.drawable.launcher_manual_icon_bg, packageName = "com.chery.help"),
            LauncherItem("maps_split", "Harita Split", R.drawable.launcher_media_icon_bg, packageName = "com.google.android.apps.maps"),
            LauncherItem("aa", "Android Auto", R.drawable.launcher_android_auto_icon_bg, packageName = "com.yfve.car.androidauto"),
            LauncherItem("carplay", "CarPlay", R.drawable.launcher_carplay_icon_bg, packageName = "com.yfve.car.carplay"),
            LauncherItem("update", "Güncelleme", R.drawable.launcher_update_icon_bg, packageName = "com.chery.upgrade")
        )
        val allOther = (mutableListOf(
            LauncherItem("vehicle_data", "Araç Verileri", R.drawable.launcher_vehicle_icon_bg),
            LauncherItem("launcher_settings", "Ayarlar", R.drawable.launcher_system_setting_icon_bg)
        ) + installedApps).sortedByDescending { prefs.getClickCount(it.packageName ?: it.id) }
        
        return listOf(page1Items) + allOther.chunked(10)
    }

    private fun getInstalledApps(): List<LauncherItem> {
        val pm = packageManager
        val intent = Intent(Intent.ACTION_MAIN, null).apply { addCategory(Intent.CATEGORY_LAUNCHER) }
        return pm.queryIntentActivities(intent, 0)
            .filterNot { it.activityInfo.packageName == packageName }
            .map { info ->
                LauncherItem(
                    id = info.activityInfo.packageName,
                    title = info.loadLabel(pm).toString(),
                    iconDrawable = info.loadIcon(pm),
                    packageName = info.activityInfo.packageName
                )
            }.sortedBy { it.title.lowercase() }
    }

    private fun launchItem(item: LauncherItem) {
        val pkg = item.packageName ?: item.id
        prefs.incrementClickCount(pkg)

        when (item.id) {
            "vehicle_data" -> {
                binding.fragmentContainer.visibility = View.VISIBLE
                supportFragmentManager.beginTransaction().replace(R.id.fragment_container, VehicleDataFragment()).addToBackStack(null).commit()
            }
            "launcher_settings" -> startActivity(Intent(this, LauncherSettingsActivity::class.java))
            "maps_split" -> com.omoda5.launcher.multitask.MultiTaskEngine.launchMapsMultiTask(this)
            "vehicle_data" -> startActivity(Intent(this, com.omoda5.launcher.multitask.VehicleDataPureActivity::class.java))
            else -> {
                if (intent != null) startActivity(intent)
                else showToast("Açılamadı.")
            }
        }
    }

    private fun returnToHome() {
        binding.viewPager.setCurrentItem(0, true)
        if (supportFragmentManager.backStackEntryCount > 0) {
            supportFragmentManager.popBackStack(null, FragmentManager.POP_BACK_STACK_INCLUSIVE)
            binding.fragmentContainer.visibility = View.GONE
        }
    }

    private fun toggleSplitScreen() {
        val (left, right) = splitScreenManager.getSelectedApps()
        if (left.isNullOrBlank() || right.isNullOrBlank()) {
            showToast("Ayarlardan uygulamaları seçin.")
            startActivity(Intent(this, LauncherSettingsActivity::class.java))
            return
        }
        if (shouldUsePinnedFallback()) {
            launchPinnedFallback(left, right)
            return
        }
        launchToSide(left, true)
        launchToSide(right, false)
    }

    private fun launchToSide(packageName: String, left: Boolean) {
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
        if (launchIntent == null) {
            showToast("Uygulama bulunamadı.")
            return
        }

        // AAOS Katman Fix: Split acilirken Launcher'i seffaflastir ve arkaya it.
        binding.root.alpha = 0.5f // Uygulama arkada görünebilsin
        
        val options = android.app.ActivityOptions.makeBasic()
        val dm = resources.displayMetrics
        val screenW = dm.widthPixels
        val screenH = dm.heightPixels
        
        // AAOS 10 (API 29) icin kesin koordinat zorlaması.
        val bounds = if (left) {
            android.graphics.Rect(235, 0, 1077, screenH)
        } else {
            android.graphics.Rect(1077, 0, screenW, screenH)
        }
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            options.setLaunchBounds(bounds)
            try {
                // Windowing mode 3: SPLIT_SCREEN_PRIMARY, 4: SPLIT_SCREEN_SECONDARY
                val setWindowingMode = options.javaClass.getMethod("setLaunchWindowingMode", Int::class.javaPrimitiveType)
                setWindowingMode.invoke(options, if (left) 3 else 4)
            } catch (e: Exception) {
                Log.w(TAG, "AAOS Windowing mode ayarlanamadı: ${e.message}")
            }
        }

        launchIntent.addFlags(
            Intent.FLAG_ACTIVITY_NEW_TASK or
            Intent.FLAG_ACTIVITY_MULTIPLE_TASK or
            Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT or
            Intent.FLAG_ACTIVITY_CLEAR_TOP
        )

        try {
            startActivity(launchIntent, options.toBundle())
            Log.d(TAG, "AAOS Split Katmanı Tetiklendi: $packageName")
            
            // Komuttan sonra sistemi sars (Resize zorlaması)
            val stackId = if (left) 3 else 4
            val shellBounds = if (left) "235 0 1077 720" else "1077 0 1920 720"
            val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                putExtra("command", "sleep 1 && am stack resize $stackId $shellBounds")
            }
            startService(intent)
            
        } catch (e: Exception) {
            Log.e(TAG, "Split baslatma hatası: ${e.message}")
        }
    }

    private fun startSplitWithPrimary(pkg: String, side: String) {
        val right = splitScreenManager.defaultRightAppPackage ?: "com.chery.media"
        if (shouldUsePinnedFallback()) {
            launchPinnedFallback(pkg, right)
            return
        }
        launchToSide(pkg, true)
        mainHandler.postDelayed({ launchToSide(right, false) }, 1000)
    }

    private fun shouldUsePinnedFallback(): Boolean {
        // Semidrive Android 10 ünitesinde split-screen capability kapalı olduğunda
        // küçük ekran profili (sw < 440dp) için PiP katman fallback uygulanır.
        return resources.configuration.smallestScreenWidthDp < 440
    }

    private fun launchPinnedFallback(leftPackage: String, rightPackage: String) {
        val leftLaunched = launchPackageFullscreen(leftPackage)
        if (!leftLaunched) {
            showToast("Sol uygulama başlatılamadı.")
            return
        }

        showToast("Split kapalı: PiP fallback uygulanıyor.")

        mainHandler.postDelayed({
            executeAdbShellCommand("cmd activity stack move-top-activity-to-pinned-stack -1 235 0 1077 720")
        }, 700)

        mainHandler.postDelayed({
            pendingPinnedResizeBounds = "235 0 1077 720"
            executeAdbShellCommand("cmd activity stack info 2 1")
        }, 1200)

        mainHandler.postDelayed({
            if (!launchPackageFullscreen(rightPackage)) {
                showToast("Sağ uygulama başlatılamadı.")
            }
        }, 1600)
    }

    private fun launchPackageFullscreen(packageName: String): Boolean {
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName) ?: return false
        launchIntent.addFlags(
            Intent.FLAG_ACTIVITY_NEW_TASK or
                Intent.FLAG_ACTIVITY_CLEAR_TOP
        )
        return try {
            startActivity(launchIntent)
            true
        } catch (e: Exception) {
            Log.e(TAG, "Uygulama başlatma hatası ($packageName): ${e.message}")
            false
        }
    }

    private fun handlePinnedStackInfo(message: String) {
        val bounds = pendingPinnedResizeBounds ?: return
        if (!message.startsWith("CMD_OUT: ")) return

        val match = Regex("Stack id=(\\d+)").find(message) ?: return
        val stackId = match.groupValues[1]
        pendingPinnedResizeBounds = null
        executeAdbShellCommand("cmd activity stack resize $stackId $bounds")
    }

    private fun formatStatusMessage(message: String): String? {
        val text = when {
            message.startsWith("CMD_OUT: ") -> null
            message.startsWith("CMD_RUN: ") -> message.removePrefix("CMD_RUN: ").trim()
            message.startsWith("CMD_STR: ") -> message.removePrefix("CMD_STR: ").trim()
            message.startsWith("CMD_FIN: ") -> message.removePrefix("CMD_FIN: ").trim()
            message.startsWith("CMD_ERR: ") -> "Hata: ${message.removePrefix("CMD_ERR: ").trim()}"
            else -> message.trim()
        } ?: return null

        if (text.isBlank()) return null
        return if (text.length > 140) text.take(137) + "..." else text
    }

    private fun executeAdbShellCommand(command: String) {
        val cmdIntent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
            action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", command)
        }
        startService(cmdIntent)
    }

    private fun loadWallpaperFileList() {
        lifecycleScope.launch(Dispatchers.IO) {
            val list = mutableListOf<String>()
            try { assets.list(WALLPAPER_ASSET_DIR)?.forEach { list.add("asset:$it") } } catch (e: Exception) {}
            val wallDir = File("/storage/emulated/0/Download/wallpapers")
            if (wallDir.exists()) wallDir.listFiles()?.forEach { list.add(it.absolutePath) }
            wallpaperFiles = list.sorted()
        }
    }

    private fun setDefaultWallpaper() {
        if (prefs.isFirstRun) binding.root.setBackgroundResource(R.mipmap.bg_1)
    }

    private fun cycleWallpaper() {
        if (wallpaperFiles.isEmpty()) return
        lifecycleScope.launch(Dispatchers.IO) {
            val idx = (prefs.wallpaperIndex + 1) % wallpaperFiles.size
            val path = wallpaperFiles[idx]
            val bitmap = if (path.startsWith("asset:")) {
                assets.open("wallpapers/${path.substring(6)}").use { BitmapFactory.decodeStream(it) }
            } else {
                BitmapFactory.decodeFile(path, BitmapFactory.Options().apply { inPreferredConfig = Bitmap.Config.ARGB_8888 })
            }
            withContext(Dispatchers.Main) {
                if (bitmap != null) {
                    binding.root.background = BitmapDrawable(resources, bitmap)
                    prefs.wallpaperIndex = idx
                }
            }
        }
    }

    private fun startHvacIfEnabled() {
        if (prefs.isAutoStartHvacEnabled) {
            mainHandler.postDelayed({
                val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                    action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                    putExtra("command", "am start -n com.chery.hvac/.view.activity.MainActivity")
                }
                startService(intent)
            }, 3000)
        }
    }

    private fun autoCheckForUpdates() {
        val now = System.currentTimeMillis()
        if (now - prefs.lastUpdateCheck < 86400000) return
        updateManager.checkForUpdates(object : UpdateManager.UpdateCheckCallback {
            override fun onUpdateAvailable(name: String, code: Int, url: String) {
                updateManager.downloadUpdate(url, "update.apk", object : UpdateManager.DownloadCallback {
                    override fun onProgress(percentage: Int, speedMbps: Double, remainingSeconds: Long) {
                        runOnUiThread {
                            val speedStr = String.format("%.1f", speedMbps)
                            showLargeStatus("İndiriliyor: %$percentage ($speedStr Mbps) - $remainingSeconds sn kaldı")
                        }
                    }

                    override fun onComplete(file: java.io.File?) {
                        if (file != null) {
                            prefs.downloadedUpdatePath = file.absolutePath
                            runOnUiThread { 
                                showLargeStatus("Güncelleme Hazır. Yükleniyor...")
                                installPackage(file)
                            }
                        }
                    }

                    override fun onError(error: String) {
                        Log.e(TAG, "Güncelleme indirilemedi: $error")
                    }
                })
            }
            override fun onNoUpdate() {}
            override fun onError(e: String) {}
        })
    }

    private fun installPackage(file: java.io.File) {
        try {
            val uri = androidx.core.content.FileProvider.getUriForFile(this, "${packageName}.fileprovider", file)
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(uri, "application/vnd.android.package-archive")
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            startActivity(intent)
        } catch (e: Exception) {
            Log.e(TAG, "Paket yükleyici hatası: ${e.message}")
            // Fallback to ADB if possible
            val cmdIntent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                putExtra("command", "pm install -r -d ${file.absolutePath}")
            }
            startService(cmdIntent)
        }
    }

    private fun showLargeStatus(msg: String) {
        val text = msg.trim()
        if (text.isEmpty()) return

        mainHandler.post {
            if (text == currentStatusMessage || statusQueue.contains(text)) return@post
            if (statusQueue.size >= 8) statusQueue.removeFirst()
            statusQueue.addLast(text)
            if (!isStatusShowing) showNextStatusFromQueue()
        }
    }

    private fun showNextStatusFromQueue() {
        if (statusQueue.isEmpty()) {
            isStatusShowing = false
            currentStatusMessage = null
            return
        }

        isStatusShowing = true
        val nextMessage = statusQueue.removeFirst()
        currentStatusMessage = nextMessage

        try {
            val wm = getSystemService(Context.WINDOW_SERVICE) as android.view.WindowManager
            currentStatusView?.let {
                try { wm.removeView(it) } catch (_: Exception) {}
                currentStatusView = null
            }

            val statusBinding = com.omoda5.launcher.databinding.LayoutLargeStatusBinding.inflate(layoutInflater)
            statusBinding.tvStatusMessage.text = nextMessage

            val params = android.view.WindowManager.LayoutParams(
                android.view.WindowManager.LayoutParams.MATCH_PARENT,
                android.view.WindowManager.LayoutParams.WRAP_CONTENT,
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) 2038 else 2003,
                android.view.WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    android.view.WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or
                    android.view.WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                android.graphics.PixelFormat.TRANSLUCENT
            ).apply {
                gravity = Gravity.TOP
                y = 50
            }

            wm.addView(statusBinding.root, params)
            currentStatusView = statusBinding.root

            mainHandler.postDelayed({
                try {
                    if (currentStatusView == statusBinding.root) {
                        wm.removeView(statusBinding.root)
                        currentStatusView = null
                    }
                } catch (_: Exception) {
                } finally {
                    isStatusShowing = false
                    currentStatusMessage = null
                    showNextStatusFromQueue()
                }
            }, 4000)
        } catch (e: Exception) {
            Log.e(TAG, "Bildirim gosterilemedi: ${e.message}")
            isStatusShowing = false
            currentStatusMessage = null
            showNextStatusFromQueue()
        }
    }

    private fun showToast(msg: String) = Toast.makeText(this, msg, Toast.LENGTH_SHORT).show()

    private fun registerAdbStatusReceiver() {
        registerReceiver(adbStatusReceiver, IntentFilter(com.omoda5.launcher.service.AdbBridgeService.ACTION_ADB_STATUS_UPDATE))
    }

    private fun registerPackageReceiver() {
        val f = IntentFilter().apply { addAction(Intent.ACTION_PACKAGE_ADDED); addAction(Intent.ACTION_PACKAGE_REMOVED); addDataScheme("package") }
        registerReceiver(packageReceiver, f)
    }

    override fun onDestroy() { super.onDestroy() ; unregisterReceiver(packageReceiver); unregisterReceiver(adbStatusReceiver) }
}
