package com.omoda.lanc.stt

import android.content.Context
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import com.omoda.lanc.AssistantApplication
import java.io.File
import java.io.FileOutputStream
import kotlin.concurrent.thread

/**
 * Sürüm 3.0: Akıllı STT Yöneticisi
 * Online modda AAC/M4A, Lokal modda (Sherpa) RAW PCM kaydeder.
 */
class SttManager(private val context: Context, private val onRecordingFinished: (String) -> Unit) {
    private val TAG = "Hermes-SttManager"
    private var mediaRecorder: MediaRecorder? = null
    private var audioRecord: AudioRecord? = null
    private var isRecordingRaw = false
    private val audioFile = File(context.cacheDir, "user_prompt.m4a")
    private val rawFile = File(context.cacheDir, "user_prompt.raw")

    fun startRecording() {
        if (AssistantApplication.sttMode.value == "SHERPA") {
            startRawRecording()
        } else {
            startMediaRecording()
        }
    }

    private fun startMediaRecording() {
        try {
            val source = getAudioSource()
            mediaRecorder = MediaRecorder().apply {
                setAudioSource(source)
                setOutputFormat(MediaRecorder.OutputFormat.MPEG_4)
                setAudioEncoder(MediaRecorder.AudioEncoder.AAC)
                setAudioSamplingRate(16000)
                setAudioEncodingBitRate(32000)
                setOutputFile(audioFile.absolutePath)
                prepare()
                start()
            }
            Log.i(TAG, "Media recording started (16kHz AAC): ${audioFile.absolutePath}")
        } catch (e: Exception) {
            Log.e(TAG, "Media Recording Error: ${e.message}")
            AssistantApplication.addLog("Kayıt Hatası: ${e.message}")
        }
    }

    private fun startRawRecording() {
        val sampleRate = 16000
        val channelConfig = AudioFormat.CHANNEL_IN_MONO
        val audioFormat = AudioFormat.ENCODING_PCM_16BIT
        val bufferSize = AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat)

        try {
            audioRecord = AudioRecord(
                getAudioSource(),
                sampleRate,
                channelConfig,
                audioFormat,
                bufferSize
            )

            isRecordingRaw = true
            audioRecord?.startRecording()
            
            thread {
                val data = ByteArray(bufferSize)
                FileOutputStream(rawFile).use { fos ->
                    while (isRecordingRaw) {
                        val read = audioRecord?.read(data, 0, bufferSize) ?: 0
                        if (read > 0) {
                            fos.write(data, 0, read)
                        }
                    }
                }
            }
            Log.i(TAG, "Raw recording started: ${rawFile.absolutePath}")
        } catch (e: Exception) {
            Log.e(TAG, "Raw Recording Error: ${e.message}")
        }
    }

    private fun getAudioSource(): Int {
        return if (AssistantApplication.micSource.value == "VOICE_COMMUNICATION") {
            MediaRecorder.AudioSource.VOICE_COMMUNICATION
        } else {
            MediaRecorder.AudioSource.VOICE_RECOGNITION
        }
    }

    fun stopRecording() {
        if (isRecordingRaw) {
            isRecordingRaw = false
            audioRecord?.apply {
                stop()
                release()
            }
            audioRecord = null
            onRecordingFinished(rawFile.absolutePath)
        } else {
            try {
                mediaRecorder?.apply {
                    stop()
                    release()
                }
            } catch (e: Exception) {
                Log.e(TAG, "Stop Error: ${e.message}")
            } finally {
                mediaRecorder = null
                onRecordingFinished(audioFile.absolutePath)
            }
        }
    }
}
