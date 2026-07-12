package com.omoda.lanc.core

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.util.Log
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.network.AdbClient
import kotlinx.coroutines.*
import java.util.concurrent.atomic.AtomicReference

class VehicleController(private val context: Context) {
    private val TAG = "VehicleController"
    private val vehicleState = AtomicReference(VehicleState())
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    companion object {
        var instance: VehicleController? = null

        fun getInstance(context: Context): VehicleController {
            if (instance == null) {
                instance = VehicleController(context.applicationContext)
            }
            return instance!!
        }

        val PROPERTY_DEFINITIONS = linkedMapOf(
            "11600207" to PropertyDef("Hız", 2),
            "21402006" to PropertyDef("Vites", 2),
            "11400301" to PropertyDef("Motor Durumu", 2),
            "11600305" to PropertyDef("Motor RPM", 2),
            "11600204" to PropertyDef("Toplam KM", 5),
            "11600307" to PropertyDef("Kalan Yakıt", 2),
            "11600308" to PropertyDef("Kalan Menzil", 5),
            "11400400" to PropertyDef("Standart Vites Seçimi", 5),
            "11400401" to PropertyDef("Standart Mevcut Vites", 5),
            "21402000" to PropertyDef("Kapı Açık İkazı", 2),
            "21402012" to PropertyDef("Ön Sol Kapı", 2),
            "21402013" to PropertyDef("Ön Sağ Kapı", 2),
            "21402014" to PropertyDef("Arka Sol Kapı", 2),
            "21402015" to PropertyDef("Bagaj Kapağı", 2),
            "21402016" to PropertyDef("Arka Sağ Kapı (Tahmin)", 2),
            "21402002" to PropertyDef("Sol Sinyal", 5),
            "21402001" to PropertyDef("Sağ Sinyal", 5),
            "2140100d" to PropertyDef("Park Freni", 2),
            "11200402" to PropertyDef("Far", 5),
            "21402005" to PropertyDef("Sürüş Modu", 10),
            "21401002" to PropertyDef("AC Güç", 10),
            "21401008" to PropertyDef("AC Sıcaklık (Sürücü)", 10),
            "21401009" to PropertyDef("AC Sıcaklık (Yolcu)", 10),
            "11600703" to PropertyDef("Dış Sıcaklık", 2),
            "21401005" to PropertyDef("AC Fan Hızı", 10),
            "21401004" to PropertyDef("AC Sirkülasyon", 10),
            "21401003" to PropertyDef("AC Kompresör", 10),
            "21401007" to PropertyDef("AC Auto Modu", 10),
            "2140101e" to PropertyDef("Ön Cam Rezistans", 10),
            "2140101f" to PropertyDef("Arka Cam Isıtma", 10),
            "21401019" to PropertyDef("Elec Klima Sıcaklık", 10),
            "2140101a" to PropertyDef("Klima SYNC", 10),
            "11600309" to PropertyDef("EV Batarya Seviyesi", 10),
            "11600104" to PropertyDef("Yakıt Kapasitesi", 10),
            "11400409" to PropertyDef("Kontak Durumu", 5),
            "15200505" to PropertyDef("Klima AC", 5),
            "15400500" to PropertyDef("Klima Fan Hızı", 5),
            "13400bc0" to PropertyDef("Cam / Sunroof", 5),
            "16200b02" to PropertyDef("Kapı Kilitleri", 5),
            "11400e03" to PropertyDef("Dörtlü Flaşör", 5),
            "11400e00" to PropertyDef("Farlar", 5),
            "11600304" to PropertyDef("Motor Yağ Sıc.", 2),
            "1540050b" to PropertyDef("Koltuk Isıtma", 5),
            "15400513" to PropertyDef("Koltuk Soğutma", 5),
            "MEDIA_INFO" to PropertyDef("Çalan Medya", 2),
            "MEDIA_BTN_NEXT" to PropertyDef("Medya: İleri Tuşu", 2),
            "MEDIA_BTN_PREV" to PropertyDef("Medya: Geri Tuşu", 2),
            "MEDIA_BTN_PLAY" to PropertyDef("Medya: Oynat Tuşu", 2),
            "MEDIA_VOL_UP" to PropertyDef("Ses Açma Tuşu", 2),
            "MEDIA_VOL_DOWN" to PropertyDef("Ses Kısma Tuşu", 2)
        )
    }

