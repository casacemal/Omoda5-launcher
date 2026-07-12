package com.omoda.lanc.voice

import android.annotation.SuppressLint
import android.content.Context
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import com.k2fsa.sherpa.onnx.*
import com.omoda.lanc.core.GlobalState
import kotlinx.coroutines.*
import java.io.File

/**
 * SherpaAsrManager - Yerel (Offline) Whisper Tiny STT Yöneticisi.
 */
class SherpaAsrManager(private val context: Context, private val onResult: (String) -> Unit) {

    private val TAG = "SherpaAsr"
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val installer = SherpaModelInstaller(context)
    
    private var isListening = false
    private var audioRecord: AudioRecord? = null
    private var recognizer: OfflineRecognizer? = null

    init {
        scope.launch {
            if (installer.ensureInstalled()) {
                initAsr()
            }
        }
    }

    private fun initAsr() {
        try {
            val asrDir = installer.asrDirectory()
            
            val config = OfflineRecognizerConfig().apply {
                modelConfig = OfflineModelConfig().apply {
                    whisper = OfflineWhisperModelConfig().apply {
                        encoder = File(asrDir, "tiny-encoder.int8.onnx").absolutePath
                        decoder = File(asrDir, "tiny-decoder.int8.onnx").absolutePath
                        tokens = File(asrDir, "tokens.txt").absolutePath
                        language = "tr"
                        task = "transcribe"
                    }
                    numThreads = 2
                    debug = false
                }
            }
            
            recognizer = OfflineRecognizer(null, config)
            Log.i(TAG, "Sherpa Offline ASR Hazır (Whisper Tiny int8)")
        } catch (e: Exception) {
            Log.e(TAG, "ASR Init Hatası: ${e.message}")
        }
    }

    @SuppressLint("MissingPermission")
    fun startListening() {
        if (isListening || recognizer == null) return
        isListening = true
        
        Log.i(TAG, "Yerel STT başlatıldı.")
        
        scope.launch {
            try {
                val sampleRate = 16000
                val channelConfig = AudioFormat.CHANNEL_IN_MONO
                val audioFormat = AudioFormat.ENCODING_PCM_16BIT
                val bufferSize = AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat)

                audioRecord = AudioRecord(MediaRecorder.AudioSource.VOICE_RECOGNITION, sampleRate, channelConfig, audioFormat, bufferSize)
                audioRecord?.startRecording()

                val buffer = ShortArray(bufferSize)
                val audioDataBuffer = mutableListOf<Float>()

                while (isListening) {
                    val read = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                    if (read > 0) {
                        for (i in 0 until read) {
                            audioDataBuffer.add(buffer[i] / 32768.0f)
                        }
                        
                        // Limit buffer size to avoid OOM
                        if (audioDataBuffer.size > 16000 * 10) { 
                            processAudio(audioDataBuffer.toFloatArray())
                            audioDataBuffer.clear()
                        }
                    }
                }
                
                if (audioDataBuffer.isNotEmpty()) processAudio(audioDataBuffer.toFloatArray())

            } catch (e: Exception) {
                Log.e(TAG, "STT Loop Hatası: ${e.message}")
            } finally {
                stopListening()
            }
        }
    }

    private fun processAudio(samples: FloatArray) {
        recognizer?.let { rec ->
            val stream = rec.createStream()
            stream.acceptWaveform(samples, 16000)
            rec.decode(stream)
            val text = rec.getResult(stream).text
            if (!text.isNullOrBlank()) {
                Log.i(TAG, "ASR Sonucu: $text")
                scope.launch(Dispatchers.Main) { onResult(text) }
            }
            stream.release()
        }
    }

    fun stopListening() {
        isListening = false
        audioRecord?.stop()
        audioRecord?.release()
        audioRecord = null
    }

    /**
     * Kaydedilmiş bir WAV dosyasını yerel Whisper Tiny ile işler.
     * AssistantController tarafından sttMode == "SHERPA" iken çağrılır.
     */
    fun transcribeFile(audioFile: File) {
        scope.launch {
            try {
                // Modeller henüz yüklenmediyse bekle
                if (recognizer == null) {
                    installer.ensureInstalled()
                    initAsr()
                }
                val rec = recognizer ?: run {
                    Log.e(TAG, "Recognizer başlatılamadı, transcribe iptal edildi.")
                    withContext(Dispatchers.Main) { onResult("") }
                    return@launch
                }

                // WAV dosyasını float array olarak oku (44-byte header atla)
                val bytes = audioFile.readBytes()
                val headerSize = 44
                if (bytes.size <= headerSize) {
                    withContext(Dispatchers.Main) { onResult("") }
                    return@launch
                }
                val sampleCount = (bytes.size - headerSize) / 2
                val samples = FloatArray(sampleCount)
                for (i in 0 until sampleCount) {
                    val lo = bytes[headerSize + i * 2].toInt() and 0xFF
                    val hi = bytes[headerSize + i * 2 + 1].toInt()
                    val s = (hi shl 8) or lo
                    samples[i] = s / 32768.0f
                }

                val stream = rec.createStream()
                stream.acceptWaveform(samples, 16000)
                rec.decode(stream)
                val text = rec.getResult(stream).text ?: ""
                stream.release()
                Log.i(TAG, "Offline ASR Sonucu: $text")
                withContext(Dispatchers.Main) { onResult(text) }
            } catch (e: Exception) {
                Log.e(TAG, "transcribeFile Hatası: ${e.message}")
                withContext(Dispatchers.Main) { onResult("") }
            }
        }
    }
}
