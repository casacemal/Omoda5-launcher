package com.omoda.lanc

import com.omoda.lanc.core.GlobalState
import android.app.Application
import com.omoda.lanc.config.AppConfig
import com.omoda.lanc.config.ConfigManager
import com.omoda.lanc.core.*
import com.omoda.lanc.core.dsl.*
import com.omoda.lanc.voice.ModelRepairManager
import kotlinx.coroutines.*
import com.omoda.lanc.mqtt.MqttPublisher
import com.omoda.lanc.log.AdvancedLogger
import com.hermesandroid.bridge.auth.PairingManager
import com.hermesandroid.bridge.client.RelayClient
import com.hermesandroid.bridge.model.DeviceCapabilities
import com.hermesandroid.bridge.power.WakeLockManager
import kotlinx.coroutines.flow.MutableStateFlow
import java.util.*

class AssistantApplication : Application(), AppLogger {
    companion object {
        lateinit var configManager: ConfigManager
        
        // Architecture 2.0 DSL Components
        lateinit var firewallV2: FirewallV2
        lateinit var hybridRouter: HybridRouter
        val omodaPlatform = Omoda5
        val omodaTools = OmodaTools

        @Volatile var instance: AssistantApplication? = null
            private set

        
    }

    override fun addGeneralLog(level: LogLevel, message: String) {
        com.omoda.lanc.core.GlobalState.addGeneralLog(level, message)
        // Eğer MQTT Publish devredeyse, logları anında yolla
        if (com.omoda.lanc.core.GlobalState.mqttEnabled.value) {
            com.omoda.lanc.core.GlobalState.mqttPublisher?.publishInternalLog(level, message)
        }
    }

    override fun onCreate() {
        super.onCreate()
        instance = this
        LoggerProvider.logger = this
        
        configManager = ConfigManager(this)
        loadConfig()

        // --- KADEMELİ (STAGGERED) AŞAMALI BAŞLATMA PIPELINE'I ---
        // Aşama 1 (T=0s): Temel DSL & Konfigürasyon
        firewallV2 = FirewallV2(this, OmodaTools, emptyList())
        hybridRouter = HybridRouter(this, firewallV2, OmodaTools)
        GlobalState.firewallV2 = firewallV2
        GlobalState.hybridRouter = hybridRouter
        SystemLogger.setListener { log -> LoggerProvider.i(log) }

        // Aşama 2 (T=3s): Ses ve Model İncelemesi (FM Radyo'ya zaman tanıma)
        CoroutineScope(Dispatchers.IO).launch {
            delay(3000L)
            ModelRepairManager.checkAndRepair(this@AssistantApplication) { 
                LoggerProvider.i("MODEL: $it")
            }
        }

        // Aşama 3 (T=6s): VHAL & Araç Denetleyicisi Entegrasyonu
        CoroutineScope(Dispatchers.IO).launch {
            delay(6000L)
            withContext(Dispatchers.Main) {
                VehicleController.getInstance(this@AssistantApplication)
                com.omoda.lanc.core.CompassManager.init(this@AssistantApplication)
            }
        }

        // Aşama 4 (T=10s): MQTT, Hava Durumu ve Ağ Servisleri
        CoroutineScope(Dispatchers.IO).launch {
            delay(10000L)
            com.omoda.lanc.network.NetworkAutoManager.start(this@AssistantApplication)
            com.omoda.lanc.network.NetworkMonitor(this@AssistantApplication)
            com.omoda.lanc.network.WeatherManager.startPolling()

            if (GlobalState.mqttEnabled.value) {
                if (GlobalState.mqttPublisher == null) {
                    GlobalState.mqttPublisher = MqttPublisher()
                }
                GlobalState.mqttPublisher?.updateBrokerUrl(GlobalState.mqttUrl.value)
                GlobalState.mqttPublisher?.connect()
            }

            PairingManager.init(applicationContext)
            DeviceCapabilities.init(applicationContext)
            WakeLockManager.init(applicationContext)
            RelayClient.init(applicationContext)
            RelayClient.autoConnect()
        }
    }

