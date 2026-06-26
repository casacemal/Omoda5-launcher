package com.omoda.lanc.tts

interface TTSManager {
    fun speak(text: String)
    fun stop()
    fun shutdown()
}
