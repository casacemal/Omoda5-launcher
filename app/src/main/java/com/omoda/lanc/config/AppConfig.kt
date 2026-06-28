package com.omoda.lanc.config

data class AppConfig(
    val serverIp: String = "192.168.1.14",
    val hermesPort: String = "8642",
    val sttPort: String = "8642",
    val ttsPort: String = "10201",
    val sttMode: String = "BULUT",
    val ttsEngine: String = "EDGE",
    val useHermesSpeech: Boolean = true,
    val isContinuousConversation: Boolean = true,
    val isWakeWordEnabled: Boolean = true,
    val micSource: String = "MIC",
    val useHermesDecision: Boolean = false,
    val isAutoTasksEnabled: Boolean = true,
    val groqApiKey: String = "",
    // Araç veri polling ayarları: PropertyID -> Tier (0=kapalı, 2=2sn, 5=5sn, 10=10sn)
    val vehiclePollingConfig: Map<String, Int> = emptyMap(),
    // Kimlik bilgileri
    val vehicleId: String = "OMODA5_T19C_001",
    val sessionKey: String = "user:ahmet:master_profile",
    
    // Edge TTS Ayarları
    val edgeVoiceName: String = "tr-TR-EmelNeural",
    val edgePitch: String = "+0Hz",
    val edgeRate: String = "+0%"
)
