package com.omoda.lanc.ui.screens

import android.content.Context
import android.content.Intent
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.ui.components.StatusLed
import java.text.SimpleDateFormat
import java.util.*
import kotlinx.coroutines.delay

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(onBack: () -> Unit) {
    var selectedTab by remember { mutableStateOf("Asistan") }
    val configuration = LocalConfiguration.current
    val isLandscape = configuration.orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE
    
    // Daha hassas donanım algılama
    val isHandheld = !AssistantApplication.isCarHardware || configuration.screenWidthDp < 600
    val useSidebar = !isHandheld || isLandscape
    val sidebarWidth = if (AssistantApplication.isCarHardware) 235.dp else 160.dp
    
    val topBarHeight = if (isHandheld) {
        if (isLandscape) 36.dp else 60.dp
    } else 80.dp
    
    // Global States
    val gServerIp by GlobalState.serverIp.collectAsState()
    val gBridgeServerIp by GlobalState.bridgeServerIp.collectAsState()
    val gGithubToken by GlobalState.githubToken.collectAsState()
    val gHermesApiKey by GlobalState.hermesApiKey.collectAsState()
    val gNinerouterApiKey by GlobalState.ninerouterApiKey.collectAsState()
    val gEdgeTtsToken by GlobalState.edgeTtsToken.collectAsState()

    val gSttMode by GlobalState.sttMode.collectAsState()
    val gTtsEngine by GlobalState.ttsEngine.collectAsState()
    val gMicSource by GlobalState.micSource.collectAsState()
    val gUseHermesDecision by GlobalState.useHermesDecision.collectAsState()
    val gIsContinuousConversation by GlobalState.isContinuousConversation.collectAsState()
    val gIsWakeWordEnabled by GlobalState.isWakeWordEnabled.collectAsState()
    val gIsSimulationMode by GlobalState.isSimulationMode.collectAsState()
    val gIsBridgeMode by GlobalState.isBridgeMode.collectAsState()
    
    val gVadSnr by GlobalState.vadSnrRatio.collectAsState()
    val gVadSilence by GlobalState.vadSilenceDuration.collectAsState()
    val gVadGain by GlobalState.vadGainFactor.collectAsState()
    val gTtsRate by GlobalState.ttsRate.collectAsState()
    val gTtsPitch by GlobalState.ttsPitch.collectAsState()

    // Local Temporary States (Fix for STATE-4)
    var sttMode by remember(gSttMode) { mutableStateOf(gSttMode) }
    var ttsEngine by remember(gTtsEngine) { mutableStateOf(gTtsEngine) }
    var micSource by remember(gMicSource) { mutableStateOf(gMicSource) }
    var useHermesDecision by remember(gUseHermesDecision) { mutableStateOf(gUseHermesDecision) }
    var isContinuousConversation by remember(gIsContinuousConversation) { mutableStateOf(gIsContinuousConversation) }
    var isWakeWordEnabled by remember(gIsWakeWordEnabled) { mutableStateOf(gIsWakeWordEnabled) }
    var isSimulationMode by remember(gIsSimulationMode) { mutableStateOf(gIsSimulationMode) }
    var isBridgeMode by remember(gIsBridgeMode) { mutableStateOf(gIsBridgeMode) }
    
    var vadSnr by remember(gVadSnr) { mutableStateOf(gVadSnr) }
    var vadSilence by remember(gVadSilence) { mutableStateOf(gVadSilence) }
    var vadGain by remember(gVadGain) { mutableStateOf(gVadGain) }
    var ttsRate by remember(gTtsRate) { mutableStateOf(gTtsRate) }
    var ttsPitch by remember(gTtsPitch) { mutableStateOf(gTtsPitch) }

    var serverIp by remember(gServerIp) { mutableStateOf(gServerIp) }
    var bridgeServerIp by remember(gBridgeServerIp) { mutableStateOf(gBridgeServerIp) }
    var githubToken by remember(gGithubToken) { mutableStateOf(gGithubToken) }
    var hermesApiKey by remember(gHermesApiKey) { mutableStateOf(gHermesApiKey) }
    var ninerouterApiKey by remember(gNinerouterApiKey) { mutableStateOf(gNinerouterApiKey) }
    var edgeTtsToken by remember(gEdgeTtsToken) { mutableStateOf(gEdgeTtsToken) }

    val vehicleId by GlobalState.vehicleId.collectAsState()
    val pollingConfig by GlobalState.vehiclePollingConfig.collectAsState()
    
    val isMqttConnected by GlobalState.isMqttConnected.collectAsState()
    val hasInternet by GlobalState.hasInternetConnection.collectAsState()
    val hermesStatus by GlobalState.hermesConnectionStatus.collectAsState()
    val isHermesConnected = hermesStatus == "CONNECTED" || hermesStatus == "FALLBACK_CONNECTED" || hermesStatus == "FULL_CONNECTED"

    val vehicleDataValues by GlobalState.vehicleDataValues.collectAsState()
    val speedStr = vehicleDataValues["11600207"] ?: "0"
    val speed = speedStr.replace(" km/h", "").replace(",", ".").toFloatOrNull() ?: 0f
    val isMoving = speed > 5f

    val context = LocalContext.current
    val isKlimaAutoEnable by GlobalState.isKlimaAutoEnable.collectAsState()

    fun performSave() {
        GlobalState.sttMode.value = sttMode
        GlobalState.ttsEngine.value = ttsEngine
        GlobalState.micSource.value = micSource
        GlobalState.useHermesDecision.value = useHermesDecision
        GlobalState.isContinuousConversation.value = isContinuousConversation
        GlobalState.isWakeWordEnabled.value = isWakeWordEnabled
        GlobalState.isSimulationMode.value = isSimulationMode
        GlobalState.isBridgeMode.value = isBridgeMode
        
        GlobalState.vadSnrRatio.value = vadSnr
        GlobalState.vadSilenceDuration.value = vadSilence
        GlobalState.vadGainFactor.value = vadGain
        GlobalState.ttsRate.value = ttsRate
        GlobalState.ttsPitch.value = ttsPitch
        
        GlobalState.serverIp.value = serverIp
        GlobalState.bridgeServerIp.value = bridgeServerIp
        GlobalState.githubToken.value = githubToken
        GlobalState.hermesApiKey.value = hermesApiKey
        GlobalState.ninerouterApiKey.value = ninerouterApiKey
        GlobalState.edgeTtsToken.value = edgeTtsToken
        
        AssistantApplication.saveCurrentConfig()
        onBack()
    }

    var currentTime by remember { mutableStateOf("") }
    LaunchedEffect(Unit) {
        while (true) {
            currentTime = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            delay(1000)
        }
    }

    val backgroundBrush = Brush.verticalGradient(
        colors = listOf(Color(0xFF0F1113), Color(0xFF050607))
    )

    Box(modifier = Modifier.fillMaxSize().background(backgroundBrush)) {
        Scaffold(
            topBar = {
                Surface(color = Color.Black.copy(alpha = 0.4f), modifier = Modifier.fillMaxWidth().height(topBarHeight)) {
                    Row(
                        modifier = Modifier.fillMaxSize().padding(horizontal = 8.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        IconButton(
                            onClick = { onBack() },
                            modifier = Modifier.padding(start = if(isHandheld) 0.dp else 80.dp)
                        ) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Geri", tint = Color.White, modifier = Modifier.size(if(isHandheld && isLandscape) 20.dp else 24.dp))
                        }
                        
                        Text(
                            text = if(isHandheld) "AYARLAR" else "SİSTEM AYARLARI", 
                            color = Color.White, 
                            fontSize = if(isHandheld) (if(isLandscape) 14.sp else 18.sp) else 22.sp,
                            fontWeight = FontWeight.ExtraBold,
                            modifier = Modifier.padding(start = 4.dp)
                        )

                        Spacer(Modifier.width(16.dp))
                        
                        Row(horizontalArrangement = Arrangement.spacedBy(if(isHandheld) 8.dp else 16.dp)) {
                            StatusIndicator("Net", hasInternet, isHandheld)
                            StatusIndicator("MQTT", isMqttConnected, isHandheld)
                            StatusIndicator("AI", isHermesConnected, isHandheld)
                        }
                        
                        Spacer(Modifier.weight(1f))

                        if (isHandheld && isLandscape) {
                            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                Button(
                                    onClick = { onBack() },
                                    colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray),
                                    shape = RoundedCornerShape(8.dp),
                                    modifier = Modifier.height(32.dp).padding(horizontal = 4.dp),
                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 0.dp)
                                ) {
                                    Text("İPTAL", fontWeight = FontWeight.Bold, fontSize = 10.sp)
                                }
                                
                                Button(
                                    onClick = { performSave() },
                                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3)),
                                    shape = RoundedCornerShape(8.dp),
                                    modifier = Modifier.height(32.dp).padding(horizontal = 4.dp),
                                    contentPadding = PaddingValues(horizontal = 12.dp, vertical = 0.dp)
                                ) {
                                    Text("KAYDET", color = Color.Black, fontWeight = FontWeight.ExtraBold, fontSize = 10.sp)
                                }
                            }
                        } else if(!isHandheld) {
                            Text(currentTime, color = Color(0xFF69E2D3), fontSize = 24.sp, fontWeight = FontWeight.Bold, fontFamily = FontFamily.Monospace)
                        }
                    }
                }
            },
            bottomBar = {
                if (!isHandheld || !isLandscape) {
                    Surface(color = Color.Transparent, modifier = Modifier.fillMaxWidth().padding(bottom = if(isHandheld) 16.dp else 32.dp)) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.Center, 
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Button(
                                onClick = { onBack() },
                                colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray),
                                shape = RoundedCornerShape(12.dp),
                                modifier = Modifier.height(if(isHandheld) 48.dp else 64.dp).width(if(isHandheld) 100.dp else 180.dp)
                            ) {
                                Text("İPTAL", fontWeight = FontWeight.Bold, fontSize = 14.sp)
                            }
                            
                            Spacer(Modifier.width(if(isHandheld) 16.dp else 60.dp))
                            
                            Button(
                                onClick = { performSave() },
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3)),
                                shape = RoundedCornerShape(12.dp),
                                modifier = Modifier.height(if(isHandheld) 48.dp else 64.dp).width(if(isHandheld) 140.dp else 240.dp)
                            ) {
                                Text("KAYDET", color = Color.Black, fontWeight = FontWeight.ExtraBold, fontSize = 14.sp)
                            }
                        }
                    }
                }
            },
            containerColor = Color.Transparent
        ) { padding ->
            if (!useSidebar) {
                // Phone Portrait Layout: Top Tabs + Content
                Column(modifier = Modifier.fillMaxSize().padding(padding)) {
                    val tabs = listOf(
                        "Asistan" to Icons.Default.Face,
                        "Bağlantılar" to Icons.Default.Settings,
                        "Sensörler" to Icons.Default.Place,
                        "Sistem" to Icons.Default.Build,
                        "Loglar" to Icons.AutoMirrored.Filled.List,
                        "Market" to Icons.Default.ShoppingCart,
                        "Hakkında" to Icons.Default.Info
                    )
                    LazyRow(
                        modifier = Modifier.fillMaxWidth().padding(8.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        items(tabs) { (name, icon) ->
                            FilterChip(
                                selected = selectedTab == name,
                                onClick = { selectedTab = name },
                                label = { Text(name) },
                                leadingIcon = { Icon(icon, null, modifier = Modifier.size(18.dp)) },
                                colors = FilterChipDefaults.filterChipColors(
                                    selectedContainerColor = Color(0xFF69E2D3).copy(alpha = 0.2f),
                                    selectedLabelColor = Color(0xFF69E2D3),
                                    labelColor = Color.Gray
                                )
                            )
                        }
                    }
                    Box(modifier = Modifier.weight(1f).padding(8.dp)) {
                        SettingsContent(
                            selectedTab = selectedTab,
                            isMoving = isMoving,
                            isHandheld = isHandheld,
                            sttMode = sttMode,
                            onSttModeChange = { sttMode = it },
                            ttsEngine = ttsEngine,
                            onTtsEngineChange = { ttsEngine = it },
                            micSource = micSource,
                            onMicSourceChange = { micSource = it },
                            useDecision = useHermesDecision,
                            onUseDecisionChange = { useHermesDecision = it },
                            isContinuous = isContinuousConversation,
                            onIsContinuousChange = { isContinuousConversation = it },
                            isWakeWord = isWakeWordEnabled,
                            onIsWakeWordChange = { isWakeWordEnabled = it },
                            snr = vadSnr,
                            onSnrChange = { vadSnr = it },
                            silence = vadSilence,
                            onSilenceChange = { vadSilence = it },
                            gain = vadGain,
                            onGainChange = { vadGain = it },
                            ttsRate = ttsRate,
                            onTtsRateChange = { ttsRate = it },
                            ttsPitch = ttsPitch,
                            onTtsPitchChange = { ttsPitch = it },
                            isKlimaAuto = isKlimaAutoEnable,
                            vehicleId = vehicleId,
                            serverIp = serverIp,
                            onServerIpChange = { serverIp = it },
                            bridgeIp = bridgeServerIp,
                            onBridgeIpChange = { bridgeServerIp = it },
                            githubToken = githubToken,
                            onGithubTokenChange = { githubToken = it },
                            hermesApiKey = hermesApiKey,
                            onHermesApiKeyChange = { hermesApiKey = it },
                            ninerouterApiKey = ninerouterApiKey,
                            onNinerouterApiKeyChange = { ninerouterApiKey = it },
                            isSimMode = isSimulationMode,
                            onIsSimModeChange = { isSimulationMode = it },
                            isBridgeMode = isBridgeMode,
                            onIsBridgeModeChange = { isBridgeMode = it },
                            pollingConfig = pollingConfig
                        )
                    }
                }
            } else {
                // Sidebar Layout: AAOS or Phone Landscape
                Row(modifier = Modifier.fillMaxSize().padding(padding)) {
                    val sidebarScrollState = rememberScrollState()
                    Column(
                        modifier = Modifier
                            .width(sidebarWidth)
                            .fillMaxHeight()
                            .verticalScroll(sidebarScrollState)
                            .padding(horizontal = if(isHandheld) 6.dp else 12.dp, vertical = if(isHandheld) 4.dp else 12.dp),
                        verticalArrangement = Arrangement.spacedBy(if(isHandheld) 6.dp else 12.dp)
                    ) {
                        val tabs = listOf(
                            "Asistan" to Icons.Default.Face,
                            "Bağlantılar" to Icons.Default.Settings,
                            "Sensörler" to Icons.Default.Place,
                            "Sistem" to Icons.Default.Build,
                            "Loglar" to Icons.AutoMirrored.Filled.List,
                            "Market" to Icons.Default.ShoppingCart,
                            "Hakkında" to Icons.Default.Info
                        )
                        tabs.forEach { (name, icon) ->
                            LargeTabButton(name, icon, selectedTab == name, isCompact = isHandheld) { selectedTab = name }
                        }
                    }
                    Box(modifier = Modifier.weight(1f).fillMaxHeight().padding(if(isHandheld) 8.dp else 16.dp)) {
                        SettingsContent(
                            selectedTab = selectedTab,
                            isMoving = isMoving,
                            isHandheld = isHandheld,
                            sttMode = sttMode,
                            onSttModeChange = { sttMode = it },
                            ttsEngine = ttsEngine,
                            onTtsEngineChange = { ttsEngine = it },
                            micSource = micSource,
                            onMicSourceChange = { micSource = it },
                            useDecision = useHermesDecision,
                            onUseDecisionChange = { useHermesDecision = it },
                            isContinuous = isContinuousConversation,
                            onIsContinuousChange = { isContinuousConversation = it },
                            isWakeWord = isWakeWordEnabled,
                            onIsWakeWordChange = { isWakeWordEnabled = it },
                            snr = vadSnr,
                            onSnrChange = { vadSnr = it },
                            silence = vadSilence,
                            onSilenceChange = { vadSilence = it },
                            gain = vadGain,
                            onGainChange = { vadGain = it },
                            ttsRate = ttsRate,
                            onTtsRateChange = { ttsRate = it },
                            ttsPitch = ttsPitch,
                            onTtsPitchChange = { ttsPitch = it },
                            isKlimaAuto = isKlimaAutoEnable,
                            vehicleId = vehicleId,
                            serverIp = serverIp,
                            onServerIpChange = { serverIp = it },
                            bridgeIp = bridgeServerIp,
                            onBridgeIpChange = { bridgeServerIp = it },
                            githubToken = githubToken,
                            onGithubTokenChange = { githubToken = it },
                            hermesApiKey = hermesApiKey,
                            onHermesApiKeyChange = { hermesApiKey = it },
                            ninerouterApiKey = ninerouterApiKey,
                            onNinerouterApiKeyChange = { ninerouterApiKey = it },
                            isSimMode = isSimulationMode,
                            onIsSimModeChange = { isSimulationMode = it },
                            isBridgeMode = isBridgeMode,
                            onIsBridgeModeChange = { isBridgeMode = it },
                            pollingConfig = pollingConfig
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun SettingsContent(
    selectedTab: String,
    isMoving: Boolean,
    isHandheld: Boolean,
    sttMode: String,
    onSttModeChange: (String) -> Unit,
    ttsEngine: String,
    onTtsEngineChange: (String) -> Unit,
    micSource: String,
    onMicSourceChange: (String) -> Unit,
    useDecision: Boolean,
    onUseDecisionChange: (Boolean) -> Unit,
    isContinuous: Boolean,
    onIsContinuousChange: (Boolean) -> Unit,
    isWakeWord: Boolean,
    onIsWakeWordChange: (Boolean) -> Unit,
    snr: Float,
    onSnrChange: (Float) -> Unit,
    silence: Long,
    onSilenceChange: (Long) -> Unit,
    gain: Float,
    onGainChange: (Float) -> Unit,
    ttsRate: Float,
    onTtsRateChange: (Float) -> Unit,
    ttsPitch: Float,
    onTtsPitchChange: (Float) -> Unit,
    isKlimaAuto: Boolean,
    vehicleId: String,
    serverIp: String,
    onServerIpChange: (String) -> Unit,
    bridgeIp: String,
    onBridgeIpChange: (String) -> Unit,
    githubToken: String,
    onGithubTokenChange: (String) -> Unit,
    hermesApiKey: String,
    onHermesApiKeyChange: (String) -> Unit,
    ninerouterApiKey: String,
    onNinerouterApiKeyChange: (String) -> Unit,
    isSimMode: Boolean,
    onIsSimModeChange: (Boolean) -> Unit,
    isBridgeMode: Boolean,
    onIsBridgeModeChange: (Boolean) -> Unit,
    pollingConfig: Map<String, Int>
) {
    if (isMoving && (selectedTab == "Bağlantılar" || selectedTab == "Sistem")) {
        SafetyLockScreen()
    } else {
        when (selectedTab) {
            "Asistan" -> TabAsistanEnhanced(
                isCompact = isHandheld,
                sttMode = sttMode,
                onSttModeChange = onSttModeChange,
                ttsEngine = ttsEngine,
                onTtsEngineChange = onTtsEngineChange,
                micSource = micSource,
                onMicSourceChange = onMicSourceChange,
                useDecision = useDecision,
                onUseDecisionChange = onUseDecisionChange,
                isContinuous = isContinuous,
                onIsContinuousChange = onIsContinuousChange,
                isWakeWord = isWakeWord,
                onIsWakeWordChange = onIsWakeWordChange,
                snr = snr,
                onSnrChange = onSnrChange,
                silence = silence,
                onSilenceChange = onSilenceChange,
                gain = gain,
                onGainChange = onGainChange,
                ttsRate = ttsRate,
                onTtsRateChange = onTtsRateChange,
                ttsPitch = ttsPitch,
                onTtsPitchChange = onTtsPitchChange
            )
            "Bağlantılar" -> TabBaglantilarEnhanced(
                isCompact = isHandheld,
                isMqtt = GlobalState.isMqttConnected.collectAsState().value,
                isSimMode = isSimMode,
                onIsSimModeChange = onIsSimModeChange,
                isBridgeMode = isBridgeMode,
                onIsBridgeModeChange = onIsBridgeModeChange,
                serverIp = serverIp,
                onServerIpChange = onServerIpChange,
                bridgeIp = bridgeIp,
                onBridgeIpChange = onBridgeIpChange,
                githubToken = githubToken,
                onGithubTokenChange = onGithubTokenChange,
                hermesApiKey = hermesApiKey,
                onHermesApiKeyChange = onHermesApiKeyChange,
                ninerouterApiKey = ninerouterApiKey,
                onNinerouterApiKeyChange = onNinerouterApiKeyChange
            )
            "Sensörler" -> TabSensorler(isHandheld, pollingConfig)
            "Sistem" -> TabSistemEnhanced(isHandheld, isKlimaAuto)
            "Loglar" -> TabMqttLoglari(isHandheld)
            "Market" -> AppStoreSection()
            "Hakkında" -> TabHakkinda(isHandheld, vehicleId, serverIp, "8642")
        }
    }
}

@Composable
fun StatusIndicator(label: String, active: Boolean, isHandheld: Boolean) {
    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(4.dp)) {
        Box(modifier = Modifier.size(if(isHandheld) 8.dp else 12.dp).clip(CircleShape).background(if (active) Color.Green else Color.Red))
        if(!isHandheld) Text(label, color = Color.White.copy(alpha = 0.7f), fontSize = 14.sp)
    }
}

@Composable
fun LargeTabButton(label: String, icon: androidx.compose.ui.graphics.vector.ImageVector, selected: Boolean, isCompact: Boolean = false, onClick: () -> Unit) {
    val bgColor by animateColorAsState(if (selected) Color(0xFF69E2D3).copy(alpha = 0.25f) else Color.White.copy(alpha = 0.05f))
    val contentColor by animateColorAsState(if (selected) Color(0xFF69E2D3) else Color.White.copy(alpha = 0.6f))
    Surface(
        onClick = onClick,
        color = bgColor,
        shape = RoundedCornerShape(if(isCompact) 10.dp else 16.dp),
        border = BorderStroke(1.dp, if (selected) Color(0xFF69E2D3).copy(alpha = 0.6f) else Color.Transparent),
        modifier = Modifier.fillMaxWidth().height(if(isCompact) 44.dp else 64.dp)
    ) {
        Row(modifier = Modifier.padding(horizontal = if(isCompact) 8.dp else 16.dp), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(if(isCompact) 8.dp else 12.dp)) {
            Icon(icon, contentDescription = null, tint = contentColor, modifier = Modifier.size(if(isCompact) 20.dp else 28.dp))
            Text(label, color = contentColor, fontSize = if(isCompact) 13.sp else 16.sp, fontWeight = if (selected) FontWeight.ExtraBold else FontWeight.Bold, maxLines = 1)
        }
    }
}

@Composable
fun TabAsistanEnhanced(
    isCompact: Boolean,
    sttMode: String,
    onSttModeChange: (String) -> Unit,
    ttsEngine: String,
    onTtsEngineChange: (String) -> Unit,
    micSource: String,
    onMicSourceChange: (String) -> Unit,
    useDecision: Boolean,
    onUseDecisionChange: (Boolean) -> Unit,
    isContinuous: Boolean,
    onIsContinuousChange: (Boolean) -> Unit,
    isWakeWord: Boolean,
    onIsWakeWordChange: (Boolean) -> Unit,
    snr: Float,
    onSnrChange: (Float) -> Unit,
    silence: Long,
    onSilenceChange: (Long) -> Unit,
    gain: Float,
    onGainChange: (Float) -> Unit,
    ttsRate: Float,
    onTtsRateChange: (Float) -> Unit,
    ttsPitch: Float,
    onTtsPitchChange: (Float) -> Unit
) {
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isPortrait = config.orientation == android.content.res.Configuration.ORIENTATION_PORTRAIT
    val spacing = if (isCompact) (if(isPortrait) 8.dp else 4.dp) else 16.dp

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(spacing)) {
        if (isPortrait) {
            EnhancedSettingCard(title = "SES TANIMA (STT)", isCompact = isCompact) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "BULUT", active = sttMode == "HERMES", onClick = { onSttModeChange("HERMES") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "SHERPA", active = sttMode == "SHERPA", onClick = { onSttModeChange("SHERPA") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "NATIVE", active = sttMode == "LOCAL", onClick = { onSttModeChange("LOCAL") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                }
            }
            EnhancedSettingCard(title = "SES SENTEZİ (TTS)", isCompact = isCompact) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "EDGE", active = ttsEngine == "EDGE", onClick = { onTtsEngineChange("EDGE") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "9ROUTER", active = ttsEngine == "9ROUTER", onClick = { onTtsEngineChange("9ROUTER") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "NATIVE", active = ttsEngine == "LOCAL", onClick = { onTtsEngineChange("LOCAL") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                }
            }
        } else {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(spacing)) {
                EnhancedSettingCard(title = "SES TANIMA (STT)", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        SettingsToggleButton(label = "BULUT", active = sttMode == "HERMES", onClick = { onSttModeChange("HERMES") }, isCompact = isCompact)
                        SettingsToggleButton(label = "SHERPA", active = sttMode == "SHERPA", onClick = { onSttModeChange("SHERPA") }, isCompact = isCompact)
                        SettingsToggleButton(label = "NATIVE", active = sttMode == "LOCAL", onClick = { onSttModeChange("LOCAL") }, isCompact = isCompact)
                    }
                }
                EnhancedSettingCard(title = "SES SENTEZİ (TTS)", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        SettingsToggleButton(label = "EDGE", active = ttsEngine == "EDGE", onClick = { onTtsEngineChange("EDGE") }, isCompact = isCompact)
                        SettingsToggleButton(label = "9ROUTER", active = ttsEngine == "9ROUTER", onClick = { onTtsEngineChange("9ROUTER") }, isCompact = isCompact)
                        SettingsToggleButton(label = "NATIVE", active = ttsEngine == "LOCAL", onClick = { onTtsEngineChange("LOCAL") }, isCompact = isCompact)
                    }
                }
            }
        }
        
        EnhancedSettingCard(title = "MİKROFON HASSASİYETİ (VHAL)", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(if (isCompact) 8.dp else 16.dp)) {
                SliderWithLabel(label = "SNR Eşiği (Hassasiyet)", value = snr, range = 0.5f..4.0f, onValueChange = onSnrChange)
                SliderWithLabel(label = "PCM Kazanç (Gain)", value = gain, range = 1.0f..8.0f, onValueChange = onGainChange)
                SliderWithLabel(label = "Sessizlik Süresi (ms)", value = silence.toFloat(), range = 500f..5000f, steps = 9, onValueChange = { onSilenceChange(it.toLong()) })
            }
        }

        EnhancedSettingCard(title = "SES AYARLARI (EDGE TTS)", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(if (isCompact) 8.dp else 16.dp)) {
                SliderWithLabel(label = "Konuşma Hızı", value = ttsRate, range = 0.5f..2.0f, onValueChange = onTtsRateChange)
                SliderWithLabel(label = "Ses Tonu (Pitch)", value = ttsPitch, range = 0.5f..2.0f, onValueChange = onTtsPitchChange)
            }
        }
        
        EnhancedSettingCard(title = "DİYALOG AYARLARI", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(if (isCompact) 8.dp else 12.dp)) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                    SwitchOption(label = "Hey Omoda", checked = isWakeWord, onChecked = onIsWakeWordChange)
                    SwitchOption(label = "Kesintisiz", checked = isContinuous, onChecked = onIsContinuousChange)
                }
                SwitchOption(label = "Akıllı Karar Motoru", checked = useDecision, onChecked = onUseDecisionChange)
                
                HorizontalDivider(color = Color.White.copy(alpha = 0.05f))
                Text("Mikrofon Kaynağı", color = Color.Gray, fontSize = 12.sp)
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "STT", active = micSource == "VOICE_RECOGNITION", onClick = { onMicSourceChange("VOICE_RECOGNITION") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "VOIP", active = micSource == "VOICE_COMMUNICATION", onClick = { onMicSourceChange("VOICE_COMMUNICATION") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "MIC", active = micSource == "MIC", onClick = { onMicSourceChange("MIC") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                }
            }
        }
    }
}

