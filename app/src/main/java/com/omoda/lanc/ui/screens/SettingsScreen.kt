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
    
    // Daha hassas donanım algılama
    val isHandheld = !AssistantApplication.isCarHardware || configuration.screenWidthDp < 600
    
    val serverIp by GlobalState.serverIp.collectAsState()
    val hermesPort by GlobalState.hermesPort.collectAsState()
    val vehicleId by GlobalState.vehicleId.collectAsState()
    val pollingConfig by GlobalState.vehiclePollingConfig.collectAsState()
    
    val isMqttConnected by GlobalState.isMqttConnected.collectAsState()
    val hasInternet by GlobalState.hasInternetConnection.collectAsState()
    val hermesStatus by GlobalState.hermesConnectionStatus.collectAsState()
    val isHermesConnected = hermesStatus == "CONNECTED" || hermesStatus == "FALLBACK_CONNECTED" || hermesStatus == "FULL_CONNECTED"

    val vadSnr by GlobalState.vadSnrRatio.collectAsState()
    val vadSilence by GlobalState.vadSilenceDuration.collectAsState()
    val vadGain by GlobalState.vadGainFactor.collectAsState()
    
    val ttsRate by GlobalState.ttsRate.collectAsState()
    val ttsPitch by GlobalState.ttsPitch.collectAsState()
    
    val vehicleDataValues by GlobalState.vehicleDataValues.collectAsState()
    val speedStr = vehicleDataValues["11600207"] ?: "0"
    val speed = speedStr.replace(" km/h", "").replace(",", ".").toFloatOrNull() ?: 0f
    val isMoving = speed > 5f

    val context = LocalContext.current

    val sttMode by GlobalState.sttMode.collectAsState()
    val ttsEngine by GlobalState.ttsEngine.collectAsState()
    val micSource by GlobalState.micSource.collectAsState()
    val useHermesDecision by GlobalState.useHermesDecision.collectAsState()
    val isContinuousConversation by GlobalState.isContinuousConversation.collectAsState()
    val isWakeWordEnabled by GlobalState.isWakeWordEnabled.collectAsState()
    val isKlimaAutoEnable by GlobalState.isKlimaAutoEnable.collectAsState()

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
                Surface(color = Color.Black.copy(alpha = 0.4f), modifier = Modifier.fillMaxWidth().height(if(isHandheld) 60.dp else 80.dp)) {
                    Row(
                        modifier = Modifier.fillMaxSize().padding(horizontal = 16.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        IconButton(
                            onClick = { 
                                AssistantApplication.saveCurrentConfig()
                                onBack() 
                            },
                            modifier = Modifier.padding(start = if(isHandheld) 0.dp else 80.dp)
                        ) {
                            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Geri", tint = Color.White)
                        }
                        
                        Text(
                            text = if(isHandheld) "AYARLAR" else "SİSTEM AYARLARI", 
                            color = Color.White, 
                            fontSize = if(isHandheld) 18.sp else 22.sp, 
                            fontWeight = FontWeight.ExtraBold,
                            modifier = Modifier.padding(start = 8.dp)
                        )
                        
                        Spacer(Modifier.weight(1f))
                        
                        if(!isHandheld) {
                            Text(currentTime, color = Color(0xFF69E2D3), fontSize = 24.sp, fontWeight = FontWeight.Bold, fontFamily = FontFamily.Monospace)
                            Spacer(Modifier.width(32.dp))
                        }
                        
                        Row(horizontalArrangement = Arrangement.spacedBy(if(isHandheld) 8.dp else 16.dp)) {
                            StatusIndicator("Net", hasInternet, isHandheld)
                            StatusIndicator("MQTT", isMqttConnected, isHandheld)
                            StatusIndicator("AI", isHermesConnected, isHandheld)
                        }
                    }
                }
            },
            bottomBar = {
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
                            modifier = Modifier.height(if(isHandheld) 48.dp else 64.dp).width(if(isHandheld) 120.dp else 180.dp)
                        ) {
                            Text("İPTAL", fontWeight = FontWeight.Bold)
                        }
                        
                        Spacer(Modifier.width(if(isHandheld) 24.dp else 60.dp)) 
                        
                        Button(
                            onClick = { 
                                AssistantApplication.saveCurrentConfig()
                                onBack()
                            },
                            colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3)),
                            shape = RoundedCornerShape(12.dp),
                            modifier = Modifier.height(if(isHandheld) 48.dp else 64.dp).width(if(isHandheld) 180.dp else 240.dp)
                        ) {
                            Text("KAYDET", color = Color.Black, fontWeight = FontWeight.ExtraBold)
                        }
                    }
                }
            },
            containerColor = Color.Transparent
        ) { padding ->
            if (isHandheld) {
                // Phone Layout: Top Tabs + Content
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
                        SettingsContent(selectedTab, isMoving, sttMode, ttsEngine, micSource, useHermesDecision, isContinuousConversation, isWakeWordEnabled, vadSnr, vadSilence, vadGain, ttsRate, ttsPitch, isKlimaAutoEnable, vehicleId, serverIp, hermesPort, pollingConfig)
                    }
                }
            } else {
                // AAOS Layout: Sidebar + Content
                Row(modifier = Modifier.fillMaxSize().padding(padding)) {
                    val sidebarScrollState = rememberScrollState()
                    Column(
                        modifier = Modifier
                            .width(235.dp) // OMODA 5 Standard Sidebar Width
                            .fillMaxHeight()
                            .verticalScroll(sidebarScrollState)
                            .padding(12.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
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
                            LargeTabButton(name, icon, selectedTab == name) { selectedTab = name }
                        }
                    }
                    Box(modifier = Modifier.weight(1f).fillMaxHeight().padding(16.dp)) {
                        SettingsContent(selectedTab, isMoving, sttMode, ttsEngine, micSource, useHermesDecision, isContinuousConversation, isWakeWordEnabled, vadSnr, vadSilence, vadGain, ttsRate, ttsPitch, isKlimaAutoEnable, vehicleId, serverIp, hermesPort, pollingConfig)
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
    sttMode: String,
    ttsEngine: String,
    micSource: String,
    useDecision: Boolean,
    isContinuous: Boolean,
    isWakeWord: Boolean,
    snr: Float,
    silence: Long,
    gain: Float,
    ttsRate: Float,
    ttsPitch: Float,
    isKlimaAuto: Boolean,
    vehicleId: String,
    serverIp: String,
    hermesPort: String,
    pollingConfig: Map<String, Int>
) {
    if (isMoving && (selectedTab == "Bağlantılar" || selectedTab == "Sistem")) {
        SafetyLockScreen()
    } else {
        when (selectedTab) {
            "Asistan" -> TabAsistanEnhanced(sttMode, ttsEngine, micSource, useDecision, isContinuous, isWakeWord, snr, silence, gain, ttsRate, ttsPitch)
            "Bağlantılar" -> TabBaglantilarEnhanced(isMqtt = GlobalState.isMqttConnected.collectAsState().value)
            "Sensörler" -> TabSensorler(pollingConfig)
            "Sistem" -> TabSistemEnhanced(isKlimaAuto)
            "Loglar" -> TabMqttLoglari()
            "Market" -> AppStoreSection()
            "Hakkında" -> TabHakkinda(vehicleId, serverIp, hermesPort)
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
fun LargeTabButton(label: String, icon: androidx.compose.ui.graphics.vector.ImageVector, selected: Boolean, onClick: () -> Unit) {
    val bgColor by animateColorAsState(if (selected) Color(0xFF69E2D3).copy(alpha = 0.25f) else Color.White.copy(alpha = 0.05f))
    val contentColor by animateColorAsState(if (selected) Color(0xFF69E2D3) else Color.White.copy(alpha = 0.6f))
    Surface(
        onClick = onClick,
        color = bgColor,
        shape = RoundedCornerShape(16.dp),
        border = BorderStroke(1.dp, if (selected) Color(0xFF69E2D3).copy(alpha = 0.6f) else Color.Transparent),
        modifier = Modifier.fillMaxWidth().height(64.dp)
    ) {
        Row(modifier = Modifier.padding(horizontal = 16.dp), verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(12.dp)) {
            Icon(icon, contentDescription = null, tint = contentColor, modifier = Modifier.size(28.dp))
            Text(label, color = contentColor, fontSize = 16.sp, fontWeight = if (selected) FontWeight.ExtraBold else FontWeight.Bold)
        }
    }
}

@Composable
fun TabAsistanEnhanced(
    sttMode: String,
    ttsEngine: String,
    micSource: String,
    useDecision: Boolean,
    isContinuous: Boolean,
    isWakeWord: Boolean,
    snr: Float,
    silence: Long,
    gain: Float,
    ttsRate: Float,
    ttsPitch: Float
) {
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isPortrait = config.orientation == android.content.res.Configuration.ORIENTATION_PORTRAIT

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(16.dp)) {
        if (isPortrait) {
            EnhancedSettingCard(title = "SES TANIMA (STT)") {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "BULUT", active = sttMode == "HERMES", onClick = { GlobalState.sttMode.value = "HERMES" }, modifier = Modifier.weight(1f))
                    SettingsToggleButton(label = "SHERPA", active = sttMode == "SHERPA", onClick = { GlobalState.sttMode.value = "SHERPA" }, modifier = Modifier.weight(1f))
                    SettingsToggleButton(label = "NATIVE", active = sttMode == "LOCAL", onClick = { GlobalState.sttMode.value = "LOCAL" }, modifier = Modifier.weight(1f))
                }
            }
            EnhancedSettingCard(title = "SES SENTEZİ (TTS)") {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "EDGE", active = ttsEngine == "EDGE", onClick = { GlobalState.ttsEngine.value = "EDGE" }, modifier = Modifier.weight(1f))
                    SettingsToggleButton(label = "9ROUTER", active = ttsEngine == "9ROUTER", onClick = { GlobalState.ttsEngine.value = "9ROUTER" }, modifier = Modifier.weight(1f))
                    SettingsToggleButton(label = "NATIVE", active = ttsEngine == "LOCAL", onClick = { GlobalState.ttsEngine.value = "LOCAL" }, modifier = Modifier.weight(1f))
                }
            }
        } else {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                EnhancedSettingCard(title = "SES TANIMA (STT)", modifier = Modifier.weight(1f)) {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        SettingsToggleButton(label = "BULUT", active = sttMode == "HERMES", onClick = { GlobalState.sttMode.value = "HERMES" })
                        SettingsToggleButton(label = "SHERPA", active = sttMode == "SHERPA", onClick = { GlobalState.sttMode.value = "SHERPA" })
                        SettingsToggleButton(label = "NATIVE", active = sttMode == "LOCAL", onClick = { GlobalState.sttMode.value = "LOCAL" })
                    }
                }
                EnhancedSettingCard(title = "SES SENTEZİ (TTS)", modifier = Modifier.weight(1f)) {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        SettingsToggleButton(label = "EDGE", active = ttsEngine == "EDGE", onClick = { GlobalState.ttsEngine.value = "EDGE" })
                        SettingsToggleButton(label = "9ROUTER", active = ttsEngine == "9ROUTER", onClick = { GlobalState.ttsEngine.value = "9ROUTER" })
                        SettingsToggleButton(label = "NATIVE", active = ttsEngine == "LOCAL", onClick = { GlobalState.ttsEngine.value = "LOCAL" })
                    }
                }
            }
        }
        
        EnhancedSettingCard(title = "MİKROFON HASSASİYETİ (VHAL)") {
            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                SliderWithLabel(label = "SNR Eşiği (Hassasiyet)", value = snr, range = 0.5f..4.0f, onValueChange = { GlobalState.vadSnrRatio.value = it })
                SliderWithLabel(label = "PCM Kazanç (Gain)", value = gain, range = 1.0f..8.0f, onValueChange = { GlobalState.vadGainFactor.value = it })
                SliderWithLabel(label = "Sessizlik Süresi (ms)", value = silence.toFloat(), range = 500f..5000f, steps = 9, onValueChange = { GlobalState.vadSilenceDuration.value = it.toLong() })
            }
        }

        EnhancedSettingCard(title = "SES AYARLARI (EDGE TTS)") {
            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                SliderWithLabel(label = "Konuşma Hızı", value = ttsRate, range = 0.5f..2.0f, onValueChange = { 
                    GlobalState.ttsRate.value = it 
                    AssistantApplication.saveCurrentConfig()
                })
                SliderWithLabel(label = "Ses Tonu (Pitch)", value = ttsPitch, range = 0.5f..2.0f, onValueChange = { 
                    GlobalState.ttsPitch.value = it 
                    AssistantApplication.saveCurrentConfig()
                })
            }
        }
        
        EnhancedSettingCard(title = "DİYALOG AYARLARI") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                    SwitchOption(label = "Hey Omoda", checked = isWakeWord, onChecked = { GlobalState.isWakeWordEnabled.value = it })
                    SwitchOption(label = "Kesintisiz", checked = isContinuous, onChecked = { GlobalState.isContinuousConversation.value = it })
                }
                SwitchOption(label = "Akıllı Karar Motoru", checked = useDecision, onChecked = { GlobalState.useHermesDecision.value = it })
                
                HorizontalDivider(color = Color.White.copy(alpha = 0.05f))
                Text("Mikrofon Kaynağı", color = Color.Gray, fontSize = 12.sp)
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "STT", active = micSource == "VOICE_RECOGNITION", onClick = { GlobalState.micSource.value = "VOICE_RECOGNITION" }, modifier = Modifier.weight(1f))
                    SettingsToggleButton(label = "VOIP", active = micSource == "VOICE_COMMUNICATION", onClick = { GlobalState.micSource.value = "VOICE_COMMUNICATION" }, modifier = Modifier.weight(1f))
                    SettingsToggleButton(label = "MIC", active = micSource == "MIC", onClick = { GlobalState.micSource.value = "MIC" }, modifier = Modifier.weight(1f))
                }
            }
        }
    }
}

