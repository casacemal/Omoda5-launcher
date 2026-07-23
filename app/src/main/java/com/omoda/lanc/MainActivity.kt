package com.omoda.lanc

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.BitmapFactory
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.Environment
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.core.view.WindowCompat
import androidx.core.view.WindowInsetsCompat
import androidx.core.view.WindowInsetsControllerCompat
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.zIndex
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.model.LauncherItem
import com.omoda.lanc.ui.components.GlassIcon
import com.omoda.lanc.ui.screens.SettingsScreen
import com.omoda.lanc.ui.dashboard.*
import com.omoda.lanc.ui.widgets.assistant.HudWidget
import com.omoda.lanc.ui.theme.Omoda5NextGenTheme
import com.omoda.lanc.ui.theme.OmodaCyan
import kotlinx.coroutines.*
import java.io.File
import androidx.compose.foundation.ExperimentalFoundationApi

/**
 * v6345 RESTORATION - Stabil, Dokunulabilir ve Temiz.
 */
class MainActivity : ComponentActivity() {
    private val mediaVM: com.omoda.lanc.media.MediaControllerViewModel by viewModels()
    private val currentScreenState = mutableStateOf("home")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        WindowCompat.setDecorFitsSystemWindows(window, false)
        WindowInsetsControllerCompat(window, window.decorView).let { controller ->
            controller.hide(WindowInsetsCompat.Type.systemBars())
            controller.systemBarsBehavior = WindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE
        }
        
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.P) {
            org.lsposed.hiddenapibypass.HiddenApiBypass.addHiddenApiExemptions("")
        }

        // GlobalState.isSimulationMode.value = true // [FIX] Zorlama kaldırıldı
        AssistantApplication.configManager.saveConfigAndSync()

        Handler(Looper.getMainLooper()).postDelayed({ injectPermissions() }, 1000)
        Handler(Looper.getMainLooper()).postDelayed({ exec("am start -n com.chery.hvac/.view.activity.MainActivity") }, 2500)
        startPeriodicPermissionCheck()

        checkAndRequestPermissions()

        val serviceIntent = Intent(this, com.omoda.lanc.service.VoiceAssistantService::class.java)
        ContextCompat.startForegroundService(this, serviceIntent)

        setContent {
            Omoda5NextGenTheme {
                MainNavigation()
            }
        }
    }

    @Composable
    fun MainNavigation() {
        var currentScreen by currentScreenState
        BackHandler(enabled = currentScreen != "home") { currentScreen = "home" }

        Box(Modifier.fillMaxSize()) {
            when (currentScreen) {
                "home" -> HomeScreen(
                    onOpenSettings = { currentScreenState.value = "settings" },
                    onOpenSensors = { currentScreenState.value = "sensors" }
                )
                "settings" -> SettingsScreen(onBack = { currentScreenState.value = "home" })
                "dashboard" -> com.omoda.lanc.ui.screens.DashboardScreen(viewModel = mediaVM, onBack = { currentScreenState.value = "home" })
                "sylvie" -> com.omoda.lanc.ui.screens.SylvieScreen(
                    viewModel = mediaVM,
                    onBack = { currentScreenState.value = "home" }
                )
                "coolwalk" -> com.omoda.lanc.ui.screens.CoolwalkScreen(
                    viewModel = mediaVM,
                    onOpenApps = { currentScreenState.value = "home" },
                    onBack = { currentScreenState.value = "home" }
                )
                "sensors" -> com.omoda.lanc.ui.screens.SensorMonitorScreen(onBack = { currentScreenState.value = "home" })
                else -> currentScreen = "home"
            }

            // Sürüm Numarası Overlay (Sağ Alt)
            Text(
                text = "v${BuildConfig.VERSION_NAME}",
                color = Color.White.copy(alpha = 0.5f),
                fontSize = 12.sp,
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(16.dp)
            )
        }
    }

    @OptIn(ExperimentalFoundationApi::class)
    @Composable
    fun HomeScreen(onOpenSettings: () -> Unit, onOpenSensors: () -> Unit) {
        val context = LocalContext.current
        var launcherPages by remember { mutableStateOf<List<List<LauncherItem>>>(emptyList()) }
        val pagerState = rememberPagerState { launcherPages.size }
        
        LaunchedEffect(Unit) {
            withContext(Dispatchers.IO) {
                val pages = buildLauncherPages(10)
                withContext(Dispatchers.Main) { launcherPages = pages }
            }
        }

        val wallpaperIdx by GlobalState.wallpaperIdx.collectAsState()
        val internalWps = listOf(R.mipmap.bg_1, R.mipmap.bg_2, R.drawable.wp_purple, R.drawable.wp_red)
        var externalWps by remember { mutableStateOf(emptyList<File>()) }
        
        LaunchedEffect(wallpaperIdx) {
            val dir = File("/storage/emulated/0/Download/wallpapers")
            if (dir.exists()) {
                externalWps = dir.listFiles { _, n -> n.lowercase().endsWith(".jpg") || n.lowercase().endsWith(".png") }?.toList() ?: emptyList()
            }
        }

        val total = internalWps.size + externalWps.size
        val curIdx = if (total > 0) wallpaperIdx % total else 0
        val painter: Painter = if (curIdx < internalWps.size) painterResource(internalWps[curIdx])
        else if (externalWps.isNotEmpty()) {
            val bitmap = BitmapFactory.decodeFile(externalWps[curIdx - internalWps.size].absolutePath)
            if (bitmap != null) BitmapPainter(bitmap.asImageBitmap()) else painterResource(internalWps[0])
        } else painterResource(internalWps[0])

        val isHandheld = !GlobalState.isCarHardware

        val startPad = if (isHandheld) 20.dp else 235.dp
        val topPad = if (isHandheld) 20.dp else 60.dp
        val bottomPad = if (isHandheld) 40.dp else 80.dp
        val endPad = if (isHandheld) 90.dp else 80.dp // To avoid the right side buttons
        val indicatorBottomPad = if (isHandheld) 10.dp else 30.dp

        Box(Modifier.fillMaxSize()) {
            Image(painter = painter, contentDescription = null, modifier = Modifier.fillMaxSize(), contentScale = ContentScale.Crop)
            Box(Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.45f)))

            // --- SİMÜLASYON MODU GÖSTERGESİ (En Üst Orta) ---
            val isSimMode by GlobalState.isSimulationMode.collectAsState()
            if (isSimMode) {
                Surface(
                    color = Color(0xFFE91E63).copy(alpha = 0.8f),
                    modifier = Modifier
                        .align(Alignment.TopCenter)
                        .padding(top = 10.dp)
                        .clip(RoundedCornerShape(12.dp)),
                    border = BorderStroke(1.dp, Color.White.copy(alpha = 0.5f))
                ) {
                    Text(
                        "SİMÜLASYON AKTİF",
                        color = Color.White,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Black,
                        modifier = Modifier.padding(horizontal = 20.dp, vertical = 6.dp)
                    )
                }
            }

            // --- 1. İKONLAR (Merkez) ---
            Column(Modifier.fillMaxSize()) {
                com.omoda.lanc.ui.components.MediaControlWidget(mediaVM)
                HorizontalPager(state = pagerState, modifier = Modifier.weight(1f)) { pIdx ->
                    if (pIdx < launcherPages.size) {
                        LazyVerticalGrid(
                            columns = GridCells.Fixed(5), 
                            modifier = Modifier.fillMaxSize().padding(start = startPad, end = endPad, top = topPad, bottom = bottomPad),
                            verticalArrangement = Arrangement.Center,
                            horizontalArrangement = Arrangement.spacedBy(15.dp)
                        ) {
                            items(launcherPages[pIdx]) { item ->
                                GlassIcon(item = item, onClick = { 
                                    if (item.packageName == "internal.wallpaper") {
                                        GlobalState.wallpaperIdx.value++; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                                    } else launchApp(item)
                                })
                            }
                        }
                    }
                }
            }

            // --- 2. SAĞ PANEL (Butonlar) ---
            Column(
                Modifier.align(Alignment.CenterEnd).padding(end = 25.dp).width(70.dp).zIndex(50f),
                verticalArrangement = Arrangement.spacedBy(10.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                val isListening by GlobalState.isListening.collectAsState()
                val currentMode by GlobalState.currentMode.collectAsState()

                VoiceTriggerButton("MIC", if(isListening) Color.Red else Color(0xFF00FF41)) { 
                    context.sendBroadcast(Intent("com.omoda.assistant.${if(isListening) "STOP" else "START"}_LISTENING"))
                }
                VoiceTriggerButton(if(currentMode == "CHAT") "CHAT" else "ASIST", OmodaCyan) { 
                    GlobalState.currentMode.value = if (currentMode == "CHAT") "ASISTANT" else "CHAT"
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }
                VoiceTriggerButton("VERİ", Color.Magenta) { onOpenSensors() }
                VoiceTriggerButton("TEMA", Color(0xFFFF9800)) { 
                    GlobalState.wallpaperIdx.value++; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }

                val isSimMode by GlobalState.isSimulationMode.collectAsState()
                VoiceTriggerButton(if (isSimMode) "VHAL(A)" else "VHAL(K)", if (isSimMode) Color(0xFFE91E63) else Color.DarkGray) {
                    val newVal = !isSimMode
                    GlobalState.isSimulationMode.value = newVal
                    com.omoda.lanc.core.LoggerProvider.i(if (newVal) "VHAL SİMÜLATÖR AKTİF" else "VHAL SİMÜLATÖR KAPALI")
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }

                val isBridgeMode by GlobalState.isBridgeMode.collectAsState()
                VoiceTriggerButton(if (isBridgeMode) "KÖPRÜ(A)" else "KÖPRÜ(K)", if (isBridgeMode) Color(0xFFF3B14B) else Color.DarkGray) {
                    val newVal = !isBridgeMode
                    GlobalState.isBridgeMode.value = newVal
                    com.omoda.lanc.core.LoggerProvider.i(if (newVal) "MQTT KÖPRÜ AKTİF" else "MQTT KÖPRÜ KAPALI")
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }

                val isMqttEnabled by GlobalState.mqttEnabled.collectAsState()
                VoiceTriggerButton(if (isMqttEnabled) "MQTT(A)" else "MQTT(K)", if (isMqttEnabled) Color(0xFF4CAF50) else Color.DarkGray) {
                    GlobalState.mqttEnabled.value = !isMqttEnabled
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }

                VoiceTriggerButton("ADB", Color(0xFF673AB7)) {
                    try {
                        val intent = Intent(context, Class.forName("com.hermesandroid.bridge.BridgeActivity"))
                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        context.startActivity(intent)
                    } catch (e: Exception) {
                        com.omoda.lanc.core.LoggerProvider.i("HATA: Bridge Paneli Açılamadı")
                    }
                }
            }

            // --- 3. ALT NAV ÇİZGİLERİ ---
            Row(Modifier.align(Alignment.BottomCenter).padding(bottom = indicatorBottomPad).width(180.dp).zIndex(40f), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                Box(Modifier.weight(1f).height(5.dp).clip(CircleShape).background(if(pagerState.currentPage == 0) OmodaCyan else Color.White.copy(0.2f)))
                Box(Modifier.weight(1f).height(5.dp).clip(CircleShape).background(if(pagerState.currentPage > 0) OmodaCyan else Color.White.copy(0.2f)))
            }

            // HUD (Sağ Alt)
            Box(Modifier.fillMaxSize().zIndex(45f)) {
                HudWidget().Content()
            }
        }
    }

    @Composable
    fun VoiceTriggerButton(label: String, color: Color, onClick: () -> Unit) {
        Surface(
            modifier = Modifier.size(60.dp).clickable { onClick() },
            shape = CircleShape, color = Color.Black.copy(0.75f), border = BorderStroke(1.dp, color.copy(0.5f))
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(label, color = color, fontSize = 11.sp, fontWeight = FontWeight.ExtraBold)
            }
        }
    }

    private fun buildLauncherPages(itemsPerPage: Int): List<List<LauncherItem>> {
        val fixedApps = listOf(
            LauncherItem("map", "Navigasyon", R.mipmap.home_app_navi_n, "internal.dashboard"),
            LauncherItem("sylvie", "Sylvie", R.mipmap.home_app_carinfo_n, "internal.sylvie"),
            LauncherItem("coolwalk", "Coolwalk", R.mipmap.home_app_navi_n, "internal.coolwalk"),
            LauncherItem("m","Medya",R.mipmap.home_app_media_n,"com.chery.media"), 
            LauncherItem("p","Telefon",R.mipmap.home_app_phone_n,"com.chery.dialer"), 
            LauncherItem("s","Ayarlar",R.mipmap.home_app_setup_n,"com.chery.settings"),
            LauncherItem("cs","Araç",R.mipmap.home_app_carinfo_n,"com.chery.carsettings"),
            LauncherItem("hvac","Klima",R.mipmap.home_app_carinfo_n,"com.chery.hvac"),
            LauncherItem("sensors", "Veri", R.mipmap.home_app_carinfo_n, "internal.sensors"),
            LauncherItem("lanc_settings", "Lanc Ayarlar", R.mipmap.home_app_setup_n, "internal.settings"),
            LauncherItem("wp", "Tema", R.mipmap.home_app_mengjia_n, "internal.wallpaper"),
            LauncherItem("store", "Omoda Store", R.mipmap.home_app_update_n, "internal.appstore"),
            LauncherItem("v","Video",R.mipmap.home_app_video_n,"com.chery.video"),
            LauncherItem("gd","Kılavuz",R.mipmap.home_app_manual_n,"com.chery.help"),
            LauncherItem("aa","Android Auto",R.mipmap.home_app_android_auto_n,"com.yfve.car.androidauto"),
            LauncherItem("cp","CarPlay",R.mipmap.home_app_apple_carplay_n,"com.yfve.car.carplay")
        )
        val mainIntent = Intent(Intent.ACTION_MAIN, null).apply { addCategory(Intent.CATEGORY_LAUNCHER) }
        val allApps = packageManager.queryIntentActivities(mainIntent, 0).map { res ->
            val pkg = res.activityInfo.packageName
            LauncherItem(pkg, res.loadLabel(packageManager).toString(), 0, pkg, res.loadIcon(packageManager))
        }.filter { app -> fixedApps.none { it.packageName == app.packageName } }.sortedByDescending { GlobalState.appClickCounts.value[it.packageName] ?: 0 }
        return listOf(fixedApps) + allApps.chunked(itemsPerPage)
    }

    private fun launchApp(item: LauncherItem) {
        when (item.packageName) {
            "internal.dashboard" -> currentScreenState.value = "dashboard"
            "internal.sylvie" -> currentScreenState.value = "sylvie"
            "internal.coolwalk" -> currentScreenState.value = "coolwalk"
            "internal.sensors" -> currentScreenState.value = "sensors"
            "internal.settings" -> currentScreenState.value = "settings"
            else -> packageManager.getLaunchIntentForPackage(item.packageName ?: "")?.let { startActivity(it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)) }
        }
    }

    // ─── Akıllı İzin Sistemi ─────────────────────────────────────────────────
    // Başarılı olan izinleri tekrar deneme. Sistem iptal ederse bir sonraki
    // periyodik kontrolde sadece o eksik izinler yeniden çalıştırılır.
    private val successfulPermissions = mutableSetOf<String>()

    /** Tüm izinleri grup grup uygular — açılışta tam kontrol için kullanılır. */
    private fun injectPermissions() {
        // GRUP 1: Sistem Ayarları — değişmeyen sabit değerler, tek seferlik
        val systemSettings = listOf(
            "settings put global enable_freeform_support 1",
            "settings put global force_resizable_activities 1",
            "settings put global hidden_api_policy 1",
            "settings put global hidden_api_policy_pre_p_apps 1",
            "settings put global hidden_api_policy_p_apps 1",
            "settings put global policy_control immersive.full=*",
            "dumpsys deviceidle whitelist +$packageName",
            "cmd package set-home-activity $packageName/.MainActivity"
        )
        // Sistem ayarları başarılıysa tekrar deneme
        systemSettings.filter { it !in successfulPermissions }.forEach { cmd ->
            exec(cmd)
            successfulPermissions.add(cmd)
        }

        // GRUP 2: AppOps izinleri — sistem iptal edebilir, periyodik kontrol edilir
        val appOps = listOf(
            "appops set $packageName SYSTEM_ALERT_WINDOW allow",
            "appops set $packageName PROJECT_MEDIA allow",
            "appops set $packageName REQUEST_INSTALL_PACKAGES allow",
            "appops set $packageName USE_FULL_SCREEN_INTENT allow",
            "appops set $packageName GET_USAGE_STATS allow",
            "appops set $packageName WRITE_SECURE_SETTINGS allow"
        )
        appOps.forEach { exec(it) }

        // GRUP 3: Runtime PM izinleri — Android iptal edebilir, takipli
        injectRuntimePermissions()
    }

    /**
     * Periyodik kontrol: sadece başarısız veya henüz test edilmemiş çalışma zamanı
     * izinlerini yeniden dener. 5dk'da bir parçalı olarak çalışır.
     */
    private fun injectRuntimePermissions() {
        val runtimePerms = listOf(
            "pm grant $packageName android.permission.RECORD_AUDIO",
            "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.SYSTEM_ALERT_WINDOW",
            "pm grant $packageName android.permission.ACCESS_FINE_LOCATION",
            "pm grant $packageName android.permission.ACCESS_COARSE_LOCATION",
            "pm grant $packageName android.permission.BODY_SENSORS",
            "pm grant $packageName android.permission.HIGH_SAMPLING_RATE_SENSORS",
            "pm grant $packageName android.permission.READ_LOGS",
            "pm grant $packageName android.permission.DUMP",
            "pm grant $packageName android.permission.PACKAGE_USAGE_STATS"
        )
        val aaosPerms = listOf(
            "pm grant $packageName android.car.permission.CAR_SPEED",
            "pm grant $packageName android.car.permission.CAR_INFO",
            "pm grant $packageName android.car.permission.CAR_ENERGY",
            "pm grant $packageName android.car.permission.CAR_ENGINE_DETAILED",
            "pm grant $packageName android.car.permission.CAR_POWERTRAIN",
            "pm grant $packageName android.car.permission.CAR_TIRES",
            "pm grant $packageName android.car.permission.CAR_EXTERIOR_ENVIRONMENT",
            "pm grant $packageName android.car.permission.CAR_MILEAGE",
            "pm grant $packageName android.car.permission.CAR_VENDOR_EXTENSION",
            "pm grant $packageName android.car.permission.CAR_DYNAMICS_STATE",
            "pm grant $packageName android.car.permission.CONTROL_CAR_CLIMATE",
            "pm grant $packageName android.car.permission.READ_CAR_DISPLAY_UNITS",
            "pm grant $packageName android.car.permission.CAR_DRIVING_STATE"
        )
        // Sadece henüz başarılı sayılmayan izinleri çalıştır
        (runtimePerms + aaosPerms).filter { it !in successfulPermissions }.forEach { cmd ->
            exec(cmd)
            // İzni başarılı sayıyoruz (gerçek pm grant çıktısı kontrol edilemiyor,
            // ama sistem iptal ederse bir sonraki periyodik kontrolde listeden çıkar)
            successfulPermissions.add(cmd)
        }
    }

    private fun startPeriodicPermissionCheck() {
        val h = Handler(Looper.getMainLooper())
        // İlk çalışma: 5sn sonra tam enjeksiyon
        h.postDelayed({ if (!GlobalState.isSimulationMode.value) injectPermissions() }, 5000L)

        // Sonraki çalışmalar: 5dk'da bir sadece eksik/başarısız izinleri kontrol et
        val periodicChecker = object : Runnable {
            override fun run() {
                if (!GlobalState.isSimulationMode.value) {
                    // Başarılıları sıfırla — sistem arada iptal etmiş olabilir
                    // AppOps her zaman yeniden set edilsin (bunlar değişebilir)
                    listOf(
                        "appops set $packageName SYSTEM_ALERT_WINDOW allow",
                        "appops set $packageName PROJECT_MEDIA allow",
                        "appops set $packageName GET_USAGE_STATS allow"
                    ).forEach { exec(it) }
                    // Runtime izinleri: sadece henüz başarısız olanları
                    injectRuntimePermissions()
                }
                h.postDelayed(this, 300_000L) // 5 dakika
            }
        }
        h.postDelayed(periodicChecker, 60_000L) // İlk periyodik kontrol: 1dk sonra
    }

    private fun exec(c: String) {
        val intent = Intent(this, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
            action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", c)
        }
        ContextCompat.startForegroundService(this, intent)
    }

    private fun checkAndRequestPermissions() {
        val perms = arrayOf(Manifest.permission.RECORD_AUDIO, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.BODY_SENSORS)
        val needed = perms.filter { ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED }
        if (needed.isNotEmpty()) ActivityCompat.requestPermissions(this, needed.toTypedArray(), 1001)
    }
}
