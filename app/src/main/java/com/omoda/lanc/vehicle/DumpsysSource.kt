package com.omoda.lanc.vehicle

import java.io.BufferedReader
import java.io.InputStreamReader

class DumpsysSource : VehicleSource {
    private var lastDump: String = ""
    private var lastTime: Long = 0

    override fun getSpeed(): Float? {
        val dump = getOrRefreshDump()
        // 0x11600207 (VEHICLE_SPEED) ara
        return extractById(dump, "0x11600207")?.toFloatOrNull()
    }

    override fun getGear(): Int? {
        val dump = getOrRefreshDump()
        // 0x21402006 (GEAR_SELECTION) ara
        return extractById(dump, "0x21402006")?.toIntOrNull()
    }

    fun getEngineRunning(): Boolean {
        val dump = getOrRefreshDump()
        // 0x11400301 (IGNITION_STATE)
        val valStr = extractById(dump, "0x11400301")
        return valStr == "1" || valStr?.contains("true", ignoreCase = true) == true
    }

    override fun getFuelLevel(): Float? {
        val dump = getOrRefreshDump()
        // 0x11600307 (FUEL_LEVEL)
        return extractById(dump, "0x11600307")?.toFloatOrNull()
    }

    override fun isAnyDoorOpen(): Boolean? {
        val dump = getOrRefreshDump()
        // Herhangi bir kapı açık mı kontrol et (basit check)
        return dump.contains("DOOR_OPEN=true", ignoreCase = true) || dump.contains("21402000): 1")
    }

    private fun getOrRefreshDump(): String {
        val now = System.currentTimeMillis()
        if (now - lastTime < 2000 && lastDump.isNotEmpty()) {
            return lastDump
        }

        return try {
            val process = Runtime.getRuntime().exec("dumpsys car_service")
            val reader = BufferedReader(InputStreamReader(process.inputStream))
            val sb = StringBuilder()
            var line: String?
            while (reader.readLine().also { line = it } != null) {
                sb.append(line).append("\n")
            }
            lastDump = sb.toString()
            lastTime = now
            lastDump
        } catch (e: Exception) {
            ""
        }
    }

    private fun extractById(dump: String, propId: String): String? {
        if (dump.isEmpty()) return null
        val lines = dump.lines()
        for (line in lines) {
            if (line.contains(propId, ignoreCase = true)) {
                // AAOS dump formatı: "[ID]: VALUE (TYPE) at ..." veya "ID=VALUE"
                val regex = Regex("$propId[):]\\s*([^\\s(]+)")
                val match = regex.find(line)
                if (match != null) return match.groupValues[1].trim()
                
                // Fallback: value=X formatı
                if (line.contains("=")) {
                    return line.substringAfter("=").trim().split(" ")[0].trim(',')
                }
            }
        }
        return null
    }
}
