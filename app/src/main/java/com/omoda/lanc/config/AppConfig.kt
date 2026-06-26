package com.omoda.lanc.config

data class AppConfig(
    val serverIp: String = "100.121.172.79",
    val hermesPort: String = "8642",
    val sttPort: String = "8642",
    val ttsPort: String = "8642",
    val sttMode: String = "HERMES",
    val ttsEngine: String = "HERMES",
    val useHermesSpeech: Boolean = true,
    val isContinuousConversation: Boolean = true,
    val isWakeWordEnabled: Boolean = true,
    val micSource: String = "VOICE_RECOGNITION",
    val useHermesDecision: Boolean = false,
    val isAutoTasksEnabled: Boolean = true,
    val groqApiKey: String = "",
    // Araç veri polling ayarları: PropertyID -> Tier (0=kapalı, 2=2sn, 5=5sn, 10=10sn)
    val vehiclePollingConfig: Map<String, Int> = emptyMap(),
    // Kimlik bilgileri
    val vehicleId: String = "OMODA5_T19C_001",
    val sessionKey: String = "user:ahmet:master_profile"
)
