package com.omoda5.demo

import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.PixelFormat
import android.media.AudioManager
import android.os.Build
import android.os.IBinder
import android.util.Log
import android.view.Gravity
import android.view.LayoutInflater
import android.view.WindowManager
import android.widget.TextView
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch

class VoiceAssistantService : Service() {

    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)
    private lateinit var openAIManager: OpenAIManager
    private lateinit var settingsManager: SettingsManager
    private lateinit var windowManager: WindowManager
    private var floatingView: WaveOverlayView? = null
    private var isListening = false
    private var amplitudeJob: kotlinx.coroutines.Job? = null

    private val voiceCommandReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            Log.d("VoiceAssistant", "Broadcast received: ${intent?.action}")
            when (intent?.action) {
                "com.saic.keyevent.hardkey.report", "android.intent.action.VOICE_COMMAND" -> {
                    // Direksiyon tuşu tetiklemesi
                    val keyCode = intent.getIntExtra("keyCode", -1)
                    if (intent.action == "com.saic.keyevent.hardkey.report" && keyCode != 290) return
                    toggleListening()
                }
                "com.omoda5.voice.ACTION_PLAY_TTS" -> {
                    // Dışarıdan metin okuma talebi
                    val text = intent.getStringExtra("text")
                    if (!text.isNullOrBlank()) {
                        openAIManager.playTextViaTTS(text, serviceScope)
                    }
                }
            }
        }
    }

    override fun onCreate() {
        super.onCreate()
        settingsManager = SettingsManager(this)
        windowManager = getSystemService(WINDOW_SERVICE) as WindowManager
        
        openAIManager = OpenAIManager(this, onStateChanged = { state ->
            updateFloatingUiState(state)
        }, onResultCallback = { text ->
            if (settingsManager.isSttBroadcastEnabled) {
                val intent = Intent("com.omoda5.voice.ACTION_STT_RESULT")
                intent.putExtra("text", text)
                sendBroadcast(intent)
            }
        })

        val filter = IntentFilter().apply {
            addAction("com.saic.keyevent.hardkey.report")
            addAction("android.intent.action.VOICE_COMMAND")
            addAction("com.omoda5.voice.ACTION_PLAY_TTS")
        }
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(voiceCommandReceiver, filter, Context.RECEIVER_EXPORTED)
        } else {
            registerReceiver(voiceCommandReceiver, filter)
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        Log.d("VoiceAssistant", "Service Started")
        return START_STICKY
    }

    private fun toggleListening() {
        if (isListening) {
            // İkinci kez basıldı: kaydı durdur ve İŞLE
            isListening = false
            stopAmplitudePolling()
            floatingView?.updateAmplitude(0)
            openAIManager.stopRecordingAndProcess(serviceScope)
        } else if (floatingView != null) {
            // Ekranda yüzen UI var (demek ki işleniyor veya cevap bekleniyor). 
            // Tuşa basılırsa komple İPTAL ET
            openAIManager.cancelRecording()
            removeFloatingUi()
        } else {
            // İlk basış: Kaydı başlat
            isListening = true
            pauseMusic()
            showFloatingUi()
            openAIManager.startRecording()
            startAmplitudePolling()
        }
    }

    private fun startAmplitudePolling() {
        amplitudeJob?.cancel()
        amplitudeJob = serviceScope.launch {
            while (isListening) {
                val amplitude = openAIManager.getMaxAmplitude()
                floatingView?.updateAmplitude(amplitude)
                kotlinx.coroutines.delay(50)
            }
        }
    }

    private fun stopAmplitudePolling() {
        amplitudeJob?.cancel()
        amplitudeJob = null
    }

    private fun pauseMusic() {
        val audioManager = getSystemService(Context.AUDIO_SERVICE) as AudioManager
        // Android O+ AudioManager Focus Request (optional depending on system, but good practice)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val focusRequest = android.media.AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE)
                .setOnAudioFocusChangeListener { }
                .build()
            audioManager.requestAudioFocus(focusRequest)
        } else {
            @Suppress("DEPRECATION")
            audioManager.requestAudioFocus({ }, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE)
        }
        
        // Gösterim amacıyla Media_Pause olayı simüle et
        val eventDown = android.view.KeyEvent(android.view.KeyEvent.ACTION_DOWN, android.view.KeyEvent.KEYCODE_MEDIA_PAUSE)
        val eventUp = android.view.KeyEvent(android.view.KeyEvent.ACTION_UP, android.view.KeyEvent.KEYCODE_MEDIA_PAUSE)
        audioManager.dispatchMediaKeyEvent(eventDown)
        audioManager.dispatchMediaKeyEvent(eventUp)
    }

    private fun resumeMusic() {
        val audioManager = getSystemService(Context.AUDIO_SERVICE) as AudioManager
        val eventDown = android.view.KeyEvent(android.view.KeyEvent.ACTION_DOWN, android.view.KeyEvent.KEYCODE_MEDIA_PLAY)
        val eventUp = android.view.KeyEvent(android.view.KeyEvent.ACTION_UP, android.view.KeyEvent.KEYCODE_MEDIA_PLAY)
        audioManager.dispatchMediaKeyEvent(eventDown)
        audioManager.dispatchMediaKeyEvent(eventUp)
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            // Drop focus allowing other apps to play
            audioManager.abandonAudioFocusRequest(
                android.media.AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE).build()
            )
        } else {
            @Suppress("DEPRECATION")
            audioManager.abandonAudioFocus { }
        }
    }

    private fun showFloatingUi() {
        if (!settingsManager.isFloatingUiEnabled) return
        if (floatingView != null) return

        try {
            val metrics = resources.displayMetrics
            val widthPx = (300 * metrics.density).toInt()
            val heightPx = (150 * metrics.density).toInt()
            
            val params = WindowManager.LayoutParams(
                widthPx,
                heightPx,
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
                    WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
                else
                    @Suppress("DEPRECATION") WindowManager.LayoutParams.TYPE_PHONE,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
                android.graphics.PixelFormat.TRANSLUCENT
            ).apply {
                gravity = android.view.Gravity.CENTER_HORIZONTAL or android.view.Gravity.BOTTOM
                y = 100 // Bottom margin
            }

            val view = WaveOverlayView(this).apply {
                setBackgroundColor(android.graphics.Color.parseColor("#CC000000"))
            }
            floatingView = view
            windowManager.addView(floatingView, params)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    private var closeJob: kotlinx.coroutines.Job? = null

    private fun updateFloatingUiState(state: String) {
        if (state.startsWith("HAZIR")) {
            floatingView?.setStateText("Hazır", false)
            closeJob?.cancel()
            closeJob = serviceScope.launch {
                kotlinx.coroutines.delay(2000)
                removeFloatingUi()
                resumeMusic()
            }
        } else {
            closeJob?.cancel()
            val listening = state.contains("DİNLENİYOR")
            floatingView?.setStateText(state, listening)
        }
    }

    private fun removeFloatingUi() {
        if (floatingView != null) {
            try {
                windowManager.removeView(floatingView)
            } catch (e: Exception) {}
            floatingView = null
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        unregisterReceiver(voiceCommandReceiver)
        stopAmplitudePolling()
        removeFloatingUi()
        openAIManager.release()
        serviceScope.cancel()
    }

    override fun onBind(intent: Intent?): IBinder? = null
}
