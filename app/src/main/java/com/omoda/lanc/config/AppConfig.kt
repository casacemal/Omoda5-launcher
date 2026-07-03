package com.omoda.lanc.config

data class AppConfig(
    val serverIp: String = "100.95.239.119",
    val hermesPort: String = "20128",
    val sttPort: String = "20128",
    val ttsPort: String = "20128",
    val bridgeServerIp: String = "100.95.239.119",
    val bridgeType: String = "WYOMING", // WYOMING veya WHISPER
    val sttMode: String = "HERMES",
    val ttsEngine: String = "HERMES",
    val useHermesSpeech: Boolean = true,
    val isContinuousConversation: Boolean = true,
    val isWakeWordEnabled: Boolean = true,
    val micSource: String = "MIC",
    val useHermesDecision: Boolean = false,
    val isAutoTasksEnabled: Boolean = true,
    val isBridgeMode: Boolean = false,
    val mqttEnabled: Boolean = true,
    // Araç veri polling ayarları: PropertyID -> Tier (0=kapalı, 2=2sn, 5=5sn, 10=10sn)
    val vehiclePollingConfig: Map<String, Int> = emptyMap(),
    // Kimlik bilgileri
    val vehicleId: String = "OMODA5_T19C_001",
    val sessionKey: String = "user:ahmet:master_profile",
    
    // Kişiselleştirme (SettingsManager'dan taşındı)
    val wallpaperIdx: Int = 0,
    val appClickCounts: Map<String, Int> = emptyMap()
)
