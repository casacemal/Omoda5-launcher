package com.omoda.lanc.core.dsl

import android.util.Log

/**
 * Architecture 2.0: Offline Command Matcher
 * DSL'de tanımlanan "offlinePhrases" kalıplarını metinle eşleştirir.
 */
object CommandMatcher {
    private const val TAG = "CommandMatcher"

    /**
     * Kullanıcı metnini (text) DSL'deki komutlarla eşleştirir.
     * Parametreleri (örn: sıcaklık değeri) ayıklar.
     */
    fun match(text: String, registry: List<ToolDefinition>): MatchResult? {
        val lowerText = text.lowercase().trim()
        
        for (tool in registry) {
            for (phrase in tool.offlinePhrases) {
                val pattern = phraseToRegex(phrase)
                val match = pattern.find(lowerText)
                
                if (match != null) {
                    val args = mutableMapOf<String, Any>()
                    // Parametreleri ayıkla
                    tool.parameters.forEach { param ->
                        try {
                            val value = match.groups[param.name]?.value
                            if (value != null) {
                                args[param.name] = when (param.type) {
                                    ParamType.NUMBER -> value.toDouble()
                                    ParamType.INTEGER -> value.toInt()
                                    ParamType.BOOLEAN -> value.toBoolean()
                                    ParamType.STRING -> value
                                }
                            }
                        } catch (e: Exception) {
                            Log.w(TAG, "Parametre ayıklama hatası: ${param.name}")
                        }
                    }
                    return MatchResult(tool, args)
                }
            }
        }
        return null
    }

    private fun phraseToRegex(phrase: String): Regex {
        // "{temp}" gibi yapıları "(?<temp>\d+)" gibi regex gruplarına dönüştürür
        var regexStr = phrase.lowercase()
        val paramRegex = Regex("\\{(\\w+)\\}")
        
        paramRegex.findAll(phrase).forEach { match ->
            val paramName = match.groupValues[1]
            // Basitçe sayısal veya kelime grubuna çevir
            regexStr = regexStr.replace("{$paramName}", "(?<$paramName>\\d+\\.?\\d*|\\w+)")
        }
        
        return Regex(".*$regexStr.*")
    }

    data class MatchResult(
        val tool: ToolDefinition,
        val args: Map<String, Any>
    )
}
