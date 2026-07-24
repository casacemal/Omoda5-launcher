package com.omoda.lanc.config

data class AppConfig(
    val serverIp: String = "192.168.1.14",
    val hermesPort: String = "8642",
    val sttPort: String = "20128",
    val ttsPort: String = "20128",
    val bridgeServerIp: String = "192.168.1.14",
    val bridgeType: String = "WYOMING", // WYOMING veya WHISPER
    val sttMode: String = "SHERPA",
    val ttsEngine: String = "SHERPA",
    val useHermesSpeech: Boolean = true,
    val isContinuousConversation: Boolean = true,
    val isWakeWordEnabled: Boolean = true,
    val micSource: String = "MIC",
    val useHermesDecision: Boolean = false,
    val isAutoTasksEnabled: Boolean = true,
    val isBridgeMode: Boolean = false,
    val isSimulationMode: Boolean = false,
    val mqttEnabled: Boolean = true,
    // Araç veri polling ayarları: PropertyID -> Tier (0=kapalı, 2=2sn, 5=5sn, 10=10sn)
    val vehiclePollingConfig: Map<String, Int> = emptyMap(),
    // Kimlik bilgileri
    val vehicleId: String = "OMODA5_T19C_001",
    val sessionKey: String = "user:ahmet:master_profile",
    
    // API anahtarları ve token'lar (GitHub, Hermes, 9Router, Edge TTS)
    val githubToken: String? = "",
    val hermesApiKey: String? = "",
    val ninerouterApiKey: String? = "",
    val edgeTtsToken: String? = "",
    val mqttUrl: String? = "192.168.1.14",
    val mqttPort: String? = "1883",
    val mqttUser: String? = "",
    val mqttPassword: String? = "",
    
    // Kişiselleştirme (SettingsManager'dan taşındı)
    val wallpaperIdx: Int = 0,
    val appClickCounts: Map<String, Int> = emptyMap(),
    
    // VHAL / STT Hassasiyet Ayarları
    val vadSnrRatio: Float = 1.4f,
    val vadSilenceDuration: Long = 2500L,
    val vadGainFactor: Float = 4.5f,
    val isKlimaAutoEnable: Boolean = true,
    val ttsRate: Float = 1.0f,
    val ttsPitch: Float = 1.0f,
    
    // Yeni Premium Özellik Anahtarları
    val proactiveNotificationsEnabled: Boolean = true,
    val criticalNotificationsOnly: Boolean = false,
    val waveformEnabled: Boolean = true,
    val gamificationEnabled: Boolean = true
)
