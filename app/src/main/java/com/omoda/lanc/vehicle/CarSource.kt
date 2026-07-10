package com.omoda.lanc.vehicle

import android.content.Context
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * CarSource - OmodaAssist v2 mimarisine uygun (Dumpsys tabanlı)
 * İmzasız uygulama kısıtları nedeniyle doğrudan CarPropertyManager yerine dumpsys kullanır.
 */
class CarSource(private val context: Context) : VehicleSource {

    override fun getSpeed(): Float? {
        // Property ID 0x11600207 (VEHICLE_SPEED)
        return try {
            val output = executeDumpsys("0x11600207")
            extractValue(output ?: "")?.toFloatOrNull()
        } catch (e: Exception) {
            null
        }
    }

    override fun getGear(): Int? {
        // Property ID 0x21402006 (GEAR_SELECTION)
        return try {
            val output = executeDumpsys("0x21402006")
            extractValue(output ?: "")?.toIntOrNull()
        } catch (e: Exception) {
            null
        }
    }

    override fun getFuelLevel(): Float? {
        // Property ID 0x11600307 (FUEL_LEVEL)
        return try {
            val output = executeDumpsys("0x11600307")
            extractValue(output ?: "")?.toFloatOrNull()
        } catch (e: Exception) {
            null
        }
    }

    override fun isAnyDoorOpen(): Boolean? = null

    private fun executeDumpsys(propId: String): String? {
        var process: Process? = null
        return try {
            process = Runtime.getRuntime().exec("dumpsys car_service get-property-value $propId 0")
            val result = process.inputStream.bufferedReader().use { reader ->
                reader.readLine()
            }
            try { process.errorStream.close() } catch (_: Exception) {}
            try { process.outputStream.close() } catch (_: Exception) {}
            result
        } catch (e: Exception) {
            null
        } finally {
            process?.destroy()
        }
    }

    private fun extractValue(line: String): String? {
        // AAOS dumpsys formatını destekleyen regex: value:[...] veya floatValues:[...] veya int32Values:[...]
        val regex = Regex("(?i)(?:value|floatValues|int32Values)[s]?[:=]\\s*\\[([^]]*)]")
        return regex.find(line)?.groupValues?.get(1)?.trim()
    }
}
