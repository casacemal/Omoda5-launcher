package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.core.dsl.*
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.network.AdbClient
import kotlinx.coroutines.*
import java.util.concurrent.atomic.AtomicReference

/**
 * v6.2.0: VehicleController - MASTER ENGINE
 * Multi-line parsing, Adaptive Polling ve Zone-based display logic.
 */
class VehicleController(private val context: Context) {
    private val TAG = "VehicleController"
    private val vehicleState = AtomicReference(VehicleState())
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private val lineBuffer = StringBuilder()

    companion object {
        @Volatile var instance: VehicleController? = null
        fun getInstance(context: Context): VehicleController {
            return instance ?: synchronized(this) {
                instance ?: VehicleController(context.applicationContext).also { instance = it }
            }
        }
    }

    init {
        startAdaptiveTracking()
    }

    private fun startAdaptiveTracking() {
        startPollingLayer(2) // Hızlı (Hız, Vites)
        startPollingLayer(5) // Yavaş (Yakıt, Kapı, Klima)
    }

    private fun startPollingLayer(tier: Int) {
        scope.launch {
            while (isActive) {
                try {
                    val current = vehicleState.get()
                    val isMoving = current.speed > 1f
                    
                    // SAHA KURALI: Hareket varsa 2sn, rölantide 4sn (Tier 2 için)
                    val delayMs = if (tier == 2 && !isMoving) 4000L else tier * 1000L
                    
                    if (!GlobalState.isSimulationMode.value) {
                        val cmds = mutableListOf<String>()
                        
                        // DSL Yetenekleri
                        Omoda5.capabilities.values.forEach { def ->
                            if (def.pollingTier == tier) {
                                def.zones.keys.forEach { zone ->
                                    cmds.add("dumpsys car_service get-property-value ${def.id.removePrefix("0x")} $zone")
                                }
                            }
                        }
                        
                        // Klima (Tier 5'te pollanır)
                        if (tier == 5) {
                            listOf(Omoda5.hvac.power, Omoda5.hvac.tempDriver, Omoda5.hvac.fanSpeed).forEach {
                                cmds.add("dumpsys car_service get-property-value ${it.id.removePrefix("0x")} ${it.zone}")
                            }
                        }

                        if (cmds.isNotEmpty()) {
                            AdbClient.executeCommand(cmds.joinToString(" ; ")) { parseLine(it) }
                        }
                    }
                    delay(delayMs)
                } catch (e: Exception) { Log.e(TAG, "Tier $tier error: ${e.message}") }
            }
        }
    }

    private fun parseLine(line: String) {
        val l = line.trim()
        if (l.isEmpty()) return
        if (l.startsWith("Property:")) lineBuffer.clear()
        lineBuffer.append(l).append(" ")
        
        // Android 10 Dumpsys Multi-line Fix
        if (!lineBuffer.contains("value:") && !lineBuffer.contains("Values:")) return
        
        val full = lineBuffer.toString()
        lineBuffer.clear()

        val id = "0x" + (Regex("0x([0-9a-fA-F]+)").find(full)?.groupValues?.get(1)?.lowercase() ?: return)
        val zone = Regex("(?i)(zone|areaId)[:=]\\s*(0x[0-9a-fA-F]+|\\d+)").find(full)?.groupValues?.get(2)?.let {
            if (it.startsWith("0x")) it.removePrefix("0x").toIntOrNull(16) else it.toIntOrNull()
        } ?: 0

        val floatMatch = Regex("(?i)floatValues[:=]\\s*\\[([^\\]]+)\\]").find(full)?.groupValues?.get(1)?.trim()
        val intMatch = Regex("(?i)int32Values[:=]\\s*\\[([^\\]]+)\\]").find(full)?.groupValues?.get(1)?.trim()
        val valueMatch = Regex("(?i)value[:=]\\s*\\[([^\\]]+)\\]").find(full)?.groupValues?.get(1)?.trim()
        
        val value = floatMatch ?: intMatch ?: valueMatch ?: ""
        
        applyToDsl(id, zone, value)
    }

