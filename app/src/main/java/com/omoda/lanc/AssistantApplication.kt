package com.omoda.lanc

import android.app.Application
import android.os.Build
import com.omoda.lanc.config.AppConfig
import com.omoda.lanc.config.ConfigManager
import com.omoda.lanc.core.*
import com.omoda.lanc.mqtt.MqttPublisher
import com.omoda.lanc.log.AdvancedLogger
import com.hermesandroid.bridge.auth.PairingManager
import com.hermesandroid.bridge.client.RelayClient
import com.hermesandroid.bridge.model.DeviceCapabilities
import com.hermesandroid.bridge.power.WakeLockManager
// import com.hermesandroid.bridge.server.BridgeServer
import kotlinx.coroutines.flow.MutableStateFlow
import java.util.*

class AssistantApplication : Application(), AppLogger {
    companion object {
        lateinit var configManager: ConfigManager

        val isCarHardware: Boolean
            get() = (Build.MODEL.contains("omoda", ignoreCase = true) || 
                    Build.MANUFACTURER.contains("semidrive", ignoreCase = true) ||
                    Build.MANUFACTURER.contains("rockchip", ignoreCase = true) ||
                    Build.PRODUCT.contains("omoda", ignoreCase = true)) &&
                    !Build.MANUFACTURER.contains("Xiaomi", ignoreCase = true) &&
                    !Build.MANUFACTURER.contains("samsung", ignoreCase = true)
        
        // Delegate to GlobalState
        val recognizedText get() = GlobalState.recognizedText
        val assistantResponse get() = GlobalState.assistantResponse
        val status get() = GlobalState.status
        val isListening get() = GlobalState.isListening
        val currentAmplitude get() = GlobalState.currentAmplitude
        
        val serverIp get() = GlobalState.serverIp
        val hermesPort get() = GlobalState.hermesPort
        val sttPort get() = GlobalState.sttPort
        val ttsPort get() = GlobalState.ttsPort
        
        val vehicleId get() = GlobalState.vehicleId
        val sessionKey get() = GlobalState.sessionKey
        val sessionId = MutableStateFlow<String?>(null)
        val currentMode get() = GlobalState.currentMode
        val sttMode get() = GlobalState.sttMode
        val ttsEngine get() = GlobalState.ttsEngine
        
        val proactiveWarning = MutableStateFlow<String?>(null)
        val isRemoteAdbConnected = MutableStateFlow(false)
        val downloadProgressText = MutableStateFlow<String?>(null)
        val mqttLogList = MutableStateFlow<List<String>>(emptyList())
        
        val useHermesSpeech get() = GlobalState.useHermesSpeech
        val isContinuousConversation get() = GlobalState.isContinuousConversation
        val useHermesDecision get() = GlobalState.useHermesDecision
        val isWakeWordEnabled get() = GlobalState.isWakeWordEnabled
        val micSource get() = GlobalState.micSource

        val isSimulationMode get() = GlobalState.isSimulationMode
        val isRadioMode get() = GlobalState.isRadioMode 
        val isBridgeMode get() = GlobalState.isBridgeMode

        val activeServerIp get() = GlobalState.activeServerIp

        val HERMES_BASE_URL get() = GlobalState.HERMES_BASE_URL
        val HERMES_WS_URL get() = GlobalState.HERMES_WS_URL
        val STT_BASE_URL get() = GlobalState.STT_BASE_URL
        
        val BRIDGE_STT_URL get() = GlobalState.BRIDGE_STT_URL
        
        var HERMES_API_KEY by GlobalState::HERMES_API_KEY
        var NINEROUTER_API_KEY by GlobalState::NINEROUTER_API_KEY
        var GITHUB_TOKEN by GlobalState::GITHUB_TOKEN
        var EDGE_TTS_TOKEN by GlobalState::EDGE_TTS_TOKEN

        val hasInternetConnection get() = GlobalState.hasInternetConnection
        val isMqttConnected get() = GlobalState.isMqttConnected
        val hermesConnectionStatus get() = GlobalState.hermesConnectionStatus

        val isAdbConnected get() = GlobalState.isAdbConnected
        val systemLogs = MutableStateFlow(listOf<String>())
        val latestVersion = MutableStateFlow("v---")

        val vehicleDataValues get() = GlobalState.vehicleDataValues

        // Persistent Personalization
        val wallpaperIdx = MutableStateFlow(0)
        val appClickCounts = MutableStateFlow<Map<String, Int>>(emptyMap())

        val mqttPublisher = MqttPublisher()
        val mqttEnabled = MutableStateFlow(true)

        fun addLogStatic(log: String) {
            val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
            val newLogs = systemLogs.value.toMutableList()
            newLogs.add(0, "[$time] $log")
            if (newLogs.size > 100) newLogs.removeAt(newLogs.size - 1)
            systemLogs.value = newLogs
            AdvancedLogger.log("AssistantApplication", "INFO", "App: $log", mapOf("module" to "AppLogger"))
        }

        fun addMqttLogStatic(log: String) {
            val current = mqttLogList.value.toMutableList()
            current.add(0, log)
            if (current.size > 50) current.removeAt(current.size - 1)
            mqttLogList.value = current
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
                isBridgeMode = isBridgeMode.value,
                mqttEnabled = mqttEnabled.value,
                vehicleId = vehicleId.value,
                sessionKey = sessionKey.value,
                 wallpaperIdx = wallpaperIdx.value,
                appClickCounts = appClickCounts.value,
                githubToken = GITHUB_TOKEN,
                hermesApiKey = HERMES_API_KEY,
                ninerouterApiKey = NINEROUTER_API_KEY,
                edgeTtsToken = EDGE_TTS_TOKEN,
                vadSnrRatio = GlobalState.vadSnrRatio.value,
                vadSilenceDuration = GlobalState.vadSilenceDuration.value,
                vadGainFactor = GlobalState.vadGainFactor.value,
                isKlimaAutoEnable = GlobalState.isKlimaAutoEnable.value,
                ttsRate = GlobalState.ttsRate.value,
                ttsPitch = GlobalState.ttsPitch.value
            )
            configManager.saveConfig(config)
            activeServerIp.value = serverIp.value
            
            if (mqttEnabled.value) {
                mqttPublisher.disconnect()
                mqttPublisher.updateBrokerUrl(serverIp.value)
                mqttPublisher.connect()
            } else {
                mqttPublisher.disconnect()
            }
            
            EventBus.tryEmit(Event.SystemEvent.ConfigUpdated)
        }
    }

    override fun addLog(log: String) = addLogStatic(log)
    override fun addMqttLog(log: String) = addMqttLogStatic(log)

    override fun onCreate() {
        super.onCreate()
        LoggerProvider.logger = this
        
        isSimulationMode.value = !isCarHardware
        
        configManager = ConfigManager(this)
        loadConfig()
        
        SystemLogger.setListener { log ->
            addLogStatic(log)
        }
        
        com.omoda.lanc.network.NetworkMonitor(this)
        
        if (mqttEnabled.value) {
            mqttPublisher.updateBrokerUrl(serverIp.value)
            mqttPublisher.connect()
        }

        PairingManager.init(applicationContext)
        DeviceCapabilities.init(applicationContext)
        WakeLockManager.init(applicationContext)
        // BridgeServer.start(port = 8765) // Disabled to save space
        RelayClient.init(applicationContext)
        RelayClient.autoConnect()
    }

    private fun loadConfig() {
        val config = configManager.loadConfig()
        
        serverIp.value = if (config.serverIp.isBlank()) "192.168.1.14" else config.serverIp
        activeServerIp.value = serverIp.value

        hermesPort.value = if (config.hermesPort.isBlank()) "8642" else config.hermesPort
        sttPort.value = if (config.sttPort.isBlank()) "20128" else config.sttPort
        ttsPort.value = if (config.ttsPort.isBlank()) "20128" else config.ttsPort

        sttMode.value = if (config.sttMode.isBlank()) "HERMES" else config.sttMode
        ttsEngine.value = if (config.ttsEngine.isBlank()) "9ROUTER" else config.ttsEngine
        
        useHermesSpeech.value = config.useHermesSpeech
        isContinuousConversation.value = config.isContinuousConversation
        useHermesDecision.value = config.useHermesDecision
        isWakeWordEnabled.value = config.isWakeWordEnabled
        micSource.value = config.micSource
        isBridgeMode.value = config.isBridgeMode
        mqttEnabled.value = config.mqttEnabled
        vehicleId.value = config.vehicleId
        sessionKey.value = config.sessionKey
        
        GITHUB_TOKEN = config.githubToken?.ifBlank { GITHUB_TOKEN } ?: GITHUB_TOKEN
        HERMES_API_KEY = config.hermesApiKey?.ifBlank { HERMES_API_KEY } ?: HERMES_API_KEY
        NINEROUTER_API_KEY = config.ninerouterApiKey?.ifBlank { NINEROUTER_API_KEY } ?: NINEROUTER_API_KEY
        EDGE_TTS_TOKEN = config.edgeTtsToken?.ifBlank { EDGE_TTS_TOKEN } ?: EDGE_TTS_TOKEN

        wallpaperIdx.value = config.wallpaperIdx
        appClickCounts.value = config.appClickCounts
        
        GlobalState.vadSnrRatio.value = config.vadSnrRatio
        GlobalState.vadSilenceDuration.value = config.vadSilenceDuration
        GlobalState.vadGainFactor.value = config.vadGainFactor
        
        GlobalState.isKlimaAutoEnable.value = config.isKlimaAutoEnable
        
        GlobalState.ttsRate.value = config.ttsRate
        GlobalState.ttsPitch.value = config.ttsPitch
    }
}
