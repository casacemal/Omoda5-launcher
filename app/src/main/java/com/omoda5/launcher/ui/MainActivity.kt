@file:Suppress("SpellCheckingInspection", "DEPRECATION")
package com.omoda5.launcher.ui
import android.content.*
import android.graphics.BitmapFactory
import android.os.*
import android.view.*
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.*
import androidx.compose.foundation.pager.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import com.omoda5.launcher.R
import com.omoda5.launcher.common.*
import com.omoda5.launcher.model.LauncherItem
import com.omoda5.launcher.media.*
import com.omoda5.launcher.viewmodel.VehicleDataViewModel
import com.omoda5.launcher.ui.components.GlassIcon
import com.omoda5.launcher.ui.theme.*
import kotlinx.coroutines.launch
import java.io.File

class MainActivity : ComponentActivity() {
    private lateinit var prefs: PreferencesManager
    private val mediaVM: MediaControllerViewModel by viewModels()
    private val vehicleVM: VehicleDataViewModel by viewModels()

    override fun onCreate(s: Bundle?) {
        super.onCreate(s); prefs = PreferencesManager(this); ensureDir()
        LogManager.init(applicationContext)
        SystemBridgeManager.init(applicationContext) // → içinde VhalManager.init() de çağırılıyor
        VoiceAssistantManager.init(applicationContext)
        // NOT: VhalManager.init(this) buradan çağrılmıyor
        // SystemBridgeManager.init() zinciri zaten yönetiyor

        // v9.5.0 Crash Guard: If 3 crashes in 60s, enter Recovery
        val crashCount = getSharedPreferences("health", MODE_PRIVATE).getInt("crash_count", 0)
        val lastCrashTime = getSharedPreferences("health", MODE_PRIVATE).getLong("last_crash", 0)
        val now = System.currentTimeMillis()
        
        if (now - lastCrashTime < 60000 && crashCount >= 3) {
            getSharedPreferences("health", MODE_PRIVATE).edit().putInt("crash_count", 0).apply()
            startActivity(Intent(this, RecoveryActivity::class.java))
            finish()
            return
        }

        // Mark start (if app lives 10s, we clear crash count)
        getSharedPreferences("health", MODE_PRIVATE).edit()
            .putInt("crash_count", crashCount + 1)
            .putLong("last_crash", now).apply()
        
        Handler(Looper.getMainLooper()).postDelayed({
            getSharedPreferences("health", MODE_PRIVATE).edit().putInt("crash_count", 0).apply()
            LogManager.addLog("SYSTEM: Sağlık kontrolü başarılı.")
        }, 10000)

        startService(Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).setAction("ACTION_EXECUTE_SHELL"))
        Handler(Looper.getMainLooper()).postDelayed({
            injectPermissions()
            startPeriodicPermissionCheck() // 5 dakikada bir izin doğrulama
        }, 4000)

        // v10.3.0: Auto-start HVAC after 2 seconds for Omoda 5 Sync
        Handler(Looper.getMainLooper()).postDelayed({
            exec("am start -n com.chery.hvac/.view.activity.MainActivity")
            LogManager.addLog("SYSTEM: Klima Otomatik Başlatıldı.")
        }, 2000)

        // v9.4.5: Startup Update Check
        UpdateManager(this, prefs).checkForUpdates(object : UpdateManager.UpdateCallback {
            override fun onUpdateAvailable(current: String, new: String, url: String) {
                HudManager.show("GÜNCELLEME", "Yeni sürüm mevcut: $new")
            }
            override fun onNoUpdate() {}
            override fun onError(e: String) {}
        })

