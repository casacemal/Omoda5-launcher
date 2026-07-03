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
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Sürüm 4.0: Bridge Uyumlu STT Yöneticisi
 * Bridge modu aktifse kayıpsız WAV, değilse AAC/M4A kaydeder.
 */
class SttManager(private val context: Context, private val onRecordingFinished: (String) -> Unit) {
    private val tag = "Hermes-SttManager"
    
    private var mediaRecorder: MediaRecorder? = null
    private var audioRecord: AudioRecord? = null
    private var isRecording = false
    private var recordingThread: Thread? = null

    private val audioFileM4A = File(context.cacheDir, "user_prompt.m4a")
    private val audioFileWAV = File(context.cacheDir, "user_prompt.wav")

    fun startRecording() {
        if (AssistantApplication.isBridgeMode.value) {
            startWavRecording()
        } else {
            startMediaRecording()
        }
    }

    private fun startMediaRecording() {
        try {
            if (audioFileM4A.exists()) audioFileM4A.delete()
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
                setOutputFile(audioFileM4A.absolutePath)
                prepare()
                start()
            }
            Log.i(tag, "Media recording started (16kHz AAC): ${audioFileM4A.absolutePath}")
        } catch (e: Exception) {
            Log.e(tag, "Media Recording Error: ${e.message}")
        }
    }

    private fun startWavRecording() {
        try {
            if (audioFileWAV.exists()) audioFileWAV.delete()
            val sampleRate = 16000
            val channelConfig = AudioFormat.CHANNEL_IN_MONO
            val audioFormat = AudioFormat.ENCODING_PCM_16BIT
            val bufferSize = AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat)

            audioRecord = AudioRecord(
                getAudioSource(),
                sampleRate,
                channelConfig,
                audioFormat,
                bufferSize
            )

            audioRecord?.startRecording()
            isRecording = true
            
            recordingThread = Thread {
                writeAudioDataToFile(audioFileWAV, sampleRate, bufferSize)
            }
            recordingThread?.start()
            Log.i(tag, "WAV recording started (16kHz PCM): ${audioFileWAV.absolutePath}")
        } catch (e: Exception) {
            Log.e(tag, "WAV Recording Error: ${e.message}")
        }
    }

    private fun writeAudioDataToFile(file: File, sampleRate: Int, bufferSize: Int) {
        val data = ByteArray(bufferSize)
        val fos = FileOutputStream(file)
        fos.write(ByteArray(44)) // Space for WAV header

        while (isRecording) {
            val read = audioRecord?.read(data, 0, bufferSize) ?: -1
            if (read > 0) {
                fos.write(data, 0, read)
            }
        }
        fos.close()
        updateWavHeader(file, sampleRate)
    }

    private fun updateWavHeader(file: File, sampleRate: Int) {
        val fileSize = file.length()
        val dataSize = fileSize - 44
        val raf = java.io.RandomAccessFile(file, "rw")
        raf.seek(0)
        
        val header = ByteBuffer.allocate(44).order(ByteOrder.LITTLE_ENDIAN)
        header.put("RIFF".toByteArray())
        header.putInt((36 + dataSize).toInt())
        header.put("WAVE".toByteArray())
        header.put("fmt ".toByteArray())
        header.putInt(16)
        header.putShort(1.toShort())
        header.putShort(1.toShort())
        header.putInt(sampleRate)
        header.putInt(sampleRate * 2)
        header.putShort(2.toShort())
        header.putShort(16.toShort())
        header.put("data".toByteArray())
        header.putInt(dataSize.toInt())
        
        raf.write(header.array())
        raf.close()
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
            Thread.sleep(300)
            if (AssistantApplication.isBridgeMode.value) {
                isRecording = false
                recordingThread?.join()
                audioRecord?.stop()
                audioRecord?.release()
                audioRecord = null
                onRecordingFinished(audioFileWAV.absolutePath)
            } else {
                mediaRecorder?.apply {
                    stop()
                    release()
                }
                mediaRecorder = null
                onRecordingFinished(audioFileM4A.absolutePath)
            }
        } catch (e: Exception) {
            Log.e(tag, "Stop Error: ${e.message}")
            onRecordingFinished("")
        }
    }
}
