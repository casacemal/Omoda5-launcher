package com.omoda.lanc.core

import android.content.Context
import android.content.BroadcastReceiver
import android.content.Intent
import android.content.IntentFilter
import android.util.Log

import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.model.VehicleState
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader
import java.util.concurrent.atomic.AtomicReference
import com.omoda.lanc.core.SensorPreferences
import com.omoda.lanc.core.SensorDictionary
import kotlinx.coroutines.*

/**
 * Sürüm 7.0: 3 Katmanlı Toplu (Batch) Araç Veri Okuyucu
 * 
 * Tier 1 (FAST)   : Her 2 saniyede bir — hız, vites, RPM gibi kritik veriler
 * Tier 2 (MEDIUM)  : Her 5 saniyede bir — kapı, sinyal, far, park freni
 * Tier 3 (SLOW)    : Her 10 saniyede bir — sıcaklıklar, klima, sürüş modu
 * 
 * Her tier tek bir shell process ile toplu okuma yapar (14 proses → 3 proses).
 * UI'dan her property ayrı ayrı açılıp kapatılabilir ve tier değiştirilebilir.
 */
class VehicleController(private val context: Context) {
    private val TAG = "VehicleController"
    private val vehicleState = AtomicReference(VehicleState())
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    
    init {
        instance = this
        registerMediaReceiver()
    }