    data class PropertyDef(val label: String, val defaultTier: Int)

    private var fastJob: Job? = null
    private var mediumJob: Job? = null
    private var slowJob: Job? = null

    private var mediaReceiver: BroadcastReceiver? = null
    private var activeAnomaly: String? = null
    private var anomalyJob: Job? = null

    fun registerMediaReceiver() {
        if (mediaReceiver == null) {
            mediaReceiver = object : BroadcastReceiver() {
                override fun onReceive(context: Context?, intent: Intent?) {
                    if (intent?.action == "com.saic.keyevent.hardkey.report") {
                        val keycode = intent.getIntExtra("android.intent.extra.hardkey.keycode", -1)
                        val isDown = intent.getBooleanExtra("android.intent.extra.hardkey.down", false)
                        if (isDown) {
                            val btnId = when (keycode) {
                                87 -> "MEDIA_BTN_NEXT"
                                88 -> "MEDIA_BTN_PREV"
                                85 -> "MEDIA_BTN_PLAY"
                                24 -> "MEDIA_VOL_UP"
                                25 -> "MEDIA_VOL_DOWN"
                                else -> "MEDIA_BTN_UNKNOWN_$keycode"
                            }
                            
                            val currentValues = GlobalState.vehicleDataValues.value.toMutableMap()
                            currentValues[btnId] = "BASILDI"
                            GlobalState.vehicleDataValues.value = currentValues
                            
                            scope.launch {
                                delay(1000)
                                val resetValues = GlobalState.vehicleDataValues.value.toMutableMap()
                                if (resetValues[btnId] == "BASILDI") {
                                    resetValues[btnId] = "BEKLİYOR"
                                    GlobalState.vehicleDataValues.value = resetValues
                                }
                            }
                        }
                    }
                }
            }
            context.registerReceiver(mediaReceiver, IntentFilter("com.saic.keyevent.hardkey.report"))
        }
    }

    fun unregisterMediaReceiver() {
        mediaReceiver?.let {
            try {
                context.unregisterReceiver(it)
                mediaReceiver = null
            } catch (e: Exception) {
                Log.e(TAG, "Unregister error: ${e.message}")
            }
        }
    }

    init {
        instance = this
        registerMediaReceiver()
        startTracking()
    }

    private fun startTracking() {
        startTier(2)
        startTier(5)
        startTier(10)
    }

