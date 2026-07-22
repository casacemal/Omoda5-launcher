package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.network.AdbClient
import kotlinx.coroutines.*
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock

/**
 * v6.4.0: VehicleController - MASTER ENGINE
 * [FIX-03] AtomicReference yerine Mutex ile korunan state yönetimi.
 * [FIX-04] readBatch'te geçersiz property ID kontrolü.
 * Hermes-bridge'den alınan kanıtlanmış PROPERTY_DEFINITIONS + parseAndApplyLine mantığı.
 * DSL sistemi korundu, sadece polling ve parse katmanı güncellendi.
 * KRİTİK: car_service hex prefix'siz hex string ister → "11600207" (0x yok, decimal de değil!)
 */
class VehicleController(private val context: Context) {
    private val TAG = "VehicleController"
    // [FIX-03] AtomicReference yerine Mutex ile korunan state
    // AtomicReference read-modify-write (get → copy → set) pattern'ında
    // Lost Update race condition'ına açıktı. Mutex tüm state güncellemelerini
    // seri hale getirerek Tier-2 ve Tier-5 çakışmasını önler.
    private var vehicleState = VehicleState()
    private val stateMutex = Mutex()
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    companion object {
        @Volatile var instance: VehicleController? = null

        fun getInstance(context: Context): VehicleController {
            return instance ?: synchronized(this) {
                instance ?: VehicleController(context.applicationContext).also { instance = it }
            }
        }

        // Hermes-bridge'den alınan kanıtlanmış property haritası
        val PROPERTY_DEFINITIONS = linkedMapOf(
            "11e00d00" to PropertyDef("Hız, Devir, Vites", 2),
            "11400301" to PropertyDef("Motor Durumu", 2),
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
            "21402016" to PropertyDef("Arka Sağ Kapı", 2),
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
            "2140101a" to PropertyDef("Klima SYNC", 10),
            "11600309" to PropertyDef("EV Batarya Seviyesi", 10),
            "11600104" to PropertyDef("Yakıt Kapasitesi", 10),
            "11400409" to PropertyDef("Kontak Durumu", 5),
            "16200b02" to PropertyDef("Kapı Kilitleri", 5),
            "11400e03" to PropertyDef("Dörtlü Flaşör", 5),
            "11600304" to PropertyDef("Motor Yağ Sıc.", 2),
            "1540050b" to PropertyDef("Koltuk Isıtma", 5),
            "15400513" to PropertyDef("Koltuk Soğutma", 5),
            "13400bc0" to PropertyDef("Cam / Sunroof", 5)
        )
    }

    data class PropertyDef(val label: String, val defaultTier: Int)

    init {
        startTracking()
    }

    private fun startTracking() {
        startTier(2)
        startTier(5)
        startTier(10)
    }

