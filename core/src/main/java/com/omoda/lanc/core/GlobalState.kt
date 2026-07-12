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
