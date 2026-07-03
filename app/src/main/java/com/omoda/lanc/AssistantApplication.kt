package com.omoda.lanc

import android.app.Application
import android.os.Build
import com.omoda.lanc.config.AppConfig
import com.omoda.lanc.config.ConfigManager
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.mqtt.MqttPublisher
import kotlinx.coroutines.flow.MutableStateFlow
import java.util.*

class AssistantApplication : Application() {
    companion object {
        lateinit var configManager: ConfigManager

        val isCarHardware: Boolean
            get() = Build.MODEL.contains("omoda", ignoreCase = true) || 
                    Build.MANUFACTURER.contains("semidrive", ignoreCase = true) ||
                    Build.MANUFACTURER.contains("rockchip", ignoreCase = true)
        
        val recognizedText = MutableStateFlow("")
        val assistantResponse = MutableStateFlow("")
        val status = MutableStateFlow("Başlatılıyor...")
        val isListening = MutableStateFlow(false)
        val currentAmplitude = MutableStateFlow(0)
        
        val serverIp = MutableStateFlow("100.95.239.119")
        val bridgeServerIp = MutableStateFlow("100.95.239.119")
        val bridgeType = MutableStateFlow("WYOMING")
        val hermesPort = MutableStateFlow("8642")
        val sttPort = MutableStateFlow("20128")
        val ttsPort = MutableStateFlow("20128")
        
        val safeServerIp: String get() = activeServerIp.value.trim()
        val safeSttPort: String get() = sttPort.value.trim()
        
        val vehicleId = MutableStateFlow("OMODA5_T19C_001")
        val sessionKey = MutableStateFlow("user:ahmet:master_profile")
        val currentMode = MutableStateFlow("ASISTANT")
        val sttMode = MutableStateFlow("HERMES")
        val ttsEngine = MutableStateFlow("HERMES")
        
        val proactiveWarning = MutableStateFlow<String?>(null)
        val isRemoteAdbConnected = MutableStateFlow(false)
        val downloadProgressText = MutableStateFlow<String?>(null)
        val mqttLogList = MutableStateFlow<List<String>>(emptyList())
        
        fun addMqttLog(log: String) {
            val current = mqttLogList.value.toMutableList()
            current.add(0, log)
            if (current.size > 50) {
                current.removeAt(current.size - 1)
            }
            mqttLogList.value = current
        }
        
        val useHermesSpeech = MutableStateFlow(true)
        val isOnlineMode = MutableStateFlow(true)
        val isContinuousConversation = MutableStateFlow(true)
        val isWakeWordEnabled = MutableStateFlow(true)
        val micSource = MutableStateFlow("MIC")

        val isSimulationMode = MutableStateFlow(false)
        val isRadioMode = MutableStateFlow(false) // Normal asistan modu varsayılan
        val isBridgeMode = MutableStateFlow(false)
        val isMqttConnected = MutableStateFlow(false)
        val isVpnConnected = MutableStateFlow(false)

        val activeServerIp = MutableStateFlow(serverIp.value)

        val BRIDGE_URL: String get() = "http://${bridgeServerIp.value}:5000/v1"

        val HERMES_BASE_URL: String get() = if (isBridgeMode.value) {
            if (bridgeType.value == "WHISPER") "http://192.168.1.29:10301/v1" // STT focus for base
            else BRIDGE_URL
        } else {
            "http://${activeServerIp.value}:${hermesPort.value}/v1"
        }

        val HERMES_WS_URL: String get() = "ws://${activeServerIp.value}:${hermesPort.value}/v1/events"

        val STT_BASE_URL: String get() = if (isBridgeMode.value) {
            if (bridgeType.value == "WHISPER") "http://192.168.1.29:10301/v1"
            else BRIDGE_URL
        } else {
            "http://${activeServerIp.value}:${sttPort.value}/v1"
        }

        val TTS_BASE_URL: String get() = if (isBridgeMode.value) {
            if (bridgeType.value == "WHISPER") "http://192.168.1.29:10201/v1"
            else BRIDGE_URL
        } else {
            "http://${activeServerIp.value}:${ttsPort.value}/v1"
        }
        
        const val HERMES_API_KEY="cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34"
        const val NINEROUTER_API_KEY="sk-b6f4d3879cc4a442-vwd4xl-8ad79a58"
        val hermesConnectionStatus = MutableStateFlow("DISCONNECTED")

        val ledKey = MutableStateFlow(false)
        val ledRec = MutableStateFlow(false)
        val ledStt = MutableStateFlow(false)
        val ledLlm = MutableStateFlow(false)
        val ledTts = MutableStateFlow(false)
        
        val workflowState = MutableStateFlow("IDLE") // IDLE, LISTENING, THINKING, TALKING

        val mqttPublisher = MqttPublisher()
        val mqttEnabled = MutableStateFlow(true)

        const val HERMES_CHAT_MODEL = "asistan"
        const val STT_MODEL = "groq/whisper-large-v3-turbo"
        
        val hasInternetConnection = MutableStateFlow(false)
        val isAdbConnected = MutableStateFlow(false)
        val systemLogs = MutableStateFlow(listOf<String>())
        val latestVersion = MutableStateFlow("v---")

        val micCaptureProfile = MutableStateFlow("VOICE_RECOGNITION")
        val useHermesDecision = MutableStateFlow(false)
        val isAutoTasksEnabled = MutableStateFlow(true)
        
        val vehiclePollingConfig = MutableStateFlow(
            VehicleController.PROPERTY_DEFINITIONS.mapValues { it.value.defaultTier }
        )
        val vehicleDataValues = MutableStateFlow<Map<String, String>>(emptyMap())

        // Kişiselleştirme
        val wallpaperIdx = MutableStateFlow(0)
        val appClickCounts = MutableStateFlow<Map<String, Int>>(emptyMap())

        fun addLog(log: String) {
            val time = java.text.SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            val newLogs = systemLogs.value.toMutableList()
            newLogs.add(0, "[$time] $log")
            if (newLogs.size > 100) newLogs.removeAt(newLogs.size - 1)
            systemLogs.value = newLogs
        }

        fun resetLeds() {
            ledRec.value = false
            ledStt.value = false
            ledLlm.value = false
            ledTts.value = false
        }

        fun saveCurrentConfig() {
            val config = AppConfig(
                serverIp = serverIp.value,
                hermesPort = hermesPort.value,
                sttPort = sttPort.value,
                ttsPort = ttsPort.value,
                sttMode = sttMode.value,
                ttsEngine = ttsEngine.value,
                useHermesSpeech = useHermesSpeech.value,
                isContinuousConversation = isContinuousConversation.value,
                useHermesDecision = useHermesDecision.value,
                isWakeWordEnabled = isWakeWordEnabled.value,
                micSource = micSource.value,
                isAutoTasksEnabled = isAutoTasksEnabled.value,
                isBridgeMode = isBridgeMode.value,
                mqttEnabled = mqttEnabled.value,
                vehiclePollingConfig = vehiclePollingConfig.value,
                vehicleId = vehicleId.value,
                sessionKey = sessionKey.value,
                bridgeServerIp = bridgeServerIp.value,
                bridgeType = bridgeType.value,
                wallpaperIdx = wallpaperIdx.value,
                appClickCounts = appClickCounts.value
            )
            configManager.saveConfig(config)
            activeServerIp.value = serverIp.value
            
            // MQTT Yenile (IP değişmiş olabilir)
            if (mqttEnabled.value) {
                mqttPublisher.disconnect()
                mqttPublisher.updateBrokerUrl(serverIp.value)
                mqttPublisher.connect()
            } else {
                mqttPublisher.disconnect()
            }
            
            // Ayarların yenilenmesi için event fırlat
            com.omoda.lanc.core.EventBus.tryEmit(com.omoda.lanc.core.Event.SystemEvent.ConfigUpdated)
        }
    }

