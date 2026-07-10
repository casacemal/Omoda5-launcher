package com.omoda.lanc.ui.screens

import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.core.*
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.ui.components.StatusLed
import com.omoda.lanc.ui.theme.AppTheme
import kotlinx.coroutines.delay

@Composable
fun HomeScreen(onNavigateToSettings: () -> Unit) {
    val recognizedText by GlobalState.recognizedText.collectAsState()
    val assistantResponse by GlobalState.assistantResponse.collectAsState()
    val status by GlobalState.status.collectAsState()
    val isListening by GlobalState.isListening.collectAsState()
    val sttMode by GlobalState.sttMode.collectAsState()
    val ttsEngine by GlobalState.ttsEngine.collectAsState()
    val useHermesSpeech by GlobalState.useHermesSpeech.collectAsState()
    val connStatus by GlobalState.hermesConnectionStatus.collectAsState()
    val hasInternet by GlobalState.hasInternetConnection.collectAsState()
    val isWakeWordEnabled by GlobalState.isWakeWordEnabled.collectAsState()
    val isContinuousConversation by GlobalState.isContinuousConversation.collectAsState()
    val useHermesDecision by GlobalState.useHermesDecision.collectAsState()
    val micSource by GlobalState.micSource.collectAsState()
    val isAdbConnected by GlobalState.isAdbConnected.collectAsState()
    val logs by AssistantApplication.systemLogs.collectAsState()
    val currentMode by GlobalState.currentMode.collectAsState()
    val isMqttConnected by GlobalState.isMqttConnected.collectAsState()

    HomeScreenContent(
        recognizedText = recognizedText,
        assistantResponse = assistantResponse,
        status = status,
        isListening = isListening,
        sttMode = sttMode,
        ttsEngine = ttsEngine,
        useHermesSpeech = useHermesSpeech,
        connStatus = connStatus,
        hasInternet = hasInternet,
        isWakeWordEnabled = isWakeWordEnabled,
        isContinuousConversation = isContinuousConversation,
        useHermesDecision = useHermesDecision,
        micSource = micSource,
        isAdbConnected = isAdbConnected,
        logs = logs,
        currentMode = currentMode,
        isMqttConnected = isMqttConnected,
        onSttModeChange = { 
            GlobalState.sttMode.value = it 
            AssistantApplication.saveCurrentConfig()
        },
        onTtsEngineChange = { 
            GlobalState.ttsEngine.value = it 
            AssistantApplication.saveCurrentConfig()
        },
        onUseHermesSpeechChange = { 
            GlobalState.useHermesSpeech.value = it 
            AssistantApplication.saveCurrentConfig()
        },
        onToggleWakeWord = {
            GlobalState.isWakeWordEnabled.value = it
            AssistantApplication.saveCurrentConfig()
        },
        onToggleContinuous = {
            GlobalState.isContinuousConversation.value = it
            AssistantApplication.saveCurrentConfig()
        },
        onToggleHermesDecision = {
            GlobalState.useHermesDecision.value = it
            AssistantApplication.saveCurrentConfig()
        },
        onMicSourceChange = {
            GlobalState.micSource.value = it
            AssistantApplication.saveCurrentConfig()
        },
        onModeChange = {
            GlobalState.currentMode.value = it
            AssistantApplication.saveCurrentConfig()
        },
        onNavigateToSettings = onNavigateToSettings
    )
}

