package com.omoda.lanc.mqtt

import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.LoggerProvider
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.core.SensorDictionary
import com.omoda.lanc.model.VehicleState
import org.eclipse.paho.client.mqttv3.*
import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence
import org.json.JSONObject
import org.json.JSONArray
// [FIX-10] Coroutine scope import'u eklendi — ham Thread yerine scope kullanılacak
import kotlinx.coroutines.*
import com.omoda.lanc.core.LogLevel
import com.omoda.lanc.network.AdbClient

class MqttPublisher(
    private var brokerUrl: String = GlobalState.mqttUrl.value,
    private val clientId: String = "omoda5-assistant-" + java.util.UUID.randomUUID().toString().substring(0, 5)
) {
    companion object {
        private const val TAG = "MQTT-Publisher"
        private const val TOPIC_TELEMETRY = "omoda/telemetri"
        private const val TOPIC_COMMAND = "omoda/komut"
        private const val TOPIC_STATUS = "omoda/status"
        private const val TOPIC_SIMULATE = "omoda/simulate"
        private const val TOPIC_INTERNAL_LOGS = "omoda/internal_logs"
        private const val TOPIC_LOGS_EXPORT = "omoda/logs"
        private const val QOS = 1
    }

    private var client: MqttClient? = null
    private var lastVehicleState: VehicleState? = null
    @Volatile private var isConnected = false
    // [FIX-10] Ham Thread yerine lifecycle-aware coroutine scope
    // Eski kod ham Thread {} kullanıyordu → app kapandığında thread çalışmaya
    // devam edebiliyordu ve exception'lar uncaught handler'a düşüyordu.
    private val mqttScope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    fun updateBrokerUrl(newUrl: String) {
        val cleanedUrl = newUrl.trim().replace("\r", "").replace("\n", "")
        brokerUrl = cleanedUrl
    }

    fun connect() {
        // [FIX-10] Ham Thread yerine coroutine scope kullanılıyor
        mqttScope.launch {
            try {
                var finalUrl = brokerUrl
                if (!finalUrl.startsWith("tcp://") && !finalUrl.startsWith("ssl://") && !finalUrl.startsWith("ws://")) {
                    val port = GlobalState.mqttPort.value.ifBlank { "1883" }
                    finalUrl = "tcp://$finalUrl:$port"
                }
                client = MqttClient(finalUrl, clientId, MemoryPersistence())
                val options = MqttConnectOptions().apply {
                    isCleanSession = true
                    connectionTimeout = 10
                    keepAliveInterval = 30
                    isAutomaticReconnect = true
                    userName = GlobalState.mqttUser.value.ifBlank { com.omoda.lanc.core.BuildConfig.MQTT_USER }
                    password = GlobalState.mqttPassword.value.ifBlank { com.omoda.lanc.core.BuildConfig.MQTT_PASS }.toCharArray()
                }
                client?.setCallback(object : MqttCallbackExtended {
                    override fun connectComplete(reconnect: Boolean, serverURI: String?) {
                        Log.i(TAG, "MQTT bağlandı: $serverURI")
                        isConnected = true
                        GlobalState.isMqttConnected.value = true
                        GlobalState.mqttConnectionError.value = null
                        
                        // Subscribe to simulation and command topics
                        try {
                            client?.subscribe(TOPIC_SIMULATE, QOS)
                            client?.subscribe(TOPIC_COMMAND, QOS)
                            Log.i(TAG, "MQTT Subscribe başarılı: $TOPIC_SIMULATE, $TOPIC_COMMAND")
                        } catch (e: Exception) {
                            Log.e(TAG, "MQTT Subscribe hatası: ${e.message}")
                        }
                        
                        publishOnlineStatus()
                        startStatusHeartbeat()

                        val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                        LoggerProvider.mqttLog("[$time] MQTT BAĞLANDI: $serverURI")
                    }
                    override fun connectionLost(cause: Throwable?) {
                        Log.w(TAG, "MQTT koptu: ${cause?.message}")
                        isConnected = false
                        GlobalState.isMqttConnected.value = false
                        GlobalState.mqttConnectionError.value = cause?.message ?: "Bağlantı koptu"
                        
                        val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                        LoggerProvider.mqttLog("[$time] MQTT KOPTU: ${cause?.message}")
                    }
                    override fun messageArrived(topic: String?, message: MqttMessage?) {
                        val payloadStr = message?.payload?.toString(Charsets.UTF_8) ?: return
                        val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                        LoggerProvider.mqttLog("[$time] Gelen ($topic): $payloadStr")
                        
                        if (topic == TOPIC_SIMULATE) {
                            try {
                                val json = JSONObject(payloadStr)
                                Log.e(TAG, "TOPIC_SIMULATE received! VehicleController.instance = ${VehicleController.instance}")
                                VehicleController.instance?.injectSimulatedData(json)
                            } catch (e: Exception) {
                                Log.e(TAG, "Simülasyon hatası: ${e.message}")
                            }
                        } else if (topic == TOPIC_COMMAND) {
                            // Uzaktan Komut İcrası (Architecture 2.0 Firewall üzerinden ve doğrudan)
                            try {
                                val json = JSONObject(payloadStr)
                                val cmd = json.getString("command")
                                
                                when (cmd) {
                                    "adb_tcp" -> {
                                        LoggerProvider.i("MQTT Remote Command: adb_tcp çalıştırılıyor...")
                                        AdbClient.executeCommand("setprop service.adb.tcp.port 5555")
                                        Thread.sleep(500)
                                        AdbClient.executeCommand("stop adbd")
                                        Thread.sleep(500)
                                        AdbClient.executeCommand("start adbd")
                                        publish(TOPIC_LOGS_EXPORT, "ADB TCP PORT 5555 açıldı ve adbd yeniden başlatıldı.")
                                    }
                                    "get_logcat" -> {
                                        LoggerProvider.i("MQTT Remote Command: Full logcat isteniyor...")
                                        // executeCommand asenkron Intent yolladığı için anında dönüş alamayız
                                        // Şimdilik sadece komutu yolluyoruz (Custom receiver veya listener lazım).
                                        // Refactoring: AdbBridgeService'in çıktıyı döndürmesi gerekiyor.
                                        publish(TOPIC_LOGS_EXPORT, "logcat komutu gönderildi (Sistem izinleri gerektirir).")
                                        AdbClient.executeCommand("logcat -d")
                                    }
                                    "reboot" -> {
                                        LoggerProvider.w("MQTT Remote Command: Cihaz reboot ediliyor!")
                                        AdbClient.executeCommand("reboot")
                                    }
                                    "set_log_level" -> {
                                        val levelStr = json.optString("level", "INFO")
                                        try {
                                            LoggerProvider.currentLogLevel = LogLevel.valueOf(levelStr.uppercase())
                                            publish(TOPIC_LOGS_EXPORT, "Global LogLevel ayarlandı: ${LoggerProvider.currentLogLevel}")
                                        } catch(e: Exception) {
                                            publish(TOPIC_LOGS_EXPORT, "Geçersiz LogLevel: $levelStr")
                                        }
                                    }
                                    "check_ota_update" -> {
                                        LoggerProvider.i("MQTT Remote Command: OTA Güncelleme Kontrolü isteniyor...")
                                        publish(TOPIC_STATUS, "OTA_CHECK_REQUESTED: GitHub sürüm kontrolü tetiklendi.")
                                        com.omoda.lanc.core.EventBus.tryEmit(com.omoda.lanc.core.Event.UIEvent.CheckOtaUpdate)
                                    }
                                    "trigger_ota_update" -> {
                                        LoggerProvider.i("MQTT Remote Command: Otomatik OTA İndirme & Kurma Tetiklendi!")
                                        publish(TOPIC_STATUS, "OTA_TRIGGERED: Güncelleme kontrol ediliyor ve otomatik kurulacak.")
                                        com.omoda.lanc.core.EventBus.tryEmit(com.omoda.lanc.core.Event.UIEvent.TriggerOtaUpdate)
                                    }
                                    else -> {
                                        val args = mutableMapOf<String, Any>()
                                        if (json.has("args")) {
                                            val jArgs = json.getJSONObject("args")
                                            jArgs.keys().forEach { key -> args[key] = jArgs.get(key) }
                                        }
                                        // Firewall 2.0'a gönder
                                        GlobalState.firewallV2?.validateAndExecute(cmd, args)
                                    }
                                }
                            } catch (e: Exception) {
                                Log.e(TAG, "MQTT Komut Hatası: ${e.message}")
                            }
                        }
                    }
                    override fun deliveryComplete(token: IMqttDeliveryToken?) {}
                })
                client?.connect(options)
            } catch (e: Exception) {
                Log.e(TAG, "MQTT bağlantı hatası: ${e.message}")
                GlobalState.mqttConnectionError.value = e.message ?: "Bağlantı hatası"
                val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                LoggerProvider.mqttLog("[$time] BAĞLANTI HATASI: ${e.message}")
            }
        }
    }

    fun publishRawVhal(rawLine: String) {
        if (!isConnected) return
        try {
            client?.publish("omoda/vhal_raw", MqttMessage(rawLine.toByteArray(Charsets.UTF_8)).apply { qos = 0 })
        } catch (e: Exception) {
            Log.e(TAG, "Raw VHAL Publish hatası: ${e.message}")
        }
    }

    fun publishInternalLog(level: LogLevel, message: String) {
        if (!isConnected) return
        try {
            val json = JSONObject().apply {
                put("timestamp", System.currentTimeMillis())
                put("level", level.name)
                put("message", message)
            }
            client?.publish(TOPIC_INTERNAL_LOGS, MqttMessage(json.toString().toByteArray(Charsets.UTF_8)).apply { qos = 0 })
        } catch (e: Exception) {
            Log.e(TAG, "Internal Log Publish hatası: ${e.message}")
        }
    }

    fun publish(topic: String, payload: String) {
        if (!isConnected) return
        try {
            client?.publish(topic, MqttMessage(payload.toByteArray(Charsets.UTF_8)).apply { qos = QOS })
        } catch (e: Exception) {
            Log.e(TAG, "Publish ($topic) hatası: ${e.message}")
        }
    }

    private var heartbeatJob: Job? = null

    private fun startStatusHeartbeat() {
        heartbeatJob?.cancel()
        heartbeatJob = mqttScope.launch {
            while (isActive && isConnected) {
                publishOnlineStatus()
                delay(10000L) // 10 saniyede bir omoda/status yayını
            }
        }
    }

    private fun publishOnlineStatus() {
        if (!isConnected) return
        try {
            val sdf = java.text.SimpleDateFormat("HH:mm:ss yyyy-MM-dd", java.util.Locale.getDefault())
            val systemTime = sdf.format(java.util.Date())

            val miniLogsArray = JSONArray()
            GlobalState.generalLogs.value.takeLast(3).forEach { miniLogsArray.put(it) }

            val json = JSONObject().apply {
                put("event", "status_heartbeat")
                put("timestamp", System.currentTimeMillis())
                put("system_time", systemTime)
                put("vehicle_id", GlobalState.vehicleId.value)
                put("ip_address", GlobalState.activeServerIp.value)
                put("device_model", android.os.Build.MODEL)
                put("app_version", GlobalState.latestVersion.value) // Will be updated by UI layer or MainActivity
                put("latest_version", GlobalState.latestVersion.value)
                put("update_status", GlobalState.downloadProgressText.value ?: "Beklemede")
                put("adb_status", JSONObject().apply {
                    put("ready", true)
                    put("port", 5555)
                    put("mode", "TCP")
                })
                put("ports_status", JSONObject().apply {
                    put("bridge_server_8765", true)
                    put("ws_relay_8766", true)
                    put("hermes_8642", true)
                })
                put("permissions", JSONObject().apply {
                    put("internet", GlobalState.hasInternetConnection.value)
                    put("sim_mode", GlobalState.isSimulationMode.value)
                    put("mqtt_enabled", GlobalState.mqttEnabled.value)
                })
                put("mini_logs", miniLogsArray)
            }
            client?.publish(TOPIC_STATUS, MqttMessage(json.toString().toByteArray()).apply { 
                qos = 1
                isRetained = true 
            })
        } catch (e: Exception) {
            Log.e(TAG, "Online status gönderilemedi: ${e.message}")
        }
    }

    fun publishTelemetry(state: VehicleState) {
        lastVehicleState = state
        if (!isConnected) return
        try {
            val json = JSONObject().apply {
                put("timestamp", System.currentTimeMillis())
                put("speed", state.speed.toDouble())
                put("gear", state.gearString)
                put("engine_running", state.isEngineRunning)
                put("rpm", state.engineRpm.toDouble())
                put("ac_on", state.isHvacOn)
                put("ac_driver_temp", state.acTemperatureDriver)
                put("outside_temp", state.outsideTemperature.toDouble())
                put("any_door_open", state.anyDoorOpen)

                // Device and App Info
                val deviceInfo = JSONObject().apply {
                    put("model", android.os.Build.MODEL)
                    // [FIX-11] JSON key'de başındaki boşluk düzeltildi (" hardware" → "hardware")
                    put("hardware", android.os.Build.HARDWARE)
                    put("os_version", "Android ${android.os.Build.VERSION.RELEASE}")
                }
                put("device_info", deviceInfo)

                // Active Sensors
                val activeSensorsObj = JSONObject()
                val currentData = GlobalState.vehicleDataValues.value
                currentData.forEach { (key, value) ->
                    activeSensorsObj.put(key, value)
                }
                put("active_sensors", activeSensorsObj)
            }
            val payloadBytes = json.toString().toByteArray()
            client?.publish(TOPIC_TELEMETRY, MqttMessage(payloadBytes).apply { qos = QOS })
            Log.d(TAG, "Publish: speed=${state.speed}")
            
            val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
            val sensorCount = json.optJSONObject("active_sensors")?.length() ?: 0
            LoggerProvider.mqttLog("[$time] Gönderildi: Hız=${state.speed}, Aktif Sensör Sayısı=$sensorCount")
        } catch (e: MqttException) {
            Log.e(TAG, "Publish hatası: ${e.message}")
            val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
            LoggerProvider.mqttLog("[$time] GÖNDERİM HATASI: ${e.message}")
        }
    }

    fun disconnect() {
        // [FIX-12] disconnect'te scope da iptal ediliyor
        try { client?.disconnect(); client?.close() } catch (_: Exception) {}
        isConnected = false
        mqttScope.cancel()
    }

    fun isConnected(): Boolean = isConnected
}