@Composable
fun TabBaglantilarEnhanced(isMqtt: Boolean) {
    val scrollState = rememberScrollState()
    val serverIp by GlobalState.serverIp.collectAsState()
    val bridgeIp by GlobalState.bridgeServerIp.collectAsState()
    var ipInput by remember { mutableStateOf(serverIp) }
    var bridgeIpInput by remember { mutableStateOf(bridgeIp) }

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(24.dp)) {
        EnhancedSettingCard(title = "SUNUCU YAPILANDIRMASI") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                OutlinedTextField(
                    value = ipInput, onValueChange = { ipInput = it; GlobalState.serverIp.value = it }, 
                    label = { Text("Ana Sunucu IP") }, modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3))
                )
                OutlinedTextField(
                    value = bridgeIpInput, onValueChange = { bridgeIpInput = it; GlobalState.bridgeServerIp.value = it }, 
                    label = { Text("Köprü IP") }, modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3))
                )
            }
        }
        EnhancedSettingCard(title = "BAĞLANTI DURUMU") {
            Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                Text("MQTT Durumu:", color = Color.Gray, modifier = Modifier.weight(1f))
                Text(if (isMqtt) "AKTİF" else "KOPUK", color = if (isMqtt) Color.Green else Color.Red, fontWeight = FontWeight.Bold)
            }
        }
    }
}