@Composable
fun HomeScreenContent(
    recognizedText: String,
    assistantResponse: String,
    status: String,
    isListening: Boolean,
    sttMode: String,
    ttsEngine: String,
    useHermesSpeech: Boolean,
    connStatus: String,
    hasInternet: Boolean,
    isWakeWordEnabled: Boolean,
    isContinuousConversation: Boolean,
    useHermesDecision: Boolean,
    micSource: String,
    isAdbConnected: Boolean,
    logs: List<String>,
    currentMode: String,
    isMqttConnected: Boolean,
    onSttModeChange: (String) -> Unit,
    onTtsEngineChange: (String) -> Unit,
    onUseHermesSpeechChange: (Boolean) -> Unit,
    onToggleWakeWord: (Boolean) -> Unit,
    onToggleContinuous: (Boolean) -> Unit,
    onToggleHermesDecision: (Boolean) -> Unit,
    onMicSourceChange: (String) -> Unit,
    onModeChange: (String) -> Unit,
    onNavigateToSettings: () -> Unit
) {
    val context = androidx.compose.ui.platform.LocalContext.current
    var showSafetyDialog by remember { mutableStateOf(false) }
    var showDecisionLockDialog by remember { mutableStateOf(false) }
    var pendingDecisionToggle by remember { mutableStateOf(false) }
    
    val backgroundBrush = Brush.verticalGradient(
        colors = if (isListening) {
            listOf(Color(0xFF0F201D), Color(0xFF0D0F10))
        } else {
            listOf(Color(0xFF1A1C1E), Color(0xFF0D0F10))
        }
    )

    Box(modifier = Modifier.fillMaxSize().background(backgroundBrush)) {
        Column(
            modifier = Modifier.fillMaxSize().padding(16.dp).verticalScroll(rememberScrollState()),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            HeaderSection(
                connStatus = connStatus,
                hasInternet = hasInternet,
                isAdbConnected = isAdbConnected,
                isMqttConnected = isMqttConnected,
                onNavigateToSettings = onNavigateToSettings
            )

            DialogueSection(recognizedText, assistantResponse)

            Row(
                modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                StatusLed("İnternet", hasInternet)
                Spacer(Modifier.width(16.dp))
                StatusLed("MQTT", isMqttConnected)
                Spacer(Modifier.width(16.dp))
                val isHermesConnected = connStatus == "CONNECTED" || connStatus == "FALLBACK_CONNECTED" || connStatus == "FULL_CONNECTED"
                StatusLed("Hermes", isHermesConnected)
            }

            ActionButtonsSection(
                isListening = isListening,
                isWakeWordEnabled = isWakeWordEnabled,
                isSimulationMode = GlobalState.isSimulationMode.collectAsState().value,
                currentMode = currentMode,
                onStart = { 
                    context.sendBroadcast(android.content.Intent("com.omoda.assistant.START_LISTENING"))
                },
                onStop = { 
                    context.sendBroadcast(android.content.Intent("com.omoda.assistant.STOP_LISTENING"))
                },
                onToggleWakeWord = onToggleWakeWord,
                onShowSafetyDialog = { showSafetyDialog = true },
                onModeChange = onModeChange
            )

            SystemLogSection(logs)

            DeckControlsSection(
                sttMode = sttMode,
                ttsEngine = ttsEngine,
                useHermesSpeech = useHermesSpeech,
                isContinuousConversation = isContinuousConversation,
                useHermesDecision = useHermesDecision,
                micSource = micSource,
                currentMode = currentMode,
                onSttModeChange = onSttModeChange,
                onTtsEngineChange = onTtsEngineChange,
                onUseHermesSpeechChange = onUseHermesSpeechChange,
                onToggleContinuous = onToggleContinuous,
                onToggleHermesDecision = {
                    pendingDecisionToggle = it
                    showDecisionLockDialog = true
                },
                onMicSourceChange = onMicSourceChange,
                onModeChange = onModeChange
            )

            StatusPillSection(status, isListening)
        }

        if (showSafetyDialog) {
            SimulatorSafetyDialog(
                onDismiss = { showSafetyDialog = false },
                onSuccess = {
                    val currentSimulationMode = GlobalState.isSimulationMode.value
                    val newVal = !currentSimulationMode
                    GlobalState.isSimulationMode.value = newVal
                    GlobalState.isBridgeMode.value = newVal
                    AssistantApplication.addLogStatic(if (newVal) "SİMÜLATÖR & KÖPRÜ MODU AKTİF" else "SİMÜLATÖR & KÖPRÜ MODU KAPALI")
                }
            )
        }

        if (showDecisionLockDialog) {
            DecisionEngineLockDialog(
                onDismiss = { showDecisionLockDialog = false },
                onSuccess = {
                    onToggleHermesDecision(pendingDecisionToggle)
                }
            )
        }
    }
}

