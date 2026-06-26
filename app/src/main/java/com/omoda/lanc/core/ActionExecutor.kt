package com.omoda.lanc.core

import android.content.Context
import android.media.AudioManager
import android.util.Log
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * Sürüm 5.0: Omega Edition - Aksiyon Yürütücü
 * Prensip: Sadece ADB (Shell) ve Standart Android API'leri kullanılır.
 * İmzasız uygulama kısıtlamalarını aşmak için ADB izinleri şarttır.
 */
class ActionExecutor(private val context: Context) {
    private val TAG = "ActionExecutor"

    private fun executeShellCommand(command: String): String {
        Log.d(TAG, "Shell komutu: $command")
        return try {
            // Root varsa 'su -c', yoksa direkt sh -c kullanılır. 
            // Semidrive ünitesinde genelde root veya ADB yetkisiyle çalışır.
            val proc = Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
            val reader = BufferedReader(InputStreamReader(proc.inputStream))
            val output = reader.readText()
            proc.waitFor()
            output.trim()
        } catch (e: Exception) {
            Log.e(TAG, "Shell hatası: ${e.message}")
            ""
        }
    }

    fun execute(functionName: String, argumentsJson: String): String {
        Log.i(TAG, "Aksiyon: $functionName | Args: $argumentsJson")
        return try {
            val args = if (argumentsJson.isBlank()) JSONObject() else JSONObject(argumentsJson)

            when (functionName) {
                // KLİMA KONTROLÜ (ADB TAP)
                "hvac_on", "hvac_off", "simulate_hvac_touch" -> {
                    val x = args.optInt("x", 500)
                    val y = args.optInt("y", 900)
                    executeShellCommand("input tap $x $y")
                    "Success: HVAC command executed via ADB Tap ($x, $y)"
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
                    "Success: Media $action command executed"
                }

                "media_play_pause" -> {
                    executeShellCommand("input keyevent 85")
                    "Success: Media toggled via Keyevent"
                }

                "media_next" -> {
                    executeShellCommand("input keyevent 87")
                    "Success: Next track"
                }

                "media_previous" -> {
                    executeShellCommand("input keyevent 88")
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
                    val propertyId = args.optString("property_id")
                    if (propertyId.isNotEmpty()) {
                        val result = executeShellCommand("dumpsys car_service get-property-value $propertyId 0")
                        "Success: $propertyId = $result"
                    } else {
                        "Error: Missing property_id"
                    }
                }

                // HASSAS KLİMA KONTROLÜ
                "set_hvac_temp" -> {
                    val temp = args.optDouble("temperature", 22.0)
                    // Omoda 5 HMI koordinat simülasyonu
                    if (temp > 22.0) {
                        executeShellCommand("input tap 800 900") // Sıcaklık artır butonu
                    } else {
                        executeShellCommand("input tap 200 900") // Sıcaklık azalt butonu
                    }
                    "Success: HVAC Temperature adjusted towards $temp"
                }

                // UYGULAMA BAŞLATMA
                "open_app" -> {
                    val pkg = args.optString("package_name")
                    if (pkg.isNotEmpty()) {
                        executeShellCommand("monkey -p $pkg -c android.intent.category.LAUNCHER 1")
                        "Success: App $pkg opened"
                    } else {
                        "Error: Missing package_name"
                    }
                }

                // HERMES DOĞRUDAN ADB KOMUT ERİŞİMİ
                "execute_adb" -> {
                    val command = args.optString("command")
                    if (command.isNotEmpty()) {
                        val result = executeShellCommand(command)
                        "Success: Executed ($command) -> $result"
                    } else {
                        "Error: Missing command parameter"
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
