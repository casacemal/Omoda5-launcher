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
        "set_hvac_temp",
        "set_hvac_ac",
        "set_hvac_fan",
        "set_window_position",
        "install_app",
        "uninstall_app"
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
                "set_hvac_fan" -> {
                    val value = args.optInt("value", -1)
                    if (value !in 1..7) {
                        return "Error: Invalid fan speed. Must be between 1 and 7."
                    }
                }
                "set_hvac_ac" -> {
                    val value = args.optInt("value", -1)
                    if (value != 0 && value != 1) {
                        return "Error: Invalid AC value. Must be 0 or 1."
                    }
                }
                "set_brightness" -> {
                    val level = args.optInt("level", -1)
                    if (level !in 0..255) {
                        return "Error: Invalid brightness level. Must be between 0 and 255."
                    }
                }
                "set_window_position" -> {
                    val position = args.optInt("position", -1)
                    if (position !in 0..100) {
                        return "Error: Invalid position. Must be between 0 and 100."
                    }
                    
                    // SÜRÜŞ GÜVENLİĞİ: Araç hareket halindeyken cam veya sunroof kontrolünü engelle
                    val currentSpeed = VehicleController.getInstance(context).getVehicleState().speed
                    if (currentSpeed > 5f) {
                        Log.e(TAG, "SÜRÜŞ ENGELLİ: Hız ${currentSpeed} km/h iken camlar kontrol edilemez!")
                        EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Sürüşte Cam/Sunroof Engelli!", android.graphics.Color.RED))
                        return "Error: Windows and sunroof cannot be operated while driving for safety reasons."
                    }
                }
                "install_app" -> {
                    val apkPath = args.optString("apk_path")
                    // Güvenli klasör kontrolü: Sadece /data/local/tmp veya external files dizininden kuruluma izin ver
                    if (!apkPath.startsWith("/data/local/tmp") && !apkPath.contains("/files/")) {
                        return "Error: App installation is only allowed from secure directories."
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
