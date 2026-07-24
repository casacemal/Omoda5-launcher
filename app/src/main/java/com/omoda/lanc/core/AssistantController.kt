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
 * [FIX-05] Çift AudioRecord sorunu giderildi
 * [FIX-06] updateConfig() eski instance'ları kapatıyor
 * [FIX-07] TTS kuyruğuna boyut sınırı eklendi
 */
class AssistantController(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val audioEngine = AudioEngine(context)
    private val overlayManager = OverlayManager(context)
    private var mqttTelemetryBridge: MqttTelemetryBridge? = GlobalState.mqttPublisher?.let { MqttTelemetryBridge(it) }
    private var actionExecutor = ActionExecutor(context, mqttTelemetryBridge)
    private val vehicleController = VehicleController.getInstance(context)
    private val policyEngine = PolicyEngine()
    private val alertEngine = AlertEngine(scope)
    private val drivingAnalysisEngine = DrivingAnalysisEngine(scope)

    // [FIX-07] TTS kuyruğu boyut sınırı — araç donanımında bellek koruması
    companion object {
        private const val MAX_TTS_QUEUE_SIZE = 10
    }
    
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
    // [FIX-08] Bağlantı kontrol job'ı referansı — destroy'da iptal etmek için
    private var connectionCheckJob: Job? = null
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
        
        // [FIX-08] Bağlantı kontrol job'ı referans olarak tutuluyor
        connectionCheckJob = scope.launch {
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
        // [FIX-09] Beklenmedik Event tipi için catch-all eklendi
        try {
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
        } catch (e: Exception) {
            Log.e("AssistantCtrl", "handleEvent hatası: ${e.message}", e)
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
        // [FIX-07] TTS kuyruğu boyut sınırı — araç donanımında bellek koruması
        // Hızlı gelen LLM yanıtlarında kuyruk sınırsız büyüyebiliyordu
        if (ttsQueue.size >= MAX_TTS_QUEUE_SIZE) {
            Log.w("AssistantCtrl", "TTS kuyruğu dolu ($MAX_TTS_QUEUE_SIZE), eski öğe çıkarılıyor")
            ttsQueue.removeFirst()
        }
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

    /**
     * [FIX-05] İKİNCİ AudioRecord OLUŞTURMA SORUNU DÜZELTİLDİ
     * 
     * Eski kod: SttManager zaten mikrofonu kullanırken AYRI bir AudioRecord açıyordu.
     * Android'de aynı anda sadece 1 AudioRecord aktif olabilir → kayıt çakışması.
     * 
     * Yeni kod: SttManager'ın getLastAmplitude() metodunu kullanıyor. İkinci AudioRecord
     * oluşturulmuyor, böylece mikrofon çakışması ve gereksiz bellek kullanımı önleniyor.
     */
    private fun startAmplitudePolling() {
        amplitudeJob?.cancel()
        amplitudeJob = scope.launch(Dispatchers.IO) {
            // [FIX-05] SttManager'dan amplitüd verisini al — ikinci AudioRecord oluşturma
            // SttManager zaten kaydı yönetiyor, amplitüd değerini oradan okuyoruz
            while (isListening && isActive) {
                try {
                    val amp = sttManager.getLastAmplitude().takeIf { it > 0 } ?: run {
                        // SttManager henüz veri üretmemişse küçük dalgalanma simüle et
                        (80..180).random()
                    }
                    withContext(Dispatchers.Main) {
                        GlobalState.currentAmplitude.value = amp
                    }
                } catch (e: Exception) {
                    Log.w("AssistantCtrl", "Amplitüd okuma hatası: ${e.message}")
                }
                delay(80)
            }
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
        // [FIX-08] Bağlantı kontrol job'ını da iptal et
        connectionCheckJob?.cancel()
        amplitudeJob?.cancel()
        timeoutJob?.cancel()
        scope.cancel()
        vehicleController.destroy()
        audioEngine.releaseFocus()
        ttsManager.shutdown()
        overlayManager.destroy()
        systemSttManager.destroy() 
        wakeWordManager.stopListening()
        sttManager.stopRecording()
    }

    /**
     * [FIX-06] Konfigürasyon değiştiğinde eski instance'ları kapatma
     * 
     * Eski kod: Her updateConfig çağrısında yeni HermesClient, SttClient ve AgentManager
     * oluşturuluyordu ama eski instance'lar kapatılmıyordu → aktif SSE stream devam eder,
     * eski AgentManager'ın yanıtları gelmeye devam eder → çift yanıt sorunu.
     * 
     * Yeni kod: Eski AgentManager'ı cancel ediyor, eski bağlantı kontrol job'ını durduruyor.
     */
    fun updateConfig() {
        // Eski AgentManager'ı iptal et — aktif SSE stream'leri temizleniyor
        try { agentManager.cancel() } catch (_: Exception) {}
        
        // Eski bağlantı kontrol döngüsünü durdur
        connectionCheckJob?.cancel()

        // MQTT Bridge'i yenile (eğer yeni publisher geldiyse)
        mqttTelemetryBridge = GlobalState.mqttPublisher?.let { MqttTelemetryBridge(it) }
        actionExecutor = ActionExecutor(context, mqttTelemetryBridge)
        
        hermesClient = HermesClient(GlobalState.HERMES_BASE_URL, GlobalState.HERMES_API_KEY)
        sttClient = SttClient(GlobalState.STT_BASE_URL, GlobalState.NINEROUTER_API_KEY)
        agentManager = createAgentManager()
        
        // Yeni bağlantı kontrol döngüsünü başlat
        connectionCheckJob = scope.launch {
            while (true) {
                hermesClient.checkConnection { hermesOk ->
                    GlobalState.hermesConnectionStatus.value = if (hermesOk) "CONNECTED" else "DISCONNECTED"
                    sttClient.checkConnection()
                }
                delay(30000)
            }
        }
    }
}
