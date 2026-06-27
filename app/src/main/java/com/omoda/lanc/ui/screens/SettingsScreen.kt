package com.omoda.lanc.ui.screens

import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.clickable
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
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
fun SettingsScreen(onBack: () -> Unit) {
    val serverIp by AssistantApplication.serverIp.collectAsState()
    val hermesPort by AssistantApplication.hermesPort.collectAsState()
    val sttPort by AssistantApplication.sttPort.collectAsState()
    val ttsPort by AssistantApplication.ttsPort.collectAsState()
    
    val sttMode by AssistantApplication.sttMode.collectAsState()
    val ttsEngine by AssistantApplication.ttsEngine.collectAsState()
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

    var ipInput by remember { mutableStateOf(serverIp) }
    var hermesPortInput by remember { mutableStateOf(hermesPort) }
    var sttPortInput by remember { mutableStateOf(sttPort) }
    var ttsPortInput by remember { mutableStateOf(ttsPort) }
    var groqKeyInput by remember { mutableStateOf(groqApiKey) }
    var vehicleIdInput by remember { mutableStateOf(vehicleId) }
    var sessionKeyInput by remember { mutableStateOf(sessionKey) }
    var showSensorDialog by remember { mutableStateOf(false) }

    var currentTime by remember { mutableStateOf("") }
    LaunchedEffect(Unit) {
        while (true) {
            currentTime = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            delay(1000)
        }
    }

    val tiers = listOf(2, 5, 10, 0) // 0 = kapalı
    val tierLabels = mapOf(2 to "2sn", 5 to "5sn", 10 to "10sn", 0 to "KAPALI")
    val tierColors = mapOf(
        2 to Color(0xFF4CAF50),   // Yeşil
        5 to Color(0xFFF3B14B),   // Sarı
        10 to Color(0xFF69E2D3),  // Teal
        0 to Color.Gray.copy(alpha = 0.4f)
    )

    val backgroundBrush = Brush.verticalGradient(
        colors = listOf(Color(0xFF1A1C1E), Color(0xFF0D0F10))
    )

    val configuration = androidx.compose.ui.platform.LocalConfiguration.current
    val screenWidth = configuration.screenWidthDp
    val isMobile = screenWidth < 600

    Scaffold(
        topBar = {
            TopAppBar(
                title = { 
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("GELİŞMİŞ AYARLAR", color = Color.White, fontSize = if(isMobile) 14.sp else 18.sp, fontWeight = FontWeight.Bold)
                        if (!isMobile) {
                            Spacer(Modifier.width(16.dp))
                            Text(currentTime, color = Color(0xFF69E2D3), fontSize = 16.sp, fontWeight = FontWeight.Medium)
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
                colors = TopAppBarDefaults.topAppBarColors(containerColor = Color(0xFF111315))
            )
        },
        containerColor = Color.Transparent
    ) { padding ->
        Row(modifier = Modifier.fillMaxSize().background(backgroundBrush).padding(padding)) {
            // Sol Yan Bar (Side Bar) - Mobilde Gizle
            if (!isMobile) {
                Column(
                    modifier = Modifier
                        .width(80.dp)
                        .fillMaxHeight()
                        .background(Color.Black.copy(alpha = 0.3f))
                        .padding(vertical = 16.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(24.dp)
                ) {
                    listOf(
                        Icons.Default.Settings to "Genel",
                        Icons.Default.Settings to "Ağ",
                        Icons.Default.Settings to "Asistan",
                        Icons.Default.Settings to "Araç"
                    ).forEach { (icon, label) ->
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Icon(icon, contentDescription = label, tint = Color.White.copy(alpha = 0.7f), modifier = Modifier.size(28.dp))
                            Text(label, color = Color.White.copy(alpha = 0.5f), fontSize = 10.sp)
                        }
                    }
                }
            }

            // Ana İçerik
            Column(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxHeight()
                    .padding(horizontal = if(isMobile) 12.dp else 24.dp)
                    .verticalScroll(rememberScrollState()),
                verticalArrangement = Arrangement.spacedBy(if(isMobile) 16.dp else 24.dp)
            ) {
                Spacer(modifier = Modifier.height(if(isMobile) 8.dp else 24.dp))
                // Network Settings
                SettingCard(title = "AĞ YAPILANDIRMASI") {
                    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                        OutlinedTextField(
                            value = ipInput,
                            onValueChange = { 
                                ipInput = it
                                AssistantApplication.serverIp.value = it
                            },
                            label = { Text("Sunucu IP Adresi", color = Color.Gray) },
                            modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(
                                focusedTextColor = Color.White,
                                unfocusedTextColor = Color.White,
                                focusedBorderColor = Color(0xFF69E2D3),
                                unfocusedBorderColor = Color.Gray
                            )
                        )
                        
                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            OutlinedTextField(
                                value = hermesPortInput,
                                onValueChange = { 
                                    hermesPortInput = it
                                    AssistantApplication.hermesPort.value = it
                                },
                                label = { Text("Hermes", color = Color.Gray) },
                                modifier = Modifier.weight(1f),
                                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = Color.White,
                                    unfocusedTextColor = Color.White,
                                    focusedBorderColor = Color(0xFF69E2D3),
                                    unfocusedBorderColor = Color.Gray
                                )
                            )
                            OutlinedTextField(
                                value = sttPortInput,
                                onValueChange = { 
                                    sttPortInput = it
                                    AssistantApplication.sttPort.value = it
                                },
                                label = { Text("STT", color = Color.Gray) },
                                modifier = Modifier.weight(1f),
                                keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Number),
                                colors = OutlinedTextFieldDefaults.colors(
                                    focusedTextColor = Color.White,
                                    unfocusedTextColor = Color.White,
                                    focusedBorderColor = Color(0xFF69E2D3),
                                    unfocusedBorderColor = Color.Gray
                                )
                            )
                        }

                        OutlinedTextField(
                            value = ttsPortInput,
                            onValueChange = { 
                                ttsPortInput = it
                                AssistantApplication.ttsPort.value = it
                            },
                            label = { Text("TTS Port", color = Color.Gray) },
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

                // Engine Selection
                SettingCard(title = "MOTOR SEÇİMİ (STT & TTS)") {
                    Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                        // STT Engine
                        Column {
                            Text("STT (Ses Tanıma) Motoru", color = Color.Gray, fontSize = 12.sp)
                            Row(modifier = Modifier.fillMaxWidth().padding(top = 8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                listOf("HERMES", "BULUT", "SHERPA").forEach { mode ->
                                    val isSelected = sttMode == mode
                                    Box(
                                        modifier = Modifier
                                            .weight(1f)
                                            .height(40.dp)
                                            .clip(RoundedCornerShape(8.dp))
                                            .background(if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.2f) else Color.DarkGray.copy(alpha = 0.3f))
                                            .border(1.dp, if (isSelected) Color(0xFF69E2D3) else Color.Transparent, RoundedCornerShape(8.dp))
                                            .clickable { AssistantApplication.sttMode.value = mode },
                                        contentAlignment = Alignment.Center
                                    ) {
                                        Text(mode, color = if (isSelected) Color(0xFF69E2D3) else Color.White, fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal)
                                    }
                                }
                            }
                        }

                        // TTS Engine
                        Column {
                            Text("TTS (Ses Sentez) Motoru", color = Color.Gray, fontSize = 12.sp)
                            Row(modifier = Modifier.fillMaxWidth().padding(top = 8.dp), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                                listOf("HERMES", "EDGE", "SHERPA").forEach { engine ->
                                    val isSelected = ttsEngine == engine
                                    Box(
                                        modifier = Modifier
                                            .weight(1f)
                                            .height(40.dp)
                                            .clip(RoundedCornerShape(8.dp))
                                            .background(if (isSelected) Color(0xFF69E2D3).copy(alpha = 0.2f) else Color.DarkGray.copy(alpha = 0.3f))
                                            .border(1.dp, if (isSelected) Color(0xFF69E2D3) else Color.Transparent, RoundedCornerShape(8.dp))
                                            .clickable { AssistantApplication.ttsEngine.value = engine },
                                        contentAlignment = Alignment.Center
                                    ) {
                                        Text(engine, color = if (isSelected) Color(0xFF69E2D3) else Color.White, fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal)
                                    }
                                }
                            }
                        }
                    }
                }

                // MQTT & Bridge Settings
                val mqttEnabled by AssistantApplication.mqttEnabled.collectAsState()
                val bridgeMode by AssistantApplication.isBridgeMode.collectAsState()
                val simulationMode by AssistantApplication.isSimulationMode.collectAsState()
                val mqttConnected by AssistantApplication.isMqttConnected.collectAsState()

                SettingCard(title = "MQTT VE KÖPRÜ (BRIDGE) AYARLARI") {
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
                                if (mqttConnected) "BAĞLI" else "KOPUK",
                                color = if (mqttConnected) Color.Green else Color.Red,
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

                // Groq API Settings
                SettingCard(title = "GROQ API (STT - Ses Tanıma)") {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text(
                            "Bulut STT için Groq Whisper, yerel ağ için Hermes STT kullanılır.",
                            color = Color(0xFFFFD700),
                            fontSize = 11.sp
                        )
                        OutlinedTextField(
                            value = groqKeyInput,
                            onValueChange = {
                                groqKeyInput = it
                                AssistantApplication.groqApiKey.value = it
                            },
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
                        val keyStatus = if (groqKeyInput.startsWith("gsk_") && groqKeyInput.length > 20)
                            "✅ Key formatı geçerli" else "⚠️ Geçersiz format (gsk_ ile başlamalı)"
                        Text(keyStatus, color = if (groqKeyInput.startsWith("gsk_")) Color(0xFF69E2D3) else Color.Red, fontSize = 11.sp)
                    }
                }

                // System & Permissions (From Source Project)
                SettingCard(title = "SİSTEM VE İZİNLER") {
                    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                        Row(verticalAlignment = androidx.compose.ui.Alignment.CenterVertically) {
                            Text("Otomatik İzin Yönetimi (ADB)", color = Color.White, modifier = Modifier.weight(1f))
                            Switch(
                                checked = isAutoTasksEnabled,
                                onCheckedChange = { AssistantApplication.isAutoTasksEnabled.value = it },
                                colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                            )
                        }
                        
                        Text("Gelişmiş ADB Araçları:", color = Color.Gray, fontSize = 11.sp)
                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            Button(
                                onClick = { 
                                    val intent = Intent(AssistantApplication.configManager.context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
                                        action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                                        putExtra("command", "setprop service.adb.tcp.port 5555; stop adbd; start adbd")
                                    }
                                    AssistantApplication.configManager.context.startService(intent)
                                },
                                modifier = Modifier.weight(1f),
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFE65100))
                            ) {
                                Text("ADB TCP 5555", fontSize = 10.sp)
                            }
                            
                            Button(
                                onClick = { 
                                    val intent = Intent(AssistantApplication.configManager.context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
                                        action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
                                        putExtra("command", "su -c id")
                                    }
                                    AssistantApplication.configManager.context.startService(intent)
                                },
                                modifier = Modifier.weight(1f),
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF311B92))
                            ) {
                                Text("ROOT TEST", fontSize = 10.sp)
                            }
                        }
                    }
                }

                // Identity Settings
                SettingCard(title = "KİMLİK BİLGİLERİ (ASİSTAN KİMLİĞİ)") {
                    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                        OutlinedTextField(
                            value = vehicleIdInput,
                            onValueChange = { 
                                vehicleIdInput = it
                                AssistantApplication.vehicleId.value = it
                            },
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
                            onValueChange = { 
                                sessionKeyInput = it
                                AssistantApplication.sessionKey.value = it
                            },
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

                // Tailscale (TSNet) Settings
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

                // Vehicle Data Policy
                SettingCard(title = "ARAÇ VERİ POLİTİKASI (POLLING)") {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Text("Sensör ve Veri Seçimi", color = Color.White, modifier = Modifier.weight(1f))
                            IconButton(onClick = { showSensorDialog = true }) {
                                Icon(Icons.Default.Settings, contentDescription = "Sensörleri Seç", tint = Color(0xFF69E2D3))
                            }
                        }
                        
                        HorizontalDivider(color = Color.White.copy(alpha = 0.05f))
                        
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

                // Engine Info
                val context = androidx.compose.ui.platform.LocalContext.current
                val packageInfo = remember {
                    try {
                        context.packageManager.getPackageInfo(context.packageName, 0)
                    } catch (e: Exception) { null }
                }
                val versionDisplay = packageInfo?.let { "v${it.versionName} (${it.versionCode})" } ?: "v1.0.0"
                val buildDate = com.omoda.lanc.BuildConfig.BUILD_DATE

                SettingCard(title = "SİSTEM BİLGİSİ") {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        InfoRow("Araç Kimliği", vehicleId)
                        InfoRow("STT Motoru", sttMode)
                        InfoRow("TTS Motoru", ttsEngine)
                        InfoRow("Chat Motoru", "Hermes → Kilo-AI")
                        InfoRow("Hermes Sunucu", "${serverIp}:${hermesPort}")
                        InfoRow("Uygulama Sürümü", versionDisplay)
                        InfoRow("Derleme Tarihi", buildDate)
                    }
                }
                
                Button(
                    onClick = { 
                        AssistantApplication.saveCurrentConfig()
                        onBack()
                    },
                    modifier = Modifier.fillMaxWidth().height(56.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3)),
                    shape = RoundedCornerShape(8.dp)
                ) {
                    Text("AYARLARI KAYDET VE DÖN", color = Color.Black, fontWeight = FontWeight.Bold, fontSize = if(isMobile) 14.sp else 16.sp)
                }
                Spacer(modifier = Modifier.height(24.dp))
            }
            
            // Sağ Yan Bar (Side Bar) - Mobilde Gizle
            if (!isMobile) {
                Column(
                    modifier = Modifier
                        .width(80.dp)
                        .fillMaxHeight()
                        .background(Color.Black.copy(alpha = 0.3f))
                        .padding(vertical = 16.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(24.dp)
                ) {
                    // Hızlı Aksiyon Tuşları
                    IconButton(onClick = { /* Refresh */ }) {
                        Icon(Icons.Default.Settings, contentDescription = "Yenile", tint = Color(0xFF69E2D3))
                    }
                    IconButton(onClick = { /* Help */ }) {
                        Icon(Icons.Default.Settings, contentDescription = "Yardım", tint = Color.White)
                    }
                }
            }
        }
    }

    if (showSensorDialog) {
        com.omoda.lanc.ui.screens.SensorSelectionDialog(onDismiss = { showSensorDialog = false })
    }
}

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
            
            // Sağ Yan Bar (Side Bar)
            Column(
                modifier = Modifier
                    .width(80.dp)
                    .fillMaxHeight()
                    .background(Color.Black.copy(alpha = 0.3f))
                    .padding(vertical = 16.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(24.dp)
            ) {
                // Hızlı Aksiyon Tuşları
                IconButton(onClick = { /* Refresh */ }) {
                    Icon(Icons.Default.Settings, contentDescription = "Yenile", tint = Color(0xFF69E2D3))
                }
                IconButton(onClick = { /* Help */ }) {
                    Icon(Icons.Default.Settings, contentDescription = "Yardım", tint = Color.White)
                }
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
