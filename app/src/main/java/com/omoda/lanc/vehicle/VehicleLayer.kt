package com.omoda.lanc.vehicle

import android.content.Context
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.model.VehicleState
import kotlinx.coroutines.*

/**
 * Vehicle Layer - PDF Plan v2.0
 * Veri çekme ve olay dağıtım katmanı.
 */
class VehicleLayer(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val vehicleProvider = VehicleProvider(context)
    private var trackingJob: Job? = null

    init {
        startTracking()
    }

    private fun startTracking() {
        trackingJob?.cancel()
        trackingJob = scope.launch(Dispatchers.IO) {
            while (isActive) {
                val speed = vehicleProvider.getSpeed()
                val gear = vehicleProvider.getGear()
                val fuel = vehicleProvider.getFuelLevel()
                val isEngineRunning = vehicleProvider.isEngineRunning()
                val isDoorOpen = vehicleProvider.isAnyDoorOpen()
                
                val state = VehicleState(
                    speed = speed,
                    gear = gear,
                    fuelLevel = fuel,
                    isEngineRunning = isEngineRunning,
                    anyDoorOpen = isDoorOpen
                )
                
                // Merkezi EventBus üzerinden duyur
                EventBus.emit(Event.VehicleEvent.StateUpdated(state))
                EventBus.emit(Event.VehicleEvent.SpeedChanged(speed))
                
                delay(1000) // 1 saniye bekle
            }
        }
    }

    fun stopTracking() {
        trackingJob?.cancel()
        trackingJob = null
    }
}
