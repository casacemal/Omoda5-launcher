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
    
    // Geçici olarak tutulan callback'ler
    private var currentOnComplete: (() -> Unit)? = null
    private var currentOnError: (() -> Unit)? = null
    private var isSpeaking = false

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
            }
            
            tts?.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                override fun onStart(utteranceId: String?) {
                    isSpeaking = true
                }

                override fun onDone(utteranceId: String?) {
                    isSpeaking = false
                    currentOnComplete?.invoke()
                    clearCallbacks()
                }

                @Deprecated("Deprecated in Java")
                override fun onError(utteranceId: String?) {
                    isSpeaking = false
                    Log.e(tag, "TTS çalma sırasında hata oluştu.")
                    currentOnError?.invoke()
                    clearCallbacks()
                }

                override fun onError(utteranceId: String?, errorCode: Int) {
                    isSpeaking = false
                    Log.e(tag, "TTS çalma sırasında hata oluştu. Kod: $errorCode")
                    currentOnError?.invoke()
                    clearCallbacks()
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

        this.currentOnComplete = onComplete
        this.currentOnError = onError

        val utteranceId = "UtteranceId_" + System.currentTimeMillis()
        val result = tts?.speak(text, TextToSpeech.QUEUE_FLUSH, null, utteranceId)

        if (result == TextToSpeech.ERROR) {
            Log.e(tag, "Seslendirme kuyruğa alınamadı.")
            onError?.invoke()
            clearCallbacks()
        } else {
            Log.i(tag, "Seslendirme kuyruğa alındı: $utteranceId")
        }
    }

    override fun stop() {
        if (tts?.isSpeaking == true) {
            tts?.stop()
        }
        isSpeaking = false
    }

    override fun shutdown() {
        stop()
        tts?.shutdown()
        tts = null
        isInitialized = false
        clearCallbacks()
    }

    override fun isSpeaking(): Boolean {
        return isSpeaking || (tts?.isSpeaking == true)
    }

    private fun clearCallbacks() {
        currentOnComplete = null
        currentOnError = null
    }
}
