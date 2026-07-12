package com.omoda.lanc.core

import com.omoda.lanc.model.VehicleState

class PolicyEngine {
    private var lastState = VehicleState()

    fun updateState(state: VehicleState) {
        if (state.speed > 80f && lastState.speed <= 80f) {
            LoggerProvider.log("POLİTİKA: Yüksek hız algılandı, dikkatli olun.")
        }
        if (state.isEngineRunning && !lastState.isEngineRunning) {
            LoggerProvider.log("POLİTİKA: Motor çalıştı.")
        }
        lastState = state
    }
}