        setContent { Omoda5NextGenTheme {
            CompositionLocalProvider(LocalLifecycleOwner provides this) {
                val wps = getWps(); var idx by remember { mutableStateOf(prefs.wallpaperIndex.coerceIn(0, wps.size - 1)) }
                var showMenu by remember { mutableStateOf<LauncherItem?>(null) }
                var pages by remember { mutableStateOf(buildSmartPages()) }

                Box(Modifier.fillMaxSize()) {
                    HomeScreen(wps.getOrNull(idx), prefs.wallpaperAlpha, mediaVM, pages, 
                        onClk = { launchApp(it) }, 
                        onMtTrigger = { launchMt(it) },
                        onMenuTrigger = { showMenu = it },
                        onWp = { idx = (idx + 1) % wps.size; prefs.wallpaperIndex = idx }, 
                        onBar = { toggleBars() }
                    )
                    
                    // v10.1.0 Alpha: Voice Trigger Panel (Right Side)
                    Column(
                        Modifier
                            .align(Alignment.CenterEnd)
                            .padding(end = 10.dp)
                            .width(60.dp),
                        verticalArrangement = Arrangement.spacedBy(10.dp),
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        VoiceTriggerButton("MIC", MatrixGreen) { VoiceAssistantManager.startListening() }
                        VoiceTriggerButton("SYS", OmodaCyan) { VoiceAssistantManager.startListening(VoiceAssistantManager.EngineMode.SYSTEM) }
                        VoiceTriggerButton("VOSK", Color.Yellow) { VoiceAssistantManager.startListening(VoiceAssistantManager.EngineMode.VOSK) }
                        VoiceTriggerButton("İNDİR", Color.Magenta) { 
                            VoiceModelDownloader.downloadModel(this@MainActivity) { msg ->
                                HudManager.show("VOICE", msg)
                            }
                        }
                        VoiceTriggerButton("TEMA", Color(0xFFFF9800)) { 
                            idx = (idx + 1) % wps.size
                            prefs.wallpaperIndex = idx 
                        }
                    }

                    showMenu?.let { item ->
                        AppActionMenu(item, 
                            onFavorite = { prefs.toggleFavorite(it); pages = buildSmartPages(); showMenu = null },
                            onHide = { prefs.hidePackage(it); pages = buildSmartPages(); showMenu = null },
                            onDismiss = { showMenu = null }
                        )
                    }
                }
            }
        } }
    }

    @Composable
    fun VoiceTriggerButton(label: String, color: Color, onClick: () -> Unit) {
        Surface(
            modifier = Modifier
                .size(50.dp)
                .clickable { onClick() },
            shape = RoundedCornerShape(25.dp),
            color = Color.Black.copy(0.6f),
            border = BorderStroke(1.dp, color.copy(0.4f))
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(label, color = color, fontSize = 10.sp, fontWeight = FontWeight.Bold)
            }
        }
    }

    @Composable
    fun AppActionMenu(item: LauncherItem, onFavorite: (String) -> Unit, onHide: (String) -> Unit, onDismiss: () -> Unit) {
        Dialog(onDismissRequest = onDismiss) {
            Surface(shape = RoundedCornerShape(16.dp), color = Color(0xFF1A1A1A), border = BorderStroke(1.dp, OmodaCyan.copy(0.5f))) {
                Column(Modifier.padding(20.dp).width(250.dp), Arrangement.spacedBy(10.dp)) {
                    Text(item.title.uppercase(), color = Color.White, fontWeight = androidx.compose.ui.text.font.FontWeight.Bold)
                    Divider(color = Color.White.copy(0.1f))
                    Button(onClick = { item.packageName?.let { onFavorite(it) } }, colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray), modifier = Modifier.fillMaxWidth()) {
                        Text(if (prefs.favoritePackages.contains(item.packageName)) "FAVORİDEN ÇIKAR" else "FAVORİYE EKLE", color = OmodaCyan)
                    }
                    Button(onClick = { item.packageName?.let { onHide(it) } }, colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFB71C1C)), modifier = Modifier.fillMaxWidth()) {
                        Text("UYGULAMAYI GİZLE", color = Color.White)
                    }
                }
            }
        }
    }

    /**
     * v11.0.0 AGRESIF İZİN YÖNETİCİSİ
     * - Başlangıçta 4000ms gecikmeyle çalışır
     * - Her kritik izni tek tek doğrular, eksik olanı tekrar enjekte eder
     * - Notification Listener ve Accessibility Service aktifliğini kontrol eder
     * - Her 5 dakikada bir periyodik doğrulama yapar
     */
    private fun injectPermissions() {
        if (!prefs.isAutoTasksEnabled) {
            LogManager.addLog("SYSTEM: Otomatik Görevler Kapatılı (Öneri: Açın)")
            return
        }

        // --- 1. TEMEL KOMUTLAR (her seferinde çalışır) ---
        val baseCmds = listOf(
            "appops set $packageName SYSTEM_ALERT_WINDOW allow",
            "settings put global enable_freeform_support 1",
            "settings put global force_resizable_activities 1",
            "settings put global hidden_api_policy 1",
            "settings put global hidden_api_policy_pre_p_apps 1",
            "settings put global hidden_api_policy_p_apps 1",
            "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE"
        )
        baseCmds.forEach { exec(it) }

        // --- 2. NOTIFICATION LISTENER DOĞRULAMA ---
        val notifSetting = android.provider.Settings.Secure.getString(
            contentResolver, "enabled_notification_listeners"
        ) ?: ""
        val notifTarget = "$packageName/com.omoda5.launcher.services.MediaNotificationListener"
        if (!notifSetting.contains(notifTarget)) {
            val newVal = if (notifSetting.isEmpty()) notifTarget else "$notifSetting:$notifTarget"
            exec("settings put secure enabled_notification_listeners $newVal")
            LogManager.addLog("İZİN: Notification Listener eksikti — enjekte edildi")
            HudManager.show("İZİN", "Media dinleyici aktifleştirildi")
        } else {
            LogManager.addLog("İZİN: Notification Listener ✔ aktif")
        }

        // --- 3. ACCESSIBILITY SERVICE DOĞRULAMA ---
        val accEnabled = android.provider.Settings.Secure.getInt(
            contentResolver, "accessibility_enabled", 0
        )
        val accSetting = android.provider.Settings.Secure.getString(
            contentResolver, "enabled_accessibility_services"
        ) ?: ""
        val accTarget = "$packageName/com.omoda5.launcher.services.CheryAccessibilityService"
        if (accEnabled == 0 || !accSetting.contains(accTarget)) {
            exec("settings put secure accessibility_enabled 1")
            val newAccVal = if (accSetting.isEmpty()) accTarget else "$accSetting:$accTarget"
            exec("settings put secure enabled_accessibility_services $newAccVal")
            LogManager.addLog("İZİN: Accessibility Service eksikti — enjekte edildi")
        } else {
            LogManager.addLog("İZİN: Accessibility Service ✔ aktif")
        }

        LogManager.addLog("SYSTEM: Tüm İzinler Doğrulandı ve Enjekte Edildi (v11.0.0)")
    }

    /**
     * 5 dakikada bir izin durumunu yeniden kontrol eder.
     * ADB servisi yeniden başlarsa veya izinler düşürse otomatik kurtarma.
     */
    private fun startPeriodicPermissionCheck() {
        val h = Handler(Looper.getMainLooper())
        val checkInterval = 5 * 60 * 1000L // 5 dakika
        val checker = object : Runnable {
            override fun run() {
                if (prefs.isAutoTasksEnabled) {
                    injectPermissions()
                    LogManager.addLog("[PERİYODİK] İzin kontrolü yapıldı.")
                }
                h.postDelayed(this, checkInterval)
            }
        }
        h.postDelayed(checker, checkInterval)
    }

    private fun ensureDir() { File("/storage/emulated/0/Download/wallpapers").apply { if (!exists()) mkdirs() } }
    private fun getWps(): List<Any> = mutableListOf<Any>(R.mipmap.bg_1, R.mipmap.bg_right_1, R.mipmap.bg_right_2).apply { 
        File("/storage/emulated/0/Download/wallpapers").listFiles()?.filter { it.extension.lowercase() in listOf("jpg","png","jpeg") }?.let { addAll(it) }
    }
    private fun toggleBars() { 
        val s = !(prefs.isLeftBarHidden)
        prefs.isLeftBarHidden = s
        prefs.isRightBarHidden = s // Toggle both but keeping state independent
        val lo = if (prefs.isLeftBarHidden) -235 else 0
        val ro = if (prefs.isRightBarHidden) -80 else 0
        exec("wm overscan $lo,0,$ro,0") 
    }
    private fun launchApp(i: LauncherItem) { 
        when {
            i.id == "v_data" -> startActivity(Intent(this, VehicleDataActivity::class.java))
            i.id == "l_sets" -> startActivity(Intent(this, SettingsActivity::class.java))
            i.id.startsWith("mt") -> launchMt(i)
            i.id.startsWith("lab_") -> {
                if (i.id == "lab_reset") {
                    exec("wm overscan 0,0,0,0")
                    exec("am stack resize 1 0 0 1920 720")
                    LogManager.addLog("SYSTEM: Fabrika Ayarlarına Dönüldü.")
                } else if (i.id == "lab_diag") {
                    startActivity(Intent(this, DiagnosticLabActivity::class.java))
                } else if (i.id.contains("hvac")) {
                    exec("am start -n ${i.packageName}/.MainActivity")
                    LogManager.addLog("LAB: Klima Tetiklendi (${i.packageName})")
                } else {
                    val mode = when(i.id) {
                        "lab_yt_v6" -> 0
                        "lab_sp_v5" -> 1
                        "lab_vv_v9" -> 3
                        else -> 3
                    }
                    startActivity(Intent(this, MultiTaskActivity::class.java).apply { 
                        putExtra("engine_mode", mode)
                        putExtra("target_package", i.packageName)
                    })
                }
            }
            else -> i.packageName?.let { p -> packageManager.getLaunchIntentForPackage(p)?.let { startActivity(it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)) } } 
        } 
    }
    private fun launchMt(i: LauncherItem) {
        startActivity(Intent(this, MultiTaskActivity::class.java).apply {
            putExtra("engine_mode", 3) // Cascade: tüm motorları sırayla dene
            putExtra("target_package", i.packageName ?: prefs.selectedMtPackage)
        })
    }
    private fun exec(c: String) { startService(Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply { action="ACTION_EXECUTE_SHELL"; putExtra("command", c) }) }

    @OptIn(ExperimentalFoundationApi::class) @Composable
    fun HomeScreen(wp: Any?, alpha: Float, mVM: MediaControllerViewModel, pages: List<List<LauncherItem>>, onClk: (LauncherItem)->Unit, onMtTrigger: (LauncherItem)->Unit, onMenuTrigger: (LauncherItem)->Unit, onWp: ()->Unit, onBar: ()->Unit) {
        val state = rememberPagerState { pages.size }
        val scope = rememberCoroutineScope()
        val hudMsg by HudManager.hudMessage.collectAsState()

        Box(Modifier.fillMaxSize()) {
            // Arka Plan
            Box(Modifier.fillMaxSize()) {
                if (wp is Int) Image(painterResource(wp), null, Modifier.fillMaxSize(), contentScale = ContentScale.Crop)
                else if (wp is File) BitmapFactory.decodeFile(wp.absolutePath)?.let { Image(it.asImageBitmap(), null, Modifier.fillMaxSize(), contentScale = ContentScale.Crop) }
                Box(Modifier.fillMaxSize().background(Color.Black.copy(alpha = alpha)))
            }
            
            // Ana İçerik
            Box(Modifier.fillMaxSize()) {
                HorizontalPager(state, Modifier.fillMaxSize()) { pIdx ->
                    if (pIdx == 0) {
                        val metrics by vehicleVM.metrics.collectAsState()
                        DashboardScreen(metrics)
                    } else {
                        val adjustedIdx = pIdx - 1
                        LazyVerticalGrid(
                            columns = GridCells.Fixed(5), 
                            modifier = Modifier
                                .fillMaxSize()
                                .padding(start = 240.dp, end = 80.dp, top = 60.dp, bottom = 80.dp),
                            verticalArrangement = Arrangement.Center,
                            horizontalArrangement = Arrangement.spacedBy(10.dp),
                            userScrollEnabled = false
                        ) {
                            items(pages[adjustedIdx]) { i -> GlassIcon(i, { onClk(i) }, { onMtTrigger(i) }, { onMenuTrigger(i) }) }
                        }
                    }
                }

                // Medya Widget (Üstte ince bir çubuk olarak)
                Box(Modifier.fillMaxWidth().padding(top = 10.dp)) {
                    MediaControlWidget(mVM)
                }

                // Stok Gezinme Çubuğu (v9.3.3)
                Row(
                    Modifier
                        .align(Alignment.BottomCenter)
                        .padding(bottom = 30.dp)
                        .width(200.dp)
                        .zIndex(10f), // Ensure top level
                    horizontalArrangement = Arrangement.spacedBy(12.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Sol Çizgi
                    Box(
                        Modifier
                            .weight(1f)
                            .height(6.dp)
                            .clip(RoundedCornerShape(3.dp))
                            .background(if(state.currentPage == 0) OmodaCyan else Color.White.copy(0.3f))
                            .clickable { scope.launch { state.animateScrollToPage(0) } }
                    )
                    // Sağ Çizgi
                    Box(
                        Modifier
                            .weight(1f)
                            .height(6.dp)
                            .clip(RoundedCornerShape(3.dp))
                            .background(if(state.currentPage > 0) OmodaCyan else Color.White.copy(0.3f))
                            .clickable { scope.launch { if(pages.size > 1) state.animateScrollToPage(1) } }
                    )
                }
            }

            // SMART HUD (v9.2.0) - Sağ Alt
            if (prefs.isHudEnabled && hudMsg != null) {
                Box(
                    Modifier
                        .align(Alignment.BottomEnd)
                        .padding(end = 20.dp, bottom = 120.dp) // Lifted up to avoid nav conflict
                        .zIndex(5f)
                        .clip(RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp))
                        .background(Color.Black.copy(0.8f))
                        .border(1.dp, OmodaCyan.copy(0.3f), RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp))
                        .padding(horizontal = 15.dp, vertical = 10.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(hudMsg!!.first, color = Color.Black, fontSize = 10.sp, fontWeight = FontWeight.Bold, modifier = Modifier.background(OmodaCyan, RoundedCornerShape(4.dp)).padding(horizontal = 4.dp))
                        Spacer(Modifier.width(10.dp))
                        Text(hudMsg!!.second, color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Medium)
                    }
                }
            }

            // Görünmez alt tetikleyici (Daha hassas alan)
            Box(
                Modifier
                    .align(Alignment.BottomCenter)
                    .size(200.dp, 40.dp) // Area reduced to avoid nav dots
                    .zIndex(1f)
                    .combinedClickable(
                        onClick = { }, // No direct click
                        onLongClick = onBar,
                        onDoubleClick = onWp
                    )
            )
        }
    }

    private fun buildSmartPages(): List<List<LauncherItem>> {
        val p1 = listOf(
            LauncherItem("m","Medya",R.mipmap.home_app_media_n,"com.chery.media"), 
            LauncherItem("p","Telefon",R.mipmap.home_app_phone_n,"com.chery.dialer"), 
            LauncherItem("s","Yerel Ayarlar",R.mipmap.home_app_setup_n,"com.chery.settings"), 
            LauncherItem("cs","Araba Ayarları",R.mipmap.home_app_carinfo_n,"com.chery.carsettings"), 
            LauncherItem("hvac","Klima (Chery)",R.mipmap.home_app_carinfo_n,"com.chery.hvac"),
            LauncherItem("v","Video",R.mipmap.home_app_video_n,"com.chery.video"), 
            LauncherItem("gd","Elektronik Kullanım Kılavuzu",R.mipmap.home_app_manual_n,"com.chery.help"), 
            LauncherItem("aa","Android Auto",R.mipmap.home_app_android_auto_n,"com.yfve.car.androidauto"), 
            LauncherItem("cp","Apple CarPlay",R.mipmap.home_app_apple_carplay_n,"com.yfve.car.carplay"), 
            LauncherItem("u","Sistem güncellemesi",R.mipmap.home_app_update_n,"com.omoda5.launcher")
        )
        val installed = packageManager.queryIntentActivities(Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER), 0).map { LauncherItem(it.activityInfo.packageName, it.loadLabel(packageManager).toString(), 0, it.activityInfo.packageName, it.loadIcon(packageManager)) }.filterNot { it.packageName == packageName || p1.any { p -> p.packageName == it.packageName } }.sortedBy { it.title.lowercase() }
        val favs = installed.filter { prefs.favoritePackages.contains(it.packageName) }
        val others = installed.filterNot { prefs.favoritePackages.contains(it.packageName) }
        val dynamic = (favs + others).filterNot { prefs.hiddenPackages.contains(it.packageName) }
        val core = listOf(
            LauncherItem("l_sets","Ayarlar",R.mipmap.home_app_setup_n), 
            LauncherItem("v_data","Veriler",R.mipmap.home_app_carinfo_n), 
            LauncherItem("mt1","Spotify",R.mipmap.home_app_360_n,"com.spotify.music"), 
            LauncherItem("mt2","Musicolet",R.mipmap.home_app_list_n,"in.krosbits.musicolet")
        )
        val lab = listOf(
            LauncherItem("lab_vvl_v6","Vivaldi v6",R.mipmap.home_app_360_n,"com.vivaldi.browser"),
            LauncherItem("lab_sp_v5","Spotify v5",R.mipmap.home_app_media_n,"com.spotify.music"),
            LauncherItem("lab_vv_v9","Vivaldi v9",R.mipmap.home_app_video_n,"com.vivaldi.browser"),
            LauncherItem("lab_hvac_yf","Klima YFVE",R.mipmap.home_app_carinfo_n,"com.yfve.hvac"),
            LauncherItem("lab_diag","Diagnostik Lab",R.mipmap.home_app_setup_n),
            LauncherItem("lab_reset","Sistem Reset",R.mipmap.home_app_update_n)
        )
        return listOf(p1) + (core + dynamic).chunked(10) + listOf(lab)
    }
}
