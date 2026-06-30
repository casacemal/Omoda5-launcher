package com.omoda.lanc.ui.screens

import android.content.Intent
import androidx.compose.animation.animateColorAsState
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
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.VehicleController
import java.text.SimpleDateFormat
import java.util.*
import kotlinx.coroutines.delay

@OptIn(ExperimentalMaterial3Api::class)
@Composable
@Suppress("ModifierParameter")
fun SettingsScreen(onBack: () -> Unit) {
    var selectedTab by remember { mutableStateOf("Genel") }
    
    val serverIp by AssistantApplication.serverIp.collectAsState()
    val hermesPort by AssistantApplication.hermesPort.collectAsState()
    val sttPort by AssistantApplication.sttPort.collectAsState()
    val ttsPort by AssistantApplication.ttsPort.collectAsState()
    
    val sttMode by AssistantApplication.sttMode.collectAsState()
    val ttsEngine by AssistantApplication.ttsEngine.collectAsState()
    val edgeVoiceName by AssistantApplication.edgeVoiceName.collectAsState()
    val edgePitch by AssistantApplication.edgePitch.collectAsState()
    val edgeRate by AssistantApplication.edgeRate.collectAsState()
    
    val groqApiKey by AssistantApplication.groqApiKey.collectAsState()
    val isAutoTasksEnabled by AssistantApplication.isAutoTasksEnabled.collectAsState()
    val vehicleId by AssistantApplication.vehicleId.collectAsState()
    val sessionKey by AssistantApplication.sessionKey.collectAsState()
    val pollingConfig by AssistantApplication.vehiclePollingConfig.collectAsState()
    
    // Tailscale States
    val tailscaleKey by AssistantApplication.tailscaleKey.collectAsState()
    val tailscaleStatus by AssistantApplication.tailscaleStatus.collectAsState()
    val isTailscaleEnabled by AssistantApplication.isTailscaleEnabled.collectAsState()
    val useTls by AssistantApplication.useTls.collectAsState()

    val isMqttConnected by AssistantApplication.isMqttConnected.collectAsState()
    val hasInternet by AssistantApplication.hasInternetConnection.collectAsState()
    val hermesStatus by AssistantApplication.hermesConnectionStatus.collectAsState()
    val isHermesConnected = hermesStatus == "CONNECTED"

    // Inputs
    var ipInput by remember { mutableStateOf(serverIp) }
    var hermesPortInput by remember { mutableStateOf(hermesPort) }
    var sttPortInput by remember { mutableStateOf(sttPort) }
    var ttsPortInput by remember { mutableStateOf(ttsPort) }
    var edgePitchInput by remember { mutableStateOf(edgePitch) }
    var edgeRateInput by remember { mutableStateOf(edgeRate) }
    var groqKeyInput by remember { mutableStateOf(groqApiKey) }
    var vehicleIdInput by remember { mutableStateOf(vehicleId) }
    var sessionKeyInput by remember { mutableStateOf(sessionKey) }

    var currentTime by remember { mutableStateOf("") }
    LaunchedEffect(Unit) {
        while (true) {
            currentTime = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            delay(1000)
        }
    }

    val backgroundBrush = Brush.verticalGradient(
        colors = listOf(Color(0xFF16181A), Color(0xFF090A0C))
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("GELİŞMİŞ AYARLAR", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold)
                        Spacer(Modifier.width(16.dp))
                        Text(currentTime, color = Color(0xFF69E2D3), fontSize = 16.sp, fontWeight = FontWeight.Medium)
                        Spacer(Modifier.width(24.dp))
                        Row(horizontalArrangement = Arrangement.spacedBy(12.dp), verticalAlignment = Alignment.CenterVertically) {
                            StatusLed("İnternet", hasInternet)
                            StatusLed("MQTT", isMqttConnected)
                            StatusLed("Hermes", isHermesConnected)
                        }
                    }
                },
                navigationIcon = {
                    IconButton(onClick = { 
                        AssistantApplication.saveCurrentConfig()
                        onBack() 
                    }) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Geri", tint = Color.White)
                    }
                },
                actions = {
                    Button(
                        onClick = { 
                            AssistantApplication.saveCurrentConfig()
                            AssistantApplication.status.value = "Ayarlar kaydedildi!"
                            onBack()
                        },
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3)),
                        shape = RoundedCornerShape(8.dp),
                        modifier = Modifier.padding(start = 0.dp, top = 0.dp, end = 8.dp, bottom = 0.dp)
                    ) {
                        Text("KAYDET", color = Color.Black, fontWeight = FontWeight.Bold, fontSize = 12.sp)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(containerColor = Color(0xFF0D0F11))
            )
        },
        containerColor = Color.Transparent
    ) { padding ->
        Row(modifier = Modifier.fillMaxSize().background(backgroundBrush).padding(padding)) {
            
            // ─────────────────────────────────────────────────
            // SOL SİDEBAR NAVİGASYON (TAB SEÇİCİ)
            // ─────────────────────────────────────────────────
            Column(
                modifier = Modifier
                    .width(180.dp)
                    .fillMaxHeight()
                    .background(Color.Black.copy(alpha = 0.25f))
                    .border(end = 1.dp, Color.White.copy(alpha = 0.05f))
                    .padding(vertical = 12.dp, horizontal = 8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                val menuItems = listOf(
                    Triple("Genel", Icons.Default.Build, "Genel Ayarlar"),
                    Triple("Asistan", Icons.Default.Person, "Asistan & Ses"),
                    Triple("Bağlantılar", Icons.Default.Wifi, "Ağ & Protokol"),
                    Triple("Sensörler", Icons.Default.DirectionsCar, "Sensör Ayarları"),
                    Triple("Mqtt Logları", Icons.Default.List, "MQTT Veri Logu"),
                    Triple("Güncelleme", Icons.Default.Refresh, "OTA App Store"),
                    Triple("Hakkında", Icons.Default.Info, "Sistem Bilgisi")
                )

                menuItems.forEach { (tabId, icon, label) ->
                    val isSelected = selectedTab == tabId
                    val itemBgColor by animateColorAsState(
                        targetValue = if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.15f) else Color.Transparent,
                        label = "tabBg"
                    )
                    val itemTextColor by animateColorAsState(
                        targetValue = if (isSelected) Color(0xFF69E2D3) else Color.White.copy(alpha = 0.7f),
                        label = "tabText"
                    )

                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(8.dp))
                            .background(itemBgColor)
                            .clickable { selectedTab = tabId }
                            .padding(horizontal = 12.dp, vertical = 12.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            imageVector = icon,
                            contentDescription = label,
                            tint = itemTextColor,
                            modifier = Modifier.size(20.dp)
                        )
                        Spacer(Modifier.width(12.dp))
                        Text(
                            text = tabId,
                            color = itemTextColor,
                            fontSize = 13.sp,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                        )
                    }
                }
            }

            // ─────────────────────────────────────────────────
            // SAĞ İÇERİK BÖLÜMÜ
            // ─────────────────────────────────────────────────
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .padding(20.dp)
            ) {
                when (selectedTab) {
                    "Genel" -> TabGenel(
                        ipInput = ipInput,
                        onIpChange = { ipInput = it; AssistantApplication.serverIp.value = it },
                        hermesPortInput = hermesPortInput,
                        onHermesPortChange = {
                            hermesPortInput = it
                            sttPortInput = it
                            ttsPortInput = it
                            AssistantApplication.hermesPort.value = it
                            AssistantApplication.sttPort.value = it
                            AssistantApplication.ttsPort.value = it
                        },
                        vehicleIdInput = vehicleIdInput,
                        onVehicleIdChange = { vehicleIdInput = it; AssistantApplication.vehicleId.value = it },
                        sessionKeyInput = sessionKeyInput,
                        onSessionKeyChange = { sessionKeyInput = it; AssistantApplication.sessionKey.value = it },
                        isAutoTasksEnabled = isAutoTasksEnabled,
                        onAutoTasksChange = { AssistantApplication.isAutoTasksEnabled.value = it }
                    )
                    
                    "Asistan" -> TabAsistan(
                        sttMode = sttMode,
                        ttsEngine = ttsEngine,
                        edgeVoiceName = edgeVoiceName,
                        edgePitchInput = edgePitchInput,
                        onPitchChange = { edgePitchInput = it; AssistantApplication.edgePitch.value = it },
                        edgeRateInput = edgeRateInput,
                        onRateChange = { edgeRateInput = it; AssistantApplication.edgeRate.value = it },
                        groqKeyInput = groqKeyInput,
                        onGroqKeyChange = { groqKeyInput = it; AssistantApplication.groqApiKey.value = it }
                    )

                    "Bağlantılar" -> TabBaglantilar(
                        isTailscaleEnabled = isTailscaleEnabled,
                        useTls = useTls,
                        tailscaleKey = tailscaleKey,
                        tailscaleStatus = tailscaleStatus,
                        isMqttConnected = isMqttConnected
                    )

                    "Sensörler" -> TabSensorler(
                        pollingConfig = pollingConfig
                    )

                    "Mqtt Logları" -> TabMqttLoglari()

                    "Güncelleme" -> AppStoreSection()

                    "Hakkında" -> TabHakkinda(
                        vehicleId = vehicleId,
                        sttMode = sttMode,
                        ttsEngine = ttsEngine,
                        serverIp = serverIp,
                        hermesPort = hermesPort
                    )
                }
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// TAB 1: GENEL AYARLAR
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun TabGenel(
    ipInput: String,
    onIpChange: (String) -> Unit,
    hermesPortInput: String,
    onHermesPortChange: (String) -> Unit,
    vehicleIdInput: String,
    onVehicleIdChange: (String) -> Unit,
    sessionKeyInput: String,
    onSessionKeyChange: (String) -> Unit,
    isAutoTasksEnabled: Boolean,
    onAutoTasksChange: (Boolean) -> Unit
) {
    val scrollState = rememberScrollState()
    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        SettingCard(title = "AĞ YAPILANDIRMASI") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                OutlinedTextField(
                    value = ipInput,
                    onValueChange = onIpChange,
                    label = { Text("Sunucu IP Adresi", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    )
                )
                
                OutlinedTextField(
                    value = hermesPortInput,
                    onValueChange = onHermesPortChange,
                    label = { Text("9Router API Port (Chat & STT)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    )
                )
            }
        }

        SettingCard(title = "KİMLİK BİLGİLERİ (ASİSTAN KİMLİĞİ)") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                OutlinedTextField(
                    value = vehicleIdInput,
                    onValueChange = onVehicleIdChange,
                    label = { Text("Araç Kimliği (Vehicle ID)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    )
                )
                
                OutlinedTextField(
                    value = sessionKeyInput,
                    onValueChange = onSessionKeyChange,
                    label = { Text("Oturum Anahtarı (Session Key)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    )
                )
            }
        }

        SettingCard(title = "SİSTEM VE İZİNLER") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Otomatik İzin Yönetimi (ADB)", color = Color.White, modifier = Modifier.weight(1f))
                    Switch(
                        checked = isAutoTasksEnabled,
                        onCheckedChange = onAutoTasksChange,
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }
                
                Text("Gelişmiş ADB Araçları:", color = Color.Gray, fontSize = 11.sp)
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedButton(
                        onClick = { 
                            val intent = Intent(AssistantApplication.configManager.context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
                                action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                                putExtra("command", "setprop service.adb.tcp.port 5555; stop adbd; start adbd")
                            }
                            AssistantApplication.configManager.context.startService(intent)
                        },
                        modifier = Modifier.weight(1f),
                        border = androidx.compose.foundation.BorderStroke(1.dp, Color(0xFF69E2D3)),
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = Color(0xFF69E2D3))
                    ) {
                        Text("ADB TCP AÇ", fontSize = 11.sp, fontWeight = FontWeight.SemiBold)
                    }
                    
                    OutlinedButton(
                        onClick = { 
                            val intent = Intent(AssistantApplication.configManager.context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
                                action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                                putExtra("command", "su -c id")
                            }
                            AssistantApplication.configManager.context.startService(intent)
                        },
                        modifier = Modifier.weight(1f),
                        border = androidx.compose.foundation.BorderStroke(1.dp, Color.White.copy(alpha = 0.5f)),
                        colors = ButtonDefaults.outlinedButtonColors(contentColor = Color.White)
                    ) {
                        Text("ROOT TEST", fontSize = 11.sp, fontWeight = FontWeight.SemiBold)
                    }
                }
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// TAB 2: ASİSTAN AYARLARI
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun TabAsistan(
    sttMode: String,
    ttsEngine: String,
    edgeVoiceName: String,
    edgePitchInput: String,
    onPitchChange: (String) -> Unit,
    edgeRateInput: String,
    onRateChange: (String) -> Unit,
    groqKeyInput: String,
    onGroqKeyChange: (String) -> Unit
) {
    val scrollState = rememberScrollState()
    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        SettingCard(title = "MOTOR SEÇİMİ (STT & TTS)") {
            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                Column {
                    Text("STT (Ses Tanıma) Motoru", color = Color.Gray, fontSize = 12.sp)
                    Row(modifier = Modifier.fillMaxWidth().padding(top = 8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf("HERMES", "BULUT", "SHERPA").forEach { mode ->
                            val isSelected = sttMode == mode
                            val isArchived = mode == "SHERPA"
                            val label = if (isArchived) "SHERPA (ARŞİV)" else mode
                            Box(
                                modifier = Modifier
                                    .weight(1f)
                                    .height(40.dp)
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(
                                        if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.2f) 
                                        else if (isArchived) Color.Red.copy(alpha = 0.1f)
                                        else Color.DarkGray.copy(alpha = 0.3f)
                                    )
                                    .border(1.dp, if (isSelected) Color(0xFF69E2D3) else Color.Transparent, RoundedCornerShape(8.dp))
                                    .clickable(enabled = !isArchived) { AssistantApplication.sttMode.value = mode },
                                contentAlignment = Alignment.Center
                            ) {
                                Text(label, color = if (isSelected) Color(0xFF69E2D3) else if (isArchived) Color.Gray else Color.White, fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal, fontSize = 12.sp)
                            }
                        }
                    }
                }

                Column {
                    Text("TTS (Ses Sentez) Motoru", color = Color.Gray, fontSize = 12.sp)
                    Row(modifier = Modifier.fillMaxWidth().padding(top = 8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf("HERMES", "EDGE", "SHERPA").forEach { engine ->
                            val isSelected = ttsEngine == engine
                            val isArchived = engine == "SHERPA"
                            val label = if (isArchived) "SHERPA (ARŞİV)" else engine
                            Box(
                                modifier = Modifier
                                    .weight(1f)
                                    .height(40.dp)
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(
                                        if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.2f) 
                                        else if (isArchived) Color.Red.copy(alpha = 0.1f)
                                        else Color.DarkGray.copy(alpha = 0.3f)
                                    )
                                    .border(1.dp, if (isSelected) Color(0xFF69E2D3) else Color.Transparent, RoundedCornerShape(8.dp))
                                    .clickable(enabled = !isArchived) { AssistantApplication.ttsEngine.value = engine },
                                contentAlignment = Alignment.Center
                            ) {
                                Text(label, color = if (isSelected) Color(0xFF69E2D3) else if (isArchived) Color.Gray else Color.White, fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal, fontSize = 12.sp)
                            }
                        }
                    }
                }
            }
        }

        SettingCard(title = "EDGE TTS AYARLARI") {
            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                Column {
                    Text("Ses Seçimi", color = Color.Gray, fontSize = 12.sp)
                    Row(modifier = Modifier.fillMaxWidth().padding(top = 8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        listOf(
                            "tr-TR-EmelNeural" to "Kadın (Emel)",
                            "tr-TR-AhmetNeural" to "Erkek (Ahmet)"
                        ).forEach { (voiceId, label) ->
                            val isSelected = edgeVoiceName == voiceId
                            Box(
                                modifier = Modifier
                                    .weight(1f)
                                    .height(40.dp)
                                    .clip(RoundedCornerShape(8.dp))
                                    .background(if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.2f) else Color.DarkGray.copy(alpha = 0.3f))
                                    .border(1.dp, if (isSelected) Color(0xFF69E2D3) else Color.Transparent, RoundedCornerShape(8.dp))
                                    .clickable { AssistantApplication.edgeVoiceName.value = voiceId },
                                contentAlignment = Alignment.Center
                            ) {
                                Text(label, color = if (isSelected) Color(0xFF69E2D3) else Color.White, fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal)
                            }
                        }
                    }
                }

                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedTextField(
                        value = edgePitchInput,
                        onValueChange = onPitchChange,
                        label = { Text("Ses Tonu (Pitch)", color = Color.Gray) },
                        modifier = Modifier.weight(1f),
                        placeholder = { Text("+0Hz", color = Color.DarkGray) },
                        singleLine = true,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedBorderColor = Color(0xFF69E2D3),
                            unfocusedBorderColor = Color.Gray
                        )
                    )
                    
                    OutlinedTextField(
                        value = edgeRateInput,
                        onValueChange = onRateChange,
                        label = { Text("Hız (Rate)", color = Color.Gray) },
                        modifier = Modifier.weight(1f),
                        placeholder = { Text("+0%", color = Color.DarkGray) },
                        singleLine = true,
                        colors = OutlinedTextFieldDefaults.colors(
                            focusedTextColor = Color.White,
                            unfocusedTextColor = Color.White,
                            focusedBorderColor = Color(0xFF69E2D3),
                            unfocusedBorderColor = Color.Gray
                        )
                    )
                }
            }
        }

        SettingCard(title = "GROQ API (STT - BULUT)") {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text(
                    "Bulut STT modu için geçerli bir Groq API anahtarı gereklidir.",
                    color = Color(0xFFFFD700),
                    fontSize = 11.sp
                )
                OutlinedTextField(
                    value = groqKeyInput,
                    onValueChange = onGroqKeyChange,
                    label = { Text("Groq API Key", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFFFFD700),
                        unfocusedBorderColor = Color.Gray
                    )
                )
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// TAB 3: BAĞLANTILAR
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun TabBaglantilar(
    isTailscaleEnabled: Boolean,
    useTls: Boolean,
    tailscaleKey: String,
    tailscaleStatus: String,
    isMqttConnected: Boolean
) {
    val scrollState = rememberScrollState()
    val mqttEnabled by AssistantApplication.mqttEnabled.collectAsState()
    val bridgeMode by AssistantApplication.isBridgeMode.collectAsState()
    val simulationMode by AssistantApplication.isSimulationMode.collectAsState()

    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        SettingCard(title = "MQTT VE KÖPRÜ (BRIDGE)") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("MQTT Aktif", color = Color.White, modifier = Modifier.weight(1f))
                    Switch(
                        checked = mqttEnabled,
                        onCheckedChange = { AssistantApplication.mqttEnabled.value = it },
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }
                
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Köprü (Bridge) Modu", color = Color.White, modifier = Modifier.weight(1f))
                    Switch(
                        checked = bridgeMode,
                        onCheckedChange = { AssistantApplication.isBridgeMode.value = it },
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Simülasyon Modu", color = Color.White, modifier = Modifier.weight(1f))
                    Switch(
                        checked = simulationMode,
                        onCheckedChange = { AssistantApplication.isSimulationMode.value = it },
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Bağlantı Durumu:", color = Color.Gray, fontSize = 12.sp, modifier = Modifier.weight(1f))
                    Text(
                        if (isMqttConnected) "BAĞLI" else "KOPUK",
                        color = if (isMqttConnected) Color.Green else Color.Red,
                        fontWeight = FontWeight.Bold,
                        fontSize = 12.sp
                    )
                }

                Button(
                    onClick = { AssistantApplication.mqttPublisher.connect() },
                    modifier = Modifier.fillMaxWidth(),
                    colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray)
                ) {
                    Text("MQTT YENİDEN BAĞLAN", fontSize = 12.sp)
                }
            }
        }

        SettingCard(title = "TAILSCALE (TSNET) YAPILANDIRMASI") {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Tailscale Aktif", color = Color.White, modifier = Modifier.weight(1f))
                    Switch(
                        checked = isTailscaleEnabled,
                        onCheckedChange = { AssistantApplication.isTailscaleEnabled.value = it },
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("TLS Doğrulama (tsnet)", color = Color.White, modifier = Modifier.weight(1f))
                    Switch(
                        checked = useTls,
                        onCheckedChange = { AssistantApplication.useTls.value = it },
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }

                OutlinedTextField(
                    value = tailscaleKey,
                    onValueChange = { AssistantApplication.tailscaleKey.value = it },
                    label = { Text("Auth Key", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    )
                )

                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Durum:", color = Color.Gray, fontSize = 12.sp, modifier = Modifier.weight(1f))
                    Text(
                        tailscaleStatus,
                        color = if (tailscaleStatus == "Bağlı") Color.Green else Color.Yellow,
                        fontWeight = FontWeight.Bold,
                        fontSize = 12.sp
                    )
                }
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// TAB 4: SENSÖRLER & CANLI SENSÖR VERİLERİ
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun TabSensorler(
    pollingConfig: Map<String, Int>
) {
    val scrollState = rememberScrollState()
    val tiers = listOf(2, 5, 10, 0) // 0 = kapalı
    val tierLabels = mapOf(2 to "2sn", 5 to "5sn", 10 to "10sn", 0 to "KAPALI")
    val tierColors = mapOf(
        2 to Color(0xFF4CAF50),
        5 to Color(0xFFF3B14B),
        10 to Color(0xFF69E2D3),
        0 to Color.Gray.copy(alpha = 0.4f)
    )

    // Canlı Sensör Verileri StateFlow'unu Dinliyoruz
    val vehicleDataValues by AssistantApplication.vehicleDataValues.collectAsState()

    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        SettingCard(title = "ARAÇ VERİ POLİTİKASI (POLLING SIKLIĞI)") {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                VehicleController.PROPERTY_DEFINITIONS.forEach { (propId, propDef) ->
                    val currentTier = pollingConfig[propId] ?: propDef.defaultTier
                    
                    Row(
                        modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            propDef.label,
                            color = if (currentTier > 0) Color.White else Color.Gray,
                            fontSize = 13.sp,
                            modifier = Modifier.weight(1.5f)
                        )
                        
                        Row(
                            modifier = Modifier.weight(2f),
                            horizontalArrangement = Arrangement.spacedBy(4.dp)
                        ) {
                            tiers.forEach { tier ->
                                val isSelected = currentTier == tier
                                Box(
                                    modifier = Modifier
                                        .weight(1f)
                                        .height(24.dp)
                                        .clip(RoundedCornerShape(4.dp))
                                        .background(if (isSelected) (tierColors[tier] ?: Color.Gray).copy(alpha = 0.2f) else Color.Transparent)
                                        .border(
                                            1.dp,
                                            if (isSelected) (tierColors[tier] ?: Color.Gray) else Color.White.copy(alpha = 0.05f),
                                            RoundedCornerShape(4.dp)
                                        )
                                        .clickable {
                                            val newConfig = pollingConfig.toMutableMap()
                                            newConfig[propId] = tier
                                            AssistantApplication.vehiclePollingConfig.value = newConfig
                                        },
                                    contentAlignment = Alignment.Center
                                ) {
                                    Text(
                                        tierLabels[tier] ?: "",
                                        color = if (isSelected) (tierColors[tier] ?: Color.White) else Color.Gray,
                                        fontSize = 9.sp,
                                        fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }

        // ─────────────────────────────────────────────────
        // CANLI SENSÖR VERİLERİ (TEXT LİSTE OLARAK)
        // ─────────────────────────────────────────────────
        SettingCard(title = "CANLI AKTİF SENSÖR VERİLERİ") {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                val activeSensors = vehicleDataValues.filter { (propId, _) ->
                    val tier = pollingConfig[propId] ?: 0
                    tier > 0
                }

                if (activeSensors.isEmpty()) {
                    Text(
                        "Aktif çalışan (Polling > 0) sensör bulunamadı. Yukarıdan süre seçerek sensörleri aktif edebilirsiniz.",
                        color = Color.Gray,
                        fontSize = 12.sp,
                        modifier = Modifier.fillMaxWidth().padding(vertical = 12.dp)
                    )
                } else {
                    activeSensors.forEach { (propId, value) ->
                        val name = VehicleController.PROPERTY_DEFINITIONS[propId]?.label 
                                   ?: com.omoda.lanc.core.SensorDictionary.ALL_SENSORS[propId] 
                                   ?: propId
                        
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clip(RoundedCornerShape(8.dp))
                                .background(Color.Black.copy(alpha = 0.2f))
                                .padding(horizontal = 12.dp, vertical = 8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Box(
                                modifier = Modifier
                                    .size(6.dp)
                                    .clip(CircleShape)
                                    .background(Color(0xFF69E2D3))
                            )
                            Spacer(Modifier.width(12.dp))
                            Text(
                                text = name,
                                color = Color.White.copy(alpha = 0.9f),
                                fontSize = 12.sp,
                                modifier = Modifier.weight(1.5f)
                            )
                            Text(
                                text = value,
                                color = Color(0xFF69E2D3),
                                fontSize = 12.sp,
                                fontWeight = FontWeight.Bold,
                                modifier = Modifier.weight(1f),
                                textAlign = TextAlign.End
                            )
                        }
                    }
                }
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// TAB 5: CANLI MQTT LOG EKRANI
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun TabMqttLoglari() {
    val mqttLogs by AssistantApplication.mqttLogList.collectAsState()

    Column(modifier = Modifier.fillMaxSize()) {
        Text("MQTT CANLI VERİ LOGU (EN YENİLER ÜSTTE)", color = Color(0xFF69E2D3), fontSize = 12.sp, fontWeight = FontWeight.Bold)
        Spacer(Modifier.height(8.dp))
        
        Card(
            colors = CardDefaults.cardColors(containerColor = Color(0xFF070809)),
            shape = RoundedCornerShape(12.dp),
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f)
                .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(12.dp))
        ) {
            if (mqttLogs.isEmpty()) {
                Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                    Text("MQTT verisi akmıyor. Bağlantıyı kontrol edin veya sensörleri aktif edin.", color = Color.Gray, fontSize = 12.sp)
                }
            } else {
                LazyColumn(
                    modifier = Modifier.fillMaxSize().padding(12.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    items(mqttLogs) { log ->
                        val isError = log.contains("HATA") || log.contains("KOPTU")
                        val isReceived = log.contains("Gelen")
                        val textColor = when {
                            isError -> Color(0xFFE57373)
                            isReceived -> Color(0xFF81C784)
                            else -> Color(0xFFFFD54F)
                        }

                        Text(
                            text = log,
                            color = textColor,
                            fontSize = 11.sp,
                            fontFamily = FontFamily.Monospace,
                            lineHeight = 15.sp
                        )
                    }
                }
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// TAB 7: HAKKINDA (SİSTEM BİLGİSİ)
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun TabHakkinda(
    vehicleId: String,
    sttMode: String,
    ttsEngine: String,
    serverIp: String,
    hermesPort: String
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val packageInfo = remember {
        try {
            context.packageManager.getPackageInfo(context.packageName, 0)
        } catch (e: Exception) { null }
    }
    @Suppress("DEPRECATION")
    val vCode = packageInfo?.versionCode
    val versionDisplay = packageInfo?.let { "v${it.versionName}($vCode)" } ?: "v1.0.0"
    val buildDate = com.omoda.lanc.BuildConfig.BUILD_DATE

    Column(
        modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        SettingCard(title = "SİSTEM BİLGİLERİ VE STATÜ") {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                InfoRow("Araç Kimliği (V-ID)", vehicleId)
                InfoRow("STT Motoru", sttMode)
                InfoRow("TTS Motoru", ttsEngine)
                InfoRow("Chat Yapay Zekası", "9Router → asist_genel")
                InfoRow("Hermes Sunucu Bağlantısı", "${serverIp}:${hermesPort}")
                InfoRow("Uygulama Sürümü", versionDisplay)
                InfoRow("Derleme Tarihi", buildDate)
            }
        }
    }
}

// ──────────────────────────────────────────────────────────────────────────
// YARDIMCI COMPOSABLE BİLEŞENLER
// ──────────────────────────────────────────────────────────────────────────
@Composable
fun SettingCard(title: String, content: @Composable () -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text(title, color = Color(0xFF69E2D3), fontSize = 12.sp, fontWeight = FontWeight.Bold)
        Card(
            colors = CardDefaults.cardColors(containerColor = Color(0xFF111315)),
            shape = RoundedCornerShape(16.dp),
            modifier = Modifier.fillMaxWidth().border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(16.dp))
        ) {
            Box(modifier = Modifier.padding(16.dp)) {
                content()
            }
        }
    }
}

@Composable
fun InfoRow(label: String, value: String) {
    Row {
        Text(label, color = Color.Gray, modifier = Modifier.weight(1f))
        Text(value, color = Color.White, fontWeight = FontWeight.Medium)
    }
}

@Composable
fun StatusLed(label: String, isConnected: Boolean) {
    Row(verticalAlignment = Alignment.CenterVertically) {
        Box(
            modifier = Modifier
                .size(8.dp)
                .clip(CircleShape)
                .background(if (isConnected) Color.Green else Color.Red)
        )
        Spacer(Modifier.width(4.dp))
        Text(label, color = Color.White, fontSize = 10.sp)
    }
}
