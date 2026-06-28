package com.omoda5.demo

import android.content.Context
import android.media.MediaPlayer
import android.media.MediaRecorder
import android.os.Build
import android.speech.tts.TextToSpeech
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import okhttp3.*
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.util.Locale

class OpenAIManager(
    private val context: Context,
    private val onStateChanged: (String) -> Unit,
    private val onResultCallback: (String) -> Unit
) {
    private var mediaRecorder: MediaRecorder? = null
    private var mediaPlayer: MediaPlayer? = null
    var audioFile: File? = null
    private val settingsManager = SettingsManager(context)
    private val client = OkHttpClient()
    
    private var textToSpeech: TextToSpeech? = null
    private var voskManager: VoskManager? = null

    private var edgeTtsManager: EdgeTtsManager? = null

    init {
        initTTS()
        initVosk()
        edgeTtsManager = EdgeTtsManager(client)
    }

    private fun initTTS() {
        textToSpeech = TextToSpeech(context) { status ->
            if (status == TextToSpeech.SUCCESS) {
                textToSpeech?.language = Locale("tr", "TR")
            }
        }
    }

    private fun initVosk() {
        voskManager = VoskManager(context, onStateChanged)
        voskManager?.initModel {
            // Model yüklendi
        }
    }

    fun startRecording() {
        try {
            audioFile = File(context.cacheDir, "temp_audio.wav")
            mediaRecorder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                MediaRecorder(context)
            } else {
                @Suppress("DEPRECATION")
                MediaRecorder()
            }.apply {
                setAudioSource(MediaRecorder.AudioSource.VOICE_RECOGNITION)
                setOutputFormat(MediaRecorder.OutputFormat.DEFAULT) // PCM WAV tarzı
                setAudioEncoder(MediaRecorder.AudioEncoder.DEFAULT)
                setOutputFile(audioFile?.absolutePath)
                prepare()
                start()
            }
            onStateChanged("DİNLENİYOR...")
        } catch (e: Exception) {
            e.printStackTrace()
            onStateChanged("KAYIT HATASI: ${e.message}")
        }
    }

    fun stopRecordingAndProcess(coroutineScope: CoroutineScope) {
        try {
            mediaRecorder?.stop()
            mediaRecorder?.release()
            mediaRecorder = null
            onStateChanged("İŞLENİYOR...")

            coroutineScope.launch {
                processSTTAndLLM()
            }
        } catch (e: Exception) {
            e.printStackTrace()
            onStateChanged("KAYIT DURDURMA HATASI")
        }
    }

    fun cancelRecording() {
        try {
            mediaRecorder?.stop()
        } catch (e: Exception) {}
        try {
            mediaRecorder?.release()
        } catch (e: Exception) {}
        mediaRecorder = null
        
        audioFile?.let {
            if (it.exists()) it.delete()
        }
        onStateChanged("İPTAL EDİLDİ")
        
        // Biraz bekleyip hazır durumuna dön
        CoroutineScope(Dispatchers.Main).launch {
            kotlinx.coroutines.delay(1000)
            onStateChanged("HAZIR")
        }
    }

    private suspend fun processSTTAndLLM() {
        val file = audioFile
        if (file == null || !file.exists()) {
            withContext(Dispatchers.Main) { onStateChanged("Ses dosyası bulunamadı") }
            return
        }

        val engine = settingsManager.sttEngine
        var recognizedText = ""

        if (engine == "VOSK" && voskManager?.isInitialized == true) {
            withContext(Dispatchers.Main) { onStateChanged("VOSK İLE ÇEVRİLİYOR...") }
            recognizedText = voskManager?.recognizeAudioFile(file) ?: ""
        } else {
            // HERMES veya diğer REST API STT
            withContext(Dispatchers.Main) { onStateChanged("HERMES İLE ÇEVRİLİYOR...") }
            try {
                val requestBody = MultipartBody.Builder()
                    .setType(MultipartBody.FORM)
                    .addFormDataPart("file", file.name, file.asRequestBody("audio/wav".toMediaTypeOrNull()))
                    .addFormDataPart("model", "ipisper-large-v3-turbo")
                    .addFormDataPart("language", "tr")
                    .build()

                val request = Request.Builder()
                    .url(settingsManager.sttUrl)
                    .addHeader("Authorization", "Bearer ${settingsManager.sttApiKey}")
                    .post(requestBody)
                    .build()

                val response = withContext(Dispatchers.IO) { client.newCall(request).execute() }
                val responseBody = response.body?.string() ?: ""

                if (response.isSuccessful) {
                    val json = JSONObject(responseBody)
                    recognizedText = json.optString("text", "")
                } else {
                    withContext(Dispatchers.Main) { onStateChanged("STT HATASI: ${response.code}") }
                    return
                }
            } catch (e: Exception) {
                e.printStackTrace()
                withContext(Dispatchers.Main) { onStateChanged("AĞ HATASI (STT): ${e.message}") }
                return
            }
        }

        if (recognizedText.isNotBlank()) {
            withContext(Dispatchers.Main) {
                onResultCallback(recognizedText)
            }
            
            if (engine == "VOSK") {
                if (settingsManager.isTtsReadEnabled) {
                    processTTS(recognizedText)
                } else {
                    withContext(Dispatchers.Main) { onStateChanged("HAZIR") }
                }
            } else {
                withContext(Dispatchers.Main) {
                    onStateChanged("CEVAP BEKLENİYOR...")
                }
                processLLM(recognizedText)
            }
        } else {
            withContext(Dispatchers.Main) { onStateChanged("HAZIR") }
        }
    }

    private suspend fun processLLM(userText: String) {
        try {
            val jsonBody = JSONObject().apply {
                put("model", "google/gemini-2.5-flash")
                put("messages", JSONArray().apply {
                    put(JSONObject().apply {
                        put("role", "system")
                        put("content", "Sen araç asistanısın. Kısa, net ve samimi cevaplar ver. Türkçe konuş.")
                    })
                    put(JSONObject().apply {
                        put("role", "user")
                        put("content", userText)
                    })
                })
            }

            val requestBody = jsonBody.toString().toRequestBody("application/json".toMediaTypeOrNull())
            val request = Request.Builder()
                .url(settingsManager.ttsUrl) // Reusing ttsUrl for LLM as defined in SettingsManager
                .addHeader("Authorization", "Bearer ${settingsManager.ttsApiKey}")
                .post(requestBody)
                .build()

            val response = withContext(Dispatchers.IO) { client.newCall(request).execute() }
            val responseBody = response.body?.string() ?: ""

            if (response.isSuccessful) {
                val json = JSONObject(responseBody)
                val choices = json.optJSONArray("choices")
                if (choices != null && choices.length() > 0) {
                    val message = choices.getJSONObject(0).optJSONObject("message")
                    val assistantResponse = message?.optString("content", "") ?: ""

                    withContext(Dispatchers.Main) {
                        onResultCallback(assistantResponse)
                    }

                    if (settingsManager.isTtsReadEnabled) {
                        processTTS(assistantResponse)
                    } else {
                        withContext(Dispatchers.Main) { onStateChanged("HAZIR") }
                    }
                } else {
                    withContext(Dispatchers.Main) { onStateChanged("LLM BOŞ CEVAP") }
                }
            } else {
                withContext(Dispatchers.Main) { onStateChanged("LLM HATASI: ${response.code}") }
            }
        } catch (e: Exception) {
            e.printStackTrace()
            withContext(Dispatchers.Main) { onStateChanged("AĞ HATASI (LLM): ${e.message}") }
        }
    }

    fun playTextViaTTS(text: String, scope: CoroutineScope) {
        scope.launch {
            processTTS(text)
        }
    }

    private suspend fun processTTS(text: String) {
        if (text.isBlank()) return

        if (settingsManager.ttsEngine == "EDGE") {
            withContext(Dispatchers.Main) { onStateChanged("EDGE TTS HAZIRLANIYOR...") }
            val ttsFile = File(context.cacheDir, "edge_tts.mp3")
            val success = withContext(Dispatchers.IO) {
                edgeTtsManager?.synthesizeText(text, ttsFile) ?: false
            }
            if (success && ttsFile.exists()) {
                withContext(Dispatchers.Main) {
                    onStateChanged("SES ÇALINIYOR")
                    playAudio(ttsFile.absolutePath)
                }
            } else {
                withContext(Dispatchers.Main) { onStateChanged("EDGE TTS BAŞARISIZ") }
            }
        } else {
            // Android Native TextToSpeech
            withContext(Dispatchers.Main) {
                onStateChanged("SES ÇALINIYOR")
                
                textToSpeech?.setOnUtteranceProgressListener(object : android.speech.tts.UtteranceProgressListener() {
                    override fun onStart(utteranceId: String?) {}
                    override fun onDone(utteranceId: String?) {
                        CoroutineScope(Dispatchers.Main).launch {
                            onStateChanged("HAZIR")
                        }
                    }
                    override fun onError(utteranceId: String?) {
                        CoroutineScope(Dispatchers.Main).launch {
                            onStateChanged("HAZIR")
                        }
                    }
                })

                val params = android.os.Bundle()
                params.putString(TextToSpeech.Engine.KEY_PARAM_UTTERANCE_ID, "tts1")
                textToSpeech?.speak(text, TextToSpeech.QUEUE_FLUSH, params, "tts1")
            }
        }
    }

    private fun playAudio(filePath: String) {
        try {
            mediaPlayer?.release()
            mediaPlayer = MediaPlayer().apply {
                setDataSource(filePath)
                prepare()
                start()
                setOnCompletionListener {
                    onStateChanged("HAZIR")
                    it.release()
                    mediaPlayer = null
                }
            }
        } catch (e: Exception) {
            e.printStackTrace()
            onStateChanged("ÇALMA HATASI")
        }
    }

    fun getMaxAmplitude(): Int {
        return try {
            mediaRecorder?.maxAmplitude ?: 0
        } catch (e: Exception) {
            0
        }
    }

    fun release() {
        mediaRecorder?.release()
        mediaRecorder = null
        mediaPlayer?.release()
        mediaPlayer = null
        textToSpeech?.shutdown()
    }
}
