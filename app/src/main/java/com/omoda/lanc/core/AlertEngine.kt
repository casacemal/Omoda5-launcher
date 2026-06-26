package com.omoda.lanc.core

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

/**
 * AlertEngine: TPMS, yakıt, kapı gibi kritik olay uyarılarını yönetir.
 * İlgili VehicleEvent'leri dinleyerek AlertEvent'ler yayımlar.
 */
class AlertEngine(private val scope: CoroutineScope) {

    init {
        observeVehicleEvents()
    }

    private fun observeVehicleEvents() {
        scope.launch(Dispatchers.Default) {
            EventBus.events.collectLatest { event ->
                when (event) {
                    is Event.VehicleEvent.LowFuel -> {
                        val alert = Alert(priority = AlertPriority.IMPORTANT, message = "Dikkat, yakıt seviyeniz düşüyor.")
                        EventBus.emit(Event.AlertEvent.Triggered(alert))
                    }
                    is Event.VehicleEvent.TirePressureLow -> {
                        val alert = Alert(priority = AlertPriority.CRITICAL, message = "Acil durum! Lastik basıncı düşük. Lütfen kontrol edin.")
                        EventBus.emit(Event.AlertEvent.Triggered(alert))
                    }
                    is Event.VehicleEvent.DoorStateChanged -> {
                        if (event.open) {
                            val alert = Alert(priority = AlertPriority.INFORMATIONAL, message = "Kapı açıldı.")
                            EventBus.emit(Event.AlertEvent.Triggered(alert))
                        }
                    }
                    is Event.VehicleEvent.StateUpdated -> {
                        checkAnomalies(event.state)
                    }
                    else -> {}
                }
            }
        }
    }

    private fun checkAnomalies(state: com.omoda.lanc.model.VehicleState) {
        // Hız varken kapı açılması gibi anomaliler
        if (state.speed > 5f && (state.doorDriverOpen || state.doorPassengerOpen || state.doorRearLeftOpen || state.doorRearRightOpen)) {
            val alert = Alert(priority = AlertPriority.CRITICAL, message = "Dikkat! Araç hareket halindeyken kapı açık!")
            EventBus.tryEmit(Event.AlertEvent.Triggered(alert))
        }
        
        // Düşük yakıt kontrolü (eğer event tetiklenmediyse buradan da bakılabilir)
        if (state.fuelLevel > 0 && state.fuelLevel < 5.0f) {
            val alert = Alert(priority = AlertPriority.IMPORTANT, message = "Yakıt seviyesi kritik seviyede.")
            EventBus.tryEmit(Event.AlertEvent.Triggered(alert))
        }
    }
}
