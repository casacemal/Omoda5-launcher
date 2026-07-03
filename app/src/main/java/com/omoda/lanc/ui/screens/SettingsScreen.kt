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
import androidx.compose.material.icons.automirrored.filled.List
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
    val bridgeServerIp by AssistantApplication.bridgeServerIp.collectAsState()
    val sttPort by AssistantApplication.sttPort.collectAsState()
    val ttsPort by AssistantApplication.ttsPort.collectAsState()
    
    val sttMode by AssistantApplication.sttMode.collectAsState()
    val ttsEngine by AssistantApplication.ttsEngine.collectAsState()
    
    val isAutoTasksEnabled by AssistantApplication.isAutoTasksEnabled.collectAsState()
    val vehicleId by AssistantApplication.vehicleId.collectAsState()
    val sessionKey by AssistantApplication.sessionKey.collectAsState()
    val pollingConfig by AssistantApplication.vehiclePollingConfig.collectAsState()
    
    val isMqttConnected by AssistantApplication.isMqttConnected.collectAsState()
    val hasInternet by AssistantApplication.hasInternetConnection.collectAsState()
    val hermesStatus by AssistantApplication.hermesConnectionStatus.collectAsState()
    val isHermesConnected = hermesStatus == "CONNECTED"

    // Inputs
    var ipInput by remember { mutableStateOf(serverIp) }
    var bridgeIpInput by remember { mutableStateOf(bridgeServerIp) }
    var hermesPortInput by remember { mutableStateOf(hermesPort) }
    var sttPortInput by remember { mutableStateOf(sttPort) }
    var ttsPortInput by remember { mutableStateOf(ttsPort) }
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
                    val context = androidx.compose.ui.platform.LocalContext.current
                    val packageInfo = remember { try { context.packageManager.getPackageInfo(context.packageName, 0) } catch (e: Exception) { null } }
                    val installedVersion = "v${packageInfo?.versionName}"
                    val latestVersion by AssistantApplication.latestVersion.collectAsState()

                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("GELİŞMİŞ AYARLAR", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold)
                        Spacer(Modifier.width(12.dp))
                        Column {
                            Text(currentTime, color = Color(0xFF69E2D3), fontSize = 14.sp, fontWeight = FontWeight.Medium)
                            Text("Yüklü: $installedVersion | Güncel: $latestVersion", color = Color.Gray, fontSize = 9.sp)
                        }
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
                        modifier = Modifier.padding(8.dp)
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
            
            Column(
                modifier = Modifier
                    .width(180.dp)
                    .fillMaxHeight()
                    .background(Color.Black.copy(alpha = 0.25f))
                    .border(1.dp, Color.White.copy(alpha = 0.05f))
                    .padding(vertical = 12.dp, horizontal = 8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                val menuItems = listOf(
                    Triple("Genel", Icons.Default.Build, "Genel Ayarlar"),
                    Triple("Bağlantılar", Icons.Default.Wifi, "Ağ & Protokol"),
                    Triple("Sensörler", Icons.Default.DirectionsCar, "Sensör Ayarları"),
                    Triple("Mqtt Logları", Icons.AutoMirrored.Filled.List, "MQTT Veri Logu"),
                    Triple("GÜNCELLEMELER", Icons.Default.Refresh, "OTA App Store"),
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

            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .padding(20.dp)
            ) {
                when (selectedTab) {
                    "Genel" -> TabGenel(
                        ipInput = ipInput,
                        onIpChange = { ipInput = it; AssistantApplication.serverIp.value = it; AssistantApplication.activeServerIp.value = it },
                        bridgeIpInput = bridgeIpInput,
                        onBridgeIpChange = { bridgeIpInput = it; AssistantApplication.bridgeServerIp.value = it },
                        hermesPortInput = hermesPortInput,
                        onHermesPortChange = { hermesPortInput = it; AssistantApplication.hermesPort.value = it },
                        sttPortInput = sttPortInput,
                        onSttPortChange = { sttPortInput = it; AssistantApplication.sttPort.value = it },
                        ttsPortInput = ttsPortInput,
                        onTtsPortChange = { ttsPortInput = it; AssistantApplication.ttsPort.value = it },
                        vehicleIdInput = vehicleIdInput,
                        onVehicleIdChange = { vehicleIdInput = it; AssistantApplication.vehicleId.value = it },
                        sessionKeyInput = sessionKeyInput,
                        onSessionKeyChange = { sessionKeyInput = it; AssistantApplication.sessionKey.value = it },
                        isAutoTasksEnabled = isAutoTasksEnabled,
                        onAutoTasksChange = { AssistantApplication.isAutoTasksEnabled.value = it }
                    )

                    "Bağlantılar" -> TabBaglantilar(
                        isMqttConnected = isMqttConnected
                    )

                    "Sensörler" -> TabSensorler(
                        pollingConfig = pollingConfig
                    )

                    "Mqtt Logları" -> TabMqttLoglari()

                    "GÜNCELLEMELER" -> AppStoreSection()

                    "Hakkında" -> TabHakkinda(
                        vehicleId = vehicleId,
                        serverIp = serverIp,
                        hermesPort = hermesPort
                    )
                }
            }
        }
    }
}

