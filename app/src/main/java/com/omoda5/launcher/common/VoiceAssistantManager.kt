package com.omoda5.launcher.common

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.speech.RecognitionListener
import android.speech.RecognizerIntent
import android.speech.SpeechRecognizer
import android.util.Log
import com.omoda5.launcher.ui.VoiceEducationActivity
import org.vosk.Model
import org.vosk.Recognizer
import org.vosk.android.SpeechService
import org.vosk.android.StorageService
import java.io.File
import java.io.IOException

/**
 * v10.1.0 VOICE ASSISTANT MASTER
 * Supports External Model Loading & Hybrid STT
 */
object VoiceAssistantManager : RecognitionListener {
    
    enum class EngineMode { SYSTEM, VOSK }
    var currentMode = EngineMode.SYSTEM

    private var systemRecognizer: SpeechRecognizer? = null
    private var voskModel: Model? = null
    private var voskService: SpeechService? = null
    private var context: Context? = null
    
    // External Path: /sdcard/Android/data/com.omoda5.launcher/files/model-tr
    private val modelPath: String by lazy { 
        File(context?.getExternalFilesDir(null), "model-tr").absolutePath 
    }

    fun init(ctx: Context) {
        this.context = ctx
        initSystemRecognizer(ctx)
        tryInitExternalVosk()
    }

    private fun initSystemRecognizer(ctx: Context) {
        try {
            if (SpeechRecognizer.isRecognitionAvailable(ctx)) {
                systemRecognizer = SpeechRecognizer.createSpeechRecognizer(ctx)
                systemRecognizer?.setRecognitionListener(this)
            }
        } catch (e: Exception) {
            LogManager.addLog("VOICE: Sistem STT başlatılamadı.")
        }
    }

    /**
     * Tries to load VOSK model from external storage
     */
    fun tryInitExternalVosk() {
        val dir = File(modelPath)
        if (dir.exists() && dir.isDirectory) {
            try {
                voskModel = Model(modelPath)
                LogManager.addLog("VOICE: Harici VOSK Modeli Yüklendi ✅")
            } catch (e: Exception) {
                LogManager.addLog("VOICE: Harici Model Hatası: ${e.message}")
            }
        } else {
            LogManager.addLog("VOICE: Harici Model Bulunamadı ($modelPath)")
        }
    }

    fun startListening(mode: EngineMode = currentMode) {
        currentMode = mode
        if (mode == EngineMode.VOSK) {
            startVoskListening()
        } else {
            startSystemListening()
        }
    }

    private fun startSystemListening() {
        if (systemRecognizer == null) {
            HudManager.show("HATA", "Sistem STT Yok")
            openEducation()
            return
        }

        val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH).apply {
            putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL, RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
            putExtra(RecognizerIntent.EXTRA_LANGUAGE, "tr-TR")
            putExtra(RecognizerIntent.EXTRA_PREFER_OFFLINE, true)
        }
        try {
            systemRecognizer?.startListening(intent)
            HudManager.show("SES", "Dinliyorum (Sistem)...")
        } catch (e: Exception) {
            HudManager.show("HATA", "Sistem STT Başlatılamadı")
            openEducation()
        }
    }

    private fun startVoskListening() {
        val model = voskModel
        if (model == null) {
            HudManager.show("HATA", "VOSK Modeli Yüklü Değil")
            return
        }

        try {
            if (voskService != null) {
                voskService?.stop()
                voskService = null
                HudManager.show("SES", "VOSK Durduruldu")
            } else {
                val rec = Recognizer(model, 16000.0f)
                // v10.3.0: Using MIC (1) instead of default to try bypass AudioFlinger -1
                voskService = SpeechService(rec, 16000.0f)
                voskService?.startListening(object : org.vosk.android.RecognitionListener {
                    override fun onResult(hypothesis: String) {
                        val cmd = hypothesis.substringAfter("\"text\" : \"").substringBefore("\"").trim()
                        if (cmd.isNotEmpty()) processCommand(cmd)
                    }
                    override fun onPartialResult(hypothesis: String) {}
                    override fun onFinalResult(hypothesis: String) {
                        val cmd = hypothesis.substringAfter("\"text\" : \"").substringBefore("\"").trim()
                        if (cmd.isNotEmpty()) processCommand(cmd)
                        voskService?.stop()
                        voskService = null
                    }
                    override fun onError(e: Exception) { HudManager.show("SES", "VOSK Hatası") }
                    override fun onTimeout() { voskService?.stop(); voskService = null }
                })
                HudManager.show("SES", "Dinliyorum (VOSK)...")
            }
        } catch (e: Exception) {
            HudManager.show("HATA", "VOSK Başlatılamadı")
        }
    }

    private fun openEducation() {
        context?.let {
            val intent = Intent(it, VoiceEducationActivity::class.java).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            it.startActivity(intent)
        }
    }

    override fun onResults(results: Bundle?) {
        val matches = results?.getStringArrayList(SpeechRecognizer.RESULTS_RECOGNITION)
        val command = matches?.firstOrNull()?.lowercase() ?: ""
        if (command.isNotEmpty()) processCommand(command)
    }

    private fun processCommand(cmd: String) {
        LogManager.addLog("VOICE_CMD: $cmd")
        HudManager.show("EMİR", cmd.uppercase())
        
        when {
            cmd.contains("klima") && (cmd.contains("aç") || cmd.contains("çalıştır")) -> {
                executeShell("am start -n com.yfve.hvac/.MainActivity")
                HudManager.show("OK", "Klima Açılıyor")
            }
            cmd.contains("klima") && (cmd.contains("kapat") || cmd.contains("durdur")) -> {
                executeShell("am force-stop com.yfve.hvac")
                HudManager.show("OK", "Klima Kapatıldı")
            }
            cmd.contains("harita") || cmd.contains("navigasyon") -> {
                val intent = context?.packageManager?.getLaunchIntentForPackage("com.google.android.apps.maps")
                intent?.let { context?.startActivity(it) }
            }
            cmd.contains("müzik") -> executeShell("input keyevent 85")
            cmd.contains("yardım") || cmd.contains("eğitim") || cmd.contains("rehber") -> openEducation()
        }
    }

    private fun executeShell(c: String) {
        context?.let {
            it.startService(Intent(it, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                action = "ACTION_EXECUTE_SHELL"
                putExtra("command", c)
            })
        }
    }

    override fun onReadyForSpeech(params: Bundle?) {}
    override fun onBeginningOfSpeech() {}
    override fun onRmsChanged(rmsdB: Float) {}
    override fun onBufferReceived(buffer: ByteArray?) {}
    override fun onEndOfSpeech() {}
    override fun onError(error: Int) {
        if (currentMode == EngineMode.SYSTEM) {
            Log.e("VOICE", "System STT Error: $error")
            HudManager.show("SES", "Hata: $error")
        }
    }
    override fun onPartialResults(partialResults: Bundle?) {}
    override fun onEvent(eventType: Int, params: Bundle?) {}
}