@Composable
fun TabBaglantilarEnhanced(
    isCompact: Boolean,
    isMqtt: Boolean,
    isSimMode: Boolean,
    onIsSimModeChange: (Boolean) -> Unit,
    isBridgeMode: Boolean,
    onIsBridgeModeChange: (Boolean) -> Unit,
    serverIp: String,
    onServerIpChange: (String) -> Unit,
    bridgeIp: String,
    onBridgeIpChange: (String) -> Unit,
    githubToken: String,
    onGithubTokenChange: (String) -> Unit,
    hermesApiKey: String,
    onHermesApiKeyChange: (String) -> Unit,
    ninerouterApiKey: String,
    onNinerouterApiKeyChange: (String) -> Unit
) {
    val context = LocalContext.current
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isLandscape = config.orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE
    val isPortrait = !isLandscape

    val spacing = if (isCompact) (if(isPortrait) 12.dp else 6.dp) else 24.dp

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(spacing)) {
        if (isLandscape && isCompact) {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                EnhancedSettingCard(title = "SUNUCU", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        OutlinedTextField(
                            value = serverIp, onValueChange = onServerIpChange, 
                            label = { Text("Sunucu IP", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            singleLine = true
                        )
                        OutlinedTextField(
                            value = bridgeIp, onValueChange = onBridgeIpChange, 
                            label = { Text("Köprü IP", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            singleLine = true
                        )
                    }
                }

                EnhancedSettingCard(title = "KEYLER", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        OutlinedTextField(
                            value = githubToken, onValueChange = onGithubTokenChange, 
                            label = { Text("GitHub", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation(),
                            singleLine = true
                        )
                        OutlinedTextField(
                            value = hermesApiKey, onValueChange = onHermesApiKeyChange, 
                            label = { Text("Hermes", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation(),
                            singleLine = true
                        )
                    }
                }
            }
        } else {
            EnhancedSettingCard(title = "SUNUCU YAPILANDIRMASI", isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedTextField(
                        value = serverIp, onValueChange = onServerIpChange, 
                        label = { Text("Ana Sunucu IP") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp)
                    )
                    OutlinedTextField(
                        value = bridgeIp, onValueChange = onBridgeIpChange, 
                        label = { Text("Köprü IP") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp)
                    )
                }
            }

            EnhancedSettingCard(title = "API ANAHTARLARI", isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedTextField(
                        value = githubToken, onValueChange = onGithubTokenChange, 
                        label = { Text("GitHub OTA Token") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp),
                        visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation()
                    )
                    OutlinedTextField(
                        value = hermesApiKey, onValueChange = onHermesApiKeyChange, 
                        label = { Text("Hermes API Key") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp),
                        visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation()
                    )
                    OutlinedTextField(
                        value = ninerouterApiKey, onValueChange = onNinerouterApiKeyChange, 
                        label = { Text("9Router API Key") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp),
                        visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation()
                    )
                }
            }
        }
        
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(16.dp)) {
            EnhancedSettingCard(title = "BAĞLANTI DURUMU", modifier = Modifier.weight(1f), isCompact = isCompact) {
                Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                    Text("MQTT Durumu:", color = Color.Gray, modifier = Modifier.weight(1f), fontSize = if(isCompact) 12.sp else 14.sp)
                    Text(if (isMqtt) "AKTİF" else "KOPUK", color = if (isMqtt) Color.Green else Color.Red, fontWeight = FontWeight.Bold, fontSize = if(isCompact) 12.sp else 14.sp)
                }
            }

            EnhancedSettingCard(title = "SİMÜLASYON VE KÖPRÜ", modifier = Modifier.weight(1f), isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(if(isLandscape && isCompact) 4.dp else 8.dp)) {
                    Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                        Text("Simülatör:", color = Color.Gray, modifier = Modifier.weight(1f), fontSize = if(isCompact) 11.sp else 14.sp)
                        Switch(checked = isSimMode, onCheckedChange = onIsSimModeChange, modifier = Modifier.scale(0.8f))
                    }
                    Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                        Text("Köprü:", color = Color.Gray, modifier = Modifier.weight(1f), fontSize = if(isCompact) 11.sp else 14.sp)
                        Switch(checked = isBridgeMode, onCheckedChange = onIsBridgeModeChange, modifier = Modifier.scale(0.8f))
                    }
                    
                    Button(
                        onClick = {
                            try {
                                val intent = Intent(context, com.hermesandroid.bridge.BridgeActivity::class.java)
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                context.startActivity(intent)
                            } catch (e: Exception) {
                                android.widget.Toast.makeText(context, "Bridge Paneli Bulunamadı", android.widget.Toast.LENGTH_SHORT).show()
                            }
                        },
                        modifier = Modifier.fillMaxWidth().height(if(isCompact) 32.dp else 48.dp),
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF673AB7)),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Text("PANELİ AÇ", color = Color.White, fontSize = if(isCompact) 10.sp else 13.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }
        }
    }
}

