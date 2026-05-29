@file:Suppress("SpellCheckingInspection", "DEPRECATION")

package com.omoda5.launcher.ui

import android.content.Context
import android.content.Intent
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkRequest
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.Gravity
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda5.launcher.R
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.common.UpdateManager
import com.omoda5.launcher.model.LauncherItem
import com.omoda5.launcher.ui.theme.Omoda5NextGenTheme
import com.omoda5.launcher.ui.theme.OmodaCyan
import java.io.File
import java.util.ArrayDeque
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.ui.graphics.asImageBitmap
import androidx.core.graphics.drawable.toBitmap

class MainActivity : ComponentActivity() {

    private lateinit var prefs: PreferencesManager
    private lateinit var updateManager: UpdateManager
    private val mainHandler = Handler(Looper.getMainLooper())
    private var isStatusShowing = false
    private val statusQueue = ArrayDeque<String>()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        prefs = PreferencesManager(this)
        updateManager = UpdateManager(this, prefs)

        startAdbServiceAndAutoSetup()
        setupNetworkMonitoring()
        autoCheckForUpdates()

        setContent {
            Omoda5NextGenTheme {
                var wallpaperIdx by remember { mutableStateOf(prefs.wallpaperIndex) }
                HomeScreen(
                    wallpaperIdx = wallpaperIdx,
                    onAppClick = { item -> 
                        prefs.incrementClickCount(item.packageName ?: item.id)
                        launchApp(item) 
                    },
                    onAppLongClick = { item -> launchMultiTask(item) },
                    onWallpaperChange = { 
                        wallpaperIdx = (wallpaperIdx + 1) % 6
                        prefs.wallpaperIndex = wallpaperIdx
                    },
                    onToggleBars = { toggleSystemBars() }
                )
            }
        }
    }

    private fun toggleSystemBars() {
        // Kullanıcı "adları ters" dediği için mantığı ve isimleri güncelliyoruz.
        // isLeftBarHidden (Gerçekte Sağ Bar) | isRightBarHidden (Gerçekte Sol Bar)
        val areBarsHidden = prefs.isLeftBarHidden || prefs.isRightBarHidden
        val newState = !areBarsHidden

        prefs.isLeftBarHidden = newState
        prefs.isRightBarHidden = newState

        applyOverscan(newState, newState)
        
        val msg = if (newState) "TAM EKRAN: Barlar Gizlendi" else "STANDART: Barlar Gösteriliyor"
        showLargeStatus(msg)
    }

    private fun applyOverscan(leftHidden: Boolean, rightHidden: Boolean) {
        // Kullanıcı feedbackine göre: 
        // Sol Bar (Sağdaki küçük bar) -> 70px
        // Sağ Bar (Soldaki büyük bar) -> 235px
        val leftVal = if (rightHidden) -235 else 0
        val rightVal = if (leftHidden) -70 else 0
        
        executeAdbShellCommand("wm overscan $leftVal,0,$rightVal,0")
    }

    private fun launchApp(item: LauncherItem) {
        when (item.id) {
            "vehicle_data" -> startActivity(Intent(this, VehicleDataActivity::class.java))
            "launcher_settings" -> startActivity(Intent(this, SettingsActivity::class.java))
            "multi_task_2" -> startActivity(Intent(this, MultiTaskActivity::class.java).apply { putExtra("mode", "musicolet") })
            "maps_split" -> startActivity(Intent(this, MultiTaskActivity::class.java).apply { putExtra("mode", "system") })
            "wallpaper" -> {
                prefs.wallpaperIndex = (prefs.wallpaperIndex + 1) % 6
                recreate()
            }
            "update" -> {
                showLargeStatus("Güncelleme Kontrol Ediliyor...")
                autoCheckForUpdates()
            }
            "hvac_open" -> {
                executeAdbShellCommand("monkey -p com.chery.hvac -c android.intent.category.LAUNCHER 1")
                showLargeStatus("Klima Sistemi Açıldı")
            }
            "hvac_lock" -> {
                executeAdbShellCommand("am force-stop com.chery.hvac")
                showLargeStatus("Klima Sistemi Kilitlendi")
            }
            else -> {
                val pkg = item.packageName ?: return
                val intent = packageManager.getLaunchIntentForPackage(pkg)
                if (intent != null) {
                    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                    startActivity(intent)
                }
            }
        }
    }

    private fun launchMultiTask(item: LauncherItem) {
        val intent = Intent(this, MultiTaskActivity::class.java).apply {
            putExtra("mode", "dynamic")
            putExtra("target_package", item.packageName)
        }
        startActivity(intent)
    }

    private fun startAdbServiceAndAutoSetup() {
        val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java)
        intent.action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
        ContextCompat.startForegroundService(this, intent)
        
        mainHandler.postDelayed({
            val cmds = mutableListOf(
                "setprop service.adb.tcp.port 5555",
                "stop adbd", "start adbd",
                "settings put secure enabled_accessibility_services $packageName/com.omoda5.launcher.services.CheryAccessibilityService",
                "settings put secure accessibility_enabled 1",
                "settings put secure enabled_notification_listeners $packageName/com.omoda5.launcher.services.MediaNotificationListener",
                "cmd notification allow_listener $packageName/com.omoda5.launcher.services.MediaNotificationListener",
                "appops set $packageName SYSTEM_ALERT_WINDOW allow",
                "cmd package set-home-activity $packageName/com.omoda5.launcher.ui.MainActivity"
            )
            
            // Başlangıçta bar durumunu uygula
            val leftVal = if (prefs.isRightBarHidden) -235 else 0
            val rightVal = if (prefs.isLeftBarHidden) -70 else 0
            cmds.add("wm overscan $leftVal,0,$rightVal,0")

            cmds.forEach { executeAdbShellCommand(it) }
            showLargeStatus("Omoda 5 NextGen: Sistem Hazır.")
        }, 4000)
    }

    private fun executeAdbShellCommand(cmd: String) {
        val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
            action = com.omoda5.launcher.service.AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", cmd)
        }
        startService(intent)
    }

    private fun setupNetworkMonitoring() {
        val cm = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            cm.registerNetworkCallback(NetworkRequest.Builder().addCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET).build(), object : ConnectivityManager.NetworkCallback() {
                override fun onAvailable(network: Network) {
                    mainHandler.postDelayed({
                        executeAdbShellCommand("monkey -p com.tailscale.ipn -c android.intent.category.LAUNCHER 1")
                        showLargeStatus("Ağ Güvenliği: Tailscale Aktif")
                    }, 5000)
                }
            })
        }
    }

    private fun autoCheckForUpdates() {
        updateManager.checkForUpdates(object : UpdateManager.UpdateCheckCallback {
            override fun onUpdateAvailable(name: String, code: Int, url: String) {
                updateManager.downloadUpdate(url, "update_v$name.apk", object : UpdateManager.DownloadCallback {
                    override fun onProgress(pct: Int, speed: Double, rem: Long) { runOnUiThread { showLargeStatus("Güncelleme: v$name (%$pct)") } }
                    override fun onComplete(file: File?) { runOnUiThread { showLargeStatus("v$name İNDİRİLDİ. AYARLARDAN YÜKLEYİN.") } }
                    override fun onError(e: String) {}
                })
            }
            override fun onNoUpdate() {}
            override fun onError(e: String) {}
        })
    }

    private fun showLargeStatus(msg: String) {
        mainHandler.post {
            if (statusQueue.size >= 3) statusQueue.removeFirst()
            statusQueue.addLast(msg)
            if (!isStatusShowing) showNextStatusFromQueue()
        }
    }

    private fun showNextStatusFromQueue() {
        if (statusQueue.isEmpty()) { isStatusShowing = false; return }
        isStatusShowing = true
        val msg = statusQueue.removeFirst()
        try {
            val wm = getSystemService(Context.WINDOW_SERVICE) as android.view.WindowManager
            val statusBinding = com.omoda5.launcher.databinding.LayoutLargeStatusBinding.inflate(layoutInflater)
            statusBinding.tvStatusMessage.text = msg
            val params = android.view.WindowManager.LayoutParams(-1, -2, if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) 2038 else 2003, 24, -3).apply { gravity = Gravity.TOP; y = 50 }
            wm.addView(statusBinding.root, params)
            mainHandler.postDelayed({ wm.removeView(statusBinding.root); isStatusShowing = false; showNextStatusFromQueue() }, 3500)
        } catch (e: Exception) { isStatusShowing = false; showNextStatusFromQueue() }
    }

    @OptIn(ExperimentalFoundationApi::class)
    @Composable
    fun HomeScreen(wallpaperIdx: Int, onAppClick: (LauncherItem) -> Unit, onAppLongClick: (LauncherItem) -> Unit, onWallpaperChange: () -> Unit, onToggleBars: () -> Unit) {
        val installedApps = getInstalledApps()
        val pages = buildPages(installedApps)
        val pagerState = rememberPagerState(pageCount = { pages.size })

        Box(modifier = Modifier.fillMaxSize()) {
            WallpaperSurface(wallpaperIdx)
            
            Box(modifier = Modifier
                .align(Alignment.BottomCenter)
                .size(200.dp, 120.dp)
                .combinedClickable(
                    onClick = { onWallpaperChange() },
                    onDoubleClick = { onToggleBars() }
                )
            )

            HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { pageIdx ->
                val pageItems = pages[pageIdx]
                LazyVerticalGrid(
                    columns = GridCells.Fixed(5),
                    modifier = Modifier.fillMaxSize().padding(start = 250.dp, end = 100.dp, top = 60.dp, bottom = 120.dp),
                    verticalArrangement = Arrangement.Center,
                    horizontalArrangement = Arrangement.Center,
                    userScrollEnabled = false
                ) {
                    items(pageItems) { item -> AppIconItem(item, onAppClick, onAppLongClick) }
                }
            }
            Row(modifier = Modifier.align(Alignment.BottomCenter).padding(bottom = 60.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                repeat(pages.size) { i ->
                    val color = if (pagerState.currentPage == i) OmodaCyan else Color.White.copy(alpha = 0.3f)
                    Box(modifier = Modifier.size(20.dp, 4.dp).background(color, RoundedCornerShape(2.dp)))
                }
            }
        }
    }

    @Composable
    fun WallpaperSurface(index: Int) {
        Box(modifier = Modifier.fillMaxSize()) {
            when (index) {
                0 -> Image(painterResource(R.mipmap.bg_1), null, Modifier.fillMaxSize(), contentScale = ContentScale.Crop)
                1 -> Image(painterResource(R.mipmap.bg_right_1), null, Modifier.fillMaxSize(), contentScale = ContentScale.Crop)
                2 -> Image(painterResource(R.mipmap.bg_right_2), null, Modifier.fillMaxSize(), contentScale = ContentScale.Crop)
                3 -> Box(Modifier.fillMaxSize().background(Brush.linearGradient(listOf(Color(0xFF4A0E0E), Color(0xFF0E1E4A)))))
                4 -> Box(Modifier.fillMaxSize().background(Brush.radialGradient(listOf(Color(0xFF2E073F), Color(0xFF04030F)))))
                5 -> Box(Modifier.fillMaxSize().background(Brush.verticalGradient(listOf(Color(0xFF001F3F), Color(0xFF3D0000)))))
            }
            Box(modifier = Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.45f)))
        }
    }

    private fun buildPages(installedApps: List<LauncherItem>): List<List<LauncherItem>> {
        val page1 = listOf(
            LauncherItem("media", "Medya", R.drawable.launcher_media_icon_bg, packageName = "com.chery.media"),
            LauncherItem("phone", "Telefon", R.drawable.launcher_phone_icon_bg, packageName = "com.chery.dialer"),
            LauncherItem("settings", "Sistem", R.drawable.launcher_system_setting_icon_bg, packageName = "com.chery.settings"),
            LauncherItem("hvac_open", "Klima Aç", R.drawable.launcher_vehicle_icon_bg),
            LauncherItem("hvac_lock", "Klima Kilitle", R.drawable.launcher_vehicle_icon_bg),
            LauncherItem("maps_split", "Multi Task 1", R.drawable.launcher_media_icon_bg, packageName = "com.chery.media"),
            LauncherItem("multi_task_2", "Multi Task 2", R.drawable.launcher_android_auto_icon_bg, packageName = "in.krosbits.musicolet"),
            LauncherItem("aa", "Android Auto", R.drawable.launcher_android_auto_icon_bg, packageName = "com.yfve.car.androidauto"),
            LauncherItem("carplay", "CarPlay", R.drawable.launcher_carplay_icon_bg, packageName = "com.yfve.car.carplay"),
            LauncherItem("wallpaper", "Duvar Kağıdı", R.drawable.bg_wallpaper_button)
        )
        val seenPkgs = page1.mapNotNull { it.packageName }.toSet()
        val otherApps = (listOf(LauncherItem("launcher_settings", "Ayarlar", R.drawable.launcher_system_setting_icon_bg)) + 
                        installedApps.filterNot { seenPkgs.contains(it.packageName) })
                        .sortedByDescending { prefs.getClickCount(it.packageName ?: it.id) }
        return listOf(page1) + otherApps.chunked(10)
    }

    private fun getInstalledApps(): List<LauncherItem> {
        val pm = packageManager
        val intent = Intent(Intent.ACTION_MAIN, null).apply { addCategory(Intent.CATEGORY_LAUNCHER) }
        return pm.queryIntentActivities(intent, 0)
            .filterNot { it.activityInfo.packageName == packageName }
            .map { LauncherItem(id = it.activityInfo.packageName, title = it.loadLabel(pm).toString(), iconDrawable = it.loadIcon(pm), packageName = it.activityInfo.packageName) }
            .sortedBy { it.title.lowercase() }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun AppIconItem(item: LauncherItem, onClick: (LauncherItem) -> Unit, onLongClick: (LauncherItem) -> Unit) {
    Column(
        modifier = Modifier.padding(10.dp).width(160.dp).clip(RoundedCornerShape(16.dp))
            .combinedClickable(onClick = { onClick(item) }, onLongClick = { onLongClick(item) }),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Box(modifier = Modifier.size(110.dp).background(Color.White.copy(alpha = 0.05f), RoundedCornerShape(24.dp)).padding(10.dp), contentAlignment = Alignment.Center) {
            val context = androidx.compose.ui.platform.LocalContext.current
            val painter = remember(item) {
                try {
                    val drawable = item.iconDrawable ?: if (item.iconRes != 0) {
                        ContextCompat.getDrawable(context, item.iconRes)
                    } else null
                    
                    if (drawable != null) {
                        val width = if (drawable.intrinsicWidth > 0) drawable.intrinsicWidth else 128
                        val height = if (drawable.intrinsicHeight > 0) drawable.intrinsicHeight else 128
                        val bitmap = drawable.toBitmap(width, height)
                        androidx.compose.ui.graphics.painter.BitmapPainter(bitmap.asImageBitmap())
                    } else null
                } catch (e: Exception) {
                    Log.e("MainActivity", "Icon load failed for ${item.title}: ${e.message}")
                    null
                }
            }

            if (painter != null) {
                Image(painter = painter, contentDescription = item.title, modifier = Modifier.fillMaxSize())
            }
        }
        Spacer(modifier = Modifier.height(8.dp))
        Text(text = item.title, color = Color.White, fontSize = 17.sp, fontWeight = FontWeight.Medium, textAlign = TextAlign.Center, maxLines = 1, overflow = TextOverflow.Ellipsis)
    }
}
