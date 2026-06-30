package com.omoda.lanc.mqtt

import android.util.Log
import com.omoda.lanc.model.VehicleState
import org.eclipse.paho.client.mqttv3.*
import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence
import org.json.JSONObject
import org.json.JSONArray

class MqttPublisher(
    private var brokerUrl: String = "tcp://homeassistant.tailnet-4f03.ts.net:1883",
    private val clientId: String = "omoda5-assistant",
    private val mqttUser: String = "mqtthome",
    private val mqttPass: String = "4078"
) {
    companion object {
        private const val TAG = "MQTT-Publisher"
        private const val TOPIC_TELEMETRY = "omoda/telemetri"
        private const val TOPIC_COMMAND = "omoda/komut"
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
                        com.omoda.lanc.AssistantApplication.isMqttConnected.value = true
                        client?.subscribe(TOPIC_COMMAND, QOS)
                        client?.subscribe("omoda/simulate", QOS)
                    }
                    override fun connectionLost(cause: Throwable?) {
                        Log.w(TAG, "MQTT koptu: ${cause?.message}")
                        isConnected = false
                        com.omoda.lanc.AssistantApplication.isMqttConnected.value = false
                    }
                    override fun messageArrived(topic: String?, message: MqttMessage?) {
                        val payloadStr = message?.payload?.toString(Charsets.UTF_8) ?: return
                        if (topic == TOPIC_COMMAND) {
                            Log.d(TAG, "Komut: $payloadStr")
                        } else if (topic == "omoda/simulate") {
                            try {
                                val json = JSONObject(payloadStr)
                                com.omoda.lanc.core.VehicleController.instance?.injectSimulatedData(json)
                            } catch (e: Exception) {
                                Log.e(TAG, "Simülasyon parse hatası: ${e.message}")
                            }
                        }
                    }
                    override fun deliveryComplete(token: IMqttDeliveryToken?) {}
                })
                client?.connect(options)
            } catch (e: Exception) {
                Log.e(TAG, "MQTT bağlantı hatası: ${e.message}")
            }
        }.start()
    }

    fun publishRawVhal(rawLine: String) {
        if (!isConnected) return
        try {
            client?.publish("omoda/vhal_raw", MqttMessage(rawLine.toByteArray(Charsets.UTF_8)).apply { qos = 0 })
        } catch (e: Exception) {}
    }

    /**
     * VehicleController tier yapısından çağrılır.
     * Her updateState çağrısında publishTelemetry çağrılır.
     * Tier 2 (2sn) → hızlı veriler (hız, vites, RPM)
     * Tier 5 (5sn) → orta veriler (yakıt, menzil, sinyal)
     * Tier 10 (10sn) → yavaş veriler (klima, sıcaklık, sürüş modu)
     */
    fun publishTelemetry(state: VehicleState) {
        lastVehicleState = state
        if (!isConnected) return
        try {
            val json = JSONObject().apply {
                put("timestamp", System.currentTimeMillis())
                put("speed", state.speed)
                put("gear", state.gearString)
                put("engine_running", state.isEngineRunning)
                put("rpm", state.engineRpm)
                put("ac_on", state.isHvacOn)
                put("ac_driver_temp", state.acTemperatureDriver)
                put("ac_passenger_temp", state.acTemperaturePassenger)
                put("outside_temp", state.outsideTemperature)
                put("any_door_open", state.anyDoorOpen)
                put("door_driver", state.doorDriverOpen)
                put("door_passenger", state.doorPassengerOpen)
                put("door_rear_left", state.doorRearLeftOpen)
                put("door_rear_right", state.doorRearRightOpen)
                put("trunk_open", state.trunkOpen)
                put("turn_signal_left", state.turnSignalLeft)
                put("turn_signal_right", state.turnSignalRight)
                put("ac_sync", state.acSync)
                put("driving_mode", state.drivingMode)
                put("parking_brake", state.parkingBrake)
                put("headlights", state.headlights)
                put("fuel_level", state.fuelLevel)
                put("range_km", state.rangeKm)
                put("odometer", state.odometer)

                // Cihaz ve Uygulama Bilgileri
                val deviceInfo = JSONObject().apply {
                    put("model", android.os.Build.MODEL)
                    put("hardware", android.os.Build.HARDWARE)
                    put("os_version", "Android ${android.os.Build.VERSION.RELEASE}")
                    put("serial_no", "0123459876")
                    
                    val apps = JSONArray().apply {
                        put("Haritalar(com.google.android.apps.maps)")
                        put("Tarayıcı(com.vivaldi.browser)")
                        put("Müzik(in.krosbits.musicolet)")
                        put("Radyo(idu.com.radio.radyoturk)")
                        put("YouTube(by.green.tuber)")
                        put("Ayarlar(com.android.settings)")
                    }
                    put("installed_apps", apps)
                }
                put("device_info", deviceInfo)

                // Tüm aktif/dinamik sensörleri ve isimlerini de JSON'a ekle
                val activeSensorsObj = JSONObject()
                val currentData = com.omoda.lanc.AssistantApplication.vehicleDataValues.value
                currentData.forEach { (propId, value) ->
                    val name = com.omoda.lanc.core.VehicleController.PROPERTY_DEFINITIONS[propId]?.label 
                               ?: com.omoda.lanc.core.SensorDictionary.ALL_SENSORS[propId] 
                               ?: propId
                    activeSensorsObj.put(name, value)
                }
                put("active_sensors", activeSensorsObj)
            }
            client?.publish(TOPIC_TELEMETRY, MqttMessage(json.toString().toByteArray()).apply { qos = QOS })
            Log.d(TAG, "Publish: speed=${state.speed}")
        } catch (e: MqttException) {
            Log.e(TAG, "Publish hatası: ${e.message}")
        }
    }

    fun disconnect() {
        try { client?.disconnect(); client?.close() } catch (_: Exception) {}
        isConnected = false
    }

    fun isConnected(): Boolean = isConnected
}