    private fun applyToDsl(id: String, zone: Int, value: String) {
        val current = vehicleState.get()
        var next = current

        // 1. Capabilities
        Omoda5.capabilities.forEach { (key, def) ->
            if (def.id.lowercase() == id.lowercase() && def.zones.containsKey(zone)) {
                val label = if (def.zones[zone]?.isNotEmpty() == true) "${def.label} (${def.zones[zone]})" else def.label
                val display = def.conversion?.invoke(value) ?: value
                val raw = def.rawConversion?.invoke(value) ?: value
                
                updateDisplay(label, display)
                
                next = when(key) {
                    "speed" -> next.copy(speed = raw as? Float ?: 0f)
                    "gear" -> next.copy(gearString = display)
                    "fuel" -> next.copy(fuelLevel = (value.toFloatOrNull() ?: 0f) / 1000f)
                    "door_fl" -> next.copy(doorDriverOpen = value.startsWith("1"))
                    "door_fr" -> next.copy(doorPassengerOpen = value.startsWith("1"))
                    "door_rl" -> next.copy(doorRearLeftOpen = value.startsWith("1"))
                    "door_rr" -> next.copy(doorRearRightOpen = value.startsWith("1"))
                    "door_trunk" -> next.copy(trunkOpen = value.startsWith("1"))
                    "engine_rpm" -> next.copy(engineRpm = raw as? Float ?: 0f)
                    "odometer" -> next.copy(odometer = raw as? Float ?: 0f)
                    "range_km" -> next.copy(rangeKm = raw as? Float ?: 0f)
                    "engine_status" -> next.copy(isEngineRunning = value.startsWith("1"))
                    "door_locks" -> next.copy(doorLocks = raw as? Int ?: 0)
                    "outside_temp" -> next.copy(outsideTemperature = raw as? Float ?: 0f)
                    "ac_circulation" -> next.copy(acCirculationMode = raw as? Int ?: 0)
                    "ac_compressor" -> next.copy(acCompressorOn = value.startsWith("1"))
                    "ac_sync" -> next.copy(acSync = value.startsWith("1"))
                    "front_defrost" -> next.copy(frontDefrostOn = value.startsWith("1"))
                    "rear_defrost" -> next.copy(rearDefrostOn = value.startsWith("1"))
                    "turn_left" -> next.copy(turnSignalLeft = value.startsWith("1"))
                    "turn_right" -> next.copy(turnSignalRight = value.startsWith("1"))
                    "hazard_lights" -> next.copy(hazardLightsOn = value.startsWith("1"))
                    "headlights" -> next.copy(headlights = raw as? Int ?: 0)
                    "parking_brake" -> next.copy(parkingBrake = value.startsWith("1"))
                    "window_pos" -> next.copy(windowPosition = raw as? Int ?: 0)
                    "driving_mode" -> next.copy(drivingMode = raw as? Int ?: 0)
                    "ev_battery" -> next.copy(evBatteryLevel = raw as? Float ?: 0f)
                    "fuel_capacity" -> next.copy(fuelCapacity = raw as? Float ?: 0f)
                    else -> next
                }
                next = next.copy(anyDoorOpen = next.doorDriverOpen || next.doorPassengerOpen || next.doorRearLeftOpen || next.doorRearRightOpen || next.trunkOpen)
            }
        }

        // 2. HVAC
        when {
            Omoda5.hvac.power.id == id -> {
                val isOn = value.startsWith("1")
                updateDisplay("AC GÜÇ", if (isOn) "AÇIK" else "KAPALI")
                next = next.copy(isHvacOn = isOn)
            }
            Omoda5.hvac.tempDriver.id == id -> {
                updateDisplay("SOL ISI", "$value°C")
                next = next.copy(acTemperatureDriver = (value.toFloatOrNull() ?: 22f).toInt())
            }
            Omoda5.hvac.fanSpeed.id == id -> {
                updateDisplay("FAN", value)
                next = next.copy(acFanSpeed = (value.toFloatOrNull() ?: 0f).toInt())
            }
        }

        if (next != current) {
            vehicleState.set(next)
            EventBus.tryEmit(Event.VehicleEvent.StateUpdated(next))
            Omoda5.automations.forEach { if (it.condition(next)) it.action(next) }
        }
    }

    private fun updateDisplay(key: String, value: String) {
        val m = GlobalState.vehicleDataValues.value.toMutableMap()
        if (m[key] != value) {
            m[key] = value
            GlobalState.vehicleDataValues.value = m
            Log.d(TAG, "[VHAL] $key -> $value")
        }
    }

    fun getVehicleState(): VehicleState = vehicleState.get()
    
    fun injectSimulatedData(json: org.json.JSONObject) {
        if (!GlobalState.isSimulationMode.value) return
        try {
            val propId = json.getString("propertyId")
            val cleanPropId = propId.replace("0x", "").lowercase()
            val zone = json.optInt("zone", 0)
            val value = json.optString("float", json.optString("int", "0"))
            applyToDsl("0x$cleanPropId", zone, value)
        } catch (e: Exception) {
            Log.e(TAG, "Simülasyon inject hatası: ${e.message}")
        }
    }

    fun destroy() { scope.cancel() }
}
