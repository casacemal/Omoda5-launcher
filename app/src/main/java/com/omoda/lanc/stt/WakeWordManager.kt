package com.omoda.lanc.stt

import android.content.Context
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import com.omoda.lanc.AssistantApplication
import okhttp3.*
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.TimeUnit
import kotlin.concurrent.thread

/**
 * Basit Wake Word Manager - Porcupine gerektirmez.
 * "Hey Omoda" deyince aktif olur.
 * Sürekli dinler, Groq STT ile kontrol eder.
 */
class WakeWordManager(
    private val context: Context,
    private val onWakeWordDetected: (String) -> Unit // komut parametresiyle birlikte
) {
    private val TAG = "Hermes-WakeWord"
    private var audioRecord: AudioRecord? = null
    private var isListening = false
    private val WAKE_WORD = "hey omoda"
    private val SAMPLE_RATE = 16000
    private val CHUNK_DURATION_MS = 3000 // 3 saniye chunks
    private val httpClient = OkHttpClient.Builder()
        .connectTimeout(10, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .build()

    fun startListening() {
        if (isListening) return
        isListening = true
        thread {
            listenLoop()
        }
        Log.i(TAG, "Wake Word dinlemesi başladı: \"$WAKE_WORD\"")
    }

    fun stopListening() {
        isListening = false
        try { audioRecord?.stop(); audioRecord?.release() } catch (_: Exception) {}
        audioRecord = null
        Log.d(TAG, "Wake Word dinlemesi durduruldu.")
    }

    private fun listenLoop() {
        val channelConfig = AudioFormat.CHANNEL_IN_MONO
        val audioFormat = AudioFormat.ENCODING_PCM_16BIT
        val bufferSize = AudioRecord.getMinBufferSize(SAMPLE_RATE, channelConfig, audioFormat)

        try {
            audioRecord = AudioRecord(
                MediaRecorder.AudioSource.VOICE_COMMUNICATION,
                SAMPLE_RATE,
                channelConfig,
                audioFormat,
                bufferSize
            )
            audioRecord?.startRecording()

            while (isListening) {
                // 3 saniyelik ses kaydet
                val audioData = recordChunk(bufferSize)
                if (audioData != null && audioData.size > 1000) {
                    // STT ile kontrol et
                    val text = transcribeWithGroq(audioData)
                    if (text != null) {
                        val lowerText = text.lowercase().trim()
                        
                        // Sürüm 7.0: Ultra-Gelişmiş Halüsinasyon Filtresi (Omoda Özel)
                        val hallucinationPatterns = listOf(
                            "altyazı", "abone", "teşekkür", "viewing", "morris", 
                            "jeong", "yönetmen", "m.k.", "m k", "evet.", "hadi."
                        )
                        
                        val isHallucination = lowerText.isBlank() || 
                                              lowerText.length < 3 ||
                                              hallucinationPatterns.any { lowerText.contains(it) }

                        if (!isHallucination) {
                            Log.d(TAG, "STT: \"$lowerText\"")

                            if (lowerText.contains(WAKE_WORD)) {
                                // Wake word bulundu, komutu çıkar
                                val command = extractCommand(lowerText)
                                Log.i(TAG, "Wake Word algılandı! Komut: \"$command\"")
                                onWakeWordDetected(command)
                            }
                        }
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Wake Word hatası: ${e.message}")
        }
    }

    private fun recordChunk(@Suppress("UNUSED_PARAMETER") bufferSize: Int): ByteArray? {
        return try {
            val totalBytes = SAMPLE_RATE * 2 * CHUNK_DURATION_MS / 1000 // 16-bit PCM
            val data = ByteArray(totalBytes)
            var totalRead = 0
            while (totalRead < totalBytes && isListening) {
                val read = audioRecord?.read(data, totalRead, totalBytes - totalRead) ?: 0
                if (read > 0) totalRead += read
            }
            if (totalRead > 0) data.copyOf(totalRead) else null
        } catch (e: Exception) {
            Log.e(TAG, "Kayıt hatası: ${e.message}")
            null
        }
    }

    private fun transcribeWithGroq(audioData: ByteArray): String? {
        return try {
            // WAV header ekle
            val wavData = addWavHeader(audioData)

            val requestBody = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart(
                    "file", "audio.wav",
                    wavData.toRequestBody("audio/wav".toMediaType())
                )
                .addFormDataPart("model", "whisper-large-v3")
                .addFormDataPart("language", "tr")
                .build()

            val apiKey = AssistantApplication.groqApiKey.value
            val request = Request.Builder()
                .url("${AssistantApplication.GROQ_BASE_URL}/audio/transcriptions")
                .addHeader("Authorization", "Bearer $apiKey")
                .post(requestBody)
                .build()

            val response = httpClient.newCall(request).execute()
            if (response.isSuccessful) {
                val body = response.body?.string()
                val json = JSONObject(body ?: return null)
                json.optString("text", "")
            } else {
                Log.w(TAG, "STT hatası: ${response.code}")
                null
            }
        } catch (e: Exception) {
            Log.e(TAG, "STT istisna: ${e.message}")
            null
        }
    }

    private fun addWavHeader(pcmData: ByteArray): ByteArray {
        val totalDataLen = pcmData.size + 36
        val channels = 1
        val bitsPerSample = 16
        val byteRate = SAMPLE_RATE * channels * bitsPerSample / 8
        val blockAlign = channels * bitsPerSample / 8

        val header = ByteArray(44)
        // RIFF chunk
        header[0] = 'R'.code.toByte(); header[1] = 'I'.code.toByte()
        header[2] = 'F'.code.toByte(); header[3] = 'F'.code.toByte()
        header[4] = (totalDataLen and 0xff).toByte()
        header[5] = ((totalDataLen shr 8) and 0xff).toByte()
        header[6] = ((totalDataLen shr 16) and 0xff).toByte()
        header[7] = ((totalDataLen shr 24) and 0xff).toByte()
        header[8] = 'W'.code.toByte(); header[9] = 'A'.code.toByte()
        header[10] = 'V'.code.toByte(); header[11] = 'E'.code.toByte()
        // fmt chunk
        header[12] = 'f'.code.toByte(); header[13] = 'm'.code.toByte()
        header[14] = 't'.code.toByte(); header[15] = ' '.code.toByte()
        header[16] = 16; header[17] = 0; header[18] = 0; header[19] = 0
        header[20] = 1; header[21] = 0 // PCM
        header[22] = channels.toByte(); header[23] = 0
        header[24] = (SAMPLE_RATE and 0xff).toByte()
        header[25] = ((SAMPLE_RATE shr 8) and 0xff).toByte()
        header[26] = ((SAMPLE_RATE shr 16) and 0xff).toByte()
        header[27] = ((SAMPLE_RATE shr 24) and 0xff).toByte()
        header[28] = (byteRate and 0xff).toByte()
        header[29] = ((byteRate shr 8) and 0xff).toByte()
        header[30] = ((byteRate shr 16) and 0xff).toByte()
        header[31] = ((byteRate shr 24) and 0xff).toByte()
        header[32] = blockAlign.toByte(); header[33] = 0
        header[34] = bitsPerSample.toByte(); header[35] = 0
        // data chunk
        header[36] = 'd'.code.toByte(); header[37] = 'a'.code.toByte()
        header[38] = 't'.code.toByte(); header[39] = 'a'.code.toByte()
        header[40] = (pcmData.size and 0xff).toByte()
        header[41] = ((pcmData.size shr 8) and 0xff).toByte()
        header[42] = ((pcmData.size shr 16) and 0xff).toByte()
        header[43] = ((pcmData.size shr 24) and 0xff).toByte()

        return header + pcmData
    }

    /**
     * "hey omoda evi ısıt" → "evi ısıt"
     */
    private fun extractCommand(text: String): String {
        val index = text.indexOf(WAKE_WORD)
        if (index == -1) return text
        return text.substring(index + WAKE_WORD.length).trim().ifEmpty { "" }
    }

    fun shutdown() {
        stopListening()
    }
}
