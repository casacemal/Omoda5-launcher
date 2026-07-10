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
    
    val hermesPort = MutableStateFlow("8642")
    val sttPort = MutableStateFlow("20128")
    val ttsPort = MutableStateFlow("20128")
    
    val vehicleId = MutableStateFlow("OMODA5_T19C_001")
    val sessionKey = MutableStateFlow("user:ahmet:master_profile")
    val currentMode = MutableStateFlow("ASISTANT")
    val sttMode = MutableStateFlow("HERMES")
    val ttsEngine = MutableStateFlow("9ROUTER")
    
    val isMqttConnected = MutableStateFlow(false)
    val hasInternetConnection = MutableStateFlow(false)
    val hermesConnectionStatus = MutableStateFlow("DISCONNECTED")
    val isAdbConnected = MutableStateFlow(false)
    val isRemoteAdbConnected = MutableStateFlow(false)
    
    val useHermesSpeech = MutableStateFlow(true)
    val isContinuousConversation = MutableStateFlow(true)
    val useHermesDecision = MutableStateFlow(false)
    val isWakeWordEnabled = MutableStateFlow(true)
    val micSource = MutableStateFlow("VOICE_RECOGNITION")
    val isAutoTasksEnabled = MutableStateFlow(true)
    
    // VHAL / STT Hassasiyet Ayarları
    val vadSnrRatio = MutableStateFlow(1.6f)
    val vadSilenceDuration = MutableStateFlow(2000L)
    val vadGainFactor = MutableStateFlow(2.5f)
    
    val isKlimaAutoEnable = MutableStateFlow(true)
    
    val isSimulationMode = MutableStateFlow(false)
    val isRadioMode = MutableStateFlow(false)
    val isBridgeMode = MutableStateFlow(false)

    var HERMES_API_KEY = "cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34"
    var NINEROUTER_API_KEY = "sk-b6f4d3879cc4a442-vwd4xl-8ad79a58"
    var GITHUB_TOKEN = "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"
    var EDGE_TTS_TOKEN = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
    
    val latestVersion = MutableStateFlow("v---")
    val downloadProgressText = MutableStateFlow<String?>(null)

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
}
