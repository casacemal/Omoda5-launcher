package com.omoda.lanc.tts

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.network.NetworkModule
import okhttp3.*
import okhttp3.MediaType.Companion.toMediaType
import okhttp3.RequestBody.Companion.toRequestBody
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.io.IOException

class NineRouterTTSManager(private val context: Context) : TTSManager {
    private val TAG = "9RouterTTS"
    private val client = NetworkModule.robustClient
    private var mediaPlayer: MediaPlayer? = null
    private var isPlaying = false

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        if (text.isBlank()) {
            onComplete?.invoke()
            return
        }

        stop()
        
        val url = "http://${GlobalState.activeServerIp.value}:10201/v1/audio/speech"
        val body = JSONObject().apply {
            put("input", text)
            put("voice", "tr-TR-AhmetNeural")
        }

        val request = Request.Builder()
            .url(url)
            .post(body.toString().toRequestBody("application/json".toMediaType()))
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) {
                Log.e(TAG, "TTS Ag Hatasi: ${e.message}")
                onError?.invoke()
            }

            override fun onResponse(call: Call, response: Response) {
                response.use { resp ->
                    if (resp.isSuccessful) {
                        val file = File(context.cacheDir, "tts_response_${System.currentTimeMillis()}.mp3")
                        try {
                            FileOutputStream(file).use { fos ->
                                fos.write(resp.body?.bytes() ?: byteArrayOf())
                            }
                            android.os.Handler(android.os.Looper.getMainLooper()).post {
                                playFile(file, onComplete, onError)
                            }
                        } catch (e: Exception) {
                            Log.e(TAG, "TTS dosya yazma hatasi: ${e.message}")
                            onError?.invoke()
                        }
                    } else {
                        Log.e(TAG, "TTS HTTP Hatasi: ${resp.code}")
                        onError?.invoke()
                    }
                }
            }
        })
    }

    private fun playFile(file: File, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        try {
            mediaPlayer = MediaPlayer().apply {
                setAudioAttributes(
                    AudioAttributes.Builder()
                        .setUsage(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE)
                        .setContentType(AudioAttributes.CONTENT_TYPE_SPEECH)
                        .build()
                )
                setDataSource(file.absolutePath)
                setOnPreparedListener { 
                    this@NineRouterTTSManager.isPlaying = true
                    start() 
                }
                setOnCompletionListener { 
                    this@NineRouterTTSManager.isPlaying = false
                    onComplete?.invoke() 
                }
                setOnErrorListener { _, _, _ ->
                    this@NineRouterTTSManager.isPlaying = false
                    onError?.invoke() // TTS-1 Fix
                    true
                }
                prepareAsync()
            }
        } catch (e: Exception) {
            this@NineRouterTTSManager.isPlaying = false
            onError?.invoke() // TTS-1 Fix
        }
    }

    override fun stop() {
        try {
            mediaPlayer?.stop()
            mediaPlayer?.release()
        } catch (_: Exception) {}
        mediaPlayer = null
        this@NineRouterTTSManager.isPlaying = false
    }

    override fun isSpeaking(): Boolean = isPlaying
    override fun shutdown() { stop() }
}
