package com.omoda.lanc.core.dsl

import com.omoda.lanc.model.VehicleState

/**
 * Architecture 2.0: Automation DSL
 * Arka plan kurallarını tanımlar.
 */

@DslMarker
annotation class AutomationDslMarker

data class AutomationRule(
    val name: String,
    val condition: (VehicleState) -> Boolean,
    val action: (VehicleState) -> Unit
)

@AutomationDslMarker
class AutomationBuilder {
    val rules = mutableListOf<AutomationRule>()

    fun rule(name: String, block: RuleBuilder.() -> Unit) {
        rules.add(RuleBuilder(name).apply(block).build())
    }
}

@AutomationDslMarker
class RuleBuilder(val name: String) {
    private var conditionBlock: ((VehicleState) -> Boolean) = { false }
    private var actionBlock: ((VehicleState) -> Unit) = {}

    fun condition(block: (VehicleState) -> Boolean) {
        conditionBlock = block
    }

    fun action(block: (VehicleState) -> Unit) {
        actionBlock = block
    }

    fun build() = AutomationRule(name, conditionBlock, actionBlock)
}

fun automations(block: AutomationBuilder.() -> Unit): List<AutomationRule> {
    return AutomationBuilder().apply(block).rules
}