@Composable
fun TabSistemEnhanced(isKlimaAuto: Boolean) {
    val context = LocalContext.current
    var shellCommand by remember { mutableStateOf("") }
    val scrollState = rememberScrollState()
    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(24.dp)) {
        EnhancedSettingCard(title = "VARSAYILAN LAUNCHER") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Button(onClick = { 
                    val cmds = listOf("pm disable-user --user 0 com.yfve.launcher", "cmd package set-home-activity com.omoda.lanc/.MainActivity", "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity")
                    cmds.forEach { exec(context, it) }
                }, modifier = Modifier.fillMaxWidth().height(60.dp), colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFF3B14B))) {
                    Text("VARSAYILAN YAP (ZORLA)", color = Color.Black, fontWeight = FontWeight.Bold)
                }
            }
        }
        EnhancedSettingCard(title = "ARAÇ ARAÇLARI") {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Button(onClick = { exec(context, "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity") }, modifier = Modifier.weight(1f)) { Text("KLİMA") }
                Button(onClick = { exec(context, "svc wifi disable; sleep 2; svc wifi enable") }, modifier = Modifier.weight(1f)) { Text("WIFI ONAR") }
            }
        }
        EnhancedSettingCard(title = "KOMUT") {
            OutlinedTextField(value = shellCommand, onValueChange = { shellCommand = it }, label = { Text("ADB Komut") }, modifier = Modifier.fillMaxWidth())
            Button(onClick = { exec(context, shellCommand); shellCommand = "" }, modifier = Modifier.fillMaxWidth().padding(top = 8.dp)) { Text("GÖNDER") }
        }
    }
}

