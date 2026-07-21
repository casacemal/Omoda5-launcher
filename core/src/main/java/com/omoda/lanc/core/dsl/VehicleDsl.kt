package com.omoda.lanc.core.dsl

import com.omoda.lanc.model.VehicleState

/**
 * Architecture 2.0: Vehicle Capability DSL (MASTER VERSION)
 */

@DslMarker
annotation class VehicleDslMarker

enum class DataType { INT, FLOAT, STRING, BOOLEAN }

data class PropertyDefinition(
    var id: String = "",
    var zones: Map<Int, String> = mapOf(0 to ""), // Zone ID -> Specific Label Suffix
    var type: DataType = DataType.INT,
    var unit: String? = null,
    var label: String = "",
    var pollingTier: Int = 10,
    var conversion: ((String) -> String)? = null,
    var rawConversion: ((String) -> Any)? = null
) {
    var zone: Int
        get() = zones.keys.firstOrNull() ?: 0
        set(value) { zones = mapOf(value to "") }
}

@VehicleDslMarker
class HvacBuilder {
    var power = PropertyDefinition()
    var tempDriver = PropertyDefinition()
    var tempPassenger = PropertyDefinition()
    var fanSpeed = PropertyDefinition()
    var acMode = PropertyDefinition()

    fun power(block: PropertyDefinition.() -> Unit) { power = PropertyDefinition().apply(block) }
    fun tempDriver(block: PropertyDefinition.() -> Unit) { tempDriver = PropertyDefinition().apply(block) }
    fun tempPassenger(block: PropertyDefinition.() -> Unit) { tempPassenger = PropertyDefinition().apply(block) }
    fun fanSpeed(block: PropertyDefinition.() -> Unit) { fanSpeed = PropertyDefinition().apply(block) }
    fun acMode(block: PropertyDefinition.() -> Unit) { acMode = PropertyDefinition().apply(block) }
}

@VehicleDslMarker
class VehicleCapabilityBuilder {
    val properties = mutableMapOf<String, PropertyDefinition>()
    var hvac = HvacBuilder()
    val automationRules = mutableListOf<AutomationRule>()

    fun property(name: String, block: PropertyDefinition.() -> Unit) {
        val prop = PropertyDefinition().apply(block)
        properties[name] = prop
    }

    fun hvac(block: HvacBuilder.() -> Unit) {
        hvac = HvacBuilder().apply(block)
    }

    fun automation(block: AutomationBuilder.() -> Unit) {
        val builder = AutomationBuilder().apply(block)
        automationRules.addAll(builder.rules)
    }
}

data class VehiclePlatform(
    val name: String,
    val capabilities: Map<String, PropertyDefinition>,
    val hvac: HvacBuilder,
    val automations: List<AutomationRule>
)

fun vehiclePlatform(name: String, block: VehicleCapabilityBuilder.() -> Unit): VehiclePlatform {
    val builder = VehicleCapabilityBuilder().apply(block)
    return VehiclePlatform(name, builder.properties, builder.hvac, builder.automationRules)
}
