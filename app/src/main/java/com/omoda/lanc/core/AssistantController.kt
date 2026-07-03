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
import com.omoda.lanc.tts.HermesTTSManager
import com.omoda.lanc.mqtt.MqttTelemetryBridge
import kotlinx.coroutines.*
import java.io.File

/**
 * AssistantController - PDF Plan v2.0 Uyumlu Merkezi İş Mantığı
 * Sesli asistanın yaşam döngüsünü (Dinleme -> STT -> LLM -> TTS) yönetir.
 */
class AssistantController(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val audioEngine = AudioEngine(context)
    private val overlayManager = OverlayManager(context)
    private val mqttTelemetryBridge = MqttTelemetryBridge(AssistantApplication.mqttPublisher)
    private val actionExecutor = ActionExecutor(context, mqttTelemetryBridge)
    private val commandFirewall = CommandFirewall(context, actionExecutor)
    private val vehicleController = VehicleController(context)
    private val policyEngine = PolicyEngine()
    private val commandRouter = CommandRouter(context, commandFirewall)
    private val alertEngine = AlertEngine(scope)
    private val drivingAnalysisEngine = DrivingAnalysisEngine(scope)
    
    private val sttManager = SttManager(context) { audioPath -> handleRecordingFinished(audioPath) }
    private val androidSttManager by lazy { AndroidSystemSttManager(context) { text -> handleAndroidSttResult(text) } }
    
    private val hermesTtsManager = HermesTTSManager(context)
    private val androidTtsManager by lazy { AndroidSystemTtsManager(context) }

    // Radyo Modu Bileşenleri
    private var radioSender: com.omoda.lanc.audio.AudioStreamSender? = null
    private var radioReceiver: com.omoda.lanc.audio.AudioStreamReceiver? = null

    // Dinamik Hermes ve STT İstemcileri
    private var hermesClient = HermesClient(AssistantApplication.HERMES_BASE_URL, AssistantApplication.NINEROUTER_API_KEY)
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
                kotlinx.coroutines.delay(500)

                val currentStatus = AssistantApplication.hermesConnectionStatus.value
                if (currentStatus != "DISCONNECTED") {
                    consecutiveFailures = 0
                    kotlinx.coroutines.delay(30000)
                } else if (consecutiveFailures < 5) {
                    consecutiveFailures++
                } else {
                    consecutiveFailures++
                    kotlinx.coroutines.delay(10000)
                }
            }
        }

        // Eager Hermes session creation (runs on IO, waits for first CONNECTED)
        scope.launch(Dispatchers.IO) {
            // Wait until connection is established
            while (AssistantApplication.hermesConnectionStatus.value != "CONNECTED") {
                kotlinx.coroutines.delay(2000)
            }
            hermesClient.createSessionSync()
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
                        val isErrorResponse = spokenText.contains("anlaşılamadı", ignoreCase = true) || 
                                              spokenText.contains("bağlanılamadı", ignoreCase = true) || 
                                              spokenText.contains("hata", ignoreCase = true) ||
                                              spokenText.contains("internet bağlantısı yok", ignoreCase = true)
                                              
                        if (AssistantApplication.isContinuousConversation.value && !isErrorResponse) {
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
            is Event.VehicleEvent.GpsLocationChanged -> {
                vehicleController.updateGpsLocation(event.lat, event.lng, event.speed)
            }
            is Event.AlertEvent.Triggered -> {
                handleAlert(event.alert)
            }
            else -> {}
        }
    }

    private fun handleAlert(alert: Alert) {
        if (alert.priority == AlertPriority.CRITICAL) {
            stopTts()
            audioEngine.requestAlertFocus()
            speak(alert.message) {
                audioEngine.releaseFocus()
            }
        } else {
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
        if (isListening) {
            Log.d("Omoda-Workflow", "Zaten dinliyor, tekrar başlatılmadı.")
            return
        }
        stopTts()

        scope.launch {
            if (audioEngine.requestAssistantFocus()) {
                isListening = true
                AssistantApplication.isListening.value = true
                
                if (AssistantApplication.isRadioMode.value) {
                    AssistantApplication.status.value = "TELSİZ AKTİF"
                    startRadioMode()
                } else {
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
                }
                
                EventBus.emit(Event.UIEvent.ShowOverlay)
                EventBus.emit(Event.VoiceEvent.RecordingStarted)

                startAmplitudePolling()
                if (!AssistantApplication.isRadioMode.value) startTimeoutCounter()
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
            
            if (AssistantApplication.isRadioMode.value) {
                AssistantApplication.status.value = "Telsiz Kapatıldı"
                stopRadioMode()
            } else {
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
            }
            audioEngine.releaseFocus()
        }
    }

    private fun startRadioMode() {
        val wsUrl = AssistantApplication.HERMES_WS_URL
        AssistantApplication.addLog("Radyo Modu Başlatılıyor: $wsUrl")
        
        radioSender = com.omoda.lanc.audio.AudioStreamSender(wsUrl)
        radioReceiver = com.omoda.lanc.audio.AudioStreamReceiver(context, wsUrl)
        
        radioReceiver?.startListening()
        radioSender?.startStreaming()
        
        val msg = "Canlı telsiz bağlantısı kuruldu. Konuşabilirsiniz..."
        AssistantApplication.assistantResponse.value = msg
        // Ensure the welcome message is spoken aloud via TTS
        speak(msg)
    }

    private fun stopRadioMode() {
        AssistantApplication.addLog("Radyo Modu Durduruluyor")
        radioSender?.stopStreaming()
        radioReceiver?.stop()
        radioSender = null
        radioReceiver = null
        resetState()
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

        mqttTelemetryBridge.publishSpeech(text)

        EventBus.tryEmit(Event.AIEvent.TTSStarted)
        Log.d("Omoda-Workflow", ">>> TTS BAŞLIYOR: '${text.take(50)}'")
        AssistantApplication.addLog("TTS Başlatılıyor")
        
        audioEngine.requestAssistantFocus()

        val wrappedOnComplete: () -> Unit = {
            audioEngine.releaseFocus()
            EventBus.tryEmit(Event.AIEvent.TTSCompleted)
            onComplete?.invoke()
        }

        // Sadece HERMES (Yerel Sunucu) ve Fallback olarak Android System TTS
        hermesTtsManager.speak(text, onComplete = wrappedOnComplete, onError = {
            Log.w("Omoda-Workflow", "Hermes TTS Hatası, Local TTS'e geçiliyor...")
            AssistantApplication.addLog("Hermes Hatası, Local'e Geçiliyor")
            
            androidTtsManager.speak(text, onComplete = wrappedOnComplete, onError = {
                Log.e("Omoda-Workflow", "Tüm TTS Sistemleri Çöktü!")
                AssistantApplication.addLog("HATA: TTS Çöktü")
                wrappedOnComplete()
            })
        })
    }

    private fun stopTts() {
        hermesTtsManager.stop()
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
            delay(8000)
            if (isListening) {
                AssistantApplication.addLog("Zaman aşımı (8s): Dinleme durduruluyor.")
                stopListening()
            }
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
        hermesClient = HermesClient(AssistantApplication.HERMES_BASE_URL, AssistantApplication.NINEROUTER_API_KEY)
        sttClient = HermesClient(AssistantApplication.STT_BASE_URL, AssistantApplication.NINEROUTER_API_KEY)
        agentManager = createAgentManager()
    }
}
