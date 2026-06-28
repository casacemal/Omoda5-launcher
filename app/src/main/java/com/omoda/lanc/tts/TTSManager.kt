package com.omoda.lanc.tts

interface TTSManager {
    fun speak(text: String, onComplete: (() -> Unit)? = null, onError: (() -> Unit)? = null)
    fun stop()
    fun shutdown()
    fun isSpeaking(): Boolean
}
