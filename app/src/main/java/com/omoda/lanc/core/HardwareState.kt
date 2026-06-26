package com.omoda.lanc.core

/**
 * Sürüm 3.0: Araç ve Donanım Durum Yönetimi
 */
object HardwareState {
    @Volatile
    var isLocalUserTalking: Boolean = false
    
    @Volatile
    var isRemoteAudioPlaying: Boolean = false

    fun switchToLocalSpeechEngine(force: Boolean) {
        // Lokal motor geçiş mantığı
    }
}
