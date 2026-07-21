package com.omoda.lanc

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.graphics.BitmapFactory
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.graphics.painter.Painter
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
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
import com.omoda.lanc.ui.theme.Omoda5NextGenTheme
import com.omoda.lanc.ui.theme.OmodaCyan
import kotlinx.coroutines.*
import java.io.File
import androidx.compose.foundation.ExperimentalFoundationApi

class MainActivity : ComponentActivity() {
    private val mediaVM: com.omoda.lanc.media.MediaControllerViewModel by viewModels()
    private lateinit var adbMonitor: com.omoda.lanc.network.AdbConnectionMonitor
    private val currentScreenState = mutableStateOf("home")

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        intent?.getStringExtra("TARGET_SCREEN")?.lowercase()?.let {
            if (it in listOf("home", "settings", "dashboard", "sensors")) {
                currentScreenState.value = it
            }
        }

        showVersionToast()

        Handler(Looper.getMainLooper()).postDelayed({
            injectPermissions()
        }, 2000)

        startPeriodicPermissionCheck()
        generateDefaultWallpapers()
        checkAndRequestPermissions()

        adbMonitor = com.omoda.lanc.network.AdbConnectionMonitor(this).apply { start() }

        val serviceIntent = Intent(this, com.omoda.lanc.service.VoiceAssistantService::class.java)
        ContextCompat.startForegroundService(this, serviceIntent)

