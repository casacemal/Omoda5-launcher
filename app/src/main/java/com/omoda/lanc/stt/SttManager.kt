package com.omoda.lanc.stt

import android.content.Context
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.os.Build
import android.util.Log
import com.omoda.lanc.AssistantApplication
import java.io.File
import java.io.FileOutputStream
import kotlin.concurrent.thread

/**
 * Sürüm 3.0: Akıllı STT Yöneticisi
 * Sadece Online modda AAC/M4A kaydeder.
 */
class SttManager(private val context: Context, private val onRecordingFinished: (String) -> Unit) {
    private val tag = "Hermes-SttManager"
    private var mediaRecorder: MediaRecorder? = null
    private val audioFile = File(context.cacheDir, "user_prompt.m4a")

    fun startRecording() {
        startMediaRecording()
    }

    private fun startMediaRecording() {
        try {
            val parent = audioFile.parentFile
            if (parent != null && !parent.exists()) {
                parent.mkdirs()
            }
            if (audioFile.exists()) audioFile.delete()

            val source = getAudioSource()
            mediaRecorder = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                MediaRecorder(context)
            } else {
                @Suppress("DEPRECATION")
                MediaRecorder()
            }.apply {
                setAudioSource(source)
                setOutputFormat(MediaRecorder.OutputFormat.MPEG_4)
                setAudioEncoder(MediaRecorder.AudioEncoder.AAC)
                setAudioSamplingRate(16000)
                setAudioEncodingBitRate(32000)
                setOutputFile(audioFile.absolutePath)
                prepare()
                start()
            }
            Log.i(tag, "Media recording started (16kHz AAC): ${audioFile.absolutePath}")
        } catch (e: Exception) {
            Log.e(tag, "Media Recording Error: ${e.message}")
            AssistantApplication.addLog("Kayıt Hatası: ${e.message}")
            // Fallback to MIC if other source fails
            if (AssistantApplication.micSource.value != "MIC") {
                AssistantApplication.micSource.value = "MIC"
                startMediaRecording()
            }
        }
    }



    private fun getAudioSource(): Int {
        return when (AssistantApplication.micSource.value) {
            "VOICE_COMMUNICATION" -> MediaRecorder.AudioSource.VOICE_COMMUNICATION
            "VOICE_RECOGNITION" -> MediaRecorder.AudioSource.VOICE_RECOGNITION
            "MIC" -> MediaRecorder.AudioSource.MIC
            else -> MediaRecorder.AudioSource.MIC
        }
    }

    fun stopRecording() {
        try {
            // Kaydın çok erken sonlanıp boş dosya oluşmasını engellemek için küçük bir bekleme
            Thread.sleep(500)
            mediaRecorder?.apply {
                stop()
                release()
            }
        } catch (e: Exception) {
            Log.e(tag, "Stop Error: ${e.message}")
        } finally {
            mediaRecorder = null
            // Dosyanın gerçekten Groq API sınırlarından (0.01s) büyük olup olmadığını kontrol et. (Ortalama 1000 byte m4a başlığı içerir, 2000'den küçükse muhtemelen boştur)
            if (audioFile.exists() && audioFile.length() > 2000) {
                onRecordingFinished(audioFile.absolutePath)
            } else {
                Log.w(tag, "Audio file is too short or empty, padding or ignoring.")
                // Kullanıcıya sesin gitmediğini belirtebilir veya bu döngüyü atlayabiliriz. 
                // Şimdilik boş dönüyoruz ki AgentManager boş dosya atıp 400 hatası yemesin.
                onRecordingFinished("")
            }
        }
    }
}
