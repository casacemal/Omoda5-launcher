package com.omoda.lanc

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import android.Manifest
import android.content.pm.PackageManager
import androidx.core.app.ActivityCompat
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Image
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.zIndex
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.ui.screens.SettingsScreen
import com.omoda.lanc.ui.screens.DialogueSection
import com.omoda.lanc.ui.screens.StatusPillSection
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.model.LauncherItem
import com.omoda.lanc.ui.components.GlassIcon
import com.omoda.lanc.ui.theme.*
import android.graphics.BitmapFactory
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.graphics.painter.Painter
import androidx.activity.compose.BackHandler
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.ui.input.pointer.pointerInput
import android.graphics.Canvas
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.Shader
import android.graphics.Bitmap
import java.io.FileOutputStream
import java.io.File
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Locale
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class MainActivity : ComponentActivity() {
    private lateinit var settingsManager: SettingsManager
    private val mediaVM: com.omoda.lanc.media.MediaControllerViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        settingsManager = SettingsManager(this)
        
        Handler(Looper.getMainLooper()).postDelayed({
            injectPermissions()
        }, 2000)

        startPeriodicPermissionCheck()
        generateDefaultWallpapers()
        checkAndRequestPermissions()

        // Varsayılan Home rolü kontrolü (AAOS'de çalışmadığı için kaldırıldı, ADB üzerinden yapılacak)
        // checkAndRequestHomeRole()

        // Arka plan servisini başlat (Yeni asistan servisi)
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
        var currentScreen by remember { mutableStateOf("home") }

        // Sistem Geri Tuşu/Jesti Yönetimi
        BackHandler(enabled = currentScreen != "home") {
            currentScreen = "home"
        }

        Box(
            Modifier
                .fillMaxSize()
                .pointerInput(Unit) {
                    detectDragGestures { change, dragAmount ->
                        change.consume()
                        // AAOS Geri Jesti: En sol kenardan sağa doğru çekme
                        if (change.position.x < 150 && dragAmount.x > 30) {
                            if (currentScreen != "home") {
                                currentScreen = "home"
                            }
                        }
                        // AAOS Ana Sayfa Jesti: Alt kenardan yukarı çekme
                        if (change.position.y > (size.height - 150) && dragAmount.y < -30) {
                            if (currentScreen != "home") {
                                currentScreen = "home"
                            }
                        }
                    }
                }
        ) {
            when (currentScreen) {
                "home" -> HomeScreen(onOpenSettings = { currentScreen = "settings" })
                "settings" -> SettingsScreen(onBack = { currentScreen = "home" })
            }
        }
    }

    @OptIn(ExperimentalFoundationApi::class)
    @Composable
    fun HomeScreen(onOpenSettings: () -> Unit) {
        val context = androidx.compose.ui.platform.LocalContext.current
        val configuration = androidx.compose.ui.platform.LocalConfiguration.current
        val smallestWidth = configuration.smallestScreenWidthDp
        val isHandheld = !com.omoda.lanc.AssistantApplication.isCarHardware && smallestWidth < 600
        
        // Mobil için sayfa başına öğe sayısını ayarla
        val itemsPerPage = if (isHandheld) 8 else 10

        var launcherPages by remember { mutableStateOf(buildLauncherPages(itemsPerPage)) }
        val pagerState = rememberPagerState { launcherPages.size }
        val scope = rememberCoroutineScope()
        
        // Uygulamalar değiştikçe veya tıklandıkça listeyi yenile
        LaunchedEffect(itemsPerPage) {
            launcherPages = buildLauncherPages(itemsPerPage)
        }

        // Duvar Kağıdı Yönetimi (Manifesto v9.3.0)
        val internalWallpapers = listOf(
            R.mipmap.bg_1, 
            R.mipmap.bg_2,
            R.drawable.wp_purple,
            R.drawable.wp_flare,
            R.drawable.wp_red,
            R.drawable.wp_nature
        ) 
        var externalWallpapers by remember { mutableStateOf(emptyList<File>()) }
        var wallpaperIdx by remember { mutableStateOf(settingsManager.wallpaperIdx) }

        LaunchedEffect(wallpaperIdx) {
            settingsManager.wallpaperIdx = wallpaperIdx
        }

        LaunchedEffect(Unit) {
            val dir = File("/sdcard/Omoda/Wallpapers")
            if (dir.exists()) {
                externalWallpapers = dir.listFiles { _, name -> 
                    name.lowercase().endsWith(".jpg") || name.lowercase().endsWith(".png") || name.lowercase().endsWith(".webp")
                }?.toList() ?: emptyList()
            }
        }

        val totalCount = internalWallpapers.size + externalWallpapers.size
        val currentIdx = wallpaperIdx % if (totalCount > 0) totalCount else 1
        
        val leftPaddingVal = when {
            isHandheld -> 12.dp
            smallestWidth < 800 -> 60.dp
            else -> 235.dp
        }
        val topPaddingVal = when {
            isHandheld -> 12.dp
            smallestWidth < 800 -> 40.dp
            else -> 120.dp
        }
        val gridColumnsVal = when {
            isHandheld -> 4
            smallestWidth < 800 -> 4
            else -> 5
        }
        
        val painter: Painter = if (currentIdx < internalWallpapers.size) {
            painterResource(internalWallpapers[currentIdx])
        } else {
            val file = externalWallpapers[currentIdx - internalWallpapers.size]
            val bitmap = BitmapFactory.decodeFile(file.absolutePath)
            if (bitmap != null) BitmapPainter(bitmap.asImageBitmap()) 
            else painterResource(internalWallpapers[0])
        }

        // AssistantApplication'dan gelen canlı veriler
        val lastAIResponse by AssistantApplication.assistantResponse.collectAsState()
        val recognizedText by AssistantApplication.recognizedText.collectAsState()
        val status by AssistantApplication.status.collectAsState()
        val isListening by AssistantApplication.isListening.collectAsState()

        Box(Modifier.fillMaxSize()) {
            // Arka Plan
            Image(
                painter = painter,
                contentDescription = null,
                modifier = Modifier.fillMaxSize(),
                contentScale = ContentScale.Crop
            )
            Box(Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.5f)))

            // Ana İçerik (Launcher Bölümü - Sol Taraf)
            Row(Modifier.fillMaxSize()) {
                Column(Modifier.weight(1f).fillMaxHeight()) {
                    // Medya Widget (Üstte)
                    com.omoda.lanc.ui.components.MediaControlWidget(mediaVM)
                    
                    Box(Modifier.weight(1f)) {
                        HorizontalPager(
                            state = pagerState,
                            modifier = Modifier.fillMaxSize()
                        ) { pIdx ->
                            LazyVerticalGrid(
                                columns = GridCells.Fixed(gridColumnsVal), 
                                modifier = Modifier
                                    .fillMaxSize()
                                    .padding(
                                        start = leftPaddingVal, 
                                        end = if(isHandheld) 60.dp else 80.dp, 
                                        top = if(isHandheld) 0.dp else topPaddingVal, 
                                        bottom = 40.dp
                                    ),
                                verticalArrangement = Arrangement.Top,
                                horizontalArrangement = Arrangement.spacedBy(if(isHandheld) 4.dp else 10.dp),
                                userScrollEnabled = false
                            ) {
                                items(launcherPages[pIdx]) { item ->
                                    GlassIcon(
                                        item = item,
                                        onClick = { 
                                            if (item.packageName == "internal.wallpaper") {
                                                wallpaperIdx++
                                            } else {
                                                launchApp(item)
                                                // Tıklama oranını artır ve sayfaları yeniden oluştur
                                                item.packageName?.let { pkg ->
                                                    settingsManager.incrementAppClickCount(pkg)
                                                    launcherPages = buildLauncherPages(itemsPerPage)
                                                }
                                            }
                                        }
                                    )
                                }
                            }
                        }

                        // Navigasyon Bar (v9.0.0): Alt ortada iki adet yatay ince çizgi
                        Row(
                            Modifier
                                .align(Alignment.BottomCenter)
                                .padding(bottom = 10.dp)
                                .width(if(isHandheld) 120.dp else 200.dp),
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            // Sol Çizgi: 1. Sayfa (Home)
                            Box(
                                Modifier
                                    .weight(1f)
                                    .height(4.dp)
                                    .clip(RoundedCornerShape(2.dp))
                                    .background(if(pagerState.currentPage == 0) OmodaCyan else Color.White.copy(0.3f))
                                    .clickable { scope.launch { pagerState.animateScrollToPage(0) } }
                            )
                            // Sağ Çizgi: 2. Sayfa ve sonrası
                            Box(
                                Modifier
                                    .weight(1f)
                                    .height(4.dp)
                                    .clip(RoundedCornerShape(2.dp))
                                    .background(if(pagerState.currentPage > 0) OmodaCyan else Color.White.copy(0.3f))
                                    .clickable { scope.launch { if(launcherPages.size > 1) pagerState.animateScrollToPage(1) } }
                            )
                        }

                        // Görünmez alt tetikleyici (Manifesto v9.3.0)
                        Box(
                            Modifier
                                .align(Alignment.BottomCenter)
                                .size(300.dp, 60.dp)
                                .zIndex(1f)
                                .combinedClickable(
                                    onClick = { }, 
                                    onDoubleClick = { wallpaperIdx++ },
                                    onLongClick = onOpenSettings
                                )
                        )
                    }
                }
            }

            // SMART HUD (v9.2.0) - Sağ Alt AI Feedback (Ana Box içinde)
            val hudWidth = when {
                isHandheld -> 180.dp
                smallestWidth < 800 -> 240.dp
                else -> 320.dp
            }
            // AssistantApplication'dan gelen canlı veriler
            val currentMode by AssistantApplication.currentMode.collectAsState()
            Box(
                Modifier
                    .align(Alignment.BottomEnd)
                    .padding(end = 8.dp, bottom = if(isHandheld) 8.dp else if(smallestWidth < 800) 20.dp else 100.dp)
                    .width(hudWidth)
                    .clip(RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp))
                    .background(Color.Black.copy(0.7f))
                    .border(1.dp, OmodaCyan.copy(0.3f), RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp))
                    .padding(15.dp)
            ) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Text("AI", color = Color.Black, fontSize = 10.sp, fontWeight = FontWeight.Bold, 
                                modifier = Modifier.background(OmodaCyan, RoundedCornerShape(4.dp)).padding(horizontal = 4.dp))
                            Spacer(Modifier.width(8.dp))
                            Text(status, color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Medium)
                        }
                        
                        // Mod Değiştirici (ASİSTAN / SOHBET)
                        Row(
                            modifier = Modifier
                                .clip(RoundedCornerShape(8.dp))
                                .background(Color.DarkGray.copy(0.5f))
                                .padding(2.dp)
                        ) {
                            Text(
                                text = "ASİST",
                                color = if (currentMode == "ASISTANT") Color.Black else Color.White,
                                fontSize = 10.sp,
                                fontWeight = FontWeight.Bold,
                                modifier = Modifier
                                    .clip(RoundedCornerShape(6.dp))
                                    .background(if (currentMode == "ASISTANT") OmodaCyan else Color.Transparent)
                                    .clickable { 
                                        AssistantApplication.currentMode.value = "ASISTANT"
                                        AssistantApplication.saveCurrentConfig()
                                    }
                                    .padding(horizontal = 6.dp, vertical = 3.dp)
                            )
                            Text(
                                text = "CHAT",
                                color = if (currentMode == "CHAT") Color.Black else Color.White,
                                fontSize = 10.sp,
                                fontWeight = FontWeight.Bold,
                                modifier = Modifier
                                    .clip(RoundedCornerShape(6.dp))
                                    .background(if (currentMode == "CHAT") Color(0xFFF3B14B) else Color.Transparent)
                                    .clickable { 
                                        AssistantApplication.currentMode.value = "CHAT"
                                        AssistantApplication.saveCurrentConfig()
                                    }
                                    .padding(horizontal = 6.dp, vertical = 3.dp)
                            )
                        }
                    }
                    
                    if (recognizedText.isNotBlank()) {
                        Text(recognizedText, color = Color.Gray, fontSize = 14.sp)
                    }
                    
                    if (lastAIResponse.isNotBlank()) {
                        Text(lastAIResponse, color = OmodaCyan, fontSize = 16.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }

            // Hızlı Ayarlar / Asistan Tetikleyici (Küçük Yüzen Butonlar)
            Column(
                Modifier
                    .align(Alignment.CenterEnd)
                    .padding(end = 20.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                FloatingActionButton(
                    onClick = {
                        val action = if (isListening) "com.omoda.assistant.STOP_LISTENING" else "com.omoda.assistant.START_LISTENING"
                        context.sendBroadcast(android.content.Intent(action))
                    },
                    containerColor = if(isListening) Color.Red else OmodaCyan,
                    contentColor = Color.Black,
                    shape = CircleShape
                ) {
                    Icon(painterResource(android.R.drawable.ic_btn_speak_now), null)
                }

                FloatingActionButton(
                    onClick = { wallpaperIdx++ },
                    containerColor = Color.DarkGray.copy(alpha = 0.8f),
                    contentColor = OmodaCyan,
                    shape = CircleShape
                ) {
                    Icon(Icons.Default.Image, contentDescription = "Duvar Kağıdı Değiştir")
                }

                FloatingActionButton(
                    onClick = onOpenSettings,
                    containerColor = Color.DarkGray,
                    contentColor = Color.White,
                    shape = CircleShape
                ) {
                    Icon(Icons.Default.Settings, null)
                }
            }
        }
    }

    @Composable
    fun SensorRow(label: String, value: String, valueColor: Color) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(label, color = Color.LightGray, fontSize = 11.sp)
            Text(value, color = valueColor, fontSize = 12.sp, fontWeight = FontWeight.Bold)
        }
    }

    private fun buildLauncherPages(itemsPerPage: Int = 10): List<List<LauncherItem>> {
        val fixedApps = listOf(
            LauncherItem("m","Medya",R.mipmap.home_app_media_n,"com.chery.media"), 
            LauncherItem("p","Telefon",R.mipmap.home_app_phone_n,"com.chery.dialer"), 
            LauncherItem("s","Ayarlar",R.mipmap.home_app_setup_n,"com.chery.settings"), 
            LauncherItem("store", "App Store", R.drawable.launcher_update_icon_bg, "internal.appstore"),
            LauncherItem("wp", "Duvar Kağıdı", R.mipmap.home_app_pic_n, "internal.wallpaper"),
            LauncherItem("cs","Araç",R.mipmap.home_app_carinfo_n,"com.chery.carsettings"), 
            LauncherItem("hvac","Klima",R.mipmap.home_app_carinfo_n,"com.chery.hvac"),
            LauncherItem("v","Video",R.mipmap.home_app_video_n,"com.chery.video"), 
            LauncherItem("gd","Kılavuz",R.mipmap.home_app_manual_n,"com.chery.help"), 
            LauncherItem("aa","Auto",R.mipmap.home_app_android_auto_n,"com.yfve.car.androidauto"), 
            LauncherItem("cp","CarPlay",R.mipmap.home_app_apple_carplay_n,"com.yfve.car.carplay")
        )
        
        // Tüm yüklü uygulamaları getir (Sistem uygulamaları dahil)
        val mainIntent = Intent(Intent.ACTION_MAIN, null).apply { addCategory(Intent.CATEGORY_LAUNCHER) }
        val resolvedInfos = packageManager.queryIntentActivities(mainIntent, 0)
        
        val allApps = resolvedInfos.map { res ->
            val pkg = res.activityInfo.packageName
            val title = res.loadLabel(packageManager).toString()
            val icon = res.loadIcon(packageManager)
            LauncherItem(
                id = pkg,
                title = title,
                packageName = pkg,
                iconDrawable = icon,
                clickCount = settingsManager.getAppClickCount(pkg)
            )
        }.filter { app -> 
            // Sabit listede olmayanları ayır
            fixedApps.none { it.packageName == app.packageName } 
        }.sortedByDescending { it.clickCount }

        val pages = mutableListOf<List<LauncherItem>>()
        
        // Sayfalara böl
        pages.add(fixedApps.take(itemsPerPage)) 
        
        val remainingFixed = if (fixedApps.size > itemsPerPage) fixedApps.drop(itemsPerPage) else emptyList()
        val otherAppsCombined = remainingFixed + allApps
        
        otherAppsCombined.chunked(itemsPerPage).forEach { chunk ->
            pages.add(chunk)
        }

        return pages
    }

    private fun launchApp(item: LauncherItem) {
        if (item.packageName == "internal.appstore") {
            // App Store direkt Ayarlar altındaki bölüme veya ayrı bir ekrana yönlendirilebilir.
            // Şimdilik Ayarlar ekranını açacak, oradaki AppStoreSection görünür olacak.
            val intent = Intent(this, MainActivity::class.java).apply {
                putExtra("TARGET_SCREEN", "SETTINGS")
                putExtra("TARGET_SECTION", "APP_STORE")
            }
            startActivity(intent)
            return
        }
        item.packageName?.let { p -> 
            val intent = packageManager.getLaunchIntentForPackage(p)
            if (intent != null) {
                startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
            }
        }
    }

    private fun injectPermissions() {
        if (!settingsManager.isAutoTasksEnabled) {
            Log.d("OMODA_SYS", "Otomatik Görevler Kapalı")
            return
        }

        val baseCmds = mutableListOf(
            // Kritik İzinler
            "appops set $packageName SYSTEM_ALERT_WINDOW allow",
            "appops set $packageName GET_USAGE_STATS allow",
            "appops set $packageName WRITE_SECURE_SETTINGS allow",
            
            // Global Ayarlar (AAOS için serbest pencere vb.)
            "settings put global enable_freeform_support 1",
            "settings put global force_resizable_activities 1",
            "settings put global hidden_api_policy 1",
            "settings put global hidden_api_policy_pre_p_apps 1",
            "settings put global hidden_api_policy_p_apps 1",
            
            // Runtime İzinleri
            "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.RECORD_AUDIO",
            "pm grant $packageName android.permission.READ_LOGS",
            "pm grant $packageName android.permission.ACCESS_FINE_LOCATION",
            "pm grant $packageName android.permission.ACCESS_COARSE_LOCATION",
            "pm grant $packageName android.permission.PACKAGE_USAGE_STATS",
            "pm grant $packageName android.permission.DUMP",
            "pm grant $packageName android.car.permission.CAR_SPEED",
            "pm grant $packageName android.car.permission.CAR_INFO",
            "pm grant $packageName android.car.permission.CAR_ENERGY",
            "pm grant $packageName android.car.permission.CAR_EXTERIOR_ENVIRONMENT",
            "pm grant $packageName android.car.permission.CAR_POWERTRAIN"
        )
        
        if (com.omoda.lanc.AssistantApplication.isTailscaleEnabled.value) {
            // Kullanıcı isteğiyle kapatıldı (Ağı bozuyor, Tailscale'in kendi uygulaması kullanılacak)
            // baseCmds.add("am broadcast -n com.tailscale.ipn/.IPNReceiver -a com.tailscale.ipn.CONNECT_VPN")
        }
        
        baseCmds.forEach { exec(it) }

        // Notification Listener (Media Monitoring) - Sürüm 10+ için tam yetki
        val notifTarget = "$packageName/com.omoda.lanc.service.MediaNotificationListener"
        exec("cmd notification allow_listener $notifTarget")
        
        // Logcat üzerinden takip için
        Log.d("OMODA_SYS", "Tüm sistem izinleri ve Launcher kurulumu ADB üzerinden tetiklendi.")
    }

    private fun startPeriodicPermissionCheck() {
        val h = Handler(Looper.getMainLooper())
        val checkInterval = 10 * 1000L // 10 saniyede bir kontrol et
        val checker = object : Runnable {
            override fun run() {
                if (settingsManager.isAutoTasksEnabled) {
                    // İzin durumunu kontrol edip log paneline yazalım
                    val recordGranted = ContextCompat.checkSelfPermission(this@MainActivity, Manifest.permission.RECORD_AUDIO) == PackageManager.PERMISSION_GRANTED
                    val dumpGranted = ContextCompat.checkSelfPermission(this@MainActivity, Manifest.permission.DUMP) == PackageManager.PERMISSION_GRANTED
                    
                    if (!recordGranted || !dumpGranted) {
                        AssistantApplication.addLog("Eksik İzinler Var! Mikrofon: $recordGranted, DUMP: $dumpGranted")
                        AssistantApplication.addLog("ADB üzerinden izinler otomatik enjekte ediliyor...")
                    } else {
                        // Her 10sn'de bir log kalabalığı yapmamak için sadece değişiklik durumunda yazabiliriz,
                        // ama kullanıcının isteği üzerine onay logu bırakıyoruz.
                        AssistantApplication.addLog("Sistem İzinleri: TAMAM")
                    }
                    
                    injectPermissions()
                }
                h.postDelayed(this, checkInterval)
            }
        }
        h.postDelayed(checker, 2000) // İlk çalıştırma 2sn sonra
    }

    private fun generateDefaultWallpapers() {
        val dir = File("/sdcard/Omoda/Wallpapers")
        if (!dir.exists()) dir.mkdirs()
        
        // Eğer klasörde zaten resim varsa tekrar üretme
        if ((dir.listFiles()?.size ?: 0) > 0) return

        val width = 1920
        val height = 720 // AAOS standard geniş ekran çözünürlüğü (Semidrive uyumlu)

        val configs = listOf(
            // CarPlay Style (Deep Blue/Purple Gradient)
            listOf(0xFF000000.toInt(), 0xFF1A237E.toInt(), 0xFF4A148C.toInt()),
            // Android Auto Style (Teal/Dark Gray)
            listOf(0xFF000000.toInt(), 0xFF004D40.toInt(), 0xFF212121.toInt()),
            // Omoda Cyan Style (Black/Cyan)
            listOf(0xFF000000.toInt(), 0xFF006064.toInt(), 0xFF00B8D4.toInt()),
            // Sunset Drive (Dark Orange/Purple)
            listOf(0xFF212121.toInt(), 0xFFBF360C.toInt(), 0xFF311B92.toInt()),
            // Midnight OLED (Pure Black/Dark Blue)
            listOf(0xFF000000.toInt(), 0xFF0D47A1.toInt(), 0xFF000000.toInt())
        )

        configs.forEachIndexed { index, colors ->
            val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(bitmap)
            val paint = Paint()
            
            val shader = LinearGradient(
                0f, 0f, width.toFloat(), height.toFloat(),
                colors.toIntArray(),
                null,
                Shader.TileMode.CLAMP
            )
            paint.shader = shader
            canvas.drawRect(0f, 0f, width.toFloat(), height.toFloat(), paint)

            try {
                val file = File(dir, "wallpaper_gen_${index + 1}.png")
                val out = FileOutputStream(file)
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, out)
                out.flush()
                out.close()
                Log.d("WallpaperGen", "Üretildi: ${file.absolutePath}")
            } catch (e: Exception) {
                Log.e("WallpaperGen", "Hata: ${e.message}")
            }
        }
    }

    private fun exec(c: String) {
        val intent = Intent(this, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
            action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", c)
        }
        ContextCompat.startForegroundService(this, intent)
    }

    private fun checkAndRequestHomeRole() {
        // AAOS'de bu ekran OEM tarafından kısıtlanmıştır (buton pasiftir). 
        // Bu yüzden Ayarlar sayfasındaki ADB yöntemi (pm disable-user --user 0 com.chery.launcher) kullanılmalıdır.
    }

    private fun checkAndRequestPermissions() {
        val permissions = arrayOf(
            Manifest.permission.RECORD_AUDIO,
            Manifest.permission.READ_EXTERNAL_STORAGE,
            Manifest.permission.WRITE_EXTERNAL_STORAGE,
            Manifest.permission.ACCESS_FINE_LOCATION,
            Manifest.permission.ACCESS_COARSE_LOCATION
        )

        val neededPermissions = permissions.filter {
            ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED
        }

        if (neededPermissions.isNotEmpty()) {
            ActivityCompat.requestPermissions(this, neededPermissions.toTypedArray(), 1001)
        }
    }
}
