package com.omoda.lanc.network

import android.annotation.SuppressLint
import android.content.Context
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.MediaRecorder
import android.util.Log
import com.omoda.lanc.core.GlobalState
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import java.util.concurrent.atomic.AtomicBoolean
import kotlin.math.sqrt

/**
 * SttManager - Ses kaydı ve ses-metin dönüşümü yönetimi.
 * Adaptif Eşik VAD: Araç içi gürültüyü (motor, klima, yol) kalibre ederek
 * gerçek konuşmayı arka plan gürültüsünden ayırt eder.
 */
class SttManager(
    private val context: Context,
    private val onRecordingFinished: (String) -> Unit
) {
    private val tag = "Hermes-SttManager"
    private var audioRecord: AudioRecord? = null
    private val isRecording = AtomicBoolean(false)
    private var recordingFile: File? = null

    private val sampleRate = 16000
    private val channelConfig = AudioFormat.CHANNEL_IN_MONO
    private val audioFormat = AudioFormat.ENCODING_PCM_16BIT

    // ── Adaptif VAD Parametreleri ──────────────────────────────────────────────
    private val FRAME_SIZE = 512              // ~32ms @ 16kHz
    private val MIN_RECORDING_MS   = 600L     // Bu süre dolmadan bitmez
    private val MAX_RECORDING_MS   = 10000L   // Zorla durdurma sınırı
    private val SILENCE_DURATION_MS = 2000L   // Sessizlik bu kadar sürerse kayıt biter
    private val NOISE_CALIB_FRAMES  = 25      // Başlangıçta ölçülen gürültü frame sayısı
    private val SPEECH_CONFIRM_FRAMES = 2     // Konuşma onayı için ardışık "ses" frame sayısı (Azaltıldı: 3 -> 2)
    private val SNR_RATIO = 1.6f              // Konuşmanın gürültüden kaç kat yüksek olması lazım (Hassaslaştırıldı: 2.2 -> 1.6)
    private val GAIN_FACTOR = 3.5f            // Yazılımsal ses artırma (Boost) - Manifesto v1.0
    // ──────────────────────────────────────────────────────────────────────────

    @SuppressLint("MissingPermission")
    fun startRecording() {
        if (isRecording.get()) return

        val bufferSize = maxOf(
            AudioRecord.getMinBufferSize(sampleRate, channelConfig, audioFormat),
            FRAME_SIZE * 4
        )

        val micSource = when (GlobalState.micSource.value) {
            "VOICE_RECOGNITION"  -> MediaRecorder.AudioSource.VOICE_RECOGNITION
            "VOICE_COMMUNICATION" -> MediaRecorder.AudioSource.VOICE_COMMUNICATION
            "MIC" -> MediaRecorder.AudioSource.MIC
            else                 -> MediaRecorder.AudioSource.VOICE_RECOGNITION
        }
        Log.i(tag, "Kayıt başlatılıyor. Kaynak: ${GlobalState.micSource.value} ($micSource)")

        audioRecord = AudioRecord(micSource, sampleRate, channelConfig, audioFormat, bufferSize)
        if (audioRecord?.state != AudioRecord.STATE_INITIALIZED) {
            Log.e(tag, "AudioRecord başlatılamadı.")
            audioRecord?.release()
            audioRecord = null
            onRecordingFinished("") // BUG-14 safety: notify caller it failed
            return
        }

        recordingFile = File(context.cacheDir, "user_prompt.wav")
        isRecording.set(true)
        audioRecord?.startRecording()
        Thread { writeAudioDataWithAdaptiveVad() }.start()
        Log.i(tag, "Kayıt başladı (Adaptif VAD): ${recordingFile?.absolutePath}")
    }

    private fun frameRms(data: ShortArray, count: Int): Double {
        var sum = 0.0
        for (i in 0 until count) sum += data[i].toLong() * data[i].toLong()
        return sqrt(sum / count)
    }

    @SuppressLint("MissingPermission")
    private fun writeAudioDataWithAdaptiveVad() {
        val frame  = ShortArray(FRAME_SIZE)
        val file   = recordingFile ?: return
        var os: FileOutputStream? = null

        val startTime      = System.currentTimeMillis()
        var lastSpeechTime = startTime

        // Kalibrasyon değişkenleri
        var noiseBaseline      = 300.0   // Başlangıç varsayımı (sıfır bölme önlemi)
        var calibFrames        = 0
        var speechConfirm      = 0
        var speechStarted      = false
        var hasMeaningfulSpeech = false

        try {
            os = FileOutputStream(file)
            repeat(44) { os.write(0) }           // WAV header alanı

            while (isRecording.get()) {
                val record = audioRecord ?: break
                if (record.state != AudioRecord.STATE_INITIALIZED) break
                
                val read = try {
                    record.read(frame, 0, FRAME_SIZE)
                } catch (e: Exception) {
                    0
                }
                
                if (read <= 0) {
                    if (!isRecording.get()) break
                    continue
                }

                val rms = frameRms(frame, read)

                // Frame'i Gain uygulayarak diske yaz
                for (i in 0 until read) {
                    var sample = frame[i].toFloat() * GAIN_FACTOR
                    // Clipping önleme
                    if (sample > 32767f) sample = 32767f
                    if (sample < -32768f) sample = -32768f
                    
                    val boosted = sample.toInt()
                    os.write(boosted and 0xFF)
                    os.write((boosted shr 8) and 0xFF)
                }

                val now     = System.currentTimeMillis()
                val elapsed = now - startTime

                // ── Kalibrasyon fazı ────────────────────────────────────────
                if (calibFrames < NOISE_CALIB_FRAMES) {
                    noiseBaseline = (noiseBaseline * calibFrames + rms) / (calibFrames + 1)
                    calibFrames++
                    continue
                }

                // ── Adaptif eşik ────────────────────────────────────────────
                val threshold  = noiseBaseline * SNR_RATIO
                val isSpeech   = rms > threshold

                if (isSpeech) {
                    speechConfirm++
                    if (speechConfirm >= SPEECH_CONFIRM_FRAMES) {
                        if (!speechStarted) {
                            Log.i(tag, "🎤 Konuşma başladı | eşik=%.0f gürültü=%.0f".format(threshold, noiseBaseline))
                            speechStarted = true
                        }
                        lastSpeechTime       = now
                        hasMeaningfulSpeech  = true
                    }
                } else {
                    speechConfirm = 0
                    // Konuşma yokken baseline'i yavaş güncelle (araç gürültüsü değişimine adaptasyon)
                    if (!speechStarted) {
                        noiseBaseline = noiseBaseline * 0.96 + rms * 0.04
                    }
                }

                // ── Sessizlik bitişi ─────────────────────────────────────────
                if (speechStarted && elapsed > MIN_RECORDING_MS) {
                    val silence = now - lastSpeechTime
                    if (silence > SILENCE_DURATION_MS) {
                        Log.i(tag, "🛑 Sessizlik ${silence}ms → kayıt bitiyor.")
                        android.os.Handler(android.os.Looper.getMainLooper()).post { stopRecording() }
                        break
                    }
                }

                // ── Maksimum süre ────────────────────────────────────────────
                if (elapsed > MAX_RECORDING_MS) {
                    Log.i(tag, "⏱ Maksimum süre aşıldı → kayıt bitiyor.")
                    android.os.Handler(android.os.Looper.getMainLooper()).post { stopRecording() }
                    break
                }
            }
        } catch (e: Exception) {
            Log.e(tag, "VAD Yazma Hatası: ${e.message}")
        } finally {
            try {
                os?.close()
                if (!hasMeaningfulSpeech) {
                    Log.w(tag, "⚠ Anlamlı konuşma yok → kayıt iptal.")
                    onRecordingFinished("")   // Boş ses sunucuya gönderilmez
                } else {
                    addWavHeader(file)        // Header yaz + callback tetikle
                }
            } catch (e: IOException) {
                Log.e(tag, "Kapatma Hatası: ${e.message}")
            }
        }
    }

    private fun addWavHeader(file: File) {
        val byteRate    = sampleRate * 1 * 16 / 8
        val totalData   = file.length() - 44
        val header      = ByteArray(44)

        fun putInt(arr: ByteArray, off: Int, v: Long) {
            arr[off]     = (v and 0xff).toByte()
            arr[off + 1] = (v shr 8  and 0xff).toByte()
            arr[off + 2] = (v shr 16 and 0xff).toByte()
            arr[off + 3] = (v shr 24 and 0xff).toByte()
        }

        "RIFF".forEachIndexed { i, c -> header[i]    = c.code.toByte() }
        putInt(header, 4, totalData + 36)
        "WAVE".forEachIndexed { i, c -> header[8+i]  = c.code.toByte() }
        "fmt ".forEachIndexed { i, c -> header[12+i] = c.code.toByte() }
        putInt(header, 16, 16)
        header[20] = 1;  header[21] = 0      // PCM
        header[22] = 1;  header[23] = 0      // Mono
        putInt(header, 24, sampleRate.toLong())
        putInt(header, 28, byteRate.toLong())
        header[32] = 2;  header[33] = 0      // Block align
        header[34] = 16; header[35] = 0      // Bits per sample
        "data".forEachIndexed { i, c -> header[36+i] = c.code.toByte() }
        putInt(header, 40, totalData)

        if (file.exists()) {
            java.io.RandomAccessFile(file, "rw").use { raf ->
                raf.seek(0); raf.write(header)
            }
            onRecordingFinished(file.absolutePath)
        }
    }

    fun stopRecording() {
        if (!isRecording.get()) return
        isRecording.set(false)
        audioRecord?.stop()
        audioRecord?.release()
        audioRecord = null
    }
}
