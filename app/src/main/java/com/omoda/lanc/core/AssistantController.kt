package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.audio.AudioEngine
import com.omoda.lanc.network.AgentManager
import com.omoda.lanc.network.HermesClient
import com.omoda.lanc.overlay.OverlayManager
import com.omoda.lanc.stt.AndroidSystemSttManager
import com.omoda.lanc.stt.SttManager
import com.omoda.lanc.tts.AndroidSystemTtsManager
import com.omoda.lanc.tts.EdgeOnlineTTSManager
import com.omoda.lanc.tts.HermesTTSManager
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
    private val commandFirewall = CommandFirewall(context, actionExecutor)
    private val vehicleController = VehicleController(context)
    private val policyEngine = PolicyEngine()
    private val ruleEngine = RuleEngine { vehicleController.getVehicleState() }
    private val commandRouter = CommandRouter(context, actionExecutor, ruleEngine)
    private val alertEngine = AlertEngine(scope)
    private val drivingAnalysisEngine = DrivingAnalysisEngine(scope)
    
    private val sttManager = SttManager(context) { audioPath -> handleRecordingFinished(audioPath) }
    private val androidSttManager by lazy { AndroidSystemSttManager(context) { text -> handleAndroidSttResult(text) } }
    
    private val hermesTtsManager = HermesTTSManager(context)
    private val edgeTtsManager = EdgeOnlineTTSManager(context)
    private val androidTtsManager by lazy { AndroidSystemTtsManager(context) }

    // Dinamik Hermes ve STT İstemcileri
    private var hermesClient = HermesClient(AssistantApplication.HERMES_BASE_URL, AssistantApplication.HERMES_API_KEY)
    private var sttClient = HermesClient(AssistantApplication.STT_BASE_URL, AssistantApplication.NINEROUTER_API_KEY)

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
        
        scope.launch {
            var consecutiveFailures = 0
            while (true) {
                val previousStatus = AssistantApplication.hermesConnectionStatus.value
                hermesClient.checkConnection()
                kotlinx.coroutines.delay(500) // Async cevabi bekle

                val currentStatus = AssistantApplication.hermesConnectionStatus.value
                if (currentStatus != "DISCONNECTED") {
                    // Baglanti yeniden kurulduysa bildirim
                    if (previousStatus == "DISCONNECTED" && consecutiveFailures > 0) {
                        consecutiveFailures = 0
                        EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Hermes baglantisi yeniden kuruldu"))
                    }
                    kotlinx.coroutines.delay(30000) // Normal heartbeat
                } else if (consecutiveFailures < 5) {
                    // Ilk 5 deneme hemen (retry mantigi)
                    consecutiveFailures++
                } else {
                    consecutiveFailures++
                    kotlinx.coroutines.delay(10000) // 10sn ara
                }
            }
        }
    }

    private fun createAgentManager() = AgentManager(
        commandFirewall = commandFirewall,
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
            is Event.SystemEvent.ConfigUpdated -> {
                updateConfig()
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
                
                if (AssistantApplication.sttMode.value == "LOCAL") {
                    withContext(Dispatchers.Main) {
                        androidSttManager.startListening()
                    }
                } else {
                    withContext(Dispatchers.IO) {
                        sttManager.startRecording()
                    }
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
            AssistantApplication.status.value = "İşleniyor..."
            
            EventBus.emit(Event.VoiceEvent.RecordingStopped)

            if (AssistantApplication.sttMode.value == "LOCAL") {
                withContext(Dispatchers.Main) {
                    androidSttManager.stopListening()
                }
            } else {
                withContext(Dispatchers.IO) {
                    sttManager.stopRecording()
                }
            }
            audioEngine.releaseFocus()
        }
    }

    private fun handleRecordingFinished(audioPath: String) {
        if (audioPath.isBlank()) {
            AssistantApplication.status.value = "Ses anlaşılamadı"
            resetState()
            return
        }
        val audioFile = File(audioPath)
        agentManager.processVoiceInput(audioFile)
    }

    private fun handleAndroidSttResult(text: String) {
        if (text.isNotBlank() && text != "[STT Hazır Değil]") {
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
            EventBus.tryEmit(Event.VoiceEvent.SttResult(text))
        } else {
            resetState()
        }
    }

    fun processText(text: String) {
        agentManager.processTextInput(text)
    }

    fun speak(text: String, onComplete: (() -> Unit)? = null) {
        if (text.isBlank()) return

        EventBus.tryEmit(Event.AIEvent.TTSStarted)
        Log.d("Omoda-Workflow", ">>> [7] TTS KASKAD BAŞLIYOR: '${text.take(50)}'")
        AssistantApplication.addLog("TTS Başlatılıyor (Kaskad)")
        
        audioEngine.requestAssistantFocus()

        val wrappedOnComplete: () -> Unit = {
            audioEngine.releaseFocus()
            EventBus.tryEmit(Event.AIEvent.TTSCompleted)
            onComplete?.invoke()
        }

        // 1. ONLINE DENEME (Edge)
        edgeTtsManager.speak(text, onComplete = wrappedOnComplete, onError = {
            Log.w("Omoda-Workflow", "Edge TTS Hatası, Hermes TTS'e geçiliyor...")
            AssistantApplication.addLog("Edge Hatası, Hermes'e Geçiliyor")
            
            // 2. HERMES DENEME
            hermesTtsManager.speak(text, onComplete = wrappedOnComplete, onError = {
                Log.w("Omoda-Workflow", "Hermes TTS Hatası, Local TTS'e geçiliyor...")
                AssistantApplication.addLog("Hermes Hatası, Local'e Geçiliyor")
                
                // 3. LOCAL DENEME (Android Native TTS)
                androidTtsManager.speak(text, onComplete = wrappedOnComplete, onError = {
                    Log.e("Omoda-Workflow", "Tüm TTS Sistemleri Çöktü!")
                    AssistantApplication.addLog("HATA: TTS Çöktü")
                    wrappedOnComplete()
                })
            })
        })
    }

    private fun stopTts() {
        hermesTtsManager.stop()
        edgeTtsManager.stop()
        androidTtsManager.stop()
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

    fun destroy() {
        vehicleController.destroy()
        vehicleController.unregisterMediaReceiver()
        audioEngine.releaseFocus()
        amplitudeJob?.cancel()
        timeoutJob?.cancel()
        androidSttManager.destroy()
        androidTtsManager.shutdown()
    }

    fun updateConfig() {
        hermesClient = HermesClient(AssistantApplication.HERMES_BASE_URL, AssistantApplication.HERMES_API_KEY)
        sttClient = HermesClient(AssistantApplication.STT_BASE_URL, AssistantApplication.NINEROUTER_API_KEY)
        agentManager = createAgentManager()
    }
}
