package com.omoda5.launcher.common

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import android.os.Handler
import android.os.Looper

/**
 * v11.0.0 - HUD Manager
 * Ekranın sağ altında geçici sistem mesajlarını gösterir.
 */
object HudManager {
    private val _hudMessage = MutableStateFlow<Pair<String, String>?>(null)
    val hudMessage = _hudMessage.asStateFlow()
    private var isLocked = false

    fun show(level1: String, level2: String) {
        if (isLocked && level1 != "OK" && level1 != "ERR" && level1 != "STREAM") return
        
        _hudMessage.value = level1 to level2
        isLocked = true

        Handler(Looper.getMainLooper()).postDelayed({
            if (_hudMessage.value?.second == level2) {
                _hudMessage.value = null
                isLocked = false
            }
        }, 4000)
    }
}
