package com.omoda5.launcher.common

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * v11.0.0 SYSTEM BRIDGE
 * VHAL, Media, HardKey merkezî köprüsü.
 * VhalManager'dan gelen raw+display map'lerini tutar.
 * MediaControllerViewModel mediaState.collect { } ile dinler.
 */
object SystemBridgeManager {

    // State Containers
    private val _vhalState = MutableStateFlow<Map<String, String>>(emptyMap())
    val vhalState = _vhalState.asStateFlow()

    private val _rawVhalState = MutableStateFlow<Map<String, Any>>(emptyMap())
    val rawVhalState = _rawVhalState.asStateFlow()

    private val _mediaState = MutableStateFlow(MediaData())
    val mediaState = _mediaState.asStateFlow()

    private val _lastHardKey = MutableStateFlow<Int>(-1)
    val lastHardKey = _lastHardKey.asStateFlow()

    data class MediaData(val title: String = "", val artist: String = "", val pkg: String = "")

    private var isInitialized = false

    fun init(context: Context) {
        if (isInitialized) return

        VhalManager.init(context) // Trigger Global Adaptive Polling

        val filter = IntentFilter().apply {
            addAction("com.omoda5.launcher.LOG_BROADCAST")
            addAction("com.omoda5.launcher.MEDIA_UPDATE")
            addAction("com.omoda5.launcher.VHAL_UPDATE")
            addAction("com.saic.keyevent.hardkey.report") // OEM System Keys
            addAction("com.omoda5.launcher.HARDKEY_EVENT") // Internal Keys
        }

        context.registerReceiver(object : BroadcastReceiver() {
            override fun onReceive(ctx: Context?, intent: Intent?) {
                when (intent?.action) {
                    // LOG_BROADCAST: VhalManager zaten parseLined() yapıyor
                    // Bridge sadece loglama için dinler — işlem yapmaz
                    "com.omoda5.launcher.LOG_BROADCAST" -> { /* VhalManager handles this */ }

                    // VHAL_UPDATE: VhalManager displayMap broadcast ediyor
                    // raw map VhalManager.rawVhalData'dan direkt okunuyor (VehicleDataViewModel)
                    "com.omoda5.launcher.VHAL_UPDATE" -> {
                        @Suppress("UNCHECKED_CAST")
                        val data = intent.getSerializableExtra("data") as? HashMap<String, String>
                        if (data != null) _vhalState.value = data
                    }

                    // MEDIA_UPDATE: MediaNotificationListener gönderir
                    // MediaControllerViewModel mediaState.collect{} ile buradan beslenebilir
                    "com.omoda5.launcher.MEDIA_UPDATE" -> {
                        val title  = intent.getStringExtra("title")   ?: ""
                        val artist = intent.getStringExtra("artist")  ?: ""
                        val pkg    = intent.getStringExtra("package") ?: ""
                        if (title.isNotEmpty() || pkg.isNotEmpty()) {
                            _mediaState.value = MediaData(title, artist, pkg)
                        }
                    }

                    // OEM fiziksel tuş — 'keyCode' veya 'key_code' extra (Semidrive variant)
                    "com.saic.keyevent.hardkey.report" -> {
                        val kc = intent.getIntExtra("keyCode", -1)
                            .takeIf { it != -1 } ?: intent.getIntExtra("key_code", -1)
                        if (kc != -1) {
                            _lastHardKey.value = kc
                            LogManager.addLog("[TUŞ_OEM] KeyCode: $kc")
                            handleVoiceProxy(ctx, kc)
                        }
                    }

                    // Uygulama içi tuş event'i
                    "com.omoda5.launcher.HARDKEY_EVENT" -> {
                        val kc = intent.getIntExtra("keyCode", -1)
                        if (kc != -1) {
                            _lastHardKey.value = kc
                            LogManager.addLog("[TUŞ_APP] KeyCode: $kc")
                            handleVoiceProxy(ctx, kc)
                        }
                    }
                }
            }
        }, filter)

        isInitialized = true
        LogManager.addLog("BRIDGE: Merkezi Veri Köprüsü Aktif")
    }

    /**
     * VhalManager tarafından çağrılır (parseLine sonrası).
     * rawMap'i _rawVhalState'e aktarır — VehicleDataViewModel artık
     * doğrudan VhalManager.rawVhalData dinlediğinden bu opsiyonel.
     */
    fun updateVhal(data: Map<String, String>, raw: Map<String, Any> = emptyMap()) {
        _vhalState.value = data
        if (raw.isNotEmpty()) _rawVhalState.value = raw
    }

    fun updateMedia(title: String, artist: String, pkg: String) {
        _mediaState.value = MediaData(title, artist, pkg)
    }

    private fun handleVoiceProxy(ctx: Context?, keyCode: Int) {
        if (keyCode == 293) { // MIC KEY
            try {
                // Try to start Cerence Voice Activity via ADB Bridge
                ctx?.startService(
                    Intent(
                        ctx,
                        com.omoda5.launcher.service.AdbBridgeService::class.java
                    ).apply {
                        action = "ACTION_EXECUTE_SHELL"
                        putExtra("command", "am start -n com.nuance.voiceserver/.VoiceActivity")
                    })
                LogManager.addLog("VOICE: Cerence Proxy Tetiklendi (Key: 293)")
            } catch (e: Exception) {
                LogManager.addLog("VOICE_ERR: Proxy Başarısız")
            }
        }
    }
}