    companion object {
        var instance: VehicleController? = null

        fun getInstance(context: Context): VehicleController {
            if (instance == null) {
                instance = VehicleController(context.applicationContext)
            }
            return instance!!
        }

        // Property tanımları: ID -> (varsayılan tier, Türkçe isim)
        // Tier: 0=kapalı, 2=FAST(2sn), 5=MEDIUM(5sn), 10=SLOW(10sn)
        val PROPERTY_DEFINITIONS = linkedMapOf(
            "11600207" to PropertyDef("Hız", 2),
            "21402006" to PropertyDef("Vites", 2),
            "11400301" to PropertyDef("Motor Durumu", 2),
            "11600305" to PropertyDef("Motor RPM", 2),
            "11600204" to PropertyDef("Toplam KM", 5),
            "11600307" to PropertyDef("Kalan Yakıt", 2), // 2 saniyede bir kontrol et (Hızlı yakıt uyarısı için)
            "11600308" to PropertyDef("Kalan Menzil", 5),
            "11400400" to PropertyDef("Standart Vites Seçimi", 5),
            "11400401" to PropertyDef("Standart Mevcut Vites", 5),
            "21402000" to PropertyDef("Kapı Açık İkazı", 2), // 2 saniyede bir kontrol (Güvenlik için hızlı)
            "21402012" to PropertyDef("Ön Sol Kapı", 2),
            "21402013" to PropertyDef("Ön Sağ Kapı", 2),
            "21402014" to PropertyDef("Arka Sol Kapı", 2),
            "21402015" to PropertyDef("Bagaj Kapağı", 2),
            "21402016" to PropertyDef("Arka Sağ Kapı (Tahmin)", 2),
            "21402002" to PropertyDef("Sol Sinyal", 5),
            "21402001" to PropertyDef("Sağ Sinyal", 5),
            "2140100d" to PropertyDef("Park Freni", 2), // 2 saniyede bir kontrol
            "11200402" to PropertyDef("Far", 5),
            "21402005" to PropertyDef("Sürüş Modu", 10),
            "21401002" to PropertyDef("AC Güç", 10),
            "21401008" to PropertyDef("AC Sıcaklık (Sürücü)", 10),
            "21401009" to PropertyDef("AC Sıcaklık (Yolcu)", 10),
            "11600703" to PropertyDef("Dış Sıcaklık", 2), // 2 saniyede bir gitsin (Ortam sıcaklığı)
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
            "11600304" to PropertyDef("Motor Yağ Sıc.", 2), // Yağ sıcaklığı da 2 saniyede bir
            "1540050b" to PropertyDef("Koltuk Isıtma", 5),
            "15400513" to PropertyDef("Koltuk Soğutma", 5),
            "MEDIA_INFO" to PropertyDef("Çalan Medya", 2), // 2 saniyede bir gitsin
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

    // Proaktif Uyarı Yönetimi Değişkenleri
    private var activeAnomaly: String? = null
    private var anomalyJob: Job? = null
    private var lastAnomalyText: String? = null

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
                            
                            val currentValues = AssistantApplication.vehicleDataValues.value.toMutableMap()
                            currentValues[btnId] = "BASILDI"
                            AssistantApplication.vehicleDataValues.value = currentValues
                            
                            // Reset after 1s
                            scope.launch {
                                delay(1000)
                                val resetValues = AssistantApplication.vehicleDataValues.value.toMutableMap()
                                if (resetValues[btnId] == "BASILDI") {
                                    resetValues[btnId] = "BEKLİYOR"
                                    AssistantApplication.vehicleDataValues.value = resetValues
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
                val config = AssistantApplication.vehiclePollingConfig.value
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

    /**
     * Toplu okuma: Verilen property ID'lerini tek shell process'te okur.
     */
    
    private fun readBatch(propIds: List<String>) {
        if (AssistantApplication.isSimulationMode.value) {
            return
        }

        val carProps = propIds.filter { !it.startsWith("MEDIA_") }
        if (propIds.contains("MEDIA_INFO")) {
            try {
                val mediaProc = Runtime.getRuntime().exec(arrayOf("sh", "-c", "dumpsys media_session | grep 'description=' | head -n 1"))
                val reader = java.io.BufferedReader(java.io.InputStreamReader(mediaProc.inputStream))
                val line = reader.readLine()
                if (line != null) {
                    val desc = line.substringAfter("description=").substringBeforeLast(",").trim()
                    val currentValues = AssistantApplication.vehicleDataValues.value.toMutableMap()
                    currentValues["MEDIA_INFO"] = desc
                    AssistantApplication.vehicleDataValues.value = currentValues
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
                // ID'leri 0x önekiyle gönder (AAOS standartı)
                val cleanId = it.replace("0x", "")
                "dumpsys car_service get-property-value 0x$cleanId $zone"
            }
            
            // AdbClient kullanarak yetkili shell üzerinden okuma yap (Kaynak: omodaassist_v2 prensibi)
            com.omoda.lanc.network.AdbClient.executeCommand(command) { line ->
                if (AssistantApplication.isBridgeMode.value) {
                    AssistantApplication.mqttPublisher.publishRawVhal(line)
                }
                parseAndApplyLine(line)
            }
        } catch (e: Exception) {
            Log.e(TAG, "readBatch hatası: ${e.message}")
        }
    }

    /**
     * MQTT üzerinden gelen JSON simülasyon verilerini State nesnesine aktarır.
     */
    fun injectSimulatedData(json: org.json.JSONObject) {
        if (!AssistantApplication.isSimulationMode.value) return
        try {
            var propId = json.getString("propertyId")
            // Android tarafında propId'ler genellikle '0x' olmadan tutuluyor
            val cleanPropId = propId.replace("0x", "")
            
            val current = vehicleState.get()

            val updated = when (propId) {
                "0x11600207", "11600207" -> current.copy(speed = json.optDouble("float", current.speed.toDouble()).toFloat())
                "0x11600305", "11600305" -> current.copy(engineRpm = json.optDouble("float", current.engineRpm.toDouble()).toFloat())
                "0x11600204", "11600204" -> current.copy(odometer = json.optDouble("float", current.odometer.toDouble()).toFloat())
                "0x11600307", "11600307" -> current.copy(fuelLevel = json.optDouble("float", current.fuelLevel.toDouble()).toFloat())
                "0x11600308", "11600308" -> current.copy(rangeKm = json.optDouble("float", current.rangeKm.toDouble()).toFloat())
                "0x11400400", "11400400" -> current.copy(gear = json.optInt("int", current.gear))
                "0x11200403", "11200403" -> current.copy(parkingBrake = json.optInt("int", if(current.parkingBrake) 1 else 0) == 1)
                "0x15400500", "15400500" -> current.copy(isHvacOn = json.optInt("int", if (current.isHvacOn) 1 else 0) == 1)
                "0x15600503", "15600503" -> {
                    val zone = json.optString("zone", "0x1")
                    val temp = json.optDouble("float", current.acTemperatureDriver.toDouble()).toInt()
                    if (zone == "0x1") current.copy(acTemperatureDriver = temp)
                    else current.copy(acTemperaturePassenger = temp)
                }
                "0x11600703", "11600703" -> current.copy(outsideTemperature = json.optDouble("float", current.outsideTemperature.toDouble()).toFloat())
                else -> current // Bilinmeyen sensörler şu an simüle edilmiyor
            }
            updateState { updated }
            
            // UI tablosunu da güncelle ki ekranda değiştiğini görelim
            val valueStr = if (json.has("float") && json.getString("float").isNotBlank()) {
                json.getString("float")
            } else if (json.has("int") && json.getString("int").isNotBlank()) {
                json.getString("int")
            } else if (json.has("string")) {
                json.getString("string")
            } else {
                "SIM_DATA"
            }
            
            val currentValues = AssistantApplication.vehicleDataValues.value.toMutableMap()
            // Hem orijinal id hem de temizlenmiş id ile kaydedelim
            currentValues[cleanPropId] = "$valueStr (SİMÜLE)"
            AssistantApplication.vehicleDataValues.value = currentValues

        } catch (e: Exception) {
            Log.e(TAG, "Simülasyon inject hatası: ${e.message}")
        }
    }

    fun parseAndApplyLine(line: String) {
        if (line.contains("Property:")) {
            // ID'yi robust bir şekilde baştan yakala (örn: 0x11600207)
            val idMatch = Regex("0x([0-9a-fA-F]+)").find(line)
            val propId = idMatch?.groupValues?.get(1)?.lowercase()
            if (propId != null) {
                val value = extractValue(line)
                if (value.isNotBlank()) {
                    Log.d(TAG, "Parsed VHAL: $propId -> $value")
                    applyValue(propId, value)
                } else {
                    Log.w(TAG, "Empty value for propId: $propId in line: $line")
                }
            }
        } else if (line.contains("Can not get property")) {
            Log.w(TAG, "VHAL fetch error: $line")
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
            "11400400" -> {
                val g = value.toIntOrNull() ?: 4
                displayValue = mapStandardGear(g)
            }
            "11400401" -> {
                val g = value.toIntOrNull() ?: 4
                displayValue = mapStandardGear(g)
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
            "11400409" -> {
                val state = value.toIntOrNull() ?: 0
                displayValue = when(state) {
                    1 -> "KAPALI"
                    2 -> "AKSESUAR (ACC)"
                    3 -> "AÇIK (ON)"
                    4 -> "ÇALIŞIYOR (START)"
                    else -> "Durum: $state"
                }
            }
            "11400e03" -> {
                val hz = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (hz) "AÇIK" else "KAPALI"
            }
            "16200b02" -> {
                val locks = value.toIntOrNull() ?: 0
                displayValue = if (locks == 1) "KİLİTLİ" else "AÇIK"
            }
            "15200505" -> {
                val ac = (value.toIntOrNull() ?: 0) > 0
                displayValue = if (ac) "AÇIK" else "KAPALI"
            }
            "15400500" -> {
                val fan = value.toIntOrNull() ?: 0
                displayValue = "Seviye $fan"
            }
            "13400bc0" -> {
                val wp = value.toIntOrNull() ?: 0
                displayValue = "Pozisyon: $wp"
                updateState { s -> s.copy(windowPosition = wp) }
            }
        }
        
        Log.d(TAG, "applyValue: $propId -> $displayValue")
        
        // UI tablosunu güncelle
        val currentValues = AssistantApplication.vehicleDataValues.value.toMutableMap()
        currentValues[propId] = displayValue
        AssistantApplication.vehicleDataValues.value = currentValues
    }

    private fun it2float(v: String): Float = v.toFloatOrNull() ?: 0f

    fun extractValue(block: String): String {
        val regex = Regex("(?i)(?:value|floatValues|int32Values)[s]?[:=]\\s*\\[([^]]*)]")
        val allMatches = regex.findAll(block)
        return allMatches.map { it.groupValues[1].trim() }.firstOrNull { it.isNotBlank() } ?: ""
    }

    private fun mapGear(gear: Int): String = when (gear) {
        1 -> "P"
        2 -> "R"
        3 -> "N"
        5 -> "D1"
        6 -> "D2"
        7 -> "D3"
        else -> "D"
    }

    private fun mapStandardGear(gear: Int): String = when (gear) {
        1 -> "N"
        2 -> "R"
        4 -> "P"
        8 -> "D"
        else -> "D"
    }

    private fun updateState(update: (VehicleState) -> VehicleState) {
        vehicleState.set(update(vehicleState.get()))
        // MQTT'ye publish et
        if (AssistantApplication.mqttEnabled.value) {
            AssistantApplication.mqttPublisher.publishTelemetry(vehicleState.get())
        }
        checkProactiveWarnings() // Her state güncellemesinde anomalileri denetle
    }

    private fun checkProactiveWarnings() {
        val state = getVehicleState()
        
        // 1. Durum: Hareket halinde açık kapı (Güvenlik Öncelikli)
        val isMoving = state.speed > 5f
        val hasOpenDoor = state.anyDoorOpen || state.doorDriverOpen || state.doorPassengerOpen || state.doorRearLeftOpen || state.doorRearRightOpen || state.trunkOpen
        
        val currentAnomaly = when {
            isMoving && hasOpenDoor -> {
                val doorName = when {
                    state.doorDriverOpen -> "Sürücü kapısı"
                    state.doorPassengerOpen -> "Ön yolcu kapısı"
                    state.doorRearLeftOpen -> "Sol arka kapı"
                    state.doorRearRightOpen -> "Sağ arka kapı"
                    state.trunkOpen -> "Bagaj kapağı"
                    else -> "Kapılardan biri"
                }
                "DOOR_OPEN_WARNING|$doorName açık durumda hareket ediyorsunuz! Lütfen hemen durun ve kapıyı kapatın."
            }
            isMoving && state.parkingBrake -> {
                "PARK_BRAKE_WARNING|El freni çekili durumda hareket ediyorsunuz! Lütfen el frenini indirin."
            }
            state.isEngineRunning && state.fuelLevel > 0f && state.fuelLevel < 5f -> {
                "LOW_FUEL_WARNING|Yakıt seviyeniz kritik düzeyde, lütfen en yakın akaryakıt istasyonuna müracaat edin."
            }
            else -> null
        }

        if (currentAnomaly != null) {
            val parts = currentAnomaly.split("|")
            val type = parts[0]
            val text = parts[1]
            
            if (activeAnomaly != type) {
                // Yeni bir anomali başladı veya değişti
                activeAnomaly = type
                lastAnomalyText = text
                startAnomalyAlertCycle(text)
            }
        } else {
            // Anomali kalmadı (temizlendi)
            if (activeAnomaly != null && AssistantApplication.proactiveWarning.value != "DISMISSED") {
                Log.i(TAG, "Anomali giderildi: $activeAnomaly")
                activeAnomaly = null
                lastAnomalyText = null
                anomalyJob?.cancel()
                AssistantApplication.proactiveWarning.value = null
            }
        }
    }

    private fun startAnomalyAlertCycle(warningText: String) {
        anomalyJob?.cancel()
        anomalyJob = scope.launch {
            var count = 0
            val delays = arrayOf(0L, 5000L, 10000L) // 3 Tekrar zamanları (Hemen, 5sn sonra, 10sn sonra)

            while (count < 3 && activeAnomaly != null) {
                if (count > 0) {
                    delay(delays[count])
                }
                
                // Kullanıcı onaylamışsa veya anomali bitmişse döngüden çık
                if (activeAnomaly == null || AssistantApplication.proactiveWarning.value == "DISMISSED") {
                    break
                }

                Log.w(TAG, "PROAKTİF UYARI TETİKLENDİ (${count + 1}/3): $warningText")
                
                // 1. Ekran Overlay durumunu güncelle (Bu durum MainActivity'de toplanıp seslendirilecek)
                AssistantApplication.proactiveWarning.value = warningText
                
                // 2. Canlı Log Paneline yaz
                EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("[PROAKTİF UYARI] $warningText", android.graphics.Color.RED))
                
                count++
            }
        }
    }

    fun dismissActiveAnomaly() {
        Log.i(TAG, "Kullanıcı proaktif uyarıyı onayladı ve kapattı.")
        activeAnomaly = null
        lastAnomalyText = null
        anomalyJob?.cancel()
        AssistantApplication.proactiveWarning.value = "DISMISSED"
        EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("", android.graphics.Color.TRANSPARENT))
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

    /**
     * Araç komutlarını yürütür.
     */
    fun executeCommand(command: String): Boolean {
        Log.i(TAG, "Araç komutu yürütülüyor: $command")
        // Gerçek implementasyon ActionExecutor üzerinden de yapılabilir.
        return true 
    }

    fun destroy() {
        scope.cancel()
        try {
            mediaReceiver?.let { context.unregisterReceiver(it) }
        } catch(e: Exception) {}
    }
}