@Composable
fun TabSensorler(pollingConfig: Map<String, Int>) {
    val tiers = listOf(2, 5, 10, 0)
    val tierLabels = mapOf(2 to "2s", 5 to "5s", 10 to "10s", 0 to "OFF")
    val scrollState = rememberScrollState()
    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState).padding(bottom = 80.dp)) {
        EnhancedSettingCard(title = "ARAÇ VERİ POLİTİKASI") {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                VehicleController.PROPERTY_DEFINITIONS.forEach { (id, def) ->
                    val tier = pollingConfig[id] ?: def.defaultTier
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(def.label, color = Color.White, modifier = Modifier.weight(1f), fontSize = 14.sp)
                        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                            tiers.forEach { t ->
                                val sel = tier == t
                                Box(modifier = Modifier.size(40.dp, 30.dp).clip(RoundedCornerShape(4.dp)).background(if(sel) Color(0xFF69E2D3).copy(0.2f) else Color.Transparent).border(1.dp, if(sel) Color(0xFF69E2D3) else Color.White.copy(0.1f), RoundedCornerShape(4.dp)).clickable {
                                    val map = pollingConfig.toMutableMap(); map[id] = t; GlobalState.vehiclePollingConfig.value = map
                                }, contentAlignment = Alignment.Center) {
                                    Text(tierLabels[t]!!, color = if(sel) Color(0xFF69E2D3) else Color.Gray, fontSize = 10.sp)
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
fun TabMqttLoglari() {
    val logs by AssistantApplication.mqttLogList.collectAsState()
    EnhancedSettingCard(title = "MQTT LOGS", modifier = Modifier.fillMaxSize()) {
        LazyColumn(modifier = Modifier.fillMaxSize()) {
            items(logs) { log -> Text(log, color = Color(0xFF69E2D3), fontSize = 10.sp, fontFamily = FontFamily.Monospace) }
        }
    }
}

@Composable
fun TabHakkinda(vehicleId: String, serverIp: String, hermesPort: String) {
    EnhancedSettingCard(title = "SİSTEM BİLGİSİ") {
        Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
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
