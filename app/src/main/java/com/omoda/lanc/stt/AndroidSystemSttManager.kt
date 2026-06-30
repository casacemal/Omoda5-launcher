package com.omoda.lanc.stt

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.RecognitionListener
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import android.util.Log

class AndroidSystemSttManager(
    private val context: Context,
    private val onResult: (String) -> Unit
) : RecognitionListener {

    private val tag = "AndroidSystemSttManager"
    private var speechRecognizer: SpeechRecognizer? = null
    private var mainHandler = Handler(Looper.getMainLooper())
    private var isListening = false

    init {
        mainHandler.post {
            if (SpeechRecognizer.isRecognitionAvailable(context)) {
                speechRecognizer = SpeechRecognizer.createSpeechRecognizer(context)
                speechRecognizer?.setRecognitionListener(this)
                Log.i(tag, "SpeechRecognizer başlatıldı.")
            } else {
                Log.e(tag, "Bu cihazda SpeechRecognizer özelliği desteklenmiyor.")
            }
        }
    }

    fun startListening() {
        mainHandler.post {
            if (speechRecognizer == null) {
                Log.e(tag, "SpeechRecognizer mevcut değil, çalıştırılamıyor.")
                onResult("")
                return@post
            }

            if (isListening) return@post

            val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
                putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
                putExtra(RecognizerIntent.EXTRA_LANGUAGE, "tr-TR")
                putExtra(RecognizerIntent.EXTRA_PARTIAL_RESULTS, true)
            }

            try {
                speechRecognizer?.startListening(intent)
                isListening = true
                Log.i(tag, "Dinleme başlatıldı.")
            } catch (e: Exception) {
                Log.e(tag, "Dinleme başlatılamadı: ${e.message}")
                isListening = false
                onResult("")
            }
        }
    }

    fun stopListening() {
        mainHandler.post {
            if (!isListening) return@post
            isListening = false
            try {
                speechRecognizer?.stopListening()
                Log.i(tag, "Dinleme durduruldu.")
            } catch (e: Exception) {
                Log.e(tag, "Durdurma hatası: ${e.message}")
            }
        }
    }

    fun destroy() {
        mainHandler.post {
            speechRecognizer?.destroy()
            speechRecognizer = null
        }
    }

    override fun onReadyForSpeech(params: Bundle?) {
        Log.d(tag, "Konuşma için hazır.")
    }

    override fun onBeginningOfSpeech() {
        Log.d(tag, "Konuşma başladı.")
    }

    override fun onRmsChanged(rmsdB: Float) {
        // Ses seviyesi değişti, isterseniz EventBus'a gönderebilirsiniz.
    }

    override fun onBufferReceived(buffer: ByteArray?) {
        // Ses verisi alındı
    }

    override fun onEndOfSpeech() {
        Log.d(tag, "Konuşma sonlandı.")
        isListening = false
    }

    override fun onError(error: Int) {
        isListening = false
        val errorMessage = when(error) {
            SpeechRecognizer.ERROR_AUDIO -> "Ses hatası"
            SpeechRecognizer.ERROR_CLIENT -> "İstemci hatası"
            SpeechRecognizer.ERROR_INSUFFICIENT_PERMISSIONS -> "İzin yetersiz"
            SpeechRecognizer.ERROR_NETWORK -> "Ağ hatası"
            SpeechRecognizer.ERROR_NETWORK_TIMEOUT -> "Ağ zaman aşımı"
            SpeechRecognizer.ERROR_NO_MATCH -> "Eşleşme bulunamadı"
            SpeechRecognizer.ERROR_RECOGNIZER_BUSY -> "Tanıyıcı meşgul"
            SpeechRecognizer.ERROR_SERVER -> "Sunucu hatası"
            SpeechRecognizer.ERROR_SPEECH_TIMEOUT -> "Konuşma zaman aşımı"
            else -> "Bilinmeyen hata ($error)"
        }
        Log.e(tag, "STT Hatası: $errorMessage")
        onResult("") // Başarısızlık durumunda boş string döner
    }

    override fun onResults(results: Bundle?) {
        isListening = false
        val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
        if (!matches.isNullOrEmpty()) {
            val text = matches[0]
            Log.i(tag, "STT Sonucu: $text")
            onResult(text)
        } else {
            onResult("")
        }
    }

    override fun onPartialResults(partialResults: Bundle?) {
        val matches = partialResults?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
        if (!matches.isNullOrEmpty()) {
            // Can be emitted via EventBus if real-time UI update is desired
        }
    }

    override fun onEvent(eventType: Int, params: Bundle?) {
        // Event alındı
    }
}