@Composable
fun DecisionEngineLockDialog(onDismiss: () -> Unit, onSuccess: () -> Unit) {
    var password by remember { mutableStateOf("") }
    var errorText by remember { mutableStateOf("") }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Karar Motoru Kilidi", color = Color(0xFF69E2D3)) },
        text = {
            Column {
                Text("Akıllı Karar Motoru ayarlarını değiştirmek için yetkilendirme gereklidir.", color = Color.LightGray)
                Spacer(Modifier.height(8.dp))
                OutlinedTextField(
                    value = password,
                    onValueChange = { 
                        password = it
                        errorText = ""
                    },
                    label = { Text("Yönetici Şifresi") },
                    singleLine = true,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = Color(0xFF69E2D3),
                        focusedLabelColor = Color(0xFF69E2D3)
                    ),
                    modifier = Modifier.fillMaxWidth()
                )
                if (errorText.isNotEmpty()) {
                    Text(errorText, color = Color.Red, fontSize = 12.sp, modifier = Modifier.padding(top = 4.dp))
                }
            }
        },
        confirmButton = {
            TextButton(onClick = {
                if (password == "4078") {
                    onSuccess()
                    onDismiss()
                } else {
                    errorText = "Hatalı şifre!"
                }
            }) {
                Text("KİLİDİ AÇ", color = Color(0xFF69E2D3))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("İPTAL", color = Color.Gray)
            }
        },
        containerColor = Color(0xFF111315)
    )
}

