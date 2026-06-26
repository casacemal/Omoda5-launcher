package com.omoda.lanc.core

import com.omoda.lanc.model.VehicleState
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

/**
 * ContextEngine: Sürüş bağlamını analiz eder.
 * PARKED, CITY, HIGHWAY, TRAFFIC, RISK modlarını üretir.
 */
class ContextEngine(private val scope: CoroutineScope) {

    private var currentContext: DrivingContext = DrivingContext.UNKNOWN

    init {
        observeVehicleState()
    }

    private fun observeVehicleState() {
        scope.launch(Dispatchers.Default) {
            EventBus.events.collectLatest { event ->
                if (event is Event.VehicleEvent.StateUpdated) {
                    val newContext = inferContext(event.state)
                    if (newContext != currentContext) {
                        currentContext = newContext
                        EventBus.emit(Event.SystemEvent.ContextChanged(newContext))
                    }
                }
            }
        }
    }

    private fun inferContext(state: VehicleState): DrivingContext {
        return when {
            state.speed > 5 && state.anyDoorOpen -> DrivingContext.RISK
            state.speed <= 2 && state.gearString == "P" -> DrivingContext.PARKED
            state.speed > 80 -> DrivingContext.HIGHWAY
            state.speed in 1.0..25.0 -> DrivingContext.TRAFFIC
            state.speed in 25.0..80.0 -> DrivingContext.CITY
            else -> DrivingContext.UNKNOWN
        }
    }

    fun getContext() = currentContext
}
