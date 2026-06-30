package com.omoda.lanc

import android.app.Application
import android.os.Build
import com.omoda.lanc.config.AppConfig
import com.omoda.lanc.config.ConfigManager
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.mqtt.MqttPublisher
import kotlinx.coroutines.flow.MutableStateFlow

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
        
        val serverIp = MutableStateFlow("homeassistant.tailnet-4f03.ts.net") // Yeni varsayılan
        val hermesPort = MutableStateFlow("20128")
        val sttPort = MutableStateFlow("20128")
        val ttsPort = MutableStateFlow("20128")
        
        val safeServerIp: String get() = serverIp.value.trim()
        val safeSttPort: String get() = sttPort.value.trim()
        
        // Kimlik ve Oturum Yönetimi (Sürüm 5.0)
        val vehicleId = MutableStateFlow("OMODA5_T19C_001")
        val sessionKey = MutableStateFlow("user:ahmet:master_profile")
        
        // Çalışma Modları (Sürüm 5.0)
        val currentMode = MutableStateFlow("ASISTANT")
        
        val sttMode = MutableStateFlow("BULUT") // Varsayılan olarak BULUT (Groq) seçildi
        val ttsEngine = MutableStateFlow("EDGE") // Kaynak projedeki motor
        
        // Edge TTS Ayarları
        val edgeVoiceName = MutableStateFlow("tr-TR-EmelNeural")
        val edgePitch = MutableStateFlow("+0Hz")
        val edgeRate = MutableStateFlow("+0%")
        
        // Tailscale (TSNet) Yapılandırması
        val tailscaleKey = MutableStateFlow("tskey-auth-kc4mkwRGiw11CNTRL-kQYBK24x1PEnxoYRF3BoGEQAZRzMMhDWb")
        val tailscaleStatus = MutableStateFlow("Bilinmiyor")
        val isTailscaleEnabled = MutableStateFlow(true)
        val useTls = MutableStateFlow(true)
        
        val useHermesSpeech = MutableStateFlow(true)
        val isOnlineMode = MutableStateFlow(true)
        val isContinuousConversation = MutableStateFlow(true)
        val isWakeWordEnabled = MutableStateFlow(true)
        val micSource = MutableStateFlow("MIC")

        // MQTT Simülatör ve Köprü
        val isSimulationMode = MutableStateFlow(false)
        val isBridgeMode = MutableStateFlow(false)
        val isMqttConnected = MutableStateFlow(false)

        val HERMES_BASE_URL: String get() = "http://${serverIp.value}:${hermesPort.value}/v1"
        val STT_BASE_URL: String get() = "http://${serverIp.value}:${sttPort.value}/v1"
        val TTS_BASE_URL: String get() = "http://${serverIp.value}:${ttsPort.value}/v1"
        
        // Cloud Fallbacks (KESİN VE DEĞİŞMEZ AYARLAR)
        const val CLOUD_TTS_URL = "https://api.openai.com/v1" 
        const val GROQ_BASE_URL = "https://api.groq.com/openai/v1"
        const val HERMES_API_KEY="cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34"
        const val NINEROUTER_API_KEY = "sk-b6f4d3879cc4a442-vwd4xl-8ad79a58"
        const val EDGE_TTS_TOKEN = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
        val groqApiKey = MutableStateFlow("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")
        const val GROQ_STT_MODEL = "whisper-large-v3"
        val hermesConnectionStatus = MutableStateFlow("DISCONNECTED")

        val ledKey = MutableStateFlow(false)
        val ledRec = MutableStateFlow(false)
        val ledStt = MutableStateFlow(false)
        val ledLlm = MutableStateFlow(false)
        val ledTts = MutableStateFlow(false)

        // MQTT Publisher
        val mqttPublisher = MqttPublisher()
        val mqttEnabled = MutableStateFlow(true)

        const val HERMES_CHAT_MODEL = "asist_genel"
        const val STT_MODEL = "whisper-1"
        const val PICOVOICE_ACCESS_KEY = ""
        
        val hasInternetConnection = MutableStateFlow(false)
        val isAdbConnected = MutableStateFlow(false)

        val systemLogs = MutableStateFlow(listOf<String>())

        val micCaptureProfile = MutableStateFlow("VOICE_RECOGNITION")
        val micCaptureDetail = MutableStateFlow("Henüz seçilmedi")
        val useHermesDecision = MutableStateFlow(false) // Akıllı Karar (Hermes v1/responses) Modu
        val isAutoTasksEnabled = MutableStateFlow(true)
        
        val sherpaSttModelInstallState = MutableStateFlow("UNKNOWN")
        val sherpaSttModelInstallDetail = MutableStateFlow("")
        
        val sherpaModelInstallState = MutableStateFlow("UNKNOWN")
        val sherpaModelInstallDetail = MutableStateFlow("")

        // Araç veri polling: PropertyID -> Tier (0=kapalı, 2=FAST, 5=MEDIUM, 10=SLOW)
        val vehiclePollingConfig = MutableStateFlow(
            VehicleController.PROPERTY_DEFINITIONS.mapValues { it.value.defaultTier }
        )

        // UI'da gösterilecek canlı araç verileri: PropertyID -> görüntülenecek değer
        val vehicleDataValues = MutableStateFlow<Map<String, String>>(emptyMap())

        fun addLog(message: String) {
            android.util.Log.e("OmodaLog", message)
            val currentList = systemLogs.value.toMutableList()
            currentList.add(0, "> $message")
            if (currentList.size > 15) currentList.removeAt(currentList.size - 1)
            systemLogs.value = currentList
        }
        
        fun resetLeds() {
            ledKey.value = false
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
                groqApiKey = groqApiKey.value,
                isAutoTasksEnabled = isAutoTasksEnabled.value,
                vehiclePollingConfig = vehiclePollingConfig.value,
                vehicleId = vehicleId.value,
                sessionKey = sessionKey.value,
                edgeVoiceName = edgeVoiceName.value,
                edgePitch = edgePitch.value,
                edgeRate = edgeRate.value
            )
            configManager.saveConfig(config)
        }
    }

    override fun onCreate() {
        super.onCreate()
        com.omoda.lanc.core.SensorPreferences.init(this)
        configManager = ConfigManager(this)
        loadConfig()
        
        // Ağ izleyiciyi başlat
        com.omoda.lanc.network.NetworkMonitor(this)
        
        // MQTT
        if (mqttEnabled.value) {
            mqttPublisher.updateBrokerUrl(serverIp.value)
            mqttPublisher.connect()
        }
    }

    private fun loadConfig() {
        val config = configManager.loadConfig()
        serverIp.value = config.serverIp.ifBlank { "homeassistant.tailnet-4f03.ts.net" }
        hermesPort.value = config.hermesPort.ifBlank { "20128" }
        sttPort.value = config.sttPort.ifBlank { "20128" }
        ttsPort.value = config.ttsPort.ifBlank { "20128" }

        sttMode.value = "BULUT"
        ttsEngine.value = config.ttsEngine
        useHermesSpeech.value = config.useHermesSpeech
        isContinuousConversation.value = config.isContinuousConversation
        useHermesDecision.value = config.useHermesDecision
        isWakeWordEnabled.value = config.isWakeWordEnabled
        micSource.value = config.micSource
        if (config.groqApiKey.isNotBlank()) groqApiKey.value = config.groqApiKey
        isAutoTasksEnabled.value = config.isAutoTasksEnabled
        vehicleId.value = config.vehicleId
        sessionKey.value = config.sessionKey
        edgeVoiceName.value = config.edgeVoiceName
        edgePitch.value = config.edgePitch
        edgeRate.value = config.edgeRate
        if (config.vehiclePollingConfig.isNotEmpty()) {
            val merged = VehicleController.PROPERTY_DEFINITIONS.mapValues { it.value.defaultTier }.toMutableMap()
            merged.putAll(config.vehiclePollingConfig)
            vehiclePollingConfig.value = merged
        }
    }
}
