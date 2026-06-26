package com.omoda.lanc.core

import com.omoda.lanc.model.VehicleState

class RuleEngine(private val vehicleStateProvider: () -> VehicleState) {
    fun isCommandAllowed(command: String): Boolean = true
    
    fun isVehicleCommand(command: String): Boolean {
        // Basit bir kontrol, ileride daha karmaşık kurallar eklenebilir.
        val keywords = listOf("klima", "cam", "kapı", "ışık", "sıcaklık", "ses")
        return keywords.any { command.lowercase().contains(it) }
    }
}
