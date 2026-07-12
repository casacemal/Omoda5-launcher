package com.omoda.lanc.tts

import android.content.Context
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import android.util.Log
import java.util.Locale

class AndroidSystemTtsManager(private val context: Context) : TTSManager, TextToSpeech.OnInitListener {
    private val tag = "AndroidSystemTtsManager"
    private var tts: TextToSpeech? = null
    private var isInitialized = false
    
    // UtteranceId -> Pair(onComplete, onError)
    private val callbacks = java.util.concurrent.ConcurrentHashMap<String, Pair<() -> Unit, () -> Unit>>()
    @Volatile private var isSpeaking = false

    init {
        tts = TextToSpeech(context, this)
    }

    override fun onInit(status: Int) {
        if (status == TextToSpeech.SUCCESS) {
            val locale = Locale("tr", "TR")
            val result = tts?.setLanguage(locale)
            if (result == TextToSpeech.LANG_MISSING_DATA || result == TextToSpeech.LANG_NOT_SUPPORTED) {
                Log.e(tag, "Türkçe dil desteği bulunamadı veya veriler eksik.")
            } else {
                isInitialized = true
                Log.i(tag, "Android TTS başarıyla başlatıldı.")
                
                // NAVİGASYON KANALI YÖNLENDİRMESİ
                val attributes = android.media.AudioAttributes.Builder()
                    .setUsage(android.media.AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE)
                    .setContentType(android.media.AudioAttributes.CONTENT_TYPE_SPEECH)
                    .build()
                tts?.setAudioAttributes(attributes)
            }
            
            tts?.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                override fun onStart(utteranceId: String?) {
                    isSpeaking = true
                }

                override fun onDone(utteranceId: String?) {
                    isSpeaking = false
                    if (utteranceId != null) {
                        callbacks.remove(utteranceId)?.first?.invoke()
                    }
                }

                @Deprecated("Deprecated in Java")
                override fun onError(utteranceId: String?) {
                    isSpeaking = false
                    Log.e(tag, "TTS çalma sırasında hata oluştu.")
                    if (utteranceId != null) {
                        callbacks.remove(utteranceId)?.second?.invoke()
                    }
                }

                override fun onError(utteranceId: String?, errorCode: Int) {
                    isSpeaking = false
                    Log.e(tag, "TTS çalma sırasında hata oluştu. Kod: $errorCode")
                    if (utteranceId != null) {
                        callbacks.remove(utteranceId)?.second?.invoke()
                    }
                }
            })
        } else {
            Log.e(tag, "Android TTS başlatılamadı. Hata Kodu: $status")
        }
    }

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        if (!isInitialized || tts == null) {
            Log.e(tag, "TTS henüz hazır değil veya kullanılamıyor.")
            onError?.invoke()
            return
        }

        // Önceki konuşmayı iptal et
        stop()

        val utteranceId = "UtteranceId_" + System.currentTimeMillis()
        if (onComplete != null || onError != null) {
            callbacks[utteranceId] = Pair(onComplete ?: {}, onError ?: {})
        }
        val result = tts?.speak(text, TextToSpeech.QUEUE_FLUSH, null, utteranceId)

        if (result == TextToSpeech.ERROR) {
            Log.e(tag, "Seslendirme kuyruğa alınamadı.")
            callbacks.remove(utteranceId)
            onError?.invoke()
        } else {
            Log.i(tag, "Seslendirme kuyruğa alındı: $utteranceId")
        }
    }

    override fun stop() {
        try {
            if (tts?.isSpeaking == true) {
                tts?.stop()
            }
        } catch (_: Exception) {}
        isSpeaking = false
        callbacks.clear()
    }

    override fun shutdown() {
        stop()
        tts?.shutdown()
        tts = null
        isInitialized = false
        callbacks.clear()
    }

    override fun isSpeaking(): Boolean {
        return isSpeaking || (tts?.isSpeaking == true)
    }
}
