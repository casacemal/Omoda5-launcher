package com.omoda.lanc.vehicle

import android.util.Log
import com.omoda.lanc.model.VehicleState
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * DumpsysSource - Dinamik ve Seçimli Okuma
 */
class DumpsysSource : VehicleSource {
    private var lastState = VehicleState()

    override fun getSpeed(): Float? = lastState.speed
    override fun getGear(): Int? = lastState.gear
    override fun getFuelLevel(): Float? = lastState.fuelLevel
    override fun isAnyDoorOpen(): Boolean? = lastState.anyDoorOpen

    /**
     * Sadece istenen ID'leri içeren verileri günceller.
     * @param ids Tozlanacak Property ID listesi (Örn: ["11600207", "21402006"])
     */
    fun refreshSelected(ids: List<String>): VehicleState {
        if (ids.isEmpty()) return lastState

        // Tüm car_service yerine sadece CarPropertyService kısmını çekmek ÇOK daha hızlıdır.
        val dump = executeTargetedDumpsys()
        if (dump.isEmpty()) return lastState

        // Yeni değerleri mevcut state üzerine yaz (Kısmi güncelleme)
        var updatedSpeed = lastState.speed
        var updatedGear = lastState.gear
        var updatedFuel = lastState.fuelLevel
        var updatedEngine = lastState.isEngineRunning
        var updatedDoors = lastState.anyDoorOpen

        ids.forEach { id ->
            val value = extractById(dump, id)
            if (value != null) {
                when (id) {
                    "11600207" -> updatedSpeed = value.toFloatOrNull() ?: updatedSpeed
                    "21402006" -> updatedGear = value.toIntOrNull() ?: updatedGear
                    "11600307" -> updatedFuel = value.toFloatOrNull() ?: updatedFuel
                    "11400301" -> updatedEngine = (value == "1" || value.contains("true", true))
                    "21402000" -> updatedDoors = (value == "1" || value.contains("true", true))
                }
            }
        }

        lastState = VehicleState(
            speed = updatedSpeed,
            gear = updatedGear,
            fuelLevel = updatedFuel,
            isEngineRunning = updatedEngine,
            anyDoorOpen = updatedDoors
        )
        
        return lastState
    }

    private fun executeTargetedDumpsys(): String {
        var process: Process? = null
        return try {
            // Sadece property'lerin olduğu bölümü hedefle
            process = Runtime.getRuntime().exec("dumpsys car_service CarPropertyService")
            val sb = StringBuilder()
            process.inputStream.bufferedReader().use { reader ->
                var line: String?
                while (reader.readLine().also { line = it } != null) {
                    sb.append(line).append("\n")
                }
            }
            sb.toString()
        } catch (e: Exception) {
            ""
        } finally {
            try { process?.errorStream?.close() } catch (_: Exception) {}
            try { process?.outputStream?.close() } catch (_: Exception) {}
            process?.destroy()
        }
    }

    private fun extractById(dump: String, propId: String): String? {
        // ID'nin 0x ile başlayıp başlamadığını kontrol et
        val searchId = if (propId.startsWith("0x")) propId else "0x$propId"
        val regex = Regex("$searchId[:=]\\s*([^\\s(]+)")
        val match = regex.find(dump)
        return match?.groupValues?.get(1)?.trim()?.trimEnd(',')
    }
}
