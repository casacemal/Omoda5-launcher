package com.omoda.lanc.mqtt

import com.omoda.lanc.core.GlobalState
import org.json.JSONObject

class MqttTelemetryBridge(private val mqttPublisher: MqttPublisher) {
    private val vehicleId get() = GlobalState.vehicleId.value

    fun publishTelemetry(state: com.omoda.lanc.model.VehicleState) {
        mqttPublisher.publishTelemetry(state)
    }

    fun publishClimateState(isOn: Boolean, tempDriver: Float, tempPassenger: Float, fanSpeed: Int) {
        mqttPublisher.publish("omoda5/$vehicleId/climate/state", JSONObject().apply {
            put("is_on", isOn)
            put("temp_driver", tempDriver)
            put("temp_passenger", tempPassenger)
            put("fan_speed", fanSpeed)
        }.toString())
    }

    fun publishMediaState(title: String, artist: String, isPlaying: Boolean) {
        mqttPublisher.publish("omoda5/$vehicleId/media/state", JSONObject().apply {
            put("title", title)
            put("artist", artist)
            put("is_playing", isPlaying)
        }.toString())
    }

    fun publishSpeech(text: String) {
        mqttPublisher.publish("omoda5/$vehicleId/assistant/speech", JSONObject().apply {
            put("text", text)
            put("timestamp", System.currentTimeMillis() / 1000)
        }.toString())
    }
}