    private fun startTier(tierSeconds: Int) {
        scope.launch {
            while (isActive) {
                try {
                    if (!GlobalState.isSimulationMode.value) {
                        val propsForTier = PROPERTY_DEFINITIONS.filter { (_, def) ->
                            def.defaultTier == tierSeconds
                        }.keys.toList()
                        if (propsForTier.isNotEmpty()) {
                            readBatch(propsForTier)
                        }
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Tier $tierSeconds error: ${e.message}")
                }
                delay(tierSeconds * 1000L)
            }
        }
    }

    private fun readBatch(propIds: List<String>) {
        try {
            // [FIX-04] Geçersiz property ID'leri filtreleniyor.
            // toLongOrNull(16) null dönerse decimalId=0L oluyordu → "get-property-value 0 0"
            // gibi anlamsız bir komut gönderiliyordu. Artık bu prop atlanıyor.
            val validProps = propIds.filter { id ->
                val cleanId = id.replace("0x", "")
                cleanId.toLongOrNull(16) != null
            }
            if (validProps.isEmpty()) return
            
            val command = validProps.joinToString(" ; ") { id ->
                // KRİTİK: "0x" prefix'siz hex string → "11600207"  (decimal değil, 0x prefix'i de yok)
                val cleanId = id.replace("0x", "")
                val zone = when (cleanId) {
                    "16200b02", "1540050b", "15400513" -> "1"
                    "13400bc0" -> "65536"
                    else -> "0"
                }
                val decimalId = cleanId.toLong(16)
                "dumpsys car_service get-property-value $decimalId $zone"
            }
            AdbClient.executeCommand(command) { line -> parseAndApplyLine(line) }
        } catch (e: Exception) {
            Log.e(TAG, "readBatch hatası: ${e.message}")
        }
    }

    fun parseAndApplyLine(line: String) {
        if (line.isBlank()) return
        val idMatch = Regex("(?i)Property:(?:0x)?([0-9a-fA-F]+)").find(line)
        var propId = idMatch?.groupValues?.get(1)?.lowercase() ?: return
        
        // AAOS dumpsys sometimes returns decimal property IDs. Convert back to hex string.
        if (propId.all { it.isDigit() }) {
            propId = propId.toLongOrNull()?.toString(16) ?: propId
        }
        
        val value = extractValue(line)
        if (value.isNotBlank()) {
            // [FIX-03] Coroutine scope içinde Mutex ile state güncelleme
            scope.launch {
                applyValueSafe(propId, value)
            }
        }
    }

    // [FIX-03] Thread-safe state güncelleme metodu
    // Birden fazla tier'ın aynı anda applyValue çağırıp birbirinin
    // güncellemesini ezmesini (Lost Update) Mutex ile engelliyor.
    private suspend fun applyValueSafe(propId: String, value: String) {
        stateMutex.withLock {
            applyValue(propId, value)
        }
    }

    private fun applyValue(propId: String, value: String) {
        var displayValue = value
        val current = vehicleState
        var next = current

        when (propId) {
            "11e00d00" -> {
                val floats = value.split(",").map { it.trim().toFloatOrNull() ?: 0f }
                if (floats.size >= 10) {
                    val speed = floats[0] * 3.6f // m/s to km/h
                    val rpm = floats[8]
                    val gearRaw = floats[9].toInt()
                    val gearStr = mapGear(gearRaw)
                    displayValue = String.format("%.1f km/h | %d RPM | %s", speed, rpm.toInt(), gearStr)
                    next = next.copy(
                        speed = speed,
                        engineRpm = rpm,
                        gear = gearRaw,
                        gearString = gearStr,
                        isMoving = speed > 0f,
                        isEngineRunning = rpm > 0f
                    )
                }
            }
            "11400301" -> {
                val on = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (on) "AÇIK" else "KAPALI"
                next = next.copy(isEngineRunning = on)
            }
            "11600204" -> {
                val odo = value.toFloatOrNull() ?: 0f
                displayValue = "${odo.toInt()} km"
                next = next.copy(odometer = odo)
            }
            "11600307" -> {
                val raw = value.toFloatOrNull() ?: 0f
                val liters = raw / 1000f
                displayValue = String.format("%.1f L", liters)
                next = next.copy(fuelLevel = liters)
            }
            "11600308" -> {
                val range = value.toFloatOrNull() ?: 0f
                displayValue = "${range.toInt()} km"
                next = next.copy(rangeKm = range)
            }
            "21402000" -> {
                val open = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (open) "AÇIK" else "KAPALI"
                next = next.copy(anyDoorOpen = open)
            }
            "21402012" -> { val open = (value.toIntOrNull() ?: 0) > 0; displayValue = if (open) "AÇIK" else "KAPALI"; next = next.copy(doorDriverOpen = open) }
            "21402013" -> { val open = (value.toIntOrNull() ?: 0) > 0; displayValue = if (open) "AÇIK" else "KAPALI"; next = next.copy(doorPassengerOpen = open) }
            "21402014" -> { val open = (value.toIntOrNull() ?: 0) > 0; displayValue = if (open) "AÇIK" else "KAPALI"; next = next.copy(doorRearLeftOpen = open) }
            "21402015" -> { val open = (value.toIntOrNull() ?: 0) > 0; displayValue = if (open) "AÇIK" else "KAPALI"; next = next.copy(trunkOpen = open) }
            "21402016" -> { val open = (value.toIntOrNull() ?: 0) > 0; displayValue = if (open) "AÇIK" else "KAPALI"; next = next.copy(doorRearRightOpen = open) }
            "21402002" -> { val v2 = (value.toIntOrNull() ?: 0) > 0; displayValue = if (v2) "AÇIK" else "KAPALI"; next = next.copy(turnSignalLeft = v2) }
            "21402001" -> { val v2 = (value.toIntOrNull() ?: 0) > 0; displayValue = if (v2) "AÇIK" else "KAPALI"; next = next.copy(turnSignalRight = v2) }
            "2140100d" -> { val pb = (value.toIntOrNull() ?: 0) > 0; displayValue = if (pb) "AKTİF" else "PASİF"; next = next.copy(parkingBrake = pb) }
            "11200402" -> { val hl = value.toIntOrNull() ?: 0; displayValue = if (hl > 0) "AÇIK" else "KAPALI"; next = next.copy(headlights = hl) }
            "21402005" -> { val mode = value.toIntOrNull() ?: 0; displayValue = when(mode) { 1 -> "ECO"; 2 -> "SPORT"; 3 -> "SNOW"; 4 -> "MUD"; else -> "NORMAL" }; next = next.copy(drivingMode = mode) }
            "21401002" -> { val ac = (value.toIntOrNull() ?: 0) > 0; displayValue = if (ac) "AÇIK" else "KAPALI"; next = next.copy(isHvacOn = ac) }
            "21401008" -> { val temp = value.toIntOrNull() ?: 0; displayValue = "${temp}°C"; next = next.copy(acTemperatureDriver = temp) }
            "21401009" -> { val temp = value.toIntOrNull() ?: 0; displayValue = "${temp}°C"; next = next.copy(acTemperaturePassenger = temp) }
            "11600703" -> { val temp = value.toFloatOrNull() ?: 0f; displayValue = String.format("%.1f°C", temp); next = next.copy(outsideTemperature = temp) }
            "21401005" -> { val spd = value.toIntOrNull() ?: 0; displayValue = "Seviye $spd"; next = next.copy(acFanSpeed = spd) }
            "21401004" -> { val circ = value.toIntOrNull() ?: 0; displayValue = if (circ == 1) "İÇ SİRK" else "DIŞ HAVA"; next = next.copy(acCirculationMode = circ) }
            "21401003" -> { val comp = (value.toIntOrNull() ?: 0) > 0; displayValue = if (comp) "AÇIK" else "KAPALI"; next = next.copy(acCompressorOn = comp) }
            "21401007" -> { val auto = (value.toIntOrNull() ?: 0) > 0; displayValue = if (auto) "OTO" else "MANÜEL" }
            "2140101e" -> { val fg = (value.toIntOrNull() ?: 0) > 0; displayValue = if (fg) "AÇIK" else "KAPALI"; next = next.copy(frontDefrostOn = fg) }
            "2140101f" -> { val bg = (value.toIntOrNull() ?: 0) > 0; displayValue = if (bg) "AÇIK" else "KAPALI"; next = next.copy(rearDefrostOn = bg) }
            "2140101a" -> { val sync = (value.toIntOrNull() ?: 0) > 0; displayValue = if (sync) "AÇIK" else "KAPALI"; next = next.copy(acSync = sync) }
            "11600309" -> { val bat = value.toFloatOrNull() ?: 0f; displayValue = "${bat.toInt()}%"; next = next.copy(evBatteryLevel = bat) }
            "11600104" -> { val raw = value.toFloatOrNull() ?: 0f; val liters = raw / 1000f; displayValue = String.format("%.1f L", liters); next = next.copy(fuelCapacity = liters) }
            "13400bc0" -> { val wp = value.toIntOrNull() ?: 0; displayValue = "Pozisyon: $wp"; next = next.copy(windowPosition = wp) }
        }

        val label = PROPERTY_DEFINITIONS[propId]?.label ?: propId
        updateDisplay(label, displayValue)

        if (next != current) {
            vehicleState = next
            EventBus.tryEmit(Event.VehicleEvent.StateUpdated(next))
            checkProactiveWarnings(next)
        }
    }

    private fun extractValue(block: String): String {
        val regex = Regex("(?i)(?:value|floatValues|int32Values)s?[:=]\\s*\\[([^]]*)]")
        return regex.findAll(block).map { it.groupValues[1].trim() }.firstOrNull { it.isNotBlank() } ?: ""
    }

    private fun mapGear(gear: Int): String = when (gear) {
        1 -> "P"; 2 -> "R"; 3 -> "N"; 5 -> "D1"; 6 -> "D2"; 7 -> "D3"; else -> "D"
    }

    private fun updateDisplay(key: String, value: String) {
        val m = GlobalState.vehicleDataValues.value.toMutableMap()
        if (m[key] != value) {
            m[key] = value
            GlobalState.vehicleDataValues.value = m
            Log.d(TAG, "[VHAL] $key -> $value")
        }
    }

    private fun checkProactiveWarnings(state: VehicleState) {
        val isMoving = state.speed > 5f
        val hasOpenDoor = state.anyDoorOpen || state.doorDriverOpen || state.doorPassengerOpen
        when {
            isMoving && hasOpenDoor ->
                EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Kapı açık, hareket ediyorsunuz!", android.graphics.Color.RED))
            isMoving && state.parkingBrake ->
                EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("El freni çekili!", android.graphics.Color.RED))
            state.isEngineRunning && state.fuelLevel > 0f && state.fuelLevel < 5f ->
                EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("Yakıt kritik!", android.graphics.Color.RED))
        }
    }

    fun getVehicleState(): VehicleState = vehicleState

    fun injectSimulatedData(json: org.json.JSONObject) {
        if (!GlobalState.isSimulationMode.value) return
        try {
            val propId = json.getString("propertyId").replace("0x", "").lowercase()
            val value = json.optString("float", json.optString("int", "0"))
            // [FIX-03] Simülasyon verisi de Mutex ile korunuyor
            scope.launch {
                stateMutex.withLock {
                    applyValue(propId, value)
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Simülasyon inject hatası: ${e.message}")
        }
    }

    fun destroy() { scope.cancel() }
}