@Composable
fun SystemLogSection(logs: List<String>) {
    val scrollState = rememberScrollState()
    
    LaunchedEffect(Unit) {
        GlobalState.isAdbConnected.value = true
    }
    
    LaunchedEffect(logs.size) {
        scrollState.animateScrollTo(scrollState.maxValue)
    }

    Card(
        colors = CardDefaults.cardColors(containerColor = Color.Black.copy(alpha = 0.7f)),
        shape = RoundedCornerShape(8.dp),
        modifier = Modifier.fillMaxWidth().height(150.dp).border(0.5.dp, Color.Gray.copy(alpha = 0.3f), RoundedCornerShape(8.dp))
    ) {
        Column(modifier = Modifier.padding(8.dp).fillMaxSize()) {
            Text("CANLI İŞ AKIŞI", color = Color(0xFF69E2D3), fontSize = 14.sp, fontWeight = FontWeight.Bold)
            Spacer(Modifier.height(4.dp))
            Box(modifier = Modifier.weight(1f)) {
                Column(modifier = Modifier.verticalScroll(scrollState)) {
                    logs.forEach { log ->
                        Text(
                            text = log, 
                            color = when {
                                log.contains("HATA") || log.contains("Başarısız") || log.contains("Eksik") -> Color.Red
                                log.contains(">>>") -> Color(0xFF69E2D3)
                                log.contains("Aktif") || log.contains("Hazır") -> Color.Green
                                else -> Color.LightGray
                            },
                            fontSize = 15.sp,
                            fontWeight = FontWeight.Medium,
                            fontFamily = androidx.compose.ui.text.font.FontFamily.Monospace,
                            modifier = Modifier.padding(vertical = 1.dp)
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun HeaderSection(connStatus: String, hasInternet: Boolean, isAdbConnected: Boolean, isMqttConnected: Boolean, onNavigateToSettings: () -> Unit) {
    val infiniteTransition = rememberInfiniteTransition(label = "pulse")
    val alpha by infiniteTransition.animateFloat(
        initialValue = 0.3f, targetValue = 1f,
        animationSpec = infiniteRepeatable(tween(1000), RepeatMode.Reverse), label = "alpha"
    )

    Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
        Text("OMODA ASSISTANT", color = Color.White, fontWeight = FontWeight.Black, fontSize = 27.sp)
        Spacer(Modifier.weight(1f))
        
        IconButton(onClick = onNavigateToSettings) {
            Icon(Icons.Default.Settings, contentDescription = "Ayarlar", tint = Color.Gray)
        }
        
        Spacer(Modifier.width(16.dp))
        
        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(CircleShape)
                .background(if (isMqttConnected) Color.Green.copy(alpha = alpha) else Color.Red)
        )
        Spacer(Modifier.width(4.dp))
        Text(if (isMqttConnected) "MQTT BAĞLI" else "MQTT KOPUK", color = Color.Gray, fontSize = 15.sp)
        Spacer(Modifier.width(16.dp))
        
        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(CircleShape)
                .background(if (isAdbConnected) Color.Green.copy(alpha = alpha) else Color.Red)
        )
        Spacer(Modifier.width(4.dp))
        Text(if (isAdbConnected) "ADB BAĞLI" else "ADB KOPUK", color = Color.Gray, fontSize = 15.sp)
        Spacer(Modifier.width(16.dp))

        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(CircleShape)
                .background(if (hasInternet) Color.Green.copy(alpha = alpha) else Color.Red)
        )
        Spacer(Modifier.width(4.dp))
        Text(if (hasInternet) "İNTERNET AKTİF" else "İNTERNET YOK", color = Color.Gray, fontSize = 15.sp)
        Spacer(Modifier.width(16.dp))

        Box(
            modifier = Modifier
                .size(12.dp)
                .clip(CircleShape)
                .background(if (connStatus == "CONNECTED" || connStatus == "FALLBACK_CONNECTED" || connStatus == "FULL_CONNECTED") Color.Green.copy(alpha = alpha) else Color.Red)
        )
        Spacer(Modifier.width(4.dp))
        Text(connStatus, color = Color.Gray, fontSize = 15.sp)
    }
}

@Composable
fun DialogueSection(userText: String, aiText: String) {
    val scrollState = rememberScrollState()
    
    // Yazı ekranda 5 saniye boyunca görünür kalır, hemen silmez
    var displayedAiText by remember { mutableStateOf(aiText) }
    LaunchedEffect(aiText) {
        if (aiText.isNotEmpty()) {
            displayedAiText = aiText
        } else {
            // AI cevabı silindiğinde 5 saniye sonra ekrandan kaldır
            delay(5000)
            displayedAiText = ""
        }
    }
    
    LaunchedEffect(userText, displayedAiText) {
        scrollState.animateScrollTo(scrollState.maxValue)
    }

    Card(
        colors = CardDefaults.cardColors(containerColor = Color(0xFF111315)),
        shape = RoundedCornerShape(12.dp),
        modifier = Modifier
            .fillMaxWidth()
            .height(200.dp)
            .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(12.dp))
    ) {
        Column(
            modifier = Modifier
                .padding(12.dp)
                .fillMaxSize()
                .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text("SİZ", color = Color(0xFF69E2D3), fontSize = 14.sp, fontWeight = FontWeight.Bold)
            Text(userText.ifEmpty { "..." }, color = Color.White, fontSize = 20.sp)
            
            HorizontalDivider(color = Color.White.copy(alpha = 0.05f), modifier = Modifier.padding(vertical = 6.dp))
            
            Text("ASİSTAN", color = Color(0xFFF3B14B), fontSize = 14.sp, fontWeight = FontWeight.Bold)
            AnimatedContent(
                targetState = displayedAiText,
                transitionSpec = { fadeIn(tween(400)) togetherWith fadeOut(tween(300)) },
                label = "ai_text_anim"
            ) { text ->
                Text(text.ifEmpty { "..." }, color = Color.White.copy(alpha = 0.8f), fontSize = 20.sp)
            }
        }
    }
}

@Composable
fun StatusPillSection(status: String, isListening: Boolean) {
    Surface(
        color = if (isListening) Color(0xFF69E2D3).copy(alpha = 0.15f) else Color.Black.copy(alpha = 0.3f),
        shape = RoundedCornerShape(50),
        modifier = Modifier.fillMaxWidth().height(40.dp).border(1.dp, if (isListening) Color(0xFF69E2D3) else Color.Gray.copy(alpha = 0.2f), RoundedCornerShape(50))
    ) {
        Box(contentAlignment = Alignment.Center) {
            Text(
                status.uppercase(), 
                color = if (isListening) Color(0xFF69E2D3) else Color.Gray, 
                fontWeight = FontWeight.ExtraBold, 
                fontSize = 18.sp,
                letterSpacing = 1.sp
            )
        }
    }
}

@Composable
fun ActionButtonsSection(
    isListening: Boolean,
    isWakeWordEnabled: Boolean,
    isSimulationMode: Boolean,
    currentMode: String,
    onStart: () -> Unit,
    onStop: () -> Unit,
    onToggleWakeWord: (Boolean) -> Unit,
    onShowSafetyDialog: () -> Unit,
    onModeChange: (String) -> Unit
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        // ASSIST / CHAT Toggle Tusu
        val isAssist = currentMode == "ASISTANT"
        Surface(
            color = if (isAssist) Color(0xFF1A2C44) else Color(0xFF2C1A44),
            shape = RoundedCornerShape(10.dp),
            modifier = Modifier.weight(1f).height(56.dp)
                .clickable { onModeChange(if (isAssist) "CHAT" else "ASISTANT") }
                .border(
                    1.dp,
                    if (isAssist) Color(0xFF4FC3F7) else Color(0xFFCE93D8),
                    RoundedCornerShape(10.dp)
                )
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
                modifier = Modifier.fillMaxSize()
            ) {
                Text(
                    if (isAssist) "ASIST" else "SOHBET",
                    color = if (isAssist) Color(0xFF4FC3F7) else Color(0xFFCE93D8),
                    fontSize = 12.sp, fontWeight = FontWeight.ExtraBold
                )
                Text(
                    if (isAssist) "● KOMUT" else "● SERBEST",
                    color = Color.White.copy(alpha = 0.7f),
                    fontWeight = FontWeight.Bold,
                    fontSize = 13.sp
                )
            }
        }

        Button(
            onClick = if (isListening) onStop else onStart,
            modifier = Modifier.weight(1.5f).height(56.dp),
            colors = ButtonDefaults.buttonColors(
                containerColor = if (isListening) Color(0xFFE57373) else Color(0xFF69E2D3)
            ),
            shape = RoundedCornerShape(10.dp)
        ) {
            Text(
                if (isListening) "DURDUR" else "BAŞLAT",
                color = Color.Black,
                fontWeight = FontWeight.ExtraBold,
                fontSize = 20.sp
            )
        }

        Surface(
            color = if (isWakeWordEnabled) Color(0xFF2F7D6B).copy(alpha = 0.1f) else Color(0xFF111315),
            shape = RoundedCornerShape(10.dp),
            modifier = Modifier.weight(1f).height(56.dp)
                .clickable { onToggleWakeWord(!isWakeWordEnabled) }
                .border(1.dp, if (isWakeWordEnabled) Color(0xFF69E2D3) else Color.White.copy(alpha = 0.05f), RoundedCornerShape(10.dp))
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
                modifier = Modifier.fillMaxSize()
            ) {
                Text("HEY OMODA", color = if (isWakeWordEnabled) Color(0xFF69E2D3) else Color.Gray, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                Text(if (isWakeWordEnabled) "AÇIK" else "KAPALI", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 16.sp)
            }
        }

        Surface(
            color = if (isSimulationMode) Color(0xFFF3B14B).copy(alpha = 0.1f) else Color(0xFF111315),
            shape = RoundedCornerShape(10.dp),
            modifier = Modifier.weight(1f).height(56.dp)
                .clickable { onShowSafetyDialog() }
                .border(1.dp, if (isSimulationMode) Color(0xFFF3B14B) else Color.White.copy(alpha = 0.05f), RoundedCornerShape(10.dp))
        ) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center,
                modifier = Modifier.fillMaxSize()
            ) {
                Text("KÖPRÜ", color = if (isSimulationMode) Color(0xFFF3B14B) else Color.Gray, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                Text(if (isSimulationMode) "AÇIK" else "KAPALI", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 16.sp)
            }
        }
    }
}

