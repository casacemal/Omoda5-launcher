package com.omoda.lanc.core.dsl

import android.content.Context
import android.util.Log
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.core.Event
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.network.AdbClient

/**
 * Architecture 2.0: Firewall V2
 * DSL tabanlı güvenlik kuralları ve komut doğrulama motoru.
 * [FIX-13] Shell injection koruması eklendi
 * [FIX-14] Sürüş güvenliği kontrolü genişletildi
 */
class FirewallV2(
    private val context: Context,
    private val toolRegistry: List<ToolDefinition>,
    private val automationRules: List<AutomationRule>
) {
    companion object {
        private const val TAG = "FirewallV2"
        // [FIX-13] Shell injection'a karşı yasaklı karakter/komut listesi
        // LLM'den gelen tool çağrısı "dumpsys rm -rf /" gibi bir string üretebilir.
        // Bu liste DSL execute bloğunun ürettiği komutları sanitize eder.
        private val FORBIDDEN_PATTERNS = listOf(
            "rm ", "rm\t", "&&", "||", ";", "|", "`", "\$(",
            ">/dev", "mkfs", "dd if=", "chmod 777", "curl ", "wget "
        )
    }

    /**
     * Gelen komutu doğrular ve DSL'deki execute bloğunu tetikler.
     */
    fun validateAndExecute(commandName: String, args: Map<String, Any>): String {
        Log.i(TAG, "Firewall Girdi: $commandName | Args: $args")

        val tool = toolRegistry.find { it.name == commandName }
        if (tool == null) {
            val error = "Error: Command '$commandName' not found in registry."
            notifyViolation(error)
            return error
        }

        // 1. Parametre Kontrolü
        tool.parameters.forEach { param ->
            if (param.required && !args.containsKey(param.name)) {
                return "Error: Missing required parameter '${param.name}'"
            }
            
            // Aralık Kontrolü (örn: sıcaklık 16-28)
            if (param.range != null) {
                val value = (args[param.name] as? Number)?.toDouble()
                if (value != null && value !in param.range) {
                    return "Error: Parameter '${param.name}' out of range (${param.range})"
                }
            }
        }

        // 2. Sürüş Güvenliği Kuralları (Hardcoded Checkpoints)
        val vehicleState = VehicleController.getInstance(context).getVehicleState()
        
        if (commandName == "set_window_position" && vehicleState.speed > 110f) {
            val reason = "Güvenlik Engeli: Yüksek hızda cam kontrolü devre dışı!"
            notifyViolation(reason)
            return "Error: $reason"
        }

        // [FIX-14] Sürüş sırasında tehlikeli komutlar için ek kontrol
        // Hız > 5 km/h iken install_app, uninstall_app gibi komutlar engellenir
        val dangerousWhileDriving = setOf("install_app", "uninstall_app", "execute_adb", "connect_vpn")
        if (commandName in dangerousWhileDriving && vehicleState.speed > 5f) {
            val reason = "Güvenlik Engeli: Sürüş sırasında '$commandName' komutu devre dışı!"
            notifyViolation(reason)
            return "Error: $reason"
        }

        // 3. DSL Execute Bloğunu Çalıştır
        return try {
            val result = tool.execute?.invoke(args) ?: "Success: No execution block"
            
            // Eğer dönen sonuç bir shell komutu gibi görünüyorsa icra et
            if (result.startsWith("dumpsys") || result.startsWith("input") || result.startsWith("am ")) {
                // [FIX-13] Shell injection kontrolü
                // DSL'in onExecute bloğu sabit string döndürüyor ama LLM tool_call
                // ile parametreleri enjekte ederse tehlikeli komut oluşabilir.
                if (containsForbiddenPattern(result)) {
                    val err = "GÜVENLİK: Tehlikeli komut deseni engellendi: $result"
                    notifyViolation(err)
                    return "Error: $err"
                }
                AdbClient.executeCommand(result)
            }

            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Onaylandı: $commandName", android.graphics.Color.GREEN))
            result
        } catch (e: Exception) {
            val err = "Execution Error: ${e.message}"
            notifyViolation(err)
            err
        }
    }

    // [FIX-13] Shell injection tespit fonksiyonu
    private fun containsForbiddenPattern(command: String): Boolean {
        val lower = command.lowercase()
        return FORBIDDEN_PATTERNS.any { pattern -> lower.contains(pattern) }
    }

    private fun notifyViolation(message: String) {
        Log.e(TAG, "GÜVENLİK İHLALİ: $message")
        EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Engellendi: $message", android.graphics.Color.RED))
    }
}