        setContent {
            Omoda5NextGenTheme {
                MainNavigation()
            }
        }
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        intent.getStringExtra("TARGET_SCREEN")?.lowercase()?.let {
            if (it in listOf("home", "settings", "dashboard", "sensors")) {
                currentScreenState.value = it
            }
        }
    }

    override fun onDestroy() {
        if (::adbMonitor.isInitialized) adbMonitor.stop()
        super.onDestroy()
    }

    @Composable
    fun MainNavigation() {
        var currentScreen by currentScreenState

        BackHandler(enabled = currentScreen != "home") {
            if (currentScreen == "settings") {
                AssistantApplication.saveCurrentConfig()
            }
            currentScreen = "home"
        }

        Box(
            Modifier
                .fillMaxSize()
                .pointerInput(Unit) {
                    detectDragGestures { change, dragAmount ->
                        change.consume()
                        if (change.position.x < 150 && dragAmount.x > 30) {
                            if (currentScreen != "home") currentScreen = "home"
                        }
                        if (change.position.y > (size.height - 150) && dragAmount.y < -30) {
                            if (currentScreen != "home") currentScreen = "home"
                        }
                    }
                }
        ) {
            when (currentScreen) {
                "home" -> HomeScreen(
                    onOpenSettings = { currentScreen = "settings" },
                    onOpenDashboard = { currentScreen = "dashboard" },
                    onOpenSensors = { currentScreen = "sensors" }
                )
                "settings" -> SettingsScreen(onBack = { currentScreen = "home" })
                "dashboard" -> com.omoda.lanc.ui.screens.DashboardScreen(
                    viewModel = mediaVM,
                    onBack = { currentScreen = "home" }
                )
                "sensors" -> com.omoda.lanc.ui.screens.SensorMonitorScreen(onBack = { currentScreen = "home" })
            }
        }
    }

    @OptIn(ExperimentalFoundationApi::class)
    @Composable
    fun HomeScreen(onOpenSettings: () -> Unit, onOpenDashboard: () -> Unit, onOpenSensors: () -> Unit) {
        val context = androidx.compose.ui.platform.LocalContext.current
        val currentMode by GlobalState.currentMode.collectAsState()
        val configuration = androidx.compose.ui.platform.LocalConfiguration.current
        val smallestWidth = configuration.smallestScreenWidthDp
        val isHandheld = !AssistantApplication.isCarHardware && smallestWidth < 600
        
        val gridColumnsVal = if (isHandheld) 4 else 5
        val itemsPerPage = if (isHandheld) 8 else 10 

        var launcherPages by remember { mutableStateOf<List<List<LauncherItem>>>(emptyList()) }
        val pagerState = rememberPagerState { launcherPages.size }
        
        LaunchedEffect(itemsPerPage) {
            withContext(Dispatchers.IO) {
                val pages = buildLauncherPages(itemsPerPage)
                withContext(Dispatchers.Main) {
                    launcherPages = pages
                }
            }
        }

        val internalWallpapers = listOf(
            R.mipmap.bg_1, R.mipmap.bg_2, R.drawable.wp_purple,
            R.drawable.wp_flare, R.drawable.wp_red, R.drawable.wp_nature
        ) 
        var externalWallpapers by remember { mutableStateOf(emptyList<File>()) }
        val wallpaperIdx by AssistantApplication.wallpaperIdx.collectAsState()

        LaunchedEffect(Unit) {
            val dir = File("/sdcard/Omoda/Wallpapers")
            if (dir.exists()) {
                externalWallpapers = dir.listFiles { _, name -> 
                    val n = name.lowercase()
                    n.endsWith(".jpg") || n.endsWith(".png") || n.endsWith(".webp")
                }?.toList() ?: emptyList()
            }
        }

        val totalCount = internalWallpapers.size + externalWallpapers.size
        val currentIdx = if (totalCount > 0) wallpaperIdx % totalCount else 0
        
        val leftPaddingVal = if (isHandheld) 16.dp else 235.dp
        val topPaddingVal = if (isHandheld) 8.dp else 60.dp 
        val bottomPaddingVal = if (isHandheld) 60.dp else 80.dp
        val fabSize = if (isHandheld) 48.dp else 64.dp
        val fabSpacing = if (isHandheld) 10.dp else 16.dp

        val painter: Painter = if (currentIdx < internalWallpapers.size) {
            painterResource(internalWallpapers[currentIdx])
        } else if (externalWallpapers.isNotEmpty()) {
            val file = externalWallpapers[currentIdx - internalWallpapers.size]
            val bitmap = BitmapFactory.decodeFile(file.absolutePath)
            if (bitmap != null) BitmapPainter(bitmap.asImageBitmap()) 
            else painterResource(internalWallpapers[0])
        } else {
            painterResource(internalWallpapers[0])
        }

        val lastAIResponse by GlobalState.assistantResponse.collectAsState()
        val recognizedText by GlobalState.recognizedText.collectAsState()
        val status by GlobalState.status.collectAsState()
        val isListening by GlobalState.isListening.collectAsState()
        val proactiveWarning by GlobalState.proactiveWarning.collectAsState()
        val isRemoteAdbConnected by AssistantApplication.isRemoteAdbConnected.collectAsState()
        val downloadProgressText by AssistantApplication.downloadProgressText.collectAsState()
        val isVpnConnected by GlobalState.isRadioMode.collectAsState() // Simplified usage

        LaunchedEffect(proactiveWarning) {
            val warnText = proactiveWarning
            if (!warnText.isNullOrEmpty() && warnText != "DISMISSED") {
                val intent = Intent("com.omoda.assistant.SPEAK").apply { putExtra("text", warnText) }
                context.sendBroadcast(intent)
            }
        }

        Box(Modifier.fillMaxSize()) {
            Image(painter = painter, contentDescription = null, modifier = Modifier.fillMaxSize(), contentScale = ContentScale.Crop)

            if (isRemoteAdbConnected) {
                val infiniteTransition = rememberInfiniteTransition()
                val alpha by infiniteTransition.animateFloat(initialValue = 0.4f, targetValue = 1.0f, animationSpec = infiniteRepeatable(tween(1000, easing = LinearEasing), RepeatMode.Reverse))
                Box(modifier = Modifier.align(Alignment.TopEnd).padding(top = 20.dp, end = 20.dp).clip(RoundedCornerShape(8.dp)).background(Color(0xFFF3B14B).copy(alpha = alpha)).border(1.dp, Color.White.copy(alpha = alpha), RoundedCornerShape(8.dp)).padding(horizontal = 12.dp, vertical = 6.dp).zIndex(99f)) {
                    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                        Box(modifier = Modifier.size(8.dp).clip(CircleShape).background(Color.Red))
                        Text(text = "UZAK ADB", color = Color.Black, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }
            Box(Modifier.fillMaxSize().background(Color.Black.copy(alpha = 0.5f)))

            Column(Modifier.fillMaxSize()) {
                com.omoda.lanc.ui.components.MediaControlWidget(mediaVM)
                
                Box(Modifier.weight(1f)) {
                    HorizontalPager(state = pagerState, modifier = Modifier.fillMaxSize()) { pIdx ->
                        LazyVerticalGrid(
                            columns = GridCells.Fixed(gridColumnsVal), 
                            modifier = Modifier.fillMaxSize().padding(start = leftPaddingVal, end = if(isHandheld) 16.dp else 40.dp, top = topPaddingVal, bottom = bottomPaddingVal),
                            verticalArrangement = Arrangement.spacedBy(if(isHandheld) 10.dp else 20.dp),
                            horizontalArrangement = Arrangement.spacedBy(if(isHandheld) 8.dp else 10.dp),
                            userScrollEnabled = false
                        ) {
                            items(launcherPages[pIdx]) { item ->
                                GlassIcon(item = item, onClick = { 
                                    if (item.packageName == "internal.wallpaper") {
                                        AssistantApplication.wallpaperIdx.value++
                                        AssistantApplication.saveCurrentConfig()
                                    } else if (item.packageName == "internal.dashboard") {
                                        onOpenDashboard()
                                    } else {
                                        launchApp(item)
                                        item.packageName?.let { pkg ->
                                            val counts = AssistantApplication.appClickCounts.value.toMutableMap()
                                            counts[pkg] = (counts[pkg] ?: 0) + 1
                                            AssistantApplication.appClickCounts.value = counts
                                            AssistantApplication.saveCurrentConfig()
                                            launcherPages = buildLauncherPages(itemsPerPage)
                                        }
                                    }
                                })
                            }
                        }
                    }

                    if (isHandheld) {
                        LazyRow(
                            modifier = Modifier
                                .align(Alignment.BottomStart)
                                .fillMaxWidth()
                                .padding(start = 16.dp, bottom = 12.dp, end = 16.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(fabSpacing)
                        ) {
                            item {
                                // Dinleme Butonu
                                FloatingActionButton(
                                    onClick = {
                                        val action = if (isListening) "com.omoda.assistant.STOP_LISTENING" else "com.omoda.assistant.START_LISTENING"
                                        context.sendBroadcast(android.content.Intent(action))
                                    },
                                    containerColor = if(isListening) Color.Red else OmodaCyan,
                                    contentColor = Color.Black, shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { Icon(painterResource(android.R.drawable.ic_btn_speak_now), null, modifier = Modifier.size(20.dp)) }
                            }
                            item {
                                // MOD DEĞİŞTİRME BUTONU (CHAT / ASISTANT)
                                FloatingActionButton(
                                    onClick = {
                                        com.omoda.lanc.core.GlobalState.currentMode.value = if (currentMode == "CHAT") "ASISTANT" else "CHAT"
                                        AssistantApplication.saveCurrentConfig()
                                    },
                                    containerColor = if (currentMode == "CHAT") Color(0xFF9C27B0) else Color(0xFF607D8B),
                                    contentColor = Color.White, shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Text(text = if (currentMode == "CHAT") "CHAT" else "ASIST", fontSize = 9.sp, fontWeight = FontWeight.Bold) 
                                }
                            }
                            item {
                                // HEY OMODA TOGGLE BUTONU
                                val isWakeWordActive by GlobalState.isWakeWordEnabled.collectAsState()
                                FloatingActionButton(
                                    onClick = {
                                        GlobalState.isWakeWordEnabled.value = !isWakeWordActive
                                        AssistantApplication.saveCurrentConfig()
                                    },
                                    containerColor = if (isWakeWordActive) Color(0xFF009688) else Color.DarkGray.copy(alpha = 0.6f),
                                    contentColor = if (isWakeWordActive) Color.Black else Color.White,
                                    shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        Text("HEY", fontSize = 8.sp, fontWeight = FontWeight.Bold)
                                        Text(if(isWakeWordActive) "AÇIK" else "KAPALI", fontSize = 7.sp)
                                    }
                                }
                            }
                            item {
                                FloatingActionButton(
                                    onClick = { AssistantApplication.wallpaperIdx.value++; AssistantApplication.saveCurrentConfig() },
                                    containerColor = Color.DarkGray.copy(alpha = 0.8f),
                                    contentColor = OmodaCyan, shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { Icon(Icons.Default.Home, contentDescription = "WP", modifier = Modifier.size(20.dp)) }
                            }
                            item {
                                FloatingActionButton(
                                    onClick = onOpenSettings,
                                    containerColor = Color.DarkGray,
                                    contentColor = Color.White, shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { Icon(Icons.Default.Settings, null, modifier = Modifier.size(20.dp)) }
                            }
                            item {
                                // SENSÖR BUTONU
                                FloatingActionButton(
                                    onClick = onOpenSensors,
                                    containerColor = Color(0xFF2196F3).copy(alpha = 0.8f),
                                    contentColor = Color.White,
                                    shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        Text("VERİ", fontSize = 8.sp, fontWeight = FontWeight.Bold)
                                        Icon(Icons.Default.Info, null, modifier = Modifier.size(10.dp))
                                    }
                                }
                            }
                            item {
                                // VHAL SİMÜLATÖR BUTONU
                                val isSimMode by GlobalState.isSimulationMode.collectAsState()
                                FloatingActionButton(
                                    onClick = {
                                        val newVal = !isSimMode
                                        GlobalState.isSimulationMode.value = newVal
                                        AssistantApplication.addLogStatic(if (newVal) "VHAL SİMÜLATÖR AKTİF" else "VHAL SİMÜLATÖR KAPALI")
                                        AssistantApplication.saveCurrentConfig()
                                    },
                                    containerColor = if (isSimMode) Color(0xFFE91E63) else Color.DarkGray.copy(alpha = 0.6f),
                                    contentColor = if (isSimMode) Color.White else Color.White.copy(0.7f),
                                    shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        Text("VHAL", fontSize = 8.sp, fontWeight = FontWeight.Bold)
                                        Text(if(isSimMode) "AÇIK" else "KAPALI", fontSize = 7.sp)
                                    }
                                }
                            }
                            item {
                                // MQTT KÖPRÜ BUTONU
                                val isBridgeMode by GlobalState.isBridgeMode.collectAsState()
                                FloatingActionButton(
                                    onClick = {
                                        val newVal = !isBridgeMode
                                        GlobalState.isBridgeMode.value = newVal
                                        AssistantApplication.addLogStatic(if (newVal) "MQTT KÖPRÜ AKTİF" else "MQTT KÖPRÜ KAPALI")
                                        AssistantApplication.saveCurrentConfig()
                                    },
                                    containerColor = if (isBridgeMode) Color(0xFFF3B14B) else Color.DarkGray.copy(alpha = 0.6f),
                                    contentColor = if (isBridgeMode) Color.Black else Color.White,
                                    shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        Text("KÖPRÜ", fontSize = 8.sp, fontWeight = FontWeight.Bold)
                                        Text(if(isBridgeMode) "AÇIK" else "KAPALI", fontSize = 7.sp)
                                    }
                                }
                            }
                            item {
                                // ADB / HERMES BRIDGE PANEL BUTONU
                                FloatingActionButton(
                                    onClick = {
                                        try {
                                            val intent = Intent(context, com.hermesandroid.bridge.BridgeActivity::class.java)
                                            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                            context.startActivity(intent)
                                        } catch (e: Exception) {
                                            AssistantApplication.addLogStatic("HATA: Bridge Paneli Açılamadı")
                                        }
                                    },
                                    containerColor = Color(0xFF673AB7),
                                    contentColor = Color.White,
                                    shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        Text("ADB", fontSize = 8.sp, fontWeight = FontWeight.Bold)
                                        Text("PANEL", fontSize = 7.sp)
                                    }
                                }
                            }
                            item {
                                // MQTT TOGGLE BUTONU
                                val isMqttEnabled by AssistantApplication.mqttEnabled.collectAsState()
                                FloatingActionButton(
                                    onClick = {
                                        AssistantApplication.mqttEnabled.value = !isMqttEnabled
                                        AssistantApplication.saveCurrentConfig()
                                    },
                                    containerColor = if (isMqttEnabled) Color(0xFF4CAF50) else Color.DarkGray.copy(alpha = 0.6f),
                                    contentColor = if (isMqttEnabled) Color.Black else Color.White,
                                    shape = CircleShape, modifier = Modifier.size(fabSize)
                                ) { 
                                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                        Text("MQTT", fontSize = 8.sp, fontWeight = FontWeight.Bold)
                                        Text(if(isMqttEnabled) "AÇIK" else "KAPALI", fontSize = 7.sp)
                                    }
                                }
                            }
                            item {
                                Column {
                                    val contextInner = androidx.compose.ui.platform.LocalContext.current
                                    val pInfo = remember { try { contextInner.packageManager.getPackageInfo(contextInner.packageName, 0) } catch (e: Exception) { null } }
                                    val vName = pInfo?.versionName ?: "2.0.0"
                                    val vCode = if (android.os.Build.VERSION.SDK_INT >= 28) pInfo?.longVersionCode else pInfo?.versionCode
                                    Text(text = "v$vName ($vCode)", color = Color.White.copy(alpha = 0.8f), fontSize = 14.sp, fontWeight = FontWeight.Black)
                                    if (downloadProgressText != null) {
                                        Text(text = downloadProgressText!!, color = OmodaCyan, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                                    }
                                }
                            }
                        }
                    } else {
                        Row(
                            modifier = Modifier.align(Alignment.BottomStart).padding(start = 30.dp, bottom = 30.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(fabSpacing)
                        ) {
                            // Dinleme Butonu
                            FloatingActionButton(
                                onClick = {
                                    val action = if (isListening) "com.omoda.assistant.STOP_LISTENING" else "com.omoda.assistant.START_LISTENING"
                                    context.sendBroadcast(android.content.Intent(action))
                                },
                                containerColor = if(isListening) Color.Red else OmodaCyan,
                                contentColor = Color.Black, shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { Icon(painterResource(android.R.drawable.ic_btn_speak_now), null, modifier = Modifier.size(24.dp)) }

                            // MOD DEĞİŞTİRME BUTONU (CHAT / ASISTANT)
                            FloatingActionButton(
                                onClick = {
                                    com.omoda.lanc.core.GlobalState.currentMode.value = if (currentMode == "CHAT") "ASISTANT" else "CHAT"
                                    AssistantApplication.saveCurrentConfig()
                                },
                                containerColor = if (currentMode == "CHAT") Color(0xFF9C27B0) else Color(0xFF607D8B),
                                contentColor = Color.White, shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Text(text = if (currentMode == "CHAT") "CHAT" else "ASIST", fontSize = 12.sp, fontWeight = FontWeight.Bold) 
                            }

                            // HEY OMODA TOGGLE BUTONU
                            val isWakeWordActive by GlobalState.isWakeWordEnabled.collectAsState()
                            FloatingActionButton(
                                onClick = {
                                    GlobalState.isWakeWordEnabled.value = !isWakeWordActive
                                    AssistantApplication.saveCurrentConfig()
                                },
                                containerColor = if (isWakeWordActive) Color(0xFF009688) else Color.DarkGray.copy(alpha = 0.6f),
                                contentColor = if (isWakeWordActive) Color.Black else Color.White,
                                shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text("HEY", fontSize = 10.sp, fontWeight = FontWeight.Bold)
                                    Text(if(isWakeWordActive) "AÇIK" else "KAPALI", fontSize = 8.sp)
                                }
                            }

                            FloatingActionButton(
                                onClick = { AssistantApplication.wallpaperIdx.value++; AssistantApplication.saveCurrentConfig() },
                                containerColor = Color.DarkGray.copy(alpha = 0.8f),
                                contentColor = OmodaCyan, shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { Icon(Icons.Default.Home, contentDescription = "WP", modifier = Modifier.size(24.dp)) }

                            FloatingActionButton(
                                onClick = onOpenSettings,
                                containerColor = Color.DarkGray,
                                contentColor = Color.White, shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { Icon(Icons.Default.Settings, null, modifier = Modifier.size(24.dp)) }

                            // SENSÖR BUTONU
                            FloatingActionButton(
                                onClick = onOpenSensors,
                                containerColor = Color(0xFF2196F3).copy(alpha = 0.8f),
                                contentColor = Color.White,
                                shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text("VERİ", fontSize = 10.sp, fontWeight = FontWeight.Bold)
                                    Icon(Icons.Default.Info, null, modifier = Modifier.size(12.dp))
                                }
                            }

                            // VHAL SİMÜLATÖR BUTONU
                            val isSimMode by GlobalState.isSimulationMode.collectAsState()
                            FloatingActionButton(
                                onClick = {
                                    val newVal = !isSimMode
                                    GlobalState.isSimulationMode.value = newVal
                                    AssistantApplication.addLogStatic(if (newVal) "VHAL SİMÜLATÖR AKTİF" else "VHAL SİMÜLATÖR KAPALI")
                                    AssistantApplication.saveCurrentConfig()
                                },
                                containerColor = if (isSimMode) Color(0xFFE91E63) else Color.DarkGray.copy(alpha = 0.6f),
                                contentColor = if (isSimMode) Color.White else Color.White.copy(0.7f),
                                shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text("VHAL", fontSize = 10.sp, fontWeight = FontWeight.Bold)
                                    Text(if(isSimMode) "AÇIK" else "KAPALI", fontSize = 8.sp)
                                }
                            }

                            // MQTT KÖPRÜ BUTONU
                            val isBridgeMode by GlobalState.isBridgeMode.collectAsState()
                            FloatingActionButton(
                                onClick = {
                                    val newVal = !isBridgeMode
                                    GlobalState.isBridgeMode.value = newVal
                                    AssistantApplication.addLogStatic(if (newVal) "MQTT KÖPRÜ AKTİF" else "MQTT KÖPRÜ KAPALI")
                                    AssistantApplication.saveCurrentConfig()
                                },
                                containerColor = if (isBridgeMode) Color(0xFFF3B14B) else Color.DarkGray.copy(alpha = 0.6f),
                                contentColor = if (isBridgeMode) Color.Black else Color.White,
                                shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text("KÖPRÜ", fontSize = 10.sp, fontWeight = FontWeight.Bold)
                                    Text(if(isBridgeMode) "AÇIK" else "KAPALI", fontSize = 8.sp)
                                }
                            }

                            // ADB / HERMES BRIDGE PANEL BUTONU
                            FloatingActionButton(
                                onClick = {
                                    try {
                                        val intent = Intent(context, com.hermesandroid.bridge.BridgeActivity::class.java)
                                        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                        context.startActivity(intent)
                                    } catch (e: Exception) {
                                        AssistantApplication.addLogStatic("HATA: Bridge Paneli Açılamadı")
                                    }
                                },
                                containerColor = Color(0xFF673AB7),
                                contentColor = Color.White,
                                shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text("ADB", fontSize = 10.sp, fontWeight = FontWeight.Bold)
                                    Text("PANEL", fontSize = 8.sp)
                                }
                            }

                            // MQTT TOGGLE BUTONU
                            val isMqttEnabled by AssistantApplication.mqttEnabled.collectAsState()
                            FloatingActionButton(
                                onClick = {
                                    AssistantApplication.mqttEnabled.value = !isMqttEnabled
                                    AssistantApplication.saveCurrentConfig()
                                },
                                containerColor = if (isMqttEnabled) Color(0xFF4CAF50) else Color.DarkGray.copy(alpha = 0.6f),
                                contentColor = if (isMqttEnabled) Color.Black else Color.White,
                                shape = CircleShape, modifier = Modifier.size(fabSize)
                            ) { 
                                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                    Text("MQTT", fontSize = 10.sp, fontWeight = FontWeight.Bold)
                                    Text(if(isMqttEnabled) "AÇIK" else "KAPALI", fontSize = 8.sp)
                                }
                            }

                            Column {
                                val contextInner = androidx.compose.ui.platform.LocalContext.current
                                val pInfo = remember { try { contextInner.packageManager.getPackageInfo(contextInner.packageName, 0) } catch (e: Exception) { null } }
                                val vName = pInfo?.versionName ?: "2.0.0"
                                val vCode = if (android.os.Build.VERSION.SDK_INT >= 28) pInfo?.longVersionCode else pInfo?.versionCode
                                Text(text = "v$vName ($vCode)", color = Color.White.copy(alpha = 0.8f), fontSize = 16.sp, fontWeight = FontWeight.Black)
                                if (downloadProgressText != null) {
                                    Text(text = downloadProgressText!!, color = OmodaCyan, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                                }
                            }
                        }
                    }

                    val hudWidth = if (isHandheld) 180.dp else if (smallestWidth < 800) 240.dp else 320.dp
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
                                    
                                    // Internet Status
                                    Box(modifier = Modifier.size(8.dp).clip(CircleShape).background(if (GlobalState.hasInternetConnection.collectAsState().value) Color.Green else Color.Red))
                                    Spacer(Modifier.width(4.dp))
                                    Text("NET", color = Color.White.copy(alpha = 0.6f), fontSize = 10.sp)
                                    Spacer(Modifier.width(8.dp))

                                    // MQTT Status
                                    Box(modifier = Modifier.size(8.dp).clip(CircleShape).background(if (GlobalState.isMqttConnected.collectAsState().value) Color.Green else Color.Red))
                                    Spacer(Modifier.width(4.dp))
                                    Text("MQTT", color = Color.White.copy(alpha = 0.6f), fontSize = 10.sp)

                                    Spacer(Modifier.width(12.dp))
                                    Text(status, color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Medium)
                                }
                            }
                            if (recognizedText.isNotBlank()) Text(recognizedText, color = Color.Gray, fontSize = 14.sp)
                            if (lastAIResponse.isNotBlank()) Text(lastAIResponse, color = OmodaCyan, fontSize = 16.sp, fontWeight = FontWeight.Bold)
                        }
                    }
                }
            }
        }
    }

    private fun buildLauncherPages(itemsPerPage: Int): List<List<LauncherItem>> {
        val fixedApps = listOf(
            LauncherItem("m","Medya",R.mipmap.home_app_media_n,"com.chery.media"), 
            LauncherItem("p","Telefon",R.mipmap.home_app_phone_n,"com.chery.dialer"), 
            LauncherItem("s","Ayarlar",R.mipmap.home_app_setup_n,"com.chery.settings"), 
            LauncherItem("cs","Araç",R.mipmap.home_app_carinfo_n,"com.chery.carsettings"), 
            LauncherItem("hvac","Klima",R.mipmap.home_app_carinfo_n,"com.chery.hvac"),
            LauncherItem("v","Video",R.mipmap.home_app_video_n,"com.chery.video"), 
            LauncherItem("gd","Kılavuz",R.mipmap.home_app_manual_n,"com.chery.help"), 
            LauncherItem("aa","Android Auto",R.mipmap.home_app_android_auto_n,"com.yfve.car.androidauto"), 
            LauncherItem("cp","CarPlay",R.mipmap.home_app_apple_carplay_n,"com.yfve.car.carplay"), 
            LauncherItem("store", "Omoda Store", R.mipmap.home_app_update_n, "internal.appstore")
        )
        
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
                clickCount = AssistantApplication.appClickCounts.value[pkg] ?: 0
            )
        }.filter { app -> fixedApps.none { it.packageName == app.packageName } }.sortedByDescending { it.clickCount }

        val pages = mutableListOf<List<LauncherItem>>()
        pages.add(fixedApps.take(itemsPerPage)) 
        
        val otherAppsCombined = (if (fixedApps.size > itemsPerPage) fixedApps.drop(itemsPerPage) else emptyList()) + allApps
        otherAppsCombined.chunked(itemsPerPage).forEach { chunk -> pages.add(chunk) }
        return pages
    }

    private fun showVersionToast() {
        try {
            val pInfo = packageManager.getPackageInfo(packageName, 0)
            val version = pInfo.versionName
            val code = if (android.os.Build.VERSION.SDK_INT >= 28) pInfo.longVersionCode else pInfo.versionCode
            android.widget.Toast.makeText(this, "Omoda Asistan v$version ($code) Aktif", android.widget.Toast.LENGTH_LONG).show()
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private fun launchApp(item: LauncherItem) {
        if (item.packageName == "internal.appstore") {
            val intent = Intent(this, MainActivity::class.java).apply {
                putExtra("TARGET_SCREEN", "SETTINGS")
                putExtra("TARGET_SECTION", "APP_STORE")
            }
            startActivity(intent)
            return
        }
        item.packageName?.let { p -> 
            val intent = packageManager.getLaunchIntentForPackage(p)
            if (intent != null) startActivity(intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
        }
    }

    private fun injectPermissions() {
        val baseCmds = mutableListOf(
            "appops set $packageName SYSTEM_ALERT_WINDOW allow",
            "appops set $packageName GET_USAGE_STATS allow",
            "appops set $packageName WRITE_SECURE_SETTINGS allow",
            "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.RECORD_AUDIO",
            "pm grant $packageName android.permission.READ_LOGS",
            "pm grant $packageName android.permission.ACCESS_FINE_LOCATION",
            "pm grant $packageName android.car.permission.CAR_SPEED",
            "settings put global policy_control immersive.full=*",
            "pm enable $packageName",
            "cmd package set-home-activity $packageName/.MainActivity"
        )
        
        if (GlobalState.isKlimaAutoEnable.value) {
            baseCmds.add("pm enable com.yfve.hvac")
            baseCmds.add("am start -n com.yfve.hvac/com.yfve.hvac.MainActivity")
        }

        baseCmds.forEach { exec(it) }
    }

    private fun startPeriodicPermissionCheck() {
        val h = Handler(Looper.getMainLooper())
        val checker = object : Runnable {
            override fun run() {
                if (!GlobalState.isSimulationMode.value) {
                    injectPermissions()
                }
                h.postDelayed(this, 30000L)
            }
        }
        h.postDelayed(checker, 5000)
    }

    private fun generateDefaultWallpapers() {
        val dir = File("/sdcard/Omoda/Wallpapers")
        if (!dir.exists()) dir.mkdirs()
    }

    private fun exec(c: String) {
        val intent = Intent(this, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
            action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", c)
        }
        ContextCompat.startForegroundService(this, intent)
    }

    private fun checkAndRequestPermissions() {
        val permissions = arrayOf(Manifest.permission.RECORD_AUDIO, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.ACCESS_FINE_LOCATION)
        val needed = permissions.filter { ContextCompat.checkSelfPermission(this, it) != PackageManager.PERMISSION_GRANTED }
        if (needed.isNotEmpty()) ActivityCompat.requestPermissions(this, needed.toTypedArray(), 1001)
    }
}
