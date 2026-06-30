package com.omoda.lanc.core

import com.omoda.lanc.model.VehicleState
import java.util.UUID

// PDF Plan v2.0 Uyumlu Kapsamlı Event Yapısı
sealed class Event {

    // 1. Araç Veri Olayları
    sealed class VehicleEvent : Event() {
        data class StateUpdated(val state: VehicleState) : VehicleEvent()
        data class SpeedChanged(val speed: Float) : VehicleEvent()
        data class GearChanged(val gear: String) : VehicleEvent()
        data class DoorStateChanged(val open: Boolean) : VehicleEvent()
        object LowFuel : VehicleEvent()
        object TirePressureLow : VehicleEvent()
    }

    // 2. Sesli Asistan Olayları
    sealed class VoiceEvent : Event() {
        object RecordingStarted : VoiceEvent()
        object RecordingStopped : VoiceEvent()
        data class SttResult(val text: String) : VoiceEvent()
    }

    // 3. AI / Hermes Olayları
    sealed class AIEvent : Event() {
        data class ResponseReceived(val text: String) : AIEvent()
        object TTSStarted : AIEvent()
        object TTSCompleted : AIEvent()
    }

    // 4. Bağlam ve Sistem Olayları
    sealed class SystemEvent : Event() {
        data class ContextChanged(val context: DrivingContext) : SystemEvent()
        data class ProfileChanged(val profile: String) : SystemEvent()
        data class HardKeyPressed(val keyCode: Int) : SystemEvent()
        object ConfigUpdated : SystemEvent()
    }

    // 5. Uyarı Olayları (Alert Engine)
    sealed class AlertEvent : Event() {
        data class Triggered(val alert: Alert) : AlertEvent()
        data class Dismissed(val alertId: String) : AlertEvent()
    }

    // 6. Komut Yönlendirme Olayları
    sealed class CommandEvent : Event() {
        data class RouteDecided(val text: String, val target: CommandTarget) : CommandEvent()
        data class VehicleCommandExecuted(val command: String, val success: Boolean) : CommandEvent()
        data class HomeAssistantCommandSent(val command: String) : CommandEvent()
    }

    // 7. UI ve Overlay Olayları
    sealed class UIEvent : Event() {
        object ShowOverlay : UIEvent()
        object HideOverlay : UIEvent()
        data class UpdateOverlayState(val text: String, val color: Int? = null) : UIEvent()
        data class UpdateOverlayAmplitude(val amplitude: Int) : UIEvent()
    }
    // 8. Sürüş Analiz Olayları
    sealed class AnalysisEvent : Event() {
        data class TripStarted(val startTime: Long) : AnalysisEvent()
        data class TripEnded(val summary: DrivingSummary) : AnalysisEvent()
    }
}

// Veri Modelleri
enum class DrivingContext {
    PARKED, CITY, HIGHWAY, TRAFFIC, RISK, UNKNOWN
}

enum class CommandTarget {
    VEHICLE, HOME_ASSISTANT, AI, UNKNOWN
}

enum class AlertPriority {
    CRITICAL, IMPORTANT, INFORMATIONAL, CONVERSATION
}

data class Alert(
    val id: String = UUID.randomUUID().toString(),
    val priority: AlertPriority,
    val message: String,
    val timestamp: Long = System.currentTimeMillis()
)

data class DrivingSummary(
    val durationMin: Int,
    val distanceKm: Float,
    val avgSpeed: Float,
    val hardBrakeCount: Int,
    val score: Int
)