    private fun startTier(tierSeconds: Int) {
        val job = scope.launch {
            while (isActive) {
                try {
                    val config = GlobalState.vehiclePollingConfig.value
                    val propsForTier = SensorPreferences.activeSensors.value.filter { propId ->
                        (config[propId] ?: PROPERTY_DEFINITIONS[propId]?.defaultTier ?: 10) == tierSeconds
                    }.toList()
                    if (propsForTier.isNotEmpty()) {
                        readBatch(propsForTier)
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Tier $tierSeconds error: ${e.message}")
                }
                delay(tierSeconds * 1000L)
            }
        }
        when (tierSeconds) {
            2 -> fastJob = job
            5 -> mediumJob = job
            10 -> slowJob = job
        }
    }

    private fun readBatch(propIds: List<String>) {
        if (GlobalState.isSimulationMode.value) return

        val carProps = propIds.filter { !it.startsWith("MEDIA_") }
        if (propIds.contains("MEDIA_INFO")) {
            try {
                val mediaProc = Runtime.getRuntime().exec(arrayOf("sh", "-c", "dumpsys media_session | grep 'description=' | head -n 1"))
                val reader = java.io.BufferedReader(java.io.InputStreamReader(mediaProc.inputStream))
                val line = reader.readLine()
                if (line != null) {
                    val desc = line.substringAfter("description=").substringBeforeLast(",").trim()
                    val currentValues = GlobalState.vehicleDataValues.value.toMutableMap()
                    currentValues["MEDIA_INFO"] = desc
                    GlobalState.vehicleDataValues.value = currentValues
                }
                mediaProc.waitFor()
            } catch (e: Exception) { }
        }

        if (carProps.isEmpty()) return

        try {
            val command = carProps.joinToString(" ; ") {
                val zone = when(it) {
                    "15200505", "15400500" -> "117"
                    "13400bc0" -> "65536"
                    "16200b02", "1540050b", "15400513" -> "1"
                    else -> "0"
                }
                val cleanId = it.replace("0x", "")
                "dumpsys car_service get-property-value $cleanId $zone"
            }
            
            AdbClient.executeCommand(command) { line ->
                if (GlobalState.isBridgeMode.value) {
                    GlobalState.mqttPublisher?.publishRawVhal(line)
                }
                parseAndApplyLine(line)
            }
        } catch (e: Exception) {
            Log.e(TAG, "readBatch hatası: ${e.message}")
        }
    }

    fun injectSimulatedData(json: org.json.JSONObject) {
        if (!GlobalState.isSimulationMode.value) return
        try {
            val propId = json.getString("propertyId")
            val cleanPropId = propId.replace("0x", "").lowercase()
            val current = vehicleState.get()

            val updated = when (cleanPropId) {
                "11600207" -> current.copy(speed = json.optDouble("float", current.speed.toDouble()).toFloat())
                "11600305" -> current.copy(engineRpm = json.optDouble("float", current.engineRpm.toDouble()).toFloat())
                "11600204" -> current.copy(odometer = json.optDouble("float", current.odometer.toDouble()).toFloat())
                "11600307" -> current.copy(fuelLevel = json.optDouble("float", current.fuelLevel.toDouble()).toFloat())
                "11600308" -> current.copy(rangeKm = json.optDouble("float", current.rangeKm.toDouble()).toFloat())
                "11400400", "11400401", "21402006" -> {
                    val g = json.optInt("int", current.gear)
                    current.copy(gear = g, gearString = mapGear(g))
                }
                "11200403", "2140100d" -> current.copy(parkingBrake = json.optInt("int", if(current.parkingBrake) 1 else 0) == 1)
                "15400500", "21401002" -> current.copy(isHvacOn = json.optInt("int", if (current.isHvacOn) 1 else 0) == 1)
                "15600503", "21401008" -> {
                    val zone = json.optString("zone", "0x1")
                    val temp = json.optInt("int", current.acTemperatureDriver)
                    if (zone == "0x1") current.copy(acTemperatureDriver = temp)
                    else current.copy(acTemperaturePassenger = temp)
                }
                "11600703" -> current.copy(outsideTemperature = json.optDouble("float", current.outsideTemperature.toDouble()).toFloat())
                "21402000" -> current.copy(anyDoorOpen = json.optInt("int", if (current.anyDoorOpen) 1 else 0) == 1)
                else -> current
            }
            updateState { updated }
            
            // Re-map for display value
            val displayVal = when (cleanPropId) {
                "11600207" -> String.format("%.1f km/h", updated.speed)
                "21402006" -> updated.gearString
                "11600305" -> "${updated.engineRpm.toInt()} RPM"
                "21401008" -> "${updated.acTemperatureDriver}°C"
                "11600703" -> String.format("%.1f°C", updated.outsideTemperature)
                else -> {
                    if (json.has("float")) json.getString("float")
                    else if (json.has("int")) json.getString("int")
                    else if (json.has("string")) json.getString("string")
                    else "SIM_DATA"
                }
            }
            
            val currentValues = GlobalState.vehicleDataValues.value.toMutableMap()
            currentValues[cleanPropId] = "$displayVal (SİMÜLE)"
            GlobalState.vehicleDataValues.value = currentValues

        } catch (e: Exception) {
            Log.e(TAG, "Simülasyon inject hatası: ${e.message}")
        }
    }

    fun parseAndApplyLine(line: String) {
        if (line.contains("Property:")) {
            val idMatch = Regex("0x([0-9a-fA-F]+)").find(line)
            val propId = idMatch?.groupValues?.get(1)?.lowercase()
            if (propId != null) {
                val value = extractValue(line)
                if (value.isNotBlank()) {
                    applyValue(propId, value)
                }
            }
        }
    }

    private fun applyValue(propId: String, value: String) {
        var displayValue = value

        when (propId) {
            "11600207" -> {
                val f = it2float(value)
                displayValue = String.format("%.1f km/h", f)
                updateState { s -> s.copy(speed = f, isMoving = f > 0) }
            }
            "21402006" -> {
                val g = value.toIntOrNull() ?: 1
                displayValue = mapGear(g)
                updateState { s -> s.copy(gear = g, gearString = displayValue) }
            }
            "11400301" -> {
                val on = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (on) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(isEngineRunning = on) }
            }
            "11600305" -> {
                val rpm = it2float(value)
                displayValue = "${rpm.toInt()} RPM"
                updateState { s -> s.copy(
                    engineRpm = rpm,
                    isEngineRunning = if (rpm > 0) true else s.isEngineRunning
                ) }
            }
            "11600204" -> {
                val odo = it2float(value)
                displayValue = "${odo.toInt()} km"
                updateState { s -> s.copy(odometer = odo) }
            }
            "11600307" -> {
                val raw = it2float(value)
                val liters = raw / 1000f
                displayValue = String.format("%.1f L", liters)
                updateState { s -> s.copy(fuelLevel = liters) }
            }
            "11600308" -> {
                val range = it2float(value)
                displayValue = "${range.toInt()} km"
                updateState { s -> s.copy(rangeKm = range) }
            }
            "21402000" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(anyDoorOpen = open) }
            }
            "21402012" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(doorDriverOpen = open) }
            }
            "21402013" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(doorPassengerOpen = open) }
            }
            "21402014" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(doorRearLeftOpen = open) }
            }
            "21402015" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(trunkOpen = open) }
            }
            "21402016" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(doorRearRightOpen = open) }
            }
            "21402002" -> {
                val isLeft = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (isLeft) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(turnSignalLeft = isLeft) }
            }
            "21402001" -> {
                val isRight = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (isRight) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(turnSignalRight = isRight) }
            }
            "2140100d" -> {
                val pb = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (pb) "AKTİF" else "PASİF"
                updateState { s -> s.copy(parkingBrake = pb) }
            }
            "11200402" -> {
                val hl = value.toIntOrNull() ?: 0
                displayValue = if (hl > 0) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(headlights = hl) }
            }
            "21402005" -> {
                val mode = value.toIntOrNull() ?: 0
                displayValue = when(mode) { 1 -> "ECO"; 2 -> "SPORT"; 3 -> "SNOW"; 4 -> "MUD"; else -> "NORMAL" }
                updateState { s -> s.copy(drivingMode = mode) }
            }
            "21401002" -> {
                val ac = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (ac) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(isHvacOn = ac) }
            }
            "21401008" -> {
                val temp = value.toIntOrNull() ?: 0
                displayValue = "${temp}°C"
                updateState { s -> s.copy(acTemperatureDriver = temp) }
            }
            "21401009" -> {
                val temp = value.toIntOrNull() ?: 0
                displayValue = "${temp}°C"
                updateState { s -> s.copy(acTemperaturePassenger = temp) }
            }
            "11600703" -> {
                val temp = it2float(value)
                displayValue = String.format("%.1f°C", temp)
                updateState { s -> s.copy(outsideTemperature = temp) }
            }
            "21401005" -> {
                val speed = value.toIntOrNull() ?: 0
                displayValue = "Seviye $speed"
                updateState { s -> s.copy(acFanSpeed = speed) }
            }
            "21401004" -> {
                val circ = value.toIntOrNull() ?: 0
                displayValue = if (circ == 1) "İÇ SİRK" else "DIŞ HAVA"
                updateState { s -> s.copy(acCirculationMode = circ) }
            }
            "21401003" -> {
                val comp = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (comp) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(acCompressorOn = comp) }
            }
            "21401007" -> {
                val auto = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (auto) "OTO" else "MANÜEL"
                updateState { s -> s.copy(acAutoOn = auto) }
            }
            "2140101e" -> {
                val fg = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (fg) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(frontDefrostOn = fg) }
            }
            "2140101f" -> {
                val bg = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (bg) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(rearDefrostOn = bg) }
            }
            "21401019" -> {
                val temp = value.toIntOrNull() ?: 0
                displayValue = "${temp}°C"
                updateState { s -> s.copy(elecClimateTemp = temp) }
            }
            "2140101a" -> {
                val sync = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (sync) "AÇIK" else "KAPALI"
                updateState { s -> s.copy(acSync = sync) }
            }
            "11600309" -> {
                val bat = it2float(value)
                displayValue = "${bat.toInt()}%"
                updateState { s -> s.copy(evBatteryLevel = bat) }
            }
            "11600104" -> {
                val raw = it2float(value)
                val liters = raw / 1000f
                displayValue = String.format("%.1f L", liters)
                updateState { s -> s.copy(fuelCapacity = liters) }
            }
            "13400bc0" -> {
                val wp = value.toIntOrNull() ?: 0
                displayValue = "Pozisyon: $wp"
                updateState { s -> s.copy(windowPosition = wp) }
            }
        }
        
        val currentValues = GlobalState.vehicleDataValues.value.toMutableMap()
        currentValues[propId] = displayValue
        GlobalState.vehicleDataValues.value = currentValues
    }

    private fun it2float(v: String): Float = v.toFloatOrNull() ?: 0f

    fun extractValue(block: String): String {
        val regex = Regex("(?i)(?:value|floatValues|int32Values)[s]?[:=]\\s*\\[([^]]*)]")
        val allMatches = regex.findAll(block)
        return allMatches.map { it.groupValues[1].trim() }.firstOrNull { it.isNotBlank() } ?: ""
    }

    private fun mapGear(gear: Int): String = when (gear) {
        1 -> "P"; 2 -> "R"; 3 -> "N"; 5 -> "D1"; 6 -> "D2"; 7 -> "D3"; else -> "D"
    }

    private fun updateState(update: (VehicleState) -> VehicleState) {
        vehicleState.set(update(vehicleState.get()))
        if (GlobalState.mqttEnabled.value) {
            GlobalState.mqttPublisher?.publishTelemetry(vehicleState.get())
        }
        checkProactiveWarnings()
    }

    private fun checkProactiveWarnings() {
        val state = getVehicleState()
        val isMoving = state.speed > 5f
        val hasOpenDoor = state.anyDoorOpen || state.doorDriverOpen || state.doorPassengerOpen || state.doorRearLeftOpen || state.doorRearRightOpen || state.trunkOpen
        
        val currentAnomaly = when {
            isMoving && hasOpenDoor -> "DOOR_OPEN_WARNING|Kapı açık durumda hareket ediyorsunuz!"
            isMoving && state.parkingBrake -> "PARK_BRAKE_WARNING|El freni çekili!"
            state.isEngineRunning && state.fuelLevel > 0f && state.fuelLevel < 5f -> "LOW_FUEL_WARNING|Yakıt kritik!"
            else -> null
        }

        if (currentAnomaly != null) {
            val parts = currentAnomaly.split("|")
            val type = parts[0]
            val text = parts[1]
            if (activeAnomaly != type) {
                activeAnomaly = type
                startAnomalyAlertCycle(text)
            }
        } else {
            if (activeAnomaly != null && GlobalState.proactiveWarning.value != "DISMISSED") {
                activeAnomaly = null
                anomalyJob?.cancel()
                GlobalState.proactiveWarning.value = null
            }
        }
    }

    private fun startAnomalyAlertCycle(warningText: String) {
        anomalyJob?.cancel()
        anomalyJob = scope.launch {
            var count = 0
            while (count < 3 && activeAnomaly != null) {
                if (count > 0) delay(5000)
                if (activeAnomaly == null || GlobalState.proactiveWarning.value == "DISMISSED") break
                GlobalState.proactiveWarning.value = warningText
                EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("[UYARI] $warningText", android.graphics.Color.RED))
                count++
            }
        }
    }

    fun updateGpsLocation(lat: Double, lng: Double, gpsSpeed: Float = -1f) {
        updateState { s -> 
            s.copy(
                latitude = lat, 
                longitude = lng,
                speed = if (gpsSpeed >= 0f) gpsSpeed else s.speed,
                isMoving = if (gpsSpeed >= 0f) gpsSpeed > 0 else s.isMoving
            )
        }
    }

    fun getVehicleState(): VehicleState = vehicleState.get() ?: VehicleState()

    fun destroy() {
        scope.cancel()
        try { mediaReceiver?.let { context.unregisterReceiver(it) } } catch(_: Exception) {}
    }
}