    fun loadConfig() {
        val config = configManager.loadConfig()
        
        GlobalState.serverIp.value = if (config.serverIp.isBlank()) "192.168.1.14" else config.serverIp
        GlobalState.activeServerIp.value = GlobalState.serverIp.value

        GlobalState.hermesPort.value = if (config.hermesPort.isBlank()) "8642" else config.hermesPort
        GlobalState.sttPort.value = if (config.sttPort.isBlank()) "20128" else config.sttPort
        GlobalState.ttsPort.value = if (config.ttsPort.isBlank()) "20128" else config.ttsPort

        GlobalState.sttMode.value = if (config.sttMode.isBlank()) "HERMES" else config.sttMode
        GlobalState.ttsEngine.value = if (config.ttsEngine.isBlank()) "9ROUTER" else config.ttsEngine
        
        GlobalState.githubToken.value = (if (config.githubToken.isNullOrBlank()) BuildConfig.GITHUB_TOKEN else config.githubToken) ?: ""
        GlobalState.isContinuousConversation.value = config.isContinuousConversation
        GlobalState.useHermesDecision.value = config.useHermesDecision
        GlobalState.isWakeWordEnabled.value = config.isWakeWordEnabled
        GlobalState.mqttUrl.value = config.mqttUrl ?: "192.168.1.14"
        GlobalState.mqttPort.value = config.mqttPort ?: "1883"
        GlobalState.mqttUser.value = (if (config.mqttUser.isNullOrBlank()) com.omoda.lanc.core.BuildConfig.MQTT_USER else config.mqttUser) ?: ""
        GlobalState.mqttPassword.value = (if (config.mqttPassword.isNullOrBlank()) com.omoda.lanc.core.BuildConfig.MQTT_PASS else config.mqttPassword) ?: ""
        GlobalState.micSource.value = config.micSource
        GlobalState.isSimulationMode.value = false // Simülasyon modu varsayılan olarak KAPALI (Araç VHAL aktif)
        GlobalState.mqttEnabled.value = config.mqttEnabled
        GlobalState.vehicleId.value = config.vehicleId
        GlobalState.sessionKey.value = config.sessionKey
        
        GlobalState.hermesApiKey.value = (if (config.hermesApiKey.isNullOrBlank()) BuildConfig.HERMES_API_KEY else config.hermesApiKey) ?: ""
        GlobalState.ninerouterApiKey.value = (if (config.ninerouterApiKey.isNullOrBlank()) BuildConfig.NINEROUTER_API_KEY else config.ninerouterApiKey) ?: ""
        GlobalState.edgeTtsToken.value = (if (config.edgeTtsToken.isNullOrBlank()) BuildConfig.EDGE_TTS_TOKEN else config.edgeTtsToken) ?: ""

        GlobalState.wallpaperIdx.value = config.wallpaperIdx
        GlobalState.appClickCounts.value = config.appClickCounts
        
        GlobalState.vehiclePollingConfig.value = if (config.vehiclePollingConfig.isEmpty()) mapOf(
            "11600207" to 1, // Hız
            "21402006" to 1, // Vites
            "11600307" to 10 // Yakıt
        ) else config.vehiclePollingConfig
        
        GlobalState.vadSnrRatio.value = config.vadSnrRatio
        GlobalState.vadSilenceDuration.value = config.vadSilenceDuration
        GlobalState.vadGainFactor.value = config.vadGainFactor
        
        GlobalState.isKlimaAutoEnable.value = config.isKlimaAutoEnable
        
        GlobalState.ttsRate.value = config.ttsRate
        GlobalState.ttsPitch.value = config.ttsPitch
        
        GlobalState.proactiveNotificationsEnabled.value = config.proactiveNotificationsEnabled
        GlobalState.criticalNotificationsOnly.value = config.criticalNotificationsOnly
        GlobalState.waveformEnabled.value = config.waveformEnabled
        GlobalState.gamificationEnabled.value = config.gamificationEnabled
    }
}
