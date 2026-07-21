package com.omoda.lanc.core

import com.omoda.lanc.core.GlobalState
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
 * AssistantController - Architecture 2.0 Standartlarına Uygun Full Versiyon
 */
class AssistantController(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val audioEngine = AudioEngine(context)
    private val overlayManager = OverlayManager(context)
    private val mqttTelemetryBridge = GlobalState.mqttPublisher?.let { MqttTelemetryBridge(it) }
    private val actionExecutor = ActionExecutor(context, mqttTelemetryBridge)
    private val vehicleController = VehicleController.getInstance(context)
    private val policyEngine = PolicyEngine()
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

    private var sherpaAsrManager: com.omoda.lanc.voice.SherpaAsrManager? = null

    private var hermesClient = HermesClient(GlobalState.HERMES_BASE_URL, GlobalState.HERMES_API_KEY)
    private var sttClient = SttClient(GlobalState.STT_BASE_URL, GlobalState.NINEROUTER_API_KEY)

    private var agentManager: AgentManager = createAgentManager()

    private var isListening = false
    private var amplitudeJob: Job? = null
    private var timeoutJob: Job? = null
    private val ttsQueue = ArrayDeque<Pair<String, (() -> Unit)?>>()
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
                    GlobalState.hermesConnectionStatus.value = if (hermesOk) "CONNECTED" else "DISCONNECTED"
                    sttClient.checkConnection()
                }
                delay(30000)
            }
        }
    }

    private fun createAgentManager() = AgentManager(
        firewallV2 = AssistantApplication.firewallV2,
        hybridRouter = AssistantApplication.hybridRouter,
        sttClient = sttClient,
        hermesClient = hermesClient,
        toolRegistry = AssistantApplication.omodaTools,
        onCancelPrevious = {
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
                speak(response) {
                    if (isFinal) {
                        if (GlobalState.isContinuousConversation.value && GlobalState.currentMode.value == "CHAT") {
                            scope.launch { delay(500); startListening() }
                        } else { resetState() }
                    }
                }
            } else if (isFinal) {
                resetState()
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
                mqttTelemetryBridge?.publishTelemetry(event.state)
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
        } else if (!isListening) {
            speak(alert.message)
        }
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
                
                if (GlobalState.sttMode.value == "LOCAL") {
                    systemSttManager.startListening()
                } else {
                    GlobalState.status.value = "Dinliyor..."
                    withContext(Dispatchers.IO) { sttManager.startRecording() }
                }
                
                EventBus.emit(Event.UIEvent.ShowOverlay)
                startAmplitudePolling()
                startTimeoutCounter()
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
            
            if (GlobalState.sttMode.value == "LOCAL") {
                systemSttManager.stopListening()
            } else {
                GlobalState.status.value = "İşleniyor..."
                sttManager.stopRecording()
            }
            audioEngine.releaseFocus()
        }
    }

    private fun handleRecordingFinished(audioPath: String) {
        if (audioPath.isBlank()) {
            resetState()
            return
        }
        val audioFile = java.io.File(audioPath)
        agentManager.processVoiceInput(audioFile)
    }

    fun processText(text: String) {
        agentManager.processTextInput(text)
    }

    fun speak(text: String, onComplete: (() -> Unit)? = null) {
        if (text.isBlank()) { onComplete?.invoke(); return }
        ttsQueue.addLast(Pair(text, onComplete))
        if (!isTtsBusy) playNextInQueue()
    }

    private fun playNextInQueue() {
        if (ttsQueue.isEmpty()) {
            isTtsBusy = false
            GlobalState.workflowState.value = "IDLE"
            return
        }
        isTtsBusy = true
        GlobalState.workflowState.value = "TALKING"
        val (text, onComplete) = ttsQueue.removeFirst()
        audioEngine.requestAssistantFocus()

        ttsManager.speak(text, onComplete = {
            onComplete?.invoke()
            playNextInQueue()
        }, onError = {
            onComplete?.invoke()
            playNextInQueue()
        })
    }

    private fun stopTts() {
        ttsQueue.clear()
        isTtsBusy = false
        ttsManager.stop()
    }

    private fun startAmplitudePolling() {
        amplitudeJob?.cancel()
        // Gerçek mikrofon RMS amplitüdünü SttManager üzerinden al.
        // SttManager zaten kaydı yönetiyor; amplitüd verisini 100ms'de bir sorguluyoruz.
        amplitudeJob = scope.launch(Dispatchers.IO) {
            val bufferSize = android.media.AudioRecord.getMinBufferSize(
                16000,
                android.media.AudioFormat.CHANNEL_IN_MONO,
                android.media.AudioFormat.ENCODING_PCM_16BIT
            ).coerceAtLeast(1024)
            val buffer = ShortArray(bufferSize / 2)

            // SttManager kendi AudioRecord oturumunu yönettiği için burada
            // yalnızca okuma denemesi yapıyoruz; izin yoksa SttManager'dan tahmin al.
            var amplitudeRecorder: android.media.AudioRecord? = null
            try {
                amplitudeRecorder = android.media.AudioRecord(
                    android.media.MediaRecorder.AudioSource.MIC,
                    16000,
                    android.media.AudioFormat.CHANNEL_IN_MONO,
                    android.media.AudioFormat.ENCODING_PCM_16BIT,
                    bufferSize
                )
                if (amplitudeRecorder.state == android.media.AudioRecord.STATE_INITIALIZED) {
                    amplitudeRecorder.startRecording()
                    while (isListening && isActive) {
                        val read = amplitudeRecorder.read(buffer, 0, buffer.size)
                        if (read > 0) {
                            // RMS hesapla → 0..32767 aralığını 100..700 aralığına ölçekle
                            var sum = 0.0
                            for (i in 0 until read) sum += buffer[i].toLong() * buffer[i].toLong()
                            val rms = Math.sqrt(sum / read)
                            val amp = (rms / 32767.0 * 600).toInt().coerceIn(30, 700)
                            withContext(Dispatchers.Main) {
                                GlobalState.currentAmplitude.value = amp
                            }
                        }
                        delay(80)
                    }
                } else {
                    // AudioRecord başlatılamadı — SttManager zaten kaydediyor olabilir.
                    // Sabit bir orta değer koy, sıfır yerine canlı gibi görünsün.
                    fallbackAmplitude()
                }
            } catch (e: Exception) {
                android.util.Log.w("AssistantCtrl", "Amplitüd okuma hatası (SttManager ile çakışma): ${e.message}")
                fallbackAmplitude()
            } finally {
                try { amplitudeRecorder?.stop() } catch (_: Exception) {}
                try { amplitudeRecorder?.release() } catch (_: Exception) {}
            }
        }
    }

    /** SttManager zaten mikrofonu kullanıyorsa statik olmayan ama gerçekçi fallback. */
    private suspend fun fallbackAmplitude() {
        // SttManager.getLastAmplitude() varsa kullan, yoksa hafif salınım yap
        while (isListening) {
            val amp = sttManager.getLastAmplitude().takeIf { it > 0 } ?: run {
                // Mikrofon meşgul: küçük dalgalanma simüle et (görsel amaçlı değil, bilgi yokluğu)
                (80..180).random()
            }
            GlobalState.currentAmplitude.value = amp
            delay(100)
        }
    }

    private fun startTimeoutCounter() {
        timeoutJob?.cancel()
        timeoutJob = scope.launch {
            delay(8000)
            if (isListening) stopListening()
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
        scope.cancel()
        vehicleController.destroy()
        audioEngine.releaseFocus()
        ttsManager.shutdown()
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
