package com.omoda.lanc.vehicle

import java.io.BufferedReader
import java.io.InputStreamReader

class DumpsysSource : VehicleSource {
    private var lastDump: String = ""
    private var lastTime: Long = 0

    override fun getSpeed(): Float? {
        val dump = getOrRefreshDump()
        return extractValue(dump, "speed")?.filter { it.isDigit() || it == '.' }?.toFloatOrNull()
    }

    override fun getGear(): Int? {
        val dump = getOrRefreshDump()
        return extractValue(dump, "gear_selection")?.toIntOrNull()
    }

    fun getEngineRunning(): Boolean {
        val dump = getOrRefreshDump()
        val valStr = extractValue(dump, "engine_running") ?: extractValue(dump, "ignition_state")
        return valStr?.contains("true", ignoreCase = true) == true || valStr == "1" || valStr?.contains("ON", ignoreCase = true) == true
    }

    override fun getFuelLevel(): Float? {
        val dump = getOrRefreshDump()
        return extractValue(dump, "fuel_level")?.filter { it.isDigit() || it == '.' }?.toFloatOrNull()
    }

    override fun isAnyDoorOpen(): Boolean? {
        val dump = getOrRefreshDump()
        // Check for any door open property
        val doorLines = dump.lines().filter { it.contains("door", ignoreCase = true) && it.contains("open", ignoreCase = true) }
        return if (doorLines.isEmpty()) null else doorLines.any { it.contains("true", ignoreCase = true) || it.contains(" 1") }
    }

    private fun getOrRefreshDump(): String {
        val now = System.currentTimeMillis()
        if (now - lastTime < 1000 && lastDump.isNotEmpty()) {
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

    private fun extractValue(dump: String, property: String): String? {
        if (dump.isEmpty()) return null
        val lines = dump.lines()
        for (line in lines) {
            if (line.contains(property, ignoreCase = true)) {
                val parts = if (line.contains(":")) line.split(":") else line.split("=")
                if (parts.size > 1) {
                    return parts[1].trim().split(" ")[0].trim(',')
                }
            }
        }
        return null
    }

    private fun extractSpeed(dump: String): Float? {
        return extractValue(dump, "speed")?.filter { it.isDigit() || it == '.' }?.toFloatOrNull()
    }
}
