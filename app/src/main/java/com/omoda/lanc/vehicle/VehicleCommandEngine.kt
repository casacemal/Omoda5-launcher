package com.omoda.lanc.vehicle

import com.omoda.lanc.core.CommandTarget
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

/**
 * VehicleCommandEngine: Kural tabanlı araç komutlarını yürütür.
 * CommandRouter tarafından VEHICLE hedefine yönlendirilen komutları çalıştırır.
 * LLM KULLANILMAZ, tamamen kurallarla çalışır.
 */
class VehicleCommandEngine(private val scope: CoroutineScope) {

    // Araç komut eşleme haritası (anahtar kelime -> eylem)
    private val commandMap = mapOf(
        // Klima komutları
        "klima:aç" to "climate_on",
        "klima:kapat" to "climate_off",
        "klima:soğut" to "climate_cool",
        "klima:ısıt" to "climate_heat",

        // Kapı komutları
        "kapı:kilitle" to "door_lock",
        "kapı:aç" to "door_unlock",

        // Cam komutları
        "cam:aç" to "window_open",
        "cam:kapat" to "window_close",

        // Koltuk komutları
        "koltuk:ısıtma" to "seat_heat",
        "koltuk:soğutma" to "seat_cool"
    )

    init {
        observeCommands()
    }

    private fun observeCommands() {
        scope.launch(Dispatchers.Default) {
            EventBus.events.collectLatest { event ->
                if (event is Event.CommandEvent.RouteDecided && event.target == CommandTarget.VEHICLE) {
                    executeCommand(event.text)
                }
            }
        }
    }

    private suspend fun executeCommand(originalText: String) {
        val lowerText = originalText.lowercase().trim()
        var matchedAction: String? = null

        for ((key, action) in commandMap) {
            val parts = key.split(":")
            if (parts.size == 2 && lowerText.contains(parts[0]) && lowerText.contains(parts[1])) {
                matchedAction = action
                break
            }
        }

        if (matchedAction != null) {
            // Gerçek araç komutu yürütme mantığı buraya gelecek
            EventBus.emit(Event.CommandEvent.VehicleCommandExecuted(matchedAction, true))
        } else {
            EventBus.emit(Event.CommandEvent.VehicleCommandExecuted(originalText, false))
        }
    }
}
