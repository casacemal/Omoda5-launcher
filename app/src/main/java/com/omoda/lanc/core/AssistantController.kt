package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.audio.AudioEngine
import com.omoda.lanc.mqtt.MqttTelemetryBridge
import com.omoda.lanc.network.AgentManager
import com.omoda.lanc.network.HermesClient
import com.omoda.lanc.network.SttClient
import com.omoda.lanc.network.SttManager
import com.omoda.lanc.overlay.OverlayManager
import com.omoda.lanc.tts.AppTtsManager
import com.omoda.lanc.voice.WakeWordManager
import kotlinx.coroutines.*
import java.io.File

/**
 * AssistantController - Bulut Tabanlı Lite Sürüm
 */
class AssistantController(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val audioEngine = AudioEngine(context)
    private val overlayManager = OverlayManager(context)
    private val mqttTelemetryBridge = GlobalState.mqttPublisher?.let { MqttTelemetryBridge(it) }
    private val actionExecutor = ActionExecutor(context, mqttTelemetryBridge)
    private val commandFirewall = CommandFirewall(context, actionExecutor)
    private val vehicleController = VehicleController.getInstance(context)
    private val policyEngine = PolicyEngine()
    private val commandRouter = CommandRouter(context, commandFirewall)
    private val alertEngine = AlertEngine(scope)
    private val drivingAnalysisEngine = DrivingAnalysisEngine(scope)
    
    private val sttManager = SttManager(context) { audioPath -> handleRecordingFinished(audioPath) }
    private val systemSttManager = com.omoda.lanc.voice.AndroidSystemSttManager(context) { text ->
        scope.launch(Dispatchers.Main) {
            if (text.isNotBlank()) agentManager.processTextInput(text)
            else {
                if (GlobalState.sttMode.value == "LOCAL") {
                    GlobalState.status.value = "Ses anlaşılamadı"
                    resetState()
                }
            }
        }
    }
    
    private val ttsManager = AppTtsManager(context)
    private val wakeWordManager = WakeWordManager(context) { command ->
        scope.launch(Dispatchers.Main) {
            startListening()
            if (command.isNotBlank()) {
                delay(500)
                processText(command)
            }
        }
    }

    private var radioSender: com.omoda.lanc.audio.AudioStreamSender? = null
    private var radioReceiver: com.omoda.lanc.audio.AudioStreamReceiver? = null

    private var hermesClient = HermesClient(GlobalState.HERMES_BASE_URL, GlobalState.HERMES_API_KEY)
    private var sttClient = SttClient(GlobalState.STT_BASE_URL, GlobalState.NINEROUTER_API_KEY)

    private var agentManager: AgentManager = createAgentManager()

    private var isListening = false
    private var amplitudeJob: Job? = null
    private var timeoutJob: Job? = null

    // TTS Kuyruğu - SSE akışında cümle üst üste baskısını önler
    private val ttsQueue = ArrayDeque<Pair<String, (() -> Unit)?>>() // text, onComplete
    private var isTtsBusy = false

    init {
        scope.launch(Dispatchers.Main) {
            ttsManager.stop()
        }

        scope.launch {
            EventBus.events.collect { event ->
                handleEvent(event)
            }
        }
        
        scope.launch {
            while (true) {
                hermesClient.checkConnection { hermesOk ->
                    if (hermesOk) {
                        GlobalState.hermesConnectionStatus.value = "CONNECTED"
                    } else {
                        GlobalState.hermesConnectionStatus.value = "DISCONNECTED"
                    }
                    sttClient.checkConnection()
                    
                    val hStatus = GlobalState.hermesConnectionStatus.value
                    val mStatus = if(GlobalState.isMqttConnected.value) "BAĞLI" else "KOPUK"
                    val iStatus = if(GlobalState.hasInternetConnection.value) "AKTİF" else "YOK"
                    LoggerProvider.log("Bağlantı Özeti: İnternet=$iStatus, MQTT=$mStatus, Hermes=$hStatus")
                }
                delay(30000)
            }
        }
        scope.launch {
            GlobalState.isWakeWordEnabled.collect { enabled ->
                if (enabled) wakeWordManager.startListening()
                else wakeWordManager.stopListening()
            }
        }
    }

    private fun createAgentManager() = AgentManager(
        commandFirewall = commandFirewall,
        commandRouter = commandRouter,
        sttClient = sttClient,
        hermesClient = hermesClient,
        onCancelPrevious = {
            // Yeni istek geldi: önceki TTS kuyruğunu temizle (cevap karışmasını önler)
            stopTts()
            GlobalState.assistantResponse.value = ""
        },
        onFeedback = { feedback ->
            GlobalState.recognizedText.value = feedback
        },
        onSystemResponse = { response, isFinal ->
            if (response.isNotEmpty()) {
                GlobalState.assistantResponse.value = response
                EventBus.tryEmit(Event.UIEvent.UpdateOverlayState(response))
            }
            if (response.isNotEmpty()) {
                speak(response) {
                    if (isFinal) {
                        if (GlobalState.isContinuousConversation.value && GlobalState.currentMode.value == "CHAT") {
                            scope.launch { delay(500); startListening() }
                        } else { resetState() }
                    }
                }
            } else if (isFinal) {
                scope.launch(Dispatchers.Main) {
                    if (!isTtsBusy && ttsQueue.isEmpty()) {
                        if (GlobalState.isContinuousConversation.value && GlobalState.currentMode.value == "CHAT") {
                            delay(500); startListening()
                        } else { resetState() }
                    }
                }
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
        LoggerProvider.log("UYARI: ${alert.message}")
    }

    fun toggleListening() {
        if (isListening) stopListening() else startListening()
    }

    fun startListening() {
        if (isListening) return
        stopTts()
        wakeWordManager.setAssistantActive(true)

        scope.launch {
            if (audioEngine.requestAssistantFocus()) {
                isListening = true
                GlobalState.isListening.value = true
                GlobalState.workflowState.value = "LISTENING"
                GlobalState.workflowState.value = "LISTENING"
                
                if (GlobalState.isRadioMode.value) {
                    GlobalState.status.value = "TELSİZ AKTİF"
                    startRadioMode()
                } else if (GlobalState.sttMode.value == "LOCAL") {
                    GlobalState.status.value = "Sistem Dinliyor..."
                    systemSttManager.startListening()
                } else {
                    GlobalState.status.value = "Dinliyor..."
                    withContext(Dispatchers.IO) {
                        sttManager.startRecording()
                    }
                }
                
                EventBus.emit(Event.UIEvent.ShowOverlay)
                EventBus.emit(Event.VoiceEvent.RecordingStarted)

                startAmplitudePolling()
                if (!GlobalState.isRadioMode.value) startTimeoutCounter()
            }
        }
    }

    fun stopListening() {
        if (!isListening) return
        isListening = false
        
        scope.launch {
            GlobalState.isListening.value = false
            GlobalState.workflowState.value = "THINKING"
            amplitudeJob?.cancel()
            timeoutJob?.cancel()
            
            if (GlobalState.isRadioMode.value) {
                GlobalState.status.value = "Telsiz Kapatıldı"
                stopRadioMode()
            } else if (GlobalState.sttMode.value == "LOCAL") {
                systemSttManager.stopListening()
            } else {
                GlobalState.status.value = "İşleniyor..."
                EventBus.emit(Event.VoiceEvent.RecordingStopped)
                withContext(Dispatchers.IO) {
                    sttManager.stopRecording()
                }
            }
            audioEngine.releaseFocus()
        }
    }

    private fun startRadioMode() {
        val wsUrl = GlobalState.HERMES_WS_URL
        LoggerProvider.log("Radyo Modu Başlatılıyor: $wsUrl")
        
        radioSender = com.omoda.lanc.audio.AudioStreamSender(wsUrl)
        radioReceiver = com.omoda.lanc.audio.AudioStreamReceiver(context, wsUrl)
        
        radioReceiver?.startListening()
        radioSender?.startStreaming()
        
        val msg = "Canlı telsiz bağlantısı kuruldu. Konuşabilirsiniz..."
        GlobalState.assistantResponse.value = msg
        speak(msg)
    }

    private fun stopRadioMode() {
        LoggerProvider.log("Radyo Modu Durduruluyor")
        radioSender?.stopStreaming()
        radioReceiver?.stop()
        radioSender = null
        radioReceiver = null
        resetState()
    }

    private fun handleRecordingFinished(audioPath: String) {
        if (audioPath.isBlank()) {
            GlobalState.status.value = "Ses anlaşılamadı"
            resetState()
            return
        }
        val audioFile = java.io.File(audioPath)
        
        // STT Modu: SHERPA ise yerel Whisper motoru kullan
        if (GlobalState.sttMode.value == "SHERPA") {
            GlobalState.status.value = "Yerel STT işleniyor..."
            val sherpaAsr = com.omoda.lanc.voice.SherpaAsrManager(context) { text ->
                scope.launch(Dispatchers.Main) {
                    if (text.isNotBlank()) agentManager.processTextInput(text)
                    else {
                        GlobalState.status.value = "Ses anlaşılamadı"
                        resetState()
                    }
                }
            }
            sherpaAsr.transcribeFile(audioFile)
        } else {
            agentManager.processVoiceInput(audioFile)
        }
    }

    fun processText(text: String) {
        agentManager.processTextInput(text)
    }

    fun speak(text: String, onComplete: (() -> Unit)? = null) {
        if (text.isBlank()) { onComplete?.invoke(); return }
        mqttTelemetryBridge?.publishSpeech(text)
        
        // Kuyruğa ekle, eğer TTS meşgul değilse hemen çal
        ttsQueue.addLast(Pair(text, onComplete))
        if (!isTtsBusy) {
            playNextInQueue()
        }
    }

    private fun playNextInQueue() {
        if (ttsQueue.isEmpty()) {
            isTtsBusy = false
            audioEngine.releaseFocus()
            EventBus.tryEmit(Event.AIEvent.TTSCompleted)
            GlobalState.workflowState.value = "IDLE"
            return
        }
        isTtsBusy = true
        GlobalState.workflowState.value = "TALKING"
        val (text, onComplete) = ttsQueue.removeFirst()

        if (!EventBus.tryEmit(Event.AIEvent.TTSStarted)) {
            // EventBus doluysa yine de devam et
        }
        audioEngine.requestAssistantFocus()

        ttsManager.speak(text, onComplete = {
            onComplete?.invoke()
            playNextInQueue() // Kuyruktan bir sonrakini çal
        }, onError = {
            onComplete?.invoke()
            playNextInQueue() // Hata olsa da kuyruğu ilerlet
        })
    }

    private fun stopTts() {
        ttsQueue.clear()
        isTtsBusy = false
        ttsManager.stop()
    }

    private fun startAmplitudePolling() {
        amplitudeJob?.cancel()
        amplitudeJob = scope.launch {
            while (isListening) {
                val amp = (100..600).random()
                GlobalState.currentAmplitude.value = amp
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
                LoggerProvider.log("Zaman aşımı (8s): Dinleme durduruluyor.")
                stopListening()
            }
        }
    }

    private fun resetState() {
        isListening = false
        GlobalState.isListening.value = false
        GlobalState.workflowState.value = "IDLE"
        GlobalState.status.value = "Hazır"
        wakeWordManager.setAssistantActive(false)
        EventBus.tryEmit(Event.UIEvent.HideOverlay)
        audioEngine.releaseFocus()
    }

    fun destroy() {
        vehicleController.destroy()
        vehicleController.unregisterMediaReceiver()
        audioEngine.releaseFocus()
        amplitudeJob?.cancel()
        timeoutJob?.cancel()
        ttsManager.shutdown()
        
        // Clean up other managers
        overlayManager.destroy()
        systemSttManager.destroy() 
        wakeWordManager.stopListening()
        
        sttManager.stopRecording()
    }

    fun updateConfig() {
        hermesClient = HermesClient(GlobalState.HERMES_BASE_URL, GlobalState.HERMES_API_KEY)
        sttClient = SttClient(GlobalState.STT_BASE_URL, GlobalState.NINEROUTER_API_KEY)
        agentManager = createAgentManager()
    }
}
