package com.omoda.lanc.audio

import android.content.Context
import android.media.*
import android.os.Build
import android.os.Process
import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.HardwareState
import kotlin.concurrent.thread
import okhttp3.*
import okio.ByteString
import java.util.concurrent.TimeUnit

/**
 * Sürüm 3.0: Canlı Telsiz Alıcısı (WebSocket PCM)
 * Sunucudan gelen 16kHz 16-bit Mono PCM akışını düşük gecikme ile oynatır.
 */
class AudioStreamReceiver(
    private val context: Context,
    private val serverUrl: String
) {
    private val TAG = "Hermes-Radio"
    private var audioTrack: AudioTrack? = null
    private var webSocket: WebSocket? = null
    private var focusRequest: AudioFocusRequest? = null
    @Volatile private var isRunning = false

    private val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager

    private val client = OkHttpClient.Builder()
        .readTimeout(60, TimeUnit.SECONDS)
        .writeTimeout(60, TimeUnit.SECONDS)
        .pingInterval(10, TimeUnit.SECONDS)
        .build()

    private val SAMPLE_RATE = 16000
    private val CHANNEL_CONFIG = AudioFormat.CHANNEL_OUT_MONO
    private val AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT
    private val BUFFER_SIZE = AudioTrack.getMinBufferSize(SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT)
    // Ring buffer: 8× min buffer size to absorb network jitter (API 26+ WRITE_BLOCKING)
    private val memoryBuffer = ByteArray(maxOf(BUFFER_SIZE * 8, 16384))
    private var writeIndex = 0
    private var readIndex = 0
    private val bufferLock = Any()
    private var writerThread: Thread? = null

    private val audioAttributes = AudioAttributes.Builder()
        .setUsage(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE)
        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
        .build()

    fun startListening() {
        if (isRunning) return
        isRunning = true
        Log.i(TAG, "Telsiz dinleme başlatılıyor: $serverUrl")
        
        if (requestAudioFocus()) {
            initAudioTrack()
            connectWebSocket()
        } else {
            Log.e(TAG, "Audio Focus alınamadı, telsiz başlatılamıyor.")
            isRunning = false
        }
    }

    private fun requestAudioFocus(): Boolean {
        return if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            focusRequest = AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK)
                .setAudioAttributes(audioAttributes)
                .setAcceptsDelayedFocusGain(true)
                .setOnAudioFocusChangeListener { change ->
                    when (change) {
                        AudioManager.AUDIOFOCUS_LOSS -> stop()
                        AudioManager.AUDIOFOCUS_LOSS_TRANSIENT -> audioTrack?.pause()
                        AudioManager.AUDIOFOCUS_GAIN -> audioTrack?.play()
                    }
                }.build()
            audioManager.requestAudioFocus(focusRequest!!) == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        } else {
            @Suppress("DEPRECATION")
            audioManager.requestAudioFocus(null, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK) == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        }
    }

    private fun abandonAudioFocus() {
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            focusRequest?.let { audioManager.abandonAudioFocusRequest(it) }
        } else {
            @Suppress("DEPRECATION")
            audioManager.abandonAudioFocus(null)
        }
    }

    private fun initAudioTrack() {
        audioTrack = AudioTrack.Builder()
            .setAudioAttributes(audioAttributes)
            .setAudioFormat(
                AudioFormat.Builder()
                    .setEncoding(AUDIO_FORMAT)
                    .setSampleRate(SAMPLE_RATE)
                    .setChannelMask(CHANNEL_CONFIG)
                    .build()
            )
            .setBufferSizeInBytes(BUFFER_SIZE)
            .setTransferMode(AudioTrack.MODE_STREAM)
            .build()
        audioTrack?.play()
        writerThread = thread(name = "AudioStreamWriter") {
            Process.setThreadPriority(Process.THREAD_PRIORITY_AUDIO)
            val tempBuffer = ByteArray(BUFFER_SIZE)
            while (isRunning) {
                var available: Int
                synchronized(bufferLock) {
                    available = if (readIndex <= writeIndex) {
                        writeIndex - readIndex
                    } else {
                        memoryBuffer.size - readIndex + writeIndex
                    }
                }

                if (available > 0) {
                    val toWrite = minOf(available, tempBuffer.size)
                    synchronized(bufferLock) {
                        if (readIndex + toWrite <= memoryBuffer.size) {
                            System.arraycopy(memoryBuffer, readIndex, tempBuffer, 0, toWrite)
                        } else {
                            val firstPart = memoryBuffer.size - readIndex
                            System.arraycopy(memoryBuffer, readIndex, tempBuffer, 0, firstPart)
                            System.arraycopy(memoryBuffer, 0, tempBuffer, firstPart, toWrite - firstPart)
                        }
                        readIndex = (readIndex + toWrite) % memoryBuffer.size
                    }
                    try {
                        @Suppress("DEPRECATION")
                        audioTrack?.write(
                            tempBuffer, 0, toWrite,
                            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
                                AudioTrack.WRITE_BLOCKING
                            else
                                toWrite // write returns toWrite on success pre-O
                        )
                    } catch (e: Exception) {
                        Log.w(TAG, "AudioTrack write: ${e.message}")
                    }
                } else {
                    // Write silence to keep AudioTrack alive and prevent underrun clicks
                    try {
                        val silence = ByteArray(BUFFER_SIZE.coerceAtMost(1024))
                        @Suppress("DEPRECATION")
                        audioTrack?.write(
                            silence, 0, silence.size,
                            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
                                AudioTrack.WRITE_BLOCKING
                            else
                                silence.size
                        )
                        Thread.sleep(30)
                    } catch (_: Exception) { /* ignore underrun silence write */ }
                }
            }
        }
    }

    private fun connectWebSocket() {
        val request = Request.Builder()
            .url(serverUrl)
            .addHeader("Authorization", "Bearer ${GlobalState.HERMES_API_KEY}")
            .addHeader("X-API-Key", GlobalState.HERMES_API_KEY)
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .addHeader("Sec-WebSocket-Protocol", "audio-stream-v1")
            .build()
        webSocket = client.newWebSocket(request, object : WebSocketListener() {
            override fun onMessage(webSocket: WebSocket, bytes: ByteString) {
                if (!isRunning || HardwareState.isLocalUserTalking) return // Barge-in
                Process.setThreadPriority(Process.THREAD_PRIORITY_AUDIO)

                val data = bytes.toByteArray()
                synchronized(bufferLock) {
                    val used = if (writeIndex >= readIndex) {
                        writeIndex - readIndex
                    } else {
                        memoryBuffer.size - readIndex + writeIndex
                    }
                    val free = memoryBuffer.size - used - 1

                    // Overflow: advance readIndex to make room (drop oldest data)
                    if (data.size > free) {
                        readIndex = (readIndex + data.size - free) % memoryBuffer.size
                    }

                    // Chunked copy with wrap-around
                    if (writeIndex + data.size <= memoryBuffer.size) {
                        System.arraycopy(data, 0, memoryBuffer, writeIndex, data.size)
                    } else {
                        val firstPart = memoryBuffer.size - writeIndex
                        System.arraycopy(data, 0, memoryBuffer, writeIndex, firstPart)
                        System.arraycopy(data, firstPart, memoryBuffer, 0, data.size - firstPart)
                    }
                    writeIndex = (writeIndex + data.size) % memoryBuffer.size
                }
            }

            override fun onFailure(webSocket: WebSocket, t: Throwable, response: Response?) {
                Log.e(TAG, "WebSocket Hatası: ${t.message}")
                if (isRunning) reconnect()
            }
            
            override fun onClosing(webSocket: WebSocket, code: Int, reason: String) {
                Log.w(TAG, "WebSocket Kapanıyor: $reason")
            }
        })
    }

    private fun reconnect() {
        try {
            Thread.sleep(3000)
            if (isRunning) connectWebSocket()
        } catch (e: InterruptedException) {
            Thread.currentThread().interrupt()
        }
    }

    fun stop() {
        isRunning = false
        abandonAudioFocus()
        try {
            writerThread?.interrupt()
            writerThread = null
            webSocket?.close(1000, "Oturum Kapatıldı")
            audioTrack?.stop()
            audioTrack?.release()
            audioTrack = null
            synchronized(bufferLock) {
                writeIndex = 0
                readIndex = 0
            }
        } catch (e: Exception) {
            Log.e(TAG, "Durdurma hatası: ${e.message}")
        }
    }
}
