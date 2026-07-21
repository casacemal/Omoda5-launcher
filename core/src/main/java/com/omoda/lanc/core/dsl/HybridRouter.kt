package com.omoda.lanc.core.dsl

import android.content.Context
import android.util.Log

/**
 * Architecture 2.0: Hybrid Router
 * Komutu önce DSL üzerinden yerel olarak eşleştirmeyi dener (Offline),
 * eşleşme yoksa LLM'e (Hermes) paslar.
 */
class HybridRouter(
    private val context: Context,
    private val firewall: FirewallV2,
    private val toolRegistry: List<ToolDefinition>
) {
    companion object {
        private const val TAG = "HybridRouter"
    }

    /**
     * Kullanıcı metnini analiz eder ve aksiyonu icra eder.
     * @return İşlem sonucu mesajı
     */
    fun analyzeAndExecute(text: String): String? {
        Log.d(TAG, "Girdi Analizi: $text")

        // 1. Çevrimdışı DSL Eşleşmesi (Regex)
        val match = CommandMatcher.match(text, toolRegistry)
        if (match != null) {
            Log.i(TAG, "YEREL EŞLEŞME: ${match.tool.name}")
            return firewall.validateAndExecute(match.tool.name, match.args)
        }

        // 2. Eşleşme yoksa null döner (AgentManager bunu LLM'e göndermeli)
        Log.d(TAG, "Yerel eşleşme bulunamadı, LLM'e devrediliyor.")
        return null
    }
}