@Composable
fun TabGenel(
    ipInput: String,
    onIpChange: (String) -> Unit,
    bridgeIpInput: String,
    onBridgeIpChange: (String) -> Unit,
    hermesPortInput: String,
    onHermesPortChange: (String) -> Unit,
    sttPortInput: String,
    onSttPortChange: (String) -> Unit,
    ttsPortInput: String,
    onTtsPortChange: (String) -> Unit,
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
                    label = { Text("Hermes Server IP (100.95.239.119)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    )
                )

                OutlinedTextField(
                    value = bridgeIpInput,
                    onValueChange = onBridgeIpChange,
                    label = { Text("Bridge Server IP (100.99.195.67)", color = Color.Gray) },
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
                    label = { Text("Hermes Port (20128)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    ),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number)
                )

                OutlinedTextField(
                    value = sttPortInput,
                    onValueChange = onSttPortChange,
                    label = { Text("STT Port (20128)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    ),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number)
                )

                OutlinedTextField(
                    value = ttsPortInput,
                    onValueChange = onTtsPortChange,
                    label = { Text("TTS Port (20128)", color = Color.Gray) },
                    modifier = Modifier.fillMaxWidth(),
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = Color.White,
                        unfocusedTextColor = Color.White,
                        focusedBorderColor = Color(0xFF69E2D3),
                        unfocusedBorderColor = Color.Gray
                    ),
                    keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number)
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
                }
            }
        }
    }
}

@Composable
fun TabBaglantilar(
    isMqttConnected: Boolean
) {
    val scrollState = rememberScrollState()
    val mqttEnabled by AssistantApplication.mqttEnabled.collectAsState()
    val bridgeMode by AssistantApplication.isBridgeMode.collectAsState()
    val bridgeType by AssistantApplication.bridgeType.collectAsState()
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

                if (bridgeMode) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("Köprü Protokolü", color = Color.White, modifier = Modifier.weight(1f))
                        Row(modifier = Modifier.weight(1f), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            FilterChip(
                                selected = bridgeType == "WYOMING",
                                onClick = { AssistantApplication.bridgeType.value = "WYOMING" },
                                label = { Text("Wyoming", fontSize = 10.sp) },
                                colors = FilterChipDefaults.filterChipColors(selectedContainerColor = Color(0xFF69E2D3).copy(alpha = 0.2f))
                            )
                            FilterChip(
                                selected = bridgeType == "WHISPER",
                                onClick = { AssistantApplication.bridgeType.value = "WHISPER" },
                                label = { Text("Whisper", fontSize = 10.sp) },
                                colors = FilterChipDefaults.filterChipColors(selectedContainerColor = Color(0xFF69E2D3).copy(alpha = 0.2f))
                            )
                        }
                    }
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
    }
}

@Composable
fun TabSensorler(
    pollingConfig: Map<String, Int>
) {
    val scrollState = rememberScrollState()
    val tiers = listOf(2, 5, 10, 0)
    val tierLabels = mapOf(2 to "2sn", 5 to "5sn", 10 to "10sn", 0 to "KAPALI")
    val tierColors = mapOf(
        2 to Color(0xFF4CAF50),
        5 to Color(0xFFF3B14B),
        10 to Color(0xFF69E2D3),
        0 to Color.Gray.copy(alpha = 0.4f)
    )

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
    }
}

@Composable
fun TabMqttLoglari() {
    val mqttLogs by AssistantApplication.mqttLogList.collectAsState()
    Column(modifier = Modifier.fillMaxSize()) {
        Text("MQTT CANLI VERİ LOGU", color = Color(0xFF69E2D3), fontSize = 12.sp, fontWeight = FontWeight.Bold)
        Spacer(Modifier.height(8.dp))
        Card(
            colors = CardDefaults.cardColors(containerColor = Color(0xFF070809)),
            modifier = Modifier.fillMaxWidth().weight(1f).border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(12.dp))
        ) {
            LazyColumn(modifier = Modifier.fillMaxSize().padding(12.dp)) {
                items(mqttLogs) { log ->
                    Text(log, color = Color.White, fontSize = 11.sp, fontFamily = FontFamily.Monospace)
                }
            }
        }
    }
}

@Composable
fun TabHakkinda(vehicleId: String, serverIp: String, hermesPort: String) {
    val context = androidx.compose.ui.platform.LocalContext.current
    val packageInfo = remember { try { context.packageManager.getPackageInfo(context.packageName, 0) } catch (e: Exception) { null } }
    val vCode = if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.P) packageInfo?.longVersionCode else packageInfo?.versionCode?.toLong()
    Column(modifier = Modifier.fillMaxSize(), verticalArrangement = Arrangement.spacedBy(16.dp)) {
        SettingCard(title = "SİSTEM BİLGİLERİ") {
            Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                InfoRow("V-ID", vehicleId)
                InfoRow("Sürüm", "v${packageInfo?.versionName}($vCode)")
                InfoRow("Sunucu", "$serverIp:$hermesPort")
            }
        }
    }
}

@Composable
fun SettingCard(title: String, content: @Composable () -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text(title, color = Color(0xFF69E2D3), fontSize = 12.sp, fontWeight = FontWeight.Bold)
        Card(colors = CardDefaults.cardColors(containerColor = Color(0xFF111315)), modifier = Modifier.fillMaxWidth().border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(16.dp))) {
            Box(modifier = Modifier.padding(16.dp)) { content() }
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
        Box(modifier = Modifier.size(8.dp).clip(CircleShape).background(if (isConnected) Color.Green else Color.Red))
        Spacer(Modifier.width(4.dp))
        Text(label, color = Color.White, fontSize = 10.sp)
    }
}
