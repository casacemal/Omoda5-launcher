package com.omoda.lanc

import android.app.Application
import com.omoda.lanc.config.AppConfig
import com.omoda.lanc.config.ConfigManager
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.mqtt.MqttPublisher
import kotlinx.coroutines.flow.MutableStateFlow

class AssistantApplication : Application() {
    companion object {
        lateinit var configManager: ConfigManager
        
        val recognizedText = MutableStateFlow("")
        val assistantResponse = MutableStateFlow("")
        val status = MutableStateFlow("Başlatılıyor...")
        val isListening = MutableStateFlow(false)
        val currentAmplitude = MutableStateFlow(0)
        
        val serverIp = MutableStateFlow("100.95.239.119") // Hermes Gateway IP
        val hermesPort = MutableStateFlow("8642")
        val sttPort = MutableStateFlow("8642")
        val ttsPort = MutableStateFlow("10201") // Kaynak projedeki port
        
        // Kimlik ve Oturum Yönetimi (Sürüm 5.0)
        val vehicleId = MutableStateFlow("OMODA5_T19C_001")
        val sessionKey = MutableStateFlow("user:ahmet:master_profile")
        
        // Çalışma Modları (Sürüm 5.0)
        val currentMode = MutableStateFlow("ASISTANT")
        
        val sttMode = MutableStateFlow("BULUT") // Varsayılan olarak BULUT (Groq) seçildi
        val ttsEngine = MutableStateFlow("EDGE") // Kaynak projedeki motor
        
        // Tailscale (TSNet) Yapılandırması
        val tailscaleKey = MutableStateFlow("tskey-auth-kc4mkwRGiw11CNTRL-kQYBK24x1PEnxoYRF3BoGEQAZRzMMhDWb")
        val tailscaleStatus = MutableStateFlow("Bilinmiyor")
        val isTailscaleEnabled = MutableStateFlow(true)
        val useTls = MutableStateFlow(true)
        
        val useHermesSpeech = MutableStateFlow(true)
        val isOnlineMode = MutableStateFlow(true)
        val isContinuousConversation = MutableStateFlow(true)
        val isWakeWordEnabled = MutableStateFlow(true)
        val micSource = MutableStateFlow("VOICE_RECOGNITION")

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
        const val HERMES_API_KEY = "cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34"
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

        const val HERMES_CHAT_MODEL = "kilo-auto/free" // AAOS Specific Model
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
            if (currentList.size > 10) currentList.removeLast()
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
                sessionKey = sessionKey.value
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
            // Tier yapısı VehicleController tarafından yönetilir
        }
    }

    private fun loadConfig() {
        val config = configManager.loadConfig()
        
        // Sürüm 6.3: Kritik ağ ayarları migrasyonu (DONDURULMUŞ AYARLAR)
        if (config.serverIp == "100.121.172.79" || config.serverIp == "127.0.0.1") {
            serverIp.value = "100.95.239.119"
            ttsPort.value = "10201"
            sttMode.value = "BULUT"
            ttsEngine.value = "EDGE"
            saveCurrentConfig() // Yeni ayarları kalıcı yap
        } else {
            serverIp.value = config.serverIp
            hermesPort.value = config.hermesPort
            sttPort.value = config.sttPort
            ttsPort.value = config.ttsPort
            sttMode.value = config.sttMode
            ttsEngine.value = config.ttsEngine
        }

        useHermesSpeech.value = config.useHermesSpeech
        isContinuousConversation.value = config.isContinuousConversation
        useHermesDecision.value = config.useHermesDecision
        isWakeWordEnabled.value = config.isWakeWordEnabled
        micSource.value = config.micSource
        if (config.groqApiKey.isNotBlank()) groqApiKey.value = config.groqApiKey
        isAutoTasksEnabled.value = config.isAutoTasksEnabled
        vehicleId.value = config.vehicleId
        sessionKey.value = config.sessionKey
        if (config.vehiclePollingConfig.isNotEmpty()) {
            // Mevcut default'ları koru, kaydedilmiş değerleri üstüne yaz
            val merged = VehicleController.PROPERTY_DEFINITIONS.mapValues { it.value.defaultTier }.toMutableMap()
            merged.putAll(config.vehiclePollingConfig)
            vehiclePollingConfig.value = merged
        }
    }
}
