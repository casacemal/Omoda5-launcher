package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.audio.AudioEngine
import com.omoda.lanc.network.AgentManager
import com.omoda.lanc.network.HermesClient
import com.omoda.lanc.overlay.OverlayManager
import com.omoda.lanc.stt.SherpaOnnxSttManager
import com.omoda.lanc.stt.SttManager
import com.omoda.lanc.tts.EdgeOnlineTTSManager
import com.omoda.lanc.tts.HermesTTSManager
import com.omoda.lanc.tts.SherpaOnnxSpeechManager
import kotlinx.coroutines.*
import java.io.File

/**
 * AssistantController - PDF Plan v2.0 Uyumlu Merkezi İş Mantığı
 * Sesli asistanın yaşam döngüsünü (Dinleme -> STT -> LLM -> TTS) yönetir.
 * VoiceAssistantService'den iş mantığını devralır.
 */
class AssistantController(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val audioEngine = AudioEngine(context)
    private val overlayManager = OverlayManager(context)
    private val actionExecutor = ActionExecutor(context)
    private val vehicleController = VehicleController(context)
    private val policyEngine = PolicyEngine()
    private val ruleEngine = RuleEngine { vehicleController.getVehicleState() }
    private val commandRouter = CommandRouter(context, actionExecutor, ruleEngine)
    private val alertEngine = AlertEngine(scope)
    private val drivingAnalysisEngine = DrivingAnalysisEngine(scope)
    
    private val sttManager = SttManager(context) { audioPath -> handleRecordingFinished(audioPath) }
    private val sherpaSttManager = SherpaOnnxSttManager(context, scope)
    
    private val hermesTtsManager = HermesTTSManager(context)
    private val edgeTtsManager = EdgeOnlineTTSManager(context)
    private val sherpaTtsManager = SherpaOnnxSpeechManager(context)

    private var hermesClient = HermesClient(AssistantApplication.HERMES_BASE_URL, AssistantApplication.HERMES_API_KEY)
    private var sttClient = HermesClient(AssistantApplication.STT_BASE_URL, AssistantApplication.HERMES_API_KEY)

    private var agentManager: AgentManager = createAgentManager()

    private var isListening = false
    private var amplitudeJob: Job? = null
    private var timeoutJob: Job? = null

    init {
        scope.launch {
            EventBus.events.collect { event ->
                handleEvent(event)
            }
        }
    }

    private fun createAgentManager() = AgentManager(
        actionExecutor = actionExecutor,
        commandRouter = commandRouter,
        hermesClient = hermesClient,
        sttClient = sttClient,
        onFeedback = { feedback ->
            AssistantApplication.recognizedText.value = feedback
            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState(feedback, android.graphics.Color.YELLOW))
            EventBus.tryEmit(Event.VoiceEvent.SttResult(feedback))
        },
        onSystemResponse = { response, isFinal ->
            AssistantApplication.assistantResponse.value = response
            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState(response))
            if (isFinal) {
                val spokenText = response.replace(Regex("\\[.*?\\]"), "").trim()
                if (spokenText.isNotEmpty()) {
                    speak(spokenText) {
                        if (AssistantApplication.isContinuousConversation.value) {
                            scope.launch {
                                delay(1000)
                                startListening()
                            }
                        } else {
                            resetState()
                        }
                    }
                } else {
                    resetState()
                }
                EventBus.tryEmit(Event.AIEvent.ResponseReceived(response))
            }
        }
    )

    private fun handleEvent(event: Event) {
        when (event) {
            is Event.SystemEvent.HardKeyPressed -> {
                if (event.keyCode == 290) toggleListening()
            }
            is Event.VehicleEvent.StateUpdated -> {
                policyEngine.updateState(event.state)
                agentManager.updateVehicleContext(event.state)
            }
            is Event.AlertEvent.Triggered -> {
                handleAlert(event.alert)
            }
            else -> {}
        }
    }

    private fun handleAlert(alert: Alert) {
        Log.i("Omoda-Alert", "Uyarı Tetiklendi: ${alert.message} (${alert.priority})")
        
        // Kritik uyarılarda asistanın mevcut konuşmasını kes ve uyarıyı anons et
        if (alert.priority == AlertPriority.CRITICAL) {
            stopTts()
            audioEngine.requestAlertFocus()
            speak(alert.message) {
                audioEngine.releaseFocus()
            }
        } else {
            // Önemli uyarılarda asistan dinlemiyorsa veya konuşmuyorsa anons et
            if (!isListening) {
                speak(alert.message)
            }
        }
        
        AssistantApplication.addLog("UYARI: ${alert.message}")
    }

    fun toggleListening() {
        if (isListening) stopListening() else startListening()
    }

    fun startListening() {
        if (isListening) return
        
        stopTts()

        scope.launch {
            if (audioEngine.requestAssistantFocus()) {
                isListening = true
                AssistantApplication.isListening.value = true
                AssistantApplication.status.value = "Dinliyor..."
                
                withContext(Dispatchers.IO) {
                    sttManager.startRecording()
                }
                
                EventBus.emit(Event.UIEvent.ShowOverlay)
                EventBus.emit(Event.VoiceEvent.RecordingStarted)

                startAmplitudePolling()
                startTimeoutCounter()
            }
        }
    }

    fun stopListening() {
        if (!isListening) return
        isListening = false
        
        scope.launch {
            AssistantApplication.isListening.value = false
            amplitudeJob?.cancel()
            timeoutJob?.cancel()
            EventBus.emit(Event.UIEvent.HideOverlay)
            AssistantApplication.status.value = "İşleniyor..."
            
            EventBus.emit(Event.VoiceEvent.RecordingStopped)

            withContext(Dispatchers.IO) {
                sttManager.stopRecording()
            }
            audioEngine.releaseFocus()
        }
    }

    private fun handleRecordingFinished(audioPath: String) {
        val audioFile = File(audioPath)
        when (AssistantApplication.sttMode.value) {
            "SHERPA" -> performLocalStt(audioFile)
            else -> agentManager.processVoiceInput(audioFile)
        }
    }

    private fun performLocalStt(audioFile: File) {
        if (!audioFile.exists() || audioFile.length() == 0L) {
            resetState()
            return
        }

        AssistantApplication.recognizedText.value = "Lokal işleniyor..."
        scope.launch(Dispatchers.IO) {
            try {
                val bytes = audioFile.readBytes()
                val floats = FloatArray(bytes.size / 2)
                for (i in floats.indices) {
                    val b1 = bytes[i * 2].toInt() and 0xFF
                    val b2 = bytes[i * 2 + 1].toInt() shl 8
                    floats[i] = (b1 or b2).toShort().toFloat() / 32768.0f
                }

                val text = sherpaSttManager.transcribe(floats)
                
                withContext(Dispatchers.Main) {
                    if (!text.isNullOrBlank() && text != "[STT Hazır Değil]") {
                        AssistantApplication.recognizedText.value = text
                        
                        // Yerel Komut Kontrolü
                        when (val result = commandRouter.analyzeAndExecute(text)) {
                            is CommandResult.Success -> {
                                speak(result.message) { resetState() }
                            }
                            is CommandResult.Blocked -> {
                                speak(result.reason) { resetState() }
                            }
                            is CommandResult.NotMatched -> {
                                val response = "Anladım: $text"
                                AssistantApplication.assistantResponse.value = response
                                speak(response) { resetState() }
                            }
                        }
                        EventBus.emit(Event.VoiceEvent.SttResult(text))
                    } else {
                        resetState()
                    }
                }
            } catch (e: Exception) {
                withContext(Dispatchers.Main) { resetState() }
            }
        }
    }

    fun speak(text: String, onComplete: (() -> Unit)? = null) {
        val engine = AssistantApplication.ttsEngine.value
        EventBus.tryEmit(Event.AIEvent.TTSStarted)
        
        // Ses odağı iste (Ducking aktifleşir)
        audioEngine.requestAssistantFocus()

        val wrappedOnComplete: () -> Unit = {
            // Konuşma bitince odağı bırak
            audioEngine.releaseFocus()
            EventBus.tryEmit(Event.AIEvent.TTSCompleted)
            onComplete?.invoke()
        }

        when (engine) {
            "EDGE" -> edgeTtsManager.speak(text, onComplete = wrappedOnComplete)
            "HERMES" -> hermesTtsManager.speak(text, onComplete = wrappedOnComplete, onError = { wrappedOnComplete() })
            "SHERPA" -> if (!sherpaTtsManager.speak(text, wrappedOnComplete)) wrappedOnComplete()
            else -> hermesTtsManager.speak(text, onComplete = wrappedOnComplete)
        }
    }

    private fun stopTts() {
        hermesTtsManager.stop()
        edgeTtsManager.stop()
        sherpaTtsManager.stop()
    }

    private fun startAmplitudePolling() {
        amplitudeJob?.cancel()
        amplitudeJob = scope.launch {
            while (isListening) {
                val amp = (100..600).random()
                AssistantApplication.currentAmplitude.value = amp
                EventBus.emit(Event.UIEvent.UpdateOverlayAmplitude(amp))
                delay(100)
            }
        }
    }

    private fun startTimeoutCounter() {
        timeoutJob?.cancel()
        timeoutJob = scope.launch {
            delay(5000)
            if (isListening) stopListening()
        }
    }

    private fun resetState() {
        isListening = false
        AssistantApplication.isListening.value = false
        AssistantApplication.status.value = "Hazır"
        EventBus.tryEmit(Event.UIEvent.HideOverlay)
        audioEngine.releaseFocus()
    }

    fun updateConfig() {
        hermesClient = HermesClient(AssistantApplication.HERMES_BASE_URL, AssistantApplication.HERMES_API_KEY)
        sttClient = HermesClient(AssistantApplication.STT_BASE_URL, AssistantApplication.HERMES_API_KEY)
        agentManager = createAgentManager()
    }
}