@Composable
fun TabSistemEnhanced(isCompact: Boolean, isKlimaAuto: Boolean) {
    val context = LocalContext.current
    var shellCommand by remember { mutableStateOf("") }
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isLandscape = config.orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE
    val spacing = if (isCompact) (if(isLandscape) 8.dp else 12.dp) else 24.dp

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(spacing)) {
        if (isLandscape && isCompact) {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                EnhancedSettingCard(title = "VARSAYILAN LAUNCHER", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Button(onClick = { 
                        val cmds = listOf("pm disable-user --user 0 com.yfve.launcher", "cmd package set-home-activity com.omoda.lanc/.MainActivity", "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity")
                        cmds.forEach { exec(context, it) }
                    }, modifier = Modifier.fillMaxWidth().height(32.dp), colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFF3B14B))) {
                        Text("VARSAYILAN YAP", color = Color.Black, fontWeight = FontWeight.Bold, fontSize = 9.sp)
                    }
                }
                EnhancedSettingCard(title = "ARAÇ ARAÇLARI", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                        Button(onClick = { exec(context, "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity") }, modifier = Modifier.weight(1f).height(32.dp)) { Text("KLİMA", fontSize = 9.sp) }
                        Button(onClick = { exec(context, "svc wifi disable; sleep 2; svc wifi enable") }, modifier = Modifier.weight(1f).height(32.dp)) { Text("WIFI", fontSize = 9.sp) }
                    }
                }
            }
        } else {
            EnhancedSettingCard(title = "VARSAYILAN LAUNCHER", isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = { 
                        val cmds = listOf("pm disable-user --user 0 com.yfve.launcher", "cmd package set-home-activity com.omoda.lanc/.MainActivity", "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity")
                        cmds.forEach { exec(context, it) }
                    }, modifier = Modifier.fillMaxWidth().height(if(isCompact) 44.dp else 60.dp), colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFF3B14B))) {
                        Text("VARSAYILAN YAP (ZORLA)", color = Color.Black, fontWeight = FontWeight.Bold, fontSize = if(isCompact) 11.sp else 14.sp)
                    }
                }
            }
            EnhancedSettingCard(title = "ARAÇ ARAÇLARI", isCompact = isCompact) {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    Button(onClick = { exec(context, "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity") }, modifier = Modifier.weight(1f).height(if(isCompact) 36.dp else 48.dp)) { Text("KLİMA", fontSize = if(isCompact) 10.sp else 13.sp) }
                    Button(onClick = { exec(context, "svc wifi disable; sleep 2; svc wifi enable") }, modifier = Modifier.weight(1f).height(if(isCompact) 36.dp else 48.dp)) { Text("WIFI ONAR", fontSize = if(isCompact) 10.sp else 13.sp) }
                }
            }
        }

        EnhancedSettingCard(title = "YEDEKLEME VE GERİ YÜKLEME", isCompact = isCompact) {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(
                    onClick = { 
                        val success = AssistantApplication.configManager.backupConfig()
                        android.widget.Toast.makeText(context, if(success) "Ayarlar Yedeklendi (SDCard/Omoda)" else "Yedekleme Başarısız", android.widget.Toast.LENGTH_SHORT).show()
                    }, 
                    modifier = Modifier.weight(1f).height(if(isCompact) 36.dp else 48.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF2196F3))
                ) { Text("YEDEKLE", fontSize = if(isCompact) 10.sp else 13.sp) }
                
                Button(
                    onClick = { 
                        val success = AssistantApplication.configManager.restoreConfig()
                        if (success) {
                            android.widget.Toast.makeText(context, "Ayarlar Geri Yüklendi!", android.widget.Toast.LENGTH_LONG).show()
                            // Uygulamayı yeniden başlatmaya zorlamak yerine config'i tekrar yükle
                            AssistantApplication.instance?.loadConfig()
                        } else {
                            android.widget.Toast.makeText(context, "Yedek Dosyası Bulunamadı", android.widget.Toast.LENGTH_SHORT).show()
                        }
                    }, 
                    modifier = Modifier.weight(1f).height(if(isCompact) 36.dp else 48.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFFF9800))
                ) { Text("GERİ YÜKLE", fontSize = if(isCompact) 10.sp else 13.sp) }
            }
        }
        EnhancedSettingCard(title = "KOMUT", isCompact = isCompact) {
            Column {
                OutlinedTextField(value = shellCommand, onValueChange = { shellCommand = it }, label = { Text("ADB Komut", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(), textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 11.sp else 14.sp))
                Button(onClick = { exec(context, shellCommand); shellCommand = "" }, modifier = Modifier.fillMaxWidth().padding(top = 4.dp).height(if(isCompact) 32.dp else 48.dp)) { Text("GÖNDER", fontSize = if(isCompact) 10.sp else 13.sp) }
            }
        }
    }
}

