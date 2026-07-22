package com.omoda.lanc.ui.screens

import android.content.Context
import android.content.Intent
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
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
import com.omoda.lanc.core.PermissionManager
import com.omoda.lanc.core.SystemTimeSync
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.core.dsl.Omoda5
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.components.StatusLed
import com.omoda.lanc.ui.components.CarButton
import com.omoda.lanc.ui.components.CarIconButton
import com.omoda.lanc.ui.components.MinCarTouchTarget
import com.omoda.lanc.voice.ModelRepairManager
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*
import com.omoda.lanc.ui.screens.settings.*

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(onBack: () -> Unit) {
    var selectedTab by remember { mutableStateOf("Asistan") }
    val configuration = LocalConfiguration.current
    val isLandscape = configuration.orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE
    
    // Daha hassas donanım algılama
    val isHandheld = !GlobalState.isCarHardware || configuration.screenWidthDp < 600
    val useSidebar = !isHandheld || isLandscape
    val sidebarWidth = if (GlobalState.isCarHardware) 235.dp else 160.dp
    
    val topBarHeight = if (isHandheld) {
        if (isLandscape) 36.dp else 60.dp
    } else 80.dp
    
    // Global States
    val gServerIp by GlobalState.serverIp.collectAsState()
    val mqttUrl by GlobalState.mqttUrl.collectAsState()
    val mqttPort by GlobalState.mqttPort.collectAsState()
    val bridgeIp by GlobalState.bridgeServerIp.collectAsState()
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
    var mqttUrlState by remember(mqttUrl) { mutableStateOf(mqttUrl) }
    var mqttPortState by remember(mqttPort) { mutableStateOf(mqttPort) }
    var bridgeServerIp by remember(bridgeIp) { mutableStateOf(bridgeIp) }
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
    val speedStr = vehicleDataValues["HIZ"] ?: "0"
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
        GlobalState.mqttUrl.value = mqttUrlState
        GlobalState.mqttPort.value = mqttPortState
        GlobalState.bridgeServerIp.value = bridgeServerIp
        GlobalState.githubToken.value = githubToken
        GlobalState.hermesApiKey.value = hermesApiKey
        GlobalState.ninerouterApiKey.value = ninerouterApiKey
        GlobalState.edgeTtsToken.value = edgeTtsToken
        
        com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
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
                        CarIconButton(
                            onClick = { onBack() },
                            modifier = Modifier.padding(start = if(isHandheld) 0.dp else 80.dp)
                        ) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Geri", tint = Color.White, modifier = Modifier.size(if(isHandheld && isLandscape) 24.dp else 32.dp))
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
                            Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                                CarButton(
                                    onClick = { onBack() },
                                    text = "İPTAL",
                                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF333333)),
                                    modifier = Modifier.height(MinCarTouchTarget)
                                )
                                
                                CarButton(
                                    onClick = { performSave() },
                                    text = "KAYDET",
                                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3), contentColor = Color.Black),
                                    modifier = Modifier.height(MinCarTouchTarget)
                                )
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
                            CarButton(
                                onClick = { onBack() },
                                text = "İPTAL",
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF333333)),
                                modifier = Modifier.height(MinCarTouchTarget).width(if(isHandheld) 140.dp else 220.dp)
                            )
                            
                            Spacer(Modifier.width(if(isHandheld) 24.dp else 60.dp))
                            
                            CarButton(
                                onClick = { performSave() },
                                text = "KAYDET",
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3), contentColor = Color.Black),
                                modifier = Modifier.height(MinCarTouchTarget).width(if(isHandheld) 180.dp else 280.dp)
                            )
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
                        "İzinler" to Icons.Default.CheckCircle,
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
                            val isSelected = selectedTab == name
                            val interactionSource = remember { MutableInteractionSource() }
                            val isFocused by interactionSource.collectIsFocusedAsState()
                            
                            Surface(
                                onClick = { selectedTab = name },
                                modifier = Modifier
                                    .height(if(isHandheld) 48.dp else MinCarTouchTarget)
                                    .padding(if (isFocused) 2.dp else 0.dp),
                                shape = RoundedCornerShape(16.dp),
                                color = if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.2f) else Color.White.copy(alpha = 0.05f),
                                border = BorderStroke(if (isFocused) 4.dp else 1.dp, if (isFocused) Color.White else if (isSelected) Color(0xFF69E2D3) else Color.Transparent),
                                interactionSource = interactionSource
                            ) {
                                Row(
                                    modifier = Modifier.padding(horizontal = 16.dp),
                                    verticalAlignment = Alignment.CenterVertically,
                                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                                ) {
                                    Icon(icon, null, modifier = Modifier.size(if(isHandheld) 18.dp else 24.dp), tint = if (isSelected) Color(0xFF69E2D3) else Color.Gray)
                                    Text(name, color = if (isSelected) Color(0xFF69E2D3) else Color.Gray, fontSize = if(isHandheld) 14.sp else 18.sp, fontWeight = if(isSelected) FontWeight.Bold else FontWeight.Normal)
                                }
                            }
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
                            mqttUrl = mqttUrlState,
                            onMqttUrlChange = { mqttUrlState = it },
                            mqttPort = mqttPortState,
                            onMqttPortChange = { mqttPortState = it },
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
                            "İzinler" to Icons.Default.CheckCircle,
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
                            mqttUrl = mqttUrlState,
                            onMqttUrlChange = { mqttUrlState = it },
                            mqttPort = mqttPortState,
                            onMqttPortChange = { mqttPortState = it },
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
    mqttUrl: String,
    onMqttUrlChange: (String) -> Unit,
    mqttPort: String,
    onMqttPortChange: (String) -> Unit,
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
                mqttUrl = mqttUrl,
                onMqttUrlChange = onMqttUrlChange,
                mqttPort = mqttPort,
                onMqttPortChange = onMqttPortChange,
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
            "Loglar" -> TabGeneralLogs(isHandheld)
            "İzinler" -> TabIzinler(isHandheld)
            "Market" -> AppStoreSection()
            "Hakkında" -> TabHakkinda(isHandheld, vehicleId, serverIp)
        }
    }
}

