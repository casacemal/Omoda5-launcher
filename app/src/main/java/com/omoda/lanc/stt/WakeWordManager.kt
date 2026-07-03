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
import java.util.concurrent.TimeUnit
import kotlin.concurrent.thread

/**
 * Wake Word Manager - "Hey Omoda" deyince aktif olur.
 * Sürekli dinler, Hermes STT ile kontrol eder.
 */
class WakeWordManager(
    private val context: Context,
    private val onWakeWordDetected: (String) -> Unit
) {
    private val TAG = "Hermes-WakeWord"
    private var audioRecord: AudioRecord? = null
    private var isListening = false
    private var isAssistantActive = false
    private val httpClient = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(15, TimeUnit.SECONDS)
        .writeTimeout(15, TimeUnit.SECONDS)
        .build()

    companion object {
        private const val WAKE_WORD = "hey omoda"
        private const val SAMPLE_RATE = 16000
        private const val CHUNK_DURATION_MS = 3000
    }

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
    }

    fun setAssistantActive(active: Boolean) {
        isAssistantActive = active
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
                val audioData = recordChunk()
                if (audioData != null && audioData.size > 1000) {
                    val text = transcribe(audioData)
                    if (text != null) {
                        val lowerText = text.lowercase(java.util.Locale.ROOT).trim()
                        
                        val hallucinationPatterns = listOf("altyazı", "abone", "teşekkür", "viewing", "evet.", "hadi.")
                        val isHallucination = lowerText.isBlank() || 
                                              lowerText.length < 3 ||
                                              hallucinationPatterns.any { lowerText.contains(it) }

                        if (!isHallucination && lowerText.contains(WAKE_WORD)) {
                            // Asistan zaten dinliyorsa, wake word'u işleme
                            // (çift kayıt çakışmasını önlemek için)
                            val command = extractCommand(lowerText)
                            Log.i(TAG, "Wake Word algılandı! Komut: $command")
                            if (!isAssistantActive) {
                                if (command.isNotBlank()) {
                                    onWakeWordDetected(command)
                                } else {
                                    onWakeWordDetected("")
                                }
                            }
                        }
                    } else {
                        Thread.sleep(1000)
                    }
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Wake Word hatası: ${e.message}")
        }
    }

    private fun recordChunk(): ByteArray? {
        return try {
            val totalBytes = SAMPLE_RATE * 2 * CHUNK_DURATION_MS / 1000
            val data = ByteArray(totalBytes)
            var totalRead = 0
            while (totalRead < totalBytes && isListening) {
                val read = audioRecord?.read(data, totalRead, totalBytes - totalRead) ?: 0
                if (read > 0) totalRead += read
            }
            if (totalRead > 0) data.copyOf(totalRead) else null
        } catch (e: Exception) {
            null
        }
    }

    private fun transcribe(audioData: ByteArray): String? {
        return try {
            val wavData = addWavHeader(audioData)
            val targetUrl = "${AssistantApplication.STT_BASE_URL}/audio/transcriptions"
            val apiKey = AssistantApplication.NINEROUTER_API_KEY
            val modelName = AssistantApplication.STT_MODEL

            val requestBody = MultipartBody.Builder()
                .setType(MultipartBody.FORM)
                .addFormDataPart(
                    "file", "audio.wav",
                    wavData.toRequestBody("audio/wav".toMediaType())
                )
                .addFormDataPart("model", modelName)
                .addFormDataPart("language", "tr")
                .addFormDataPart("response_format", "json")
                .build()

            val request = Request.Builder()
                .url(targetUrl)
                .addHeader("Authorization", "Bearer $apiKey")
                .addHeader("X-Hermes-Session-Key", AssistantApplication.sessionKey.value)
                .post(requestBody)
                .build()

            val response = httpClient.newCall(request).execute()
            response.use { resp ->
                if (resp.isSuccessful) {
                    val body = resp.body?.string()
                    val json = JSONObject(body ?: return null)
                    json.optString("text", "")
                } else {
                    null
                }
            }
        } catch (e: Exception) {
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
        header[0] = 'R'.code.toByte(); header[1] = 'I'.code.toByte()
        header[2] = 'F'.code.toByte(); header[3] = 'F'.code.toByte()
        header[4] = (totalDataLen and 0xff).toByte()
        header[5] = ((totalDataLen shr 8) and 0xff).toByte()
        header[6] = ((totalDataLen shr 16) and 0xff).toByte()
        header[7] = ((totalDataLen shr 24) and 0xff).toByte()
        header[8] = 'W'.code.toByte(); header[9] = 'A'.code.toByte()
        header[10] = 'V'.code.toByte(); header[11] = 'E'.code.toByte()
        header[12] = 'f'.code.toByte(); header[13] = 'm'.code.toByte()
        header[14] = 't'.code.toByte(); header[15] = ' '.code.toByte()
        header[16] = 16; header[17] = 0; header[18] = 0; header[19] = 0
        header[20] = 1; header[21] = 0
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
        header[36] = 'd'.code.toByte(); header[37] = 'a'.code.toByte()
        header[38] = 't'.code.toByte(); header[39] = 'a'.code.toByte()
        header[40] = (pcmData.size and 0xff).toByte()
        header[41] = ((pcmData.size shr 8) and 0xff).toByte()
        header[42] = ((pcmData.size shr 16) and 0xff).toByte()
        header[43] = ((pcmData.size shr 24) and 0xff).toByte()

        val outputStream = ByteArrayOutputStream()
        outputStream.write(header)
        outputStream.write(pcmData)
        return outputStream.toByteArray()
    }

    private fun extractCommand(text: String): String {
        val index = text.indexOf(WAKE_WORD)
        if (index == -1) return text
        return text.substring(index + WAKE_WORD.length).trim().ifEmpty { "" }
    }

    fun shutdown() {
        stopListening()
    }
}
