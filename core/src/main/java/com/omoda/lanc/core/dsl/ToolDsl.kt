package com.omoda.lanc.core.dsl

/**
 * Architecture 2.0: AI & Local Tool DSL
 * Hem LLM (Hermes) hem de yerel çevrimdışı komutlar için ortak registry.
 */

@DslMarker
annotation class ToolDslMarker

enum class ParamType { INTEGER, NUMBER, STRING, BOOLEAN }

data class ParameterDef(
    val name: String,
    val type: ParamType,
    val description: String = "",
    val required: Boolean = false,
    val range: ClosedRange<Double>? = null
)

@ToolDslMarker
class ToolBuilder(val name: String) {
    var description: String = ""
    val parameters = mutableListOf<ParameterDef>()
    private val localPhrases = mutableListOf<String>()
    private var executionBlock: ((Map<String, Any>) -> String)? = null

    fun parameter(
        name: String, 
        type: ParamType, 
        description: String = "", 
        required: Boolean = false,
        min: Double? = null,
        max: Double? = null
    ) {
        val range = if (min != null && max != null) min..max else null
        parameters.add(ParameterDef(name, type, description, required, range))
    }

    fun offlinePhrases(vararg phrases: String) {
        localPhrases.addAll(phrases)
    }

    fun onExecute(block: (Map<String, Any>) -> String) {
        executionBlock = block
    }

    fun build(): ToolDefinition {
        return ToolDefinition(name, description, parameters, localPhrases, executionBlock)
    }
}

data class ToolDefinition(
    val name: String,
    val description: String,
    val parameters: List<ParameterDef>,
    val offlinePhrases: List<String>,
    val execute: ((Map<String, Any>) -> String)?
)

@ToolDslMarker
class ToolRegistryBuilder {
    val tools = mutableListOf<ToolDefinition>()

    fun tool(name: String, block: ToolBuilder.() -> Unit) {
        tools.add(ToolBuilder(name).apply(block).build())
    }
}

fun toolRegistry(block: ToolRegistryBuilder.() -> Unit): List<ToolDefinition> {
    return ToolRegistryBuilder().apply(block).tools
}
