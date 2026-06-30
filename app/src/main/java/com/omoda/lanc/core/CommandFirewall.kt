package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import org.json.JSONObject

/**
 * Command Firewall (Merkezi Karar Birimi)
 * LLM'den veya dışarıdan gelen tüm eylem (action) çağrıları buradan geçmek ZORUNDADIR.
 * Güvenlik amacıyla whitelist dışında kalan hiçbir komut işletilmez.
 */
class CommandFirewall(private val context: Context, private val actionExecutor: ActionExecutor) {
    private val TAG = "CommandFirewall"
    
    // Yalnızca bu listedeki komutların ActionExecutor'a geçmesine izin verilir.
    private val allowedCommands = setOf(
        "open_app",
        "set_volume",
        "media_control",
        "media_play_pause",
        "media_next",
        "media_previous",
        "set_brightness",
        "get_vehicle_property",
        "hvac_on",
        "hvac_off",
        "simulate_hvac_touch",
        "set_hvac_temp"
        // NOT: "execute_adb", "connect_vpn", "disconnect_vpn", "fix_system_time" bilerek whitelist dışı bırakılmıştır.
    )


    fun validateAndExecute(functionName: String, argumentsJson: String): String {
        Log.i(TAG, "Gelen İstek: $functionName | Args: $argumentsJson")

        if (!allowedCommands.contains(functionName)) {
            Log.e(TAG, "GÜVENLİK İHLALİ: Engellenen Komut -> $functionName")
            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Engellendi: $functionName", android.graphics.Color.RED))
            return "Error: Command '$functionName' is not allowed by Firewall."
        }

        // Parametre seviyesinde güvenlik doğrulaması (Validation)
        try {
            val args = if (argumentsJson.isBlank()) JSONObject() else JSONObject(argumentsJson)
            
            when (functionName) {
                "set_volume" -> {
                    val level = args.optInt("volume_level", -1)
                    if (level !in 0..15) {
                        return "Error: Invalid volume level. Must be between 0 and 15."
                    }
                }
                "set_hvac_temp" -> {
                    val temp = args.optDouble("temperature", -1.0)
                    if (temp < 16.0 || temp > 28.0) {
                        return "Error: Invalid temperature. Must be between 16.0 and 28.0."
                    }
                }
                "set_brightness" -> {
                    val level = args.optInt("level", -1)
                    if (level !in 0..255) {
                        return "Error: Invalid brightness level. Must be between 0 and 255."
                    }
                }
            }
            
            // Doğrulama başarılı, komutu yürüt
            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("İzin Verildi: $functionName", android.graphics.Color.GREEN))
            return actionExecutor.execute(functionName, argumentsJson)
            
        } catch (e: Exception) {
            Log.e(TAG, "Doğrulama hatası: ${e.message}")
            EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Doğrulama Hatası: $functionName", android.graphics.Color.RED))
            return "Error: Firewall validation failed - ${e.message}"
        }
    }
}