@Composable
fun SimulatorSafetyDialog(onDismiss: () -> Unit, onSuccess: () -> Unit) {
    var password by remember { mutableStateOf("") }
    var errorText by remember { mutableStateOf("") }
    val vehicleDataValues by GlobalState.vehicleDataValues.collectAsState()

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Emniyet Şifresi (KÖPRÜ MODU)", color = Color(0xFFF3B14B)) },
        text = {
            Column {
                Text("VHAL simülatör ve ham veri aktarım (köprü) moduna geçmek için yetkilendirme gereklidir.", color = Color.LightGray)
                Spacer(Modifier.height(8.dp))
                OutlinedTextField(
                    value = password,
                    onValueChange = { 
                        password = it
                        errorText = ""
                    },
                    label = { Text("Şifre") },
                    singleLine = true,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedBorderColor = Color(0xFF69E2D3),
                        focusedLabelColor = Color(0xFF69E2D3)
                    ),
                    modifier = Modifier.fillMaxWidth()
                )
                if (errorText.isNotEmpty()) {
                    Text(errorText, color = Color.Red, fontSize = 12.sp, modifier = Modifier.padding(top = 4.dp))
                }
            }
        },
        confirmButton = {
            TextButton(onClick = {
                if (password == "4078") {
                    val rpm = vehicleDataValues["engine_rpm"]?.toFloatOrNull() ?: 0f
                    if (rpm > 0f) {
                        errorText = "Motor çalışırken bu mod açılamaz!"
                    } else {
                        onSuccess()
                        onDismiss()
                    }
                } else {
                    errorText = "Hatalı şifre!"
                }
            }) {
                Text("DOĞRULA", color = Color(0xFFF3B14B))
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("İPTAL", color = Color.Gray)
            }
        },
        containerColor = Color(0xFF1A1C1E)
    )
}