@Composable
fun TabSensorler(isCompact: Boolean, pollingConfig: Map<String, Int>) {
    val tiers = listOf(2, 5, 10, 0)
    val tierLabels = mapOf(2 to "2s", 5 to "5s", 10 to "10s", 0 to "OFF")
    val scrollState = rememberScrollState()
    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState).padding(bottom = 80.dp)) {
        EnhancedSettingCard(title = "ARAÇ VERİ POLİTİKASI", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                VehicleController.PROPERTY_DEFINITIONS.forEach { (id, def) ->
                    val tier = pollingConfig[id] ?: def.defaultTier
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(def.label, color = Color.White, modifier = Modifier.weight(1f), fontSize = if(isCompact) 12.sp else 14.sp)
                        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                            tiers.forEach { t ->
                                val sel = tier == t
                                Box(modifier = Modifier.size(if(isCompact) 36.dp else 40.dp, if(isCompact) 26.dp else 30.dp).clip(RoundedCornerShape(4.dp)).background(if(sel) Color(0xFF69E2D3).copy(0.2f) else Color.Transparent).border(1.dp, if(sel) Color(0xFF69E2D3) else Color.White.copy(0.1f), RoundedCornerShape(4.dp)).clickable {
                                    val map = pollingConfig.toMutableMap(); map[id] = t; GlobalState.vehiclePollingConfig.value = map
                                }, contentAlignment = Alignment.Center) {
                                    Text(tierLabels[t]!!, color = if(sel) Color(0xFF69E2D3) else Color.Gray, fontSize = if(isCompact) 9.sp else 10.sp)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun TabMqttLoglari(isCompact: Boolean) {
    val logs by AssistantApplication.mqttLogList.collectAsState()
    EnhancedSettingCard(title = "MQTT LOGS", modifier = Modifier.fillMaxSize(), isCompact = isCompact) {
        LazyColumn(modifier = Modifier.fillMaxSize()) {
            items(logs) { log -> Text(log, color = Color(0xFF69E2D3), fontSize = if(isCompact) 9.sp else 10.sp, fontFamily = FontFamily.Monospace) }
        }
    }
}

@Composable
fun TabHakkinda(isCompact: Boolean, vehicleId: String, serverIp: String, hermesPort: String) {
    EnhancedSettingCard(title = "SİSTEM BİLGİSİ", isCompact = isCompact) {
        Column(verticalArrangement = Arrangement.spacedBy(if(isCompact) 4.dp else 8.dp)) {
            InfoRow("Versiyon", "${com.omoda.lanc.BuildConfig.VERSION_NAME} (v${com.omoda.lanc.BuildConfig.VERSION_CODE})")
            InfoRow("Build Tarihi", com.omoda.lanc.BuildConfig.BUILD_DATE)
            InfoRow("ID", vehicleId)
            InfoRow("Server", serverIp)
            InfoRow("Hardware", android.os.Build.MODEL)
        }
    }
}

@Composable
fun InfoRow(label: String, value: String) {
    Row {
        Text(label, color = Color.Gray, modifier = Modifier.weight(1f))
        Text(value, color = Color.White, fontWeight = FontWeight.Bold)
    }
}

@Composable
fun SliderWithLabel(label: String, value: Float, range: ClosedFloatingPointRange<Float>, steps: Int = 0, onValueChange: (Float) -> Unit) {
    Column {
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
            Text(label, color = Color.White, fontSize = 14.sp)
            Text("%.1f".format(value), color = Color(0xFF69E2D3), fontWeight = FontWeight.Bold)
        }
        Slider(value = value, onValueChange = onValueChange, valueRange = range, steps = steps, colors = SliderDefaults.colors(thumbColor = Color(0xFF69E2D3), activeTrackColor = Color(0xFF69E2D3)))
    }
}

@Composable
fun SwitchOption(label: String, checked: Boolean, onChecked: (Boolean) -> Unit) {
    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Text(label, color = Color.White, fontSize = 14.sp)
        Switch(checked = checked, onCheckedChange = onChecked, colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3)))
    }
}

@Composable
fun SafetyLockScreen() {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.spacedBy(16.dp)) {
            Icon(Icons.Default.Warning, contentDescription = null, tint = Color.Red, modifier = Modifier.size(80.dp))
            Text("SÜRÜŞ SIRASINDA KISITLI", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Black)
            Text("Güvenliğiniz için araç hareket halindeyken\nbu ayarlar değiştirilemez.", color = Color.Gray, textAlign = TextAlign.Center, fontSize = 16.sp)
        }
    }
}

private fun exec(context: Context, command: String) {
    val intent = Intent(context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
        action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
        putExtra("command", command)
    }
    ContextCompat.startForegroundService(context, intent)
}
