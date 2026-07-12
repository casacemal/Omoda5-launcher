package com.omoda.lanc.audio

import android.content.Context
import android.media.AudioAttributes
import android.media.AudioFocusRequest
import android.media.AudioManager
import android.os.Build
import android.util.Log

/**
 * Ses Motoru (Audio Engine) - AAOS Plan v2.0 Uyumlu
 * Tüm ses kanallarının (Müzik, Navigasyon, Asistan, Uyarı) odak ve ses seviyesini yönetir.
 * Ducking (ses kısma) ve Audio Focus işlemlerini merkezileştirir.
 */
class AudioEngine(private val context: Context) {
    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
    private var assistantFocusRequest: AudioFocusRequest? = null
    private var alertFocusRequest: AudioFocusRequest? = null

    /**
     * Öncelik: ALERT > AI (Assistant) > NAV > MUSIC
     */
    enum class AudioPriority {
        ALERT,      // Kritik Uyarılar
        ASSISTANT,  // Sesli Asistan (AI)
        NAVIGATION, // Navigasyon Rehberi
        MEDIA       // Müzik / Radyo
    }

    /**
     * Sesli asistan için odak ister. Müziği kısar (Ducking).
     */
    fun requestAssistantFocus(): Boolean {
        Log.d("AudioEngine", "Asistan için focus isteniyor...")
        return requestFocus(AudioPriority.ASSISTANT)
    }

    /**
     * Kritik uyarılar için odak ister. Her şeyi susturur.
     */
    fun requestAlertFocus(): Boolean {
        Log.d("AudioEngine", "Kritik UYARI için focus isteniyor...")
        return requestFocus(AudioPriority.ALERT)
    }

    private fun requestFocus(priority: AudioPriority): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val usage = when (priority) {
                AudioPriority.ALERT -> AudioAttributes.USAGE_ALARM
                AudioPriority.ASSISTANT -> AudioAttributes.USAGE_ASSISTANCE_SONIFICATION // Ducking tetikleyen kanal
                AudioPriority.NAVIGATION -> AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE
                AudioPriority.MEDIA -> AudioAttributes.USAGE_MEDIA
            }

            val gainType = when (priority) {
                AudioPriority.ALERT -> AudioManager.AUDIOFOCUS_GAIN_TRANSIENT
                AudioPriority.ASSISTANT -> AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK
                else -> AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK
            }

            val attributes = AudioAttributes.Builder()
                .setUsage(usage)
                .setContentType(if (priority == AudioPriority.MEDIA) AudioAttributes.CONTENT_TYPE_MUSIC else AudioAttributes.CONTENT_TYPE_SPEECH)
                .build()

            val request = AudioFocusRequest.Builder(gainType)
                .setAudioAttributes(attributes)
                .setAcceptsDelayedFocusGain(true)
                .setWillPauseWhenDucked(false) // Ducking sırasında komple susturma
                .setOnAudioFocusChangeListener { focusChange ->
                    handleFocusChange(priority, focusChange)
                }
                .build()

            if (priority == AudioPriority.ALERT) {
                alertFocusRequest?.let { audioManager.abandonAudioFocusRequest(it) }
                alertFocusRequest = request
            } else {
                assistantFocusRequest?.let { audioManager.abandonAudioFocusRequest(it) }
                assistantFocusRequest = request
            }

            val result = audioManager.requestAudioFocus(request)
            return result == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        } else {
            @Suppress("DEPRECATION")
            val result = audioManager.requestAudioFocus(
                { focusChange -> handleFocusChange(priority, focusChange) },
                AudioManager.STREAM_NOTIFICATION, // Daha agresif ducking için
                if (priority == AudioPriority.ALERT) AudioManager.AUDIOFOCUS_GAIN_TRANSIENT else AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK
            )
            return result == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        }
    }

    private fun handleFocusChange(priority: AudioPriority, focusChange: Int) {
        when (focusChange) {
            AudioManager.AUDIOFOCUS_LOSS -> {
                Log.d("AudioEngine", "Focus Kaybedildi: $priority")
            }
            AudioManager.AUDIOFOCUS_LOSS_TRANSIENT -> {
                Log.d("AudioEngine", "Focus Geçici Kaybedildi: $priority")
            }
            AudioManager.AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK -> {
                Log.d("AudioEngine", "Focus Ducking (Kısılma): $priority")
            }
            AudioManager.AUDIOFOCUS_GAIN -> {
                Log.d("AudioEngine", "Focus Kazanıldı: $priority")
            }
        }
    }

    /**
     * İşlem bittiğinde ses odağını bırakır.
     */
    fun releaseFocus() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            alertFocusRequest?.let { audioManager.abandonAudioFocusRequest(it) }
            assistantFocusRequest?.let { audioManager.abandonAudioFocusRequest(it) }
            alertFocusRequest = null
            assistantFocusRequest = null
        } else {
            @Suppress("DEPRECATION")
            audioManager.abandonAudioFocus { }
        }
        Log.d("AudioEngine", "Tüm focuslar bırakıldı.")
    }
}
