package com.omoda.lanc.core

import android.content.Context
import android.media.AudioManager
import android.util.Log
import com.omoda.lanc.media.MediaBridge
import com.omoda.lanc.mqtt.MqttTelemetryBridge
import com.omoda.lanc.network.AdbClient
import org.json.JSONObject

/**
 * Sürüm 5.0: Omega Edition - Aksiyon Yürütücü
 * Prensip: Sadece ADB (Shell) ve Standart Android API'leri kullanılır.
 */
class ActionExecutor(
    private val context: Context,
    private val mqttTelemetryBridge: MqttTelemetryBridge? = null
) {

    companion object {
        private const val TAG = "ActionExecutor"
    }

    private fun executeShellCommand(command: String): String {
        Log.d(TAG, "Shell komutu: $command")
        AdbClient.executeCommand(command)
        return "Command sent to AdbClient"
    }

    internal fun execute(functionName: String, argumentsJson: String): String {
        Log.i(TAG, "Aksiyon: $functionName | Args: $argumentsJson")
        return try {
            val args = if (argumentsJson.isBlank()) JSONObject() else JSONObject(argumentsJson)

            when (functionName) {
                // KLİMA KONTROLÜ (Dumpsys Tabanlı)
                "hvac_on" -> {
                    executeShellCommand("dumpsys car_service set-property-value 0x15400500 0 1") // Power
                    executeShellCommand("dumpsys car_service set-property-value 0x15600502 0 1") // AC
                    executeShellCommand("input tap 500 900") // Visual Trigger
                    "Success: HVAC and AC turned ON via Dumpsys"
                }
                "hvac_off" -> {
                    executeShellCommand("dumpsys car_service set-property-value 0x15400500 0 0") // Power
                    executeShellCommand("dumpsys car_service set-property-value 0x15600502 0 0") // AC
                    "Success: HVAC and AC turned OFF via Dumpsys"
                }
                "simulate_hvac_touch" -> {
                    val x = args.optInt("x", 500)
                    val y = args.optInt("y", 900)
                    executeShellCommand("input tap $x $y")
                    "Success: HVAC tap simulation at ($x, $y)"
                }

                // KLİMA AC GÜCÜ (VHAL)
                "set_hvac_ac" -> {
                    val value = args.optInt("value", 1) // 1 = Açık, 0 = Kapalı
                    executeShellCommand("dumpsys car_service set-property-value 0x15600502 0 $value")
                    val state = VehicleController.getInstance(context).getVehicleState()
                    mqttTelemetryBridge?.publishClimateState(
                        isOn = state.isHvacOn,
                        tempDriver = state.acTemperatureDriver.toFloat(),
                        tempPassenger = state.acTemperaturePassenger.toFloat(),
                        fanSpeed = state.acFanSpeed
                    )
                    "Success: HVAC AC set to $value"
                }

                // KLİMA FAN HIZI (VHAL)
                "set_hvac_fan" -> {
                    val value = args.optInt("value", 3).coerceIn(1, 7)
                    executeShellCommand("dumpsys car_service set-property-value 0x1560050a 0 $value")
                    val state = VehicleController.getInstance(context).getVehicleState()
                    mqttTelemetryBridge?.publishClimateState(
                        isOn = state.isHvacOn,
                        tempDriver = state.acTemperatureDriver.toFloat(),
                        tempPassenger = state.acTemperaturePassenger.toFloat(),
                        fanSpeed = value
                    )
                    "Success: HVAC Fan Speed set to $value"
                }

                // SES KONTROLÜ (Android Standart API)
                "set_volume" -> {
                    val audioManager = context.getSystemService(Context.AUDIO_SERVICE) as AudioManager
                    val level = args.optInt("volume_level", 5)
                    audioManager.setStreamVolume(AudioManager.STREAM_MUSIC, level, 0)
                    "Success: Volume set to $level via AudioManager"
                }

                // MEDYA KONTROLÜ (Gelişmiş)
                "media_control" -> {
                    val action = args.optString("action", "play_pause")
                    when (action) {
                        "next" -> executeShellCommand("input keyevent 87")
                        "prev" -> executeShellCommand("input keyevent 88")
                        "play_pause" -> executeShellCommand("input keyevent 85")
                        else -> executeShellCommand("input keyevent 85")
                    }
                    val mediaInfo = MediaBridge.mediaState.value
                    mqttTelemetryBridge?.publishMediaState(
                        title = mediaInfo.title,
                        artist = mediaInfo.artist,
                        isPlaying = mediaInfo.isPlaying
                    )
                    "Success: Media $action command executed"
                }

                "media_play_pause" -> {
                    executeShellCommand("input keyevent 85")
                    val mediaInfo = MediaBridge.mediaState.value
                    mqttTelemetryBridge?.publishMediaState(
                        title = mediaInfo.title,
                        artist = mediaInfo.artist,
                        isPlaying = mediaInfo.isPlaying
                    )
                    "Success: Media toggled via Keyevent"
                }

                "media_next" -> {
                    executeShellCommand("input keyevent 87")
                    val mediaInfo = MediaBridge.mediaState.value
                    mqttTelemetryBridge?.publishMediaState(
                        title = mediaInfo.title,
                        artist = mediaInfo.artist,
                        isPlaying = mediaInfo.isPlaying
                    )
                    "Success: Next track"
                }

                "media_previous" -> {
                    executeShellCommand("input keyevent 88")
                    val mediaInfo = MediaBridge.mediaState.value
                    mqttTelemetryBridge?.publishMediaState(
                        title = mediaInfo.title,
                        artist = mediaInfo.artist,
                        isPlaying = mediaInfo.isPlaying
                    )
                    "Success: Previous track"
                }

                // SİSTEM PARLAKLIĞI (Settings Shell)
                "set_brightness" -> {
                    val level = args.optInt("level", 128)
                    executeShellCommand("settings put system screen_brightness $level")
                    "Success: Brightness set to $level"
                }

                // ARAÇ VERİSİ OKUMA (Dumpsys)
                "get_vehicle_property" -> {
                    var propertyId = args.optString("property_id")
                    if (propertyId.isNotEmpty()) {
                        if (!propertyId.startsWith("0x") && propertyId.length >= 8) {
                            propertyId = "0x$propertyId"
                        }
                        val result = executeShellCommand("dumpsys car_service get-property-value $propertyId 0")
                        "Success: $propertyId = $result"
                    } else {
                        "Error: Missing property_id"
                    }
                }

                // HASSAS KLİMA SICAKLIK KONTROLÜ
                "set_hvac_temp" -> {
                    val temp = args.optDouble("temperature", 22.0).toFloat()
                    // Dumpsys ile doğrudan set etmeyi dene (Area 1: Sürücü, Area 16: Yolcu)
                    executeShellCommand("dumpsys car_service set-property-value 0x15600503 1 $temp")
                    executeShellCommand("dumpsys car_service set-property-value 0x15600503 16 $temp")
                    
                    // Görsel tetikleyici (HMI güncellemesi için)
                    if (temp > 22.0) {
                        executeShellCommand("input tap 800 900") 
                    } else {
                        executeShellCommand("input tap 200 900")
                    }
                    
                    val state = VehicleController.getInstance(context).getVehicleState()
                    mqttTelemetryBridge?.publishClimateState(
                        isOn = state.isHvacOn,
                        tempDriver = temp,
                        tempPassenger = temp,
                        fanSpeed = state.acFanSpeed
                    )
                    "Success: HVAC Temperature set to $temp via Dumpsys & Tap"
                }

                // CAM / SUNROOF POZİSYON KONTROLÜ (VHAL)
                "set_window_position" -> {
                    val target = args.optString("target", "window") // "window" veya "sunroof"
                    val position = args.optInt("position", 0) // 0 = Kapalı, 100 = Tam Açık
                    
                    if (target == "sunroof") {
                        // Sunroof Zone Genelde 65536 veya 16'dır
                        executeShellCommand("dumpsys car_service set-property-value 0x13400bc0 65536 $position")
                    } else {
                        // Tüm camları aynı seviyeye getir (Zone: 15)
                        executeShellCommand("dumpsys car_service set-property-value 0x13400bc0 15 $position")
                    }
                    "Success: $target position set to $position"
                }

                // ADB KOMUTLARI
                "execute_adb" -> {
                    val cmd = args.optString("command")
                    if (cmd.startsWith("input keyevent ")) {
                        executeShellCommand(cmd)
                        "Success: ADB command executed"
                    } else {
                        "Error: Only input keyevent commands are allowed"
                    }
                }

                // UYGULAMA BAŞLATMA VE ARAMA
                "open_app" -> {
                    val pkg = args.optString("package_name")
                    if (pkg.isNotEmpty()) {
                        executeShellCommand("monkey -p $pkg -c android.intent.category.LAUNCHER 1")
                        "Success: App $pkg opened"
                    } else {
                        "Error: Missing package_name"
                    }
                }

                "search_youtube" -> {
                    val query = args.optString("query")
                    if (query.isNotEmpty()) {
                        // YouTube Arama Intent'i
                        executeShellCommand("am start -a android.intent.action.SEARCH -n com.google.android.youtube/.SearchActivity -e query \"$query\"")
                        "Success: YouTube search for $query"
                    } else {
                        "Error: Missing query"
                    }
                }

                // TARİH SAAT FİKSLEME
                "fix_system_time" -> {
                    executeShellCommand("settings put global auto_time 1")
                    executeShellCommand("settings put global auto_time_zone 1")
                    executeShellCommand("settings put global ntp_server pool.ntp.org")
                    executeShellCommand("cmd network_time_update_service update_time")
                    "Success: System time sync triggered"
                }

                // TAILSCALE VPN KONTROLÜ
                "connect_vpn" -> {
                    executeShellCommand("am broadcast -n com.tailscale.ipn/.IPNReceiver -a com.tailscale.ipn.CONNECT_VPN")
                    "Success: Tailscale VPN connection requested"
                }

                "disconnect_vpn" -> {
                    executeShellCommand("am broadcast -n com.tailscale.ipn/.IPNReceiver -a com.tailscale.ipn.DISCONNECT_VPN")
                    "Success: Tailscale VPN disconnection requested"
                }

                // ARAÇ DURUMU (TOPLU)
                "get_vehicle_status" -> {
                    val state = VehicleController.instance?.getVehicleState()
                    if (state != null) {
                        val json = JSONObject().apply {
                            put("speed", state.speed)
                            put("gear", state.gearString)
                            put("rpm", state.engineRpm)
                            put("fuel", state.fuelLevel)
                            put("outside_temp", state.outsideTemperature)
                            put("ac_on", state.isHvacOn)
                            put("gps", "${state.latitude},${state.longitude}")
                        }
                        "Success: Vehicle Status: $json"
                    } else {
                        "Error: VehicleController not available"
                    }
                }

                // RADYO FREKANSI
                "set_radio_frequency" -> {
                    val freq = args.optDouble("frequency", 94.5)
                    // Örnek: Radyo uygulamasına broadcast veya intent gönder
                    executeShellCommand("am broadcast -a com.android.music.musicservicecommand --es command set_radio_freq --ef frequency $freq")
                    "Success: Radio frequency set to $freq MHz requested"
                }

                // MEDYA ARAMA VE OYNATMA
                "search_and_play" -> {
                    val query = args.optString("query")
                    if (query.isNotEmpty()) {
                        executeShellCommand("am start -a android.media.action.MEDIA_PLAY_FROM_SEARCH -e query \"$query\"")
                        "Success: Searching and playing '$query'"
                    } else {
                        "Error: Missing query"
                    }
                }

                else -> {
                    Log.w(TAG, "Bilinmeyen komut: $functionName")
                    "Error: Unknown command $functionName"
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Yürütme hatası: ${e.message}")
            "Error: ${e.message}"
        }
    }
}
