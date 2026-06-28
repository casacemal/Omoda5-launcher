package com.omoda.lanc.stt

interface STTManager {
    fun startListening(onResult: (String) -> Unit, onError: (Throwable) -> Unit)
    fun stopListening()
}
