package com.omoda.lanc.mqtt

import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.media.MediaBridge
import org.json.JSONObject

class MqttTelemetryBridge(private val mqttPublisher: MqttPublisher) {
    private val TAG = "MqttTelemetryBridge"
    private val vehicleId get() = AssistantApplication.vehicleId.value

    fun publishTelemetry(state: com.omoda.lanc.model.VehicleState) {
        mqttPublisher.publish("omoda5/$vehicleId/telemetry", JSONObject().apply {
            put("speed_kmh", state.speed.toInt())
            put("gear_position", state.gearString)
            put("is_hvac_on", state.isHvacOn)
            put("is_engine_running", state.isEngineRunning)
            put("timestamp", System.currentTimeMillis() / 1000)
        }.toString())
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