@Composable
fun DeckControlsSection(
    sttMode: String,
    ttsEngine: String,
    useHermesSpeech: Boolean,
    isContinuousConversation: Boolean,
    useHermesDecision: Boolean,
    micSource: String,
    currentMode: String,
    onSttModeChange: (String) -> Unit,
    onTtsEngineChange: (String) -> Unit,
    onUseHermesSpeechChange: (Boolean) -> Unit,
    onToggleContinuous: (Boolean) -> Unit,
    onToggleHermesDecision: (Boolean) -> Unit,
    onMicSourceChange: (String) -> Unit,
    onModeChange: (String) -> Unit
) {
    Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text("SES TANIMA (STT)", color = Color.Gray, fontSize = 15.sp, fontWeight = FontWeight.Bold)
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            DeckButton(
                label = "BULUT", 
                active = sttMode == "HERMES", 
                onClick = { onSttModeChange("HERMES") },
                modifier = Modifier.weight(1f),
                enabled = true
            )
            DeckButton(
                label = "SHERPA", 
                active = sttMode == "SHERPA", 
                onClick = { onSttModeChange("SHERPA") },
                modifier = Modifier.weight(1f),
                enabled = true
            )
            DeckButton(
                label = "NATIVE", 
                active = sttMode == "LOCAL", 
                onClick = { onSttModeChange("LOCAL") },
                modifier = Modifier.weight(1f),
                enabled = true
            )
        }

        Text("SES SENTEZİ (TTS)", color = Color.Gray, fontSize = 15.sp, fontWeight = FontWeight.Bold)
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            DeckButton(
                label = "EDGE ONLINE", 
                active = ttsEngine == "EDGE", 
                onClick = { onTtsEngineChange("EDGE") }, 
                modifier = Modifier.weight(1.2f),
                enabled = true
            )
            DeckButton(
                label = "9ROUTER", 
                active = ttsEngine == "9ROUTER", 
                onClick = { onTtsEngineChange("9ROUTER") }, 
                modifier = Modifier.weight(1.2f),
                enabled = true
            )
            DeckButton(
                label = "SHERPA", 
                active = ttsEngine == "SHERPA", 
                onClick = { onTtsEngineChange("SHERPA") }, 
                modifier = Modifier.weight(1f),
                enabled = true
            )
            DeckButton(
                label = "NATIVE", 
                active = ttsEngine == "LOCAL", 
                onClick = { onTtsEngineChange("LOCAL")},
                modifier = Modifier.weight(1f),
                enabled = true
            )
        }

        Text("ÇALIŞMA MODU", color = Color.Gray, fontSize = 15.sp, fontWeight = FontWeight.Bold)
        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
            DeckButton(
                label = "ASİSTAN", 
                active = currentMode == "ASISTANT", 
                onClick = { onModeChange("ASISTANT") }, 
                modifier = Modifier.weight(1f)
            )
            DeckButton(
                label = "SOHBET", 
                active = currentMode == "CHAT", 
                onClick = { onModeChange("CHAT") }, 
                modifier = Modifier.weight(1f)
            )
        }

        Text("DİYALOG VE DONANIM", color = Color.Gray, fontSize = 15.sp, fontWeight = FontWeight.Bold)
        Card(
            colors = CardDefaults.cardColors(containerColor = Color.White.copy(alpha = 0.03f)),
            shape = RoundedCornerShape(8.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            Column(modifier = Modifier.padding(10.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Kesintisiz Sohbet", color = Color.White, modifier = Modifier.weight(1f), fontSize = 18.sp)
                    Switch(
                        checked = isContinuousConversation,
                        onCheckedChange = onToggleContinuous,
                        modifier = Modifier.scale(0.8f),
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }
                
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text("Akıllı Karar Motoru", color = Color.White, modifier = Modifier.weight(1f), fontSize = 18.sp)
                    Switch(
                        checked = useHermesDecision,
                        onCheckedChange = onToggleHermesDecision,
                        modifier = Modifier.scale(0.8f),
                        colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3))
                    )
                }
                
                HorizontalDivider(color = Color.White.copy(alpha = 0.05f))

                Text("Mikrofon Kaynağı", color = Color.Gray, fontSize = 15.sp)
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    DeckButton(
                        label = "STT", 
                        active = micSource == "VOICE_RECOGNITION", 
                        onClick = { onMicSourceChange("VOICE_RECOGNITION") },
                        modifier = Modifier.weight(1f)
                    )
                    DeckButton(
                        label = "VOIP", 
                        active = micSource == "VOICE_COMMUNICATION", 
                        onClick = { onMicSourceChange("VOICE_COMMUNICATION") },
                        modifier = Modifier.weight(1f)
                    )
                    DeckButton(
                        label = "MIC", 
                        active = micSource == "MIC", 
                        onClick = { onMicSourceChange("MIC") },
                        modifier = Modifier.weight(1f)
                    )
                }
            }
        }
    }
}

