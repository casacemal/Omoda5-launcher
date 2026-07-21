package com.omoda.lanc.audio

import android.annotation.SuppressLint
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.HardwareState
import okhttp3.*
import okio.ByteString.Companion.toByteString
import java.util.concurrent.TimeUnit

/**
 * Sürüm 3.0: Mikrofon Sesini WebSocket üzerinden Sunucuya Gönderir (Intercom TX)
 */
class AudioStreamSender(private val serverUrl: String) {
    private val TAG = "Hermes-Sender"
    private var webSocket: WebSocket? = null
    private var audioRecord: AudioRecord? = null
    @Volatile private var isStreaming = false

    private val client = OkHttpClient.Builder()
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .pingInterval(10, TimeUnit.SECONDS)
        .build()

    private val SAMPLE_RATE = 16000
    private val CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_MONO
    private val AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT
    private val BUFFER_SIZE = AudioRecord.getMinBufferSize(SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT)

    @SuppressLint("MissingPermission")
    fun startStreaming() {
        if (isStreaming) return
        isStreaming = true
        Log.i(TAG, "Telsiz gönderimi başlatılıyor: $serverUrl")

        connectWebSocket()
        
        Thread {
            try {
                audioRecord = AudioRecord(
                    MediaRecorder.AudioSource.MIC,
                    SAMPLE_RATE,
                    CHANNEL_CONFIG,
                    AUDIO_FORMAT,
                    BUFFER_SIZE
                )

                val buffer = ByteArray(BUFFER_SIZE)
                audioRecord?.startRecording()

                while (isStreaming) {
                    val read = audioRecord?.read(buffer, 0, buffer.size) ?: 0
                    if (read > 0) {
                        // Basit bir ses aktivite tespiti (VAD) - Genliği kontrol et
                        val amplitude = calculateAmplitude(buffer, read)
                        HardwareState.isLocalUserTalking = amplitude > 1000 // Eşik değeri
                        
                        webSocket?.send(buffer.sliceArray(0 until read).toByteString())
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Kayıt Hatası: ${e.message}")
            } finally {
                HardwareState.isLocalUserTalking = false
                stopInternal()
            }
        }.start()
    }

    private fun calculateAmplitude(buffer: ByteArray, size: Int): Int {
        var max = 0
        for (i in 0 until size step 2) {
            val sample = (buffer[i].toInt() and 0xFF) or (buffer[i + 1].toInt() shl 8)
            val absSample = Math.abs(sample.toShort().toInt())
            if (absSample > max) max = absSample
        }
        return max
    }

    private fun connectWebSocket() {
        val request = Request.Builder()
            .url(serverUrl)
            .addHeader("X-API-Key", GlobalState.HERMES_API_KEY)
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .build()
        webSocket = client.newWebSocket(request, object : WebSocketListener() {
            override fun onFailure(webSocket: WebSocket, t: Throwable, response: Response?) {
                Log.e(TAG, "Sender WebSocket Hatası: ${t.message}")
                if (isStreaming) reconnect()
            }
        })
    }

    private fun reconnect() {
        try {
            Thread.sleep(3000)
            if (isStreaming) connectWebSocket()
        } catch (e: InterruptedException) {
            Thread.currentThread().interrupt()
        }
    }

    fun stopStreaming() {
        isStreaming = false
    }

    private fun stopInternal() {
        try {
            audioRecord?.stop()
            audioRecord?.release()
            audioRecord = null
            webSocket?.close(1000, "Stop")
            webSocket = null
        } catch (e: Exception) {
            Log.e(TAG, "Kapatma Hatası: ${e.message}")
        }
    }
}
