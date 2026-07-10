package com.omoda.lanc.vehicle

import android.content.Context
import android.util.Log
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.model.VehicleState
import kotlinx.coroutines.*

/**
 * Vehicle Layer - Dinamik Ayar Odaklı Polling
 */
class VehicleLayer(
    private val context: Context,
    private val scope: CoroutineScope
) {
    private val dumpsysSource = DumpsysSource()
    private var trackingJob: Job? = null
    private var tickCount = 0L

    init {
        startTracking()
    }

    private fun startTracking() {
        trackingJob?.cancel()
        trackingJob = scope.launch(Dispatchers.IO) {
            while (isActive) {
                tickCount++
                
                // 1. Ayarları al
                val config = GlobalState.vehiclePollingConfig.value
                
                // 2. Bu tick'te hangi ID'ler okunmalı?
                val idsToFetch = mutableListOf<String>()
                config.forEach { (id, interval) ->
                    if (interval > 0 && tickCount % interval == 0L) {
                        idsToFetch.add(id)
                    }
                }

                // 3. Eğer okunacak veri varsa dumpsys çalıştır
                if (idsToFetch.isNotEmpty()) {
                    val state = dumpsysSource.refreshSelected(idsToFetch)
                    
                    // 4. Güncel veriyi duyur
                    EventBus.emit(Event.VehicleEvent.StateUpdated(state))
                    
                    // Eğer hız okunduysa özel event at
                    if (idsToFetch.contains("11600207")) {
                        EventBus.emit(Event.VehicleEvent.SpeedChanged(state.speed))
                    }
                    
                    Log.d("VehicleLayer", "Fetched IDs: ${idsToFetch.joinToString()} at tick $tickCount")
                }
                
                // Her tick 1 saniye (En küçük birim)
                delay(1000)
            }
        }
    }

    fun stopTracking() {
        trackingJob?.cancel()
        trackingJob = null
    }

    fun destroy() {
        stopTracking()
    }
}
