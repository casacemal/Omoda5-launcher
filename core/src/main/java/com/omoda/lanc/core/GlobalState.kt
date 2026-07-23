package com.omoda.lanc.core

import com.omoda.lanc.mqtt.MqttPublisher
import kotlinx.coroutines.flow.MutableStateFlow

object GlobalState {
    val recognizedText = MutableStateFlow("")
    val assistantResponse = MutableStateFlow("")
    val status = MutableStateFlow("Başlatılıyor...")
    val isListening = MutableStateFlow(false)
    val currentAmplitude = MutableStateFlow(0)
    
    val serverIp = MutableStateFlow("192.168.1.14")
    val bridgeServerIp = MutableStateFlow("192.168.1.14")
    val bridgeType = MutableStateFlow("WYOMING")
    val activeServerIp = MutableStateFlow("192.168.1.14")
    val mqttUrl = MutableStateFlow("192.168.1.14")
    val mqttPort = MutableStateFlow("1883")
    val mqttUser = MutableStateFlow("")
    val mqttPassword = MutableStateFlow("")
    val mqttConnectionError = MutableStateFlow<String?>(null)
    
    val hermesPort = MutableStateFlow("8642")
    val sttPort = MutableStateFlow("20128")
    val ttsPort = MutableStateFlow("20128")
    
    val vehicleId = MutableStateFlow("OMODA5_T19C_001")
    val vehicleState = MutableStateFlow(com.omoda.lanc.model.VehicleState())
    val sessionKey = MutableStateFlow("user:ahmet:master_profile")
    val currentMode = MutableStateFlow("ASISTANT")
    val sttMode = MutableStateFlow("SHERPA")
    val ttsEngine = MutableStateFlow("SHERPA")
    
    val isMqttConnected = MutableStateFlow(false)
    val hasInternetConnection = MutableStateFlow(false)
    val hermesConnectionStatus = MutableStateFlow("DISCONNECTED")
    val isAdbConnected = MutableStateFlow(false)
    val isRemoteAdbConnected = MutableStateFlow(false)
    
    val useHermesSpeech = MutableStateFlow(true)
    val isContinuousConversation = MutableStateFlow(true)
    val useHermesDecision = MutableStateFlow(false)
    val isWakeWordEnabled = MutableStateFlow(true)
    val micSource = MutableStateFlow("MIC")
    val isAutoTasksEnabled = MutableStateFlow(true)
    
    // VHAL / STT Hassasiyet Ayarları
    val vadSnrRatio = MutableStateFlow(1.4f)
    val vadSilenceDuration = MutableStateFlow(2500L)
    val vadGainFactor = MutableStateFlow(4.5f)
    
    val isKlimaAutoEnable = MutableStateFlow(true)
    
    val isSimulationMode = MutableStateFlow(false)
    val isRadioMode = MutableStateFlow(false)
    val isBridgeMode = MutableStateFlow(false)

    val hermesApiKey = MutableStateFlow("")
    val ninerouterApiKey = MutableStateFlow("")
    val githubToken = MutableStateFlow("")
    val edgeTtsToken = MutableStateFlow("")
    
    @Deprecated("Use flow instead") var HERMES_API_KEY: String get() = hermesApiKey.value; set(v) { hermesApiKey.value = v }
    @Deprecated("Use flow instead") var NINEROUTER_API_KEY: String get() = ninerouterApiKey.value; set(v) { ninerouterApiKey.value = v }
    @Deprecated("Use flow instead") var GITHUB_TOKEN: String get() = githubToken.value; set(v) { githubToken.value = v }
    @Deprecated("Use flow instead") var EDGE_TTS_TOKEN: String get() = edgeTtsToken.value; set(v) { edgeTtsToken.value = v }
    
    val latestVersion = MutableStateFlow("v---")
    val downloadProgressText = MutableStateFlow<String?>(null)
    
    // UI states migrated from AssistantApplication
    val wallpaperIdx = MutableStateFlow(0)
    val appClickCounts = MutableStateFlow<Map<String, Int>>(emptyMap())
    val generalLogs = MutableStateFlow<List<LogEntry>>(emptyList())
    
    fun addGeneralLog(level: LogLevel, message: String) {
        val current = generalLogs.value.toMutableList()
        current.add(0, LogEntry(level, message))
        if (current.size > 500) current.removeAt(current.size - 1)
        generalLogs.value = current
    }

    // TTS Voice Settings
    val ttsRate = MutableStateFlow(1.0f)
    val ttsPitch = MutableStateFlow(1.0f)

    val HERMES_BASE_URL: String get() = "http://${activeServerIp.value}:8642/v1"
    val HERMES_WS_URL: String get() = "ws://${activeServerIp.value}:8766/ws"
    val STT_BASE_URL: String get() = "http://${activeServerIp.value}:20128/v1"
    
    val BRIDGE_STT_URL: String get() = "http://${activeServerIp.value}:5000/v1/stt"
    
    const val HERMES_CHAT_MODEL = "asistan"
    const val STT_MODEL = "groq/whisper-large-v3-turbo"

    val vehicleDataValues = MutableStateFlow<Map<String, String>>(emptyMap())
    val proactiveWarning = MutableStateFlow<String?>(null)
    val vehiclePollingConfig = MutableStateFlow<Map<String, Int>>(emptyMap())

    var mqttPublisher: MqttPublisher? = null
    val mqttEnabled = MutableStateFlow(true)

    val workflowState = MutableStateFlow("IDLE") // IDLE, LISTENING, THINKING, TALKING
    
    // Architecture 2.0: Dynamic Layout State
    val dashboardLeftWeight = MutableStateFlow(0.6f)
    val isHighSpeedMode = MutableStateFlow(false)

    /**
     * Sidebar (sol çubuk) genişliği — dp cinsinden.
     * Araç donanımında varsayılan 235dp.  Handheld / kapanmış durumda 0dp.
     * LayoutEngine bu değeri reaktif olarak dinler, sabit 235.dp kullanmaz.
     */
    val sidebarWidth = MutableStateFlow(if (isCarHardware) 235 else 0)
    
    // Architecture 2.0 References
    var firewallV2: com.omoda.lanc.core.dsl.FirewallV2? = null
    var hybridRouter: com.omoda.lanc.core.dsl.HybridRouter? = null
    
    // Premium Özellikler UI Durumları
    val proactiveNotificationsEnabled = MutableStateFlow(true)
    val criticalNotificationsOnly = MutableStateFlow(false)
    val waveformEnabled = MutableStateFlow(true)
    val gamificationEnabled = MutableStateFlow(true)
    val ecoScore = MutableStateFlow(100)
    val proactiveWarningType = MutableStateFlow("NORMAL") // NORMAL veya CRITICAL

    val isCarHardware: Boolean
        get() = (android.os.Build.MODEL.contains("omoda", ignoreCase = true) || 
                android.os.Build.MANUFACTURER.contains("semidrive", ignoreCase = true) ||
                android.os.Build.MANUFACTURER.contains("rockchip", ignoreCase = true) ||
                android.os.Build.PRODUCT.contains("omoda", ignoreCase = true)) &&
                !android.os.Build.MANUFACTURER.contains("Xiaomi", ignoreCase = true) &&
                !android.os.Build.MANUFACTURER.contains("samsung", ignoreCase = true)
}