fun Modifier.scale(scale: Float): Modifier = this.then(
    Modifier.graphicsLayer(scaleX = scale, scaleY = scale)
)

@Composable
fun DeckButton(
    label: String,
    active: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true
) {
    val bgColor = if (active) Color(0xFF1A1C1E) else if (enabled) Color(0xFF232528) else Color(0xFF151618)
    val contentColor = if (active) Color(0xFF69E2D3) else if (enabled) Color.Gray else Color.Gray.copy(alpha = 0.3f)
    val borderAlpha = if (active) 0.6f else 0.05f

    Surface(
        color = bgColor,
        shape = RoundedCornerShape(8.dp),
        modifier = modifier
            .height(40.dp)
            .then(if (enabled) Modifier.clickable { onClick() } else Modifier)
            .border(1.dp, contentColor.copy(alpha = borderAlpha), RoundedCornerShape(8.dp))
    ) {
        Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
            Text(
                text = label, 
                color = if (active) contentColor else if (enabled) Color.White else Color.Gray.copy(alpha = 0.3f), 
                fontWeight = if (active) FontWeight.Bold else FontWeight.Normal,
                fontSize = 15.sp,
                textAlign = TextAlign.Center
            )
        }
    }
}

@Preview(showBackground = true, device = "spec:width=1280dp,height=800dp,orientation=landscape")
@Composable
fun HomeScreenPreview() {
    AppTheme {
        HomeScreenContent(
            recognizedText = "Klimayı 22 dereceye ayarla",
            assistantResponse = "Anlaşıldı, klima 22 dereceye ayarlanıyor.",
            status = "Dinleniyor...",
            isListening = true,
            sttMode = "HERMES",
            ttsEngine = "HERMES",
            useHermesSpeech = true,
            connStatus = "CONNECTED",
            isWakeWordEnabled = false,
            isContinuousConversation = true,
            useHermesDecision = false,
            micSource = "VOICE_RECOGNITION",
            isAdbConnected = true,
            logs = listOf("[12:00:01] Dinleme başlatıldı", "[12:00:05] Ses işleniyor..."),
            hasInternet = true,
            currentMode = "ASISTANT",
            isMqttConnected = true,
            onSttModeChange = {},
            onTtsEngineChange = {},
            onUseHermesSpeechChange = {},
            onToggleWakeWord = {},
            onToggleContinuous = {},
            onToggleHermesDecision = {},
            onMicSourceChange = {},
            onModeChange = {},
            onNavigateToSettings = {}
        )
    }
}
