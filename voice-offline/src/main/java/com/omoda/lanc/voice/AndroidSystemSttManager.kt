package com.omoda.lanc.voice

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.speech.RecognitionListener
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import android.util.Log

class AndroidSystemSttManager(
    private val context: Context,
    private val onResult: (String) -> Unit
) {
    private val TAG = "SystemSTT"
    private var speechRecognizer: SpeechRecognizer? = null
    private val recognizerIntent: Intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
        putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
        putExtra(RecognizerIntent.EXTRA_LANGUAGE, "tr-TR")
        putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true)
    }

    private val listener = object : RecognitionListener {
        override fun onReadyForSpeech(params: Bundle?) { Log.d(TAG, "Konuşmaya hazır") }
        override fun onBeginningOfSpeech() { Log.d(TAG, "Konuşma başladı") }
        override fun onRmsChanged(rmsdB: Float) {}
        override fun onBufferReceived(buffer: ByteArray?) {}
        override fun onEndOfSpeech() { Log.d(TAG, "Konuşma bitti") }
        override fun onError(error: Int) {
            val msg = when (error) {
                SpeechRecognizer.ERROR_AUDIO -> "Ses hatası"
                SpeechRecognizer.ERROR_CLIENT -> "İstemci hatası"
                SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS -> "Yetersiz izin"
                SpeechRecognizer.ERROR_NETWORK -> "Ağ hatası"
                SpeechRecognizer.ERROR_NETWORK_TIMEOUT -> "Ağ zaman aşımı"
                SpeechRecognizer.ERROR_NO_MATCH -> "Eşleşme bulunamadı"
                SpeechRecognizer.ERROR_RECOGNIZER_BUSY -> "Meşgul"
                SpeechRecognizer.ERROR_SERVER -> "Sunucu hatası"
                SpeechRecognizer.ERROR_SPEECH_TIMEOUT -> "Sessizlik zaman aşımı"
                else -> "Bilinmeyen hata: $error"
            }
            Log.e(TAG, "Hata: $msg")
            onResult("")
        }

        override fun onResults(results: Bundle?) {
            val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if (!matches.isNullOrEmpty()) {
                onResult(matches[0])
            }
        }

        override fun onPartialResults(partialResults: Bundle?) {
            val matches = partialResults?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
            if (!matches.isNullOrEmpty()) {
                // Kısmi sonuçları da loglayabiliriz ama ana sonuca odaklanıyoruz
            }
        }

        override fun onEvent(eventType: Int, params: Bundle?) {}
    }

    init {
        initRecognizer()
    }

    private fun initRecognizer() {
        if (SpeechRecognizer.isRecognitionAvailable(context)) {
            speechRecognizer = SpeechRecognizer.createSpeechRecognizer(context)
            speechRecognizer?.setRecognitionListener(listener)
        } else {
            Log.e(TAG, "Sistem STT mevcut değil.")
        }
    }

    fun startListening() {
        if (speechRecognizer == null) initRecognizer()
        speechRecognizer?.startListening(recognizerIntent)
    }

    fun stopListening() {
        speechRecognizer?.stopListening()
    }

    fun destroy() {
        speechRecognizer?.destroy()
        speechRecognizer = null
    }
}
