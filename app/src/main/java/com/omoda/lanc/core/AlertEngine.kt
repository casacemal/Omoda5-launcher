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

    private var lastFuelAlertTime = 0L
    private var lastDoorAlertTime = 0L
    private val ALERT_COOLDOWN_MS = 60_000L

    private fun observeVehicleEvents() {
        scope.launch(Dispatchers.Default) {
            EventBus.events.collect { event ->
                when (event) {
                    is Event.VehicleEvent.LowFuel -> {
                        if (System.currentTimeMillis() - lastFuelAlertTime > ALERT_COOLDOWN_MS) {
                            val alert = Alert(priority = AlertPriority.IMPORTANT, message = "Dikkat, yakıt seviyeniz düşüyor.")
                            EventBus.emit(Event.AlertEvent.Triggered(alert))
                            lastFuelAlertTime = System.currentTimeMillis()
                        }
                    }
                    is Event.VehicleEvent.TirePressureLow -> {
                        val alert = Alert(priority = AlertPriority.CRITICAL, message = "Acil durum! Lastik basıncı düşük. Lütfen kontrol edin.")
                        EventBus.emit(Event.AlertEvent.Triggered(alert))
                    }
                    is Event.VehicleEvent.DoorStateChanged -> {
                        if (event.open && System.currentTimeMillis() - lastDoorAlertTime > ALERT_COOLDOWN_MS) {
                            val alert = Alert(priority = AlertPriority.INFORMATIONAL, message = "Kapı açıldı.")
                            EventBus.emit(Event.AlertEvent.Triggered(alert))
                            lastDoorAlertTime = System.currentTimeMillis()
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
            if (System.currentTimeMillis() - lastDoorAlertTime > ALERT_COOLDOWN_MS) {
                val alert = Alert(priority = AlertPriority.CRITICAL, message = "Dikkat! Araç hareket halindeyken kapı açık!")
                EventBus.tryEmit(Event.AlertEvent.Triggered(alert))
                lastDoorAlertTime = System.currentTimeMillis()
            }
        }
        
        // Düşük yakıt kontrolü (eğer event tetiklenmediyse buradan da bakılabilir)
        if (state.fuelLevel in 0.1f..5.0f) {
            if (System.currentTimeMillis() - lastFuelAlertTime > ALERT_COOLDOWN_MS) {
                val alert = Alert(priority = AlertPriority.IMPORTANT, message = "Yakıt seviyesi kritik seviyede.")
                EventBus.tryEmit(Event.AlertEvent.Triggered(alert))
                lastFuelAlertTime = System.currentTimeMillis()
            }
        }
    }
}