    override fun onCreate() {
        super.onCreate()
        
        // Cihaz algılama: Eğer araç donanımı değilse simülasyon modunu aktif et
        isSimulationMode.value = !isCarHardware
        if (isSimulationMode.value) {
            addLog("Simülasyon Modu Aktif: Sistem komutları kısıtlandı.")
        }

        com.omoda.lanc.core.SensorPreferences.init(this)
        configManager = ConfigManager(this)
        loadConfig()
        
        com.omoda.lanc.network.NetworkMonitor(this)
        
        if (mqttEnabled.value) {
            mqttPublisher.updateBrokerUrl(serverIp.value)
            mqttPublisher.connect()
        }
    }

    private fun loadConfig() {
        val config = configManager.loadConfig()
        
        serverIp.value = if (config.serverIp.isBlank()) "100.95.239.119" else config.serverIp
        bridgeServerIp.value = if (config.bridgeServerIp.isBlank()) "192.168.1.14" else config.bridgeServerIp
        bridgeType.value = if (config.bridgeType.isBlank()) "WYOMING" else config.bridgeType
        activeServerIp.value = serverIp.value

        hermesPort.value = if (config.hermesPort.isBlank()) "8642" else config.hermesPort
        sttPort.value = if (config.sttPort.isBlank()) "20128" else config.sttPort
        ttsPort.value = if (config.ttsPort.isBlank()) "20128" else config.ttsPort

        sttMode.value = if (config.sttMode.isBlank()) "HERMES" else config.sttMode
        ttsEngine.value = if (config.ttsEngine.isBlank()) "HERMES" else config.ttsEngine
        
        useHermesSpeech.value = config.useHermesSpeech
        isContinuousConversation.value = config.isContinuousConversation
        useHermesDecision.value = config.useHermesDecision
        isWakeWordEnabled.value = config.isWakeWordEnabled
        micSource.value = config.micSource
        isAutoTasksEnabled.value = config.isAutoTasksEnabled
        isBridgeMode.value = config.isBridgeMode
        mqttEnabled.value = config.mqttEnabled
        vehicleId.value = config.vehicleId
        sessionKey.value = config.sessionKey
        
        wallpaperIdx.value = config.wallpaperIdx
        appClickCounts.value = config.appClickCounts

        if (config.vehiclePollingConfig.isNotEmpty()) {
            val merged = VehicleController.PROPERTY_DEFINITIONS.mapValues { it.value.defaultTier }.toMutableMap()
            merged.putAll(config.vehiclePollingConfig)
            vehiclePollingConfig.value = merged
        }
    }
}
