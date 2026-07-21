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

class MqttPublisher(
    private var brokerUrl: String = "tcp://192.168.1.14:1883",
    private val clientId: String = "omoda5-assistant-" + java.util.UUID.randomUUID().toString().substring(0, 5),
    private val mqttUser: String = "mqtthome",
    private val mqttPass: String = "4078"
) {
    companion object {
        private const val TAG = "MQTT-Publisher"
        private const val TOPIC_TELEMETRY = "omoda/telemetri"
        private const val TOPIC_COMMAND = "omoda/komut"
        private const val TOPIC_STATUS = "omoda/status"
        private const val TOPIC_SIMULATE = "omoda/simulate"
        private const val QOS = 1
    }

    private var client: MqttClient? = null
    private var lastVehicleState: VehicleState? = null
    @Volatile private var isConnected = false

    fun updateBrokerUrl(newIp: String) {
        val cleanedIp = newIp.trim().replace("\r", "").replace("\n", "")
        brokerUrl = "tcp://$cleanedIp:1883"
    }

    fun connect() {
        Thread {
            try {
                client = MqttClient(brokerUrl, clientId, MemoryPersistence())
                val options = MqttConnectOptions().apply {
                    isCleanSession = true
                    connectionTimeout = 10
                    keepAliveInterval = 30
                    isAutomaticReconnect = true
                    userName = mqttUser
                    password = mqttPass.toCharArray()
                }
                client?.setCallback(object : MqttCallbackExtended {
                    override fun connectComplete(reconnect: Boolean, serverURI: String?) {
                        Log.i(TAG, "MQTT bağlandı: $serverURI")
                        isConnected = true
                        GlobalState.isMqttConnected.value = true
                        
                        // Subscribe to simulation and command topics
                        client?.subscribe(TOPIC_SIMULATE, QOS)
                        client?.subscribe(TOPIC_COMMAND, QOS)
                        
                        publishOnlineStatus()

                        val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                        LoggerProvider.mqttLog("[$time] MQTT BAĞLANDI: $serverURI")
                    }
                    override fun connectionLost(cause: Throwable?) {
                        Log.w(TAG, "MQTT koptu: ${cause?.message}")
                        isConnected = false
                        GlobalState.isMqttConnected.value = false
                        
                        val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                        LoggerProvider.mqttLog("[$time] MQTT KOPTU: ${cause?.message}")
                    }
                    override fun messageArrived(topic: String?, message: MqttMessage?) {
                        val payloadStr = message?.payload?.toString(Charsets.UTF_8) ?: return
                        val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                        LoggerProvider.mqttLog("[$time] Gelen ($topic): $payloadStr")
                        
                        if (topic == TOPIC_SIMULATE) {
                            if (!GlobalState.isSimulationMode.value) return
                            try {
                                val json = JSONObject(payloadStr)
                                VehicleController.instance?.injectSimulatedData(json)
                            } catch (e: Exception) {
                                Log.e(TAG, "Simülasyon hatası: ${e.message}")
                            }
                        } else if (topic == TOPIC_COMMAND) {
                            // Uzaktan Komut İcrası (Architecture 2.0 Firewall üzerinden)
                            try {
                                val json = JSONObject(payloadStr)
                                val cmd = json.getString("command")
                                val args = mutableMapOf<String, Any>()
                                if (json.has("args")) {
                                    val jArgs = json.getJSONObject("args")
                                    jArgs.keys().forEach { key -> args[key] = jArgs.get(key) }
                                }
                                // Firewall 2.0'a gönder
                                GlobalState.firewallV2?.validateAndExecute(cmd, args)
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
                val time = java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())
                LoggerProvider.mqttLog("[$time] BAĞLANTI HATASI: ${e.message}")
            }
        }.start()
    }

    fun publishRawVhal(rawLine: String) {
        if (!isConnected) return
        try {
            client?.publish("omoda/vhal_raw", MqttMessage(rawLine.toByteArray(Charsets.UTF_8)).apply { qos = 0 })
        } catch (e: Exception) {
            Log.e(TAG, "Raw VHAL Publish hatası: ${e.message}")
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

    private fun publishOnlineStatus() {
        try {
            val json = JSONObject().apply {
                put("event", "online")
                put("timestamp", System.currentTimeMillis())
                put("vehicle_id", GlobalState.vehicleId.value)
                put("app_version", "6.0.0")
                put("device", android.os.Build.MODEL)
                put("message", "Omoda 5 Asistan Sistemi Hazır ve Buradayım")
                put("status", JSONObject().apply {
                    put("internet", GlobalState.hasInternetConnection.value)
                    put("bridge_mode", GlobalState.isBridgeMode.value)
                    put("sim_mode", GlobalState.isSimulationMode.value)
                })
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
                    put(" hardware", android.os.Build.HARDWARE)
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
        try { client?.disconnect(); client?.close() } catch (_: Exception) {}
        isConnected = false
    }

    fun isConnected(): Boolean = isConnected
}
