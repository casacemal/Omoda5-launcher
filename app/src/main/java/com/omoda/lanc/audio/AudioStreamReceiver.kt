package com.omoda.lanc.audio

import android.content.Context
import android.media.*
import android.os.Process
import android.util.Log
import com.omoda.lanc.core.HardwareState
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
        .readTimeout(0, TimeUnit.MILLISECONDS)
        .writeTimeout(0, TimeUnit.MILLISECONDS)
        .pingInterval(10, TimeUnit.SECONDS)
        .build()

    private val SAMPLE_RATE = 16000
    private val CHANNEL_CONFIG = AudioFormat.CHANNEL_OUT_MONO
    private val AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT
    private val BUFFER_SIZE = AudioTrack.getMinBufferSize(SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT)
    private val memoryBuffer = ByteArray(BUFFER_SIZE * 2)

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
    }

    private fun connectWebSocket() {
        val request = Request.Builder().url(serverUrl).build()
        webSocket = client.newWebSocket(request, object : WebSocketListener() {
            override fun onMessage(webSocket: WebSocket, bytes: ByteString) {
                if (!isRunning || HardwareState.isLocalUserTalking) return // Barge-in
                // Process önceliğini ses için yükselt
                Process.setThreadPriority(Process.THREAD_PRIORITY_AUDIO)
                
                val data = bytes.toByteArray()
                audioTrack?.write(data, 0, data.size)
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
            webSocket?.close(1000, "Oturum Kapatıldı")
            audioTrack?.stop()
            audioTrack?.release()
            audioTrack = null
        } catch (e: Exception) {
            Log.e(TAG, "Durdurma hatası: ${e.message}")
        }
    }
}
