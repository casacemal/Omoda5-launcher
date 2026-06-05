package com.omoda5.launcher.common

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * v11.0.0 VHAL MASTER — Doğrulanmış OEM smali ID'leri (RX/TX Kitabı)
 * - Adaptive Polling: rölanti=8s, hareket=4s (saha kuralı)
 * - Delta Filter: sadece değişen veriler yayınlanır
 * - rawVhalState: VehicleDataViewModel için Any tipli map
 * - parseLine: String→tipleştirilmiş değer dönüşümü
 */
object VhalManager {

    // UI katmanı için String map (displayable)
    private val _vhalData = MutableStateFlow<Map<String, String>>(emptyMap())
    val vhalData = _vhalData.asStateFlow()

    // VehicleDataViewModel için tipleştirilmiş Any map
    private val _rawVhalData = MutableStateFlow<Map<String, Any>>(emptyMap())
    val rawVhalData = _rawVhalData.asStateFlow()

    private val displayMap = mutableMapOf<String, String>()
    private val rawMap = mutableMapOf<String, Any>()
    private var lastMapSnapshot = emptyMap<String, String>()
    const val ACTION_VHAL_UPDATE = "com.omoda5.launcher.VHAL_UPDATE"

    private var isPolling = false
    private var isInitialized = false

    // OEM smali'den doğrulanmış property ID listesi (VHAL RX/TX Kitabı)
    // Polling sırası: kritik önce, konfor sonra
    private val POLL_IDS = listOf(
        "0x11600207",  // Hız (m/s → km/h × 3.6)
        "0x11600305",  // Motor RPM
        "0x11400400",  // Vites (1:N, 2:R, 4:P, 8:D)
        "0x11400401",  // Kontak (1:OFF, 2:ACC, 3:ON, 4:START)
        "0x11200402",  // El freni
        "0x11600307",  // Yakıt (mL → L / 1000)
        "0x11600308",  // Menzil (km)
        "0x11600703",  // Dış sıcaklık
        "0x15600502",  // İç sıcaklık sol
        "0x15600503",  // İç sıcaklık sağ
        "0x16400b00",  // Kapı durumu (zone alanıyla)
        "0x2140303a",  // Sürüş modu (1:ECO, 2:NORMAL, 3:SPORT)
        "0x15200505",  // Ana far
        "0x21401002",  // AC power (OEM smali)
        "0x21401005",  // Fan hızı (OEM smali)
        "0x21401008"   // Sol klima ısısı (OEM smali)
    )

    private val logReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val log = intent?.getStringExtra("log") ?: return
            parseLine(context, log)
        }
    }

    fun init(context: Context) {
        if (isInitialized) return
        isInitialized = true
        val filter = IntentFilter("com.omoda5.launcher.LOG_BROADCAST")
        context.registerReceiver(logReceiver, filter)
        startAdaptivePolling(context)
        LogManager.addLog("[VHAL] Manager başlatıldı — ${POLL_IDS.size} property izleniyor")
    }

    private fun startAdaptivePolling(context: Context) {
        if (isPolling) return
        isPolling = true
        CoroutineScope(Dispatchers.IO).launch {
            while (isActive) {
                val speedKmH = (rawMap["HIZ_RAW"] as? Float ?: 0f) * 3.6f
                val gear = displayMap["VİTES"] ?: "P"

                // SAHA KURALI: 3s hareket, 10s rölanti (registerCallback donma riski)
                val isIdle = speedKmH < 1f && (gear == "P" || gear == "N")
                val interval = if (isIdle) 10000L else 3000L

                // Kapı için ayrı zone sorgulama (area ID gerektirir)
                val doorAreas = listOf("1", "4", "16", "64", "536870912") // 0x20000000

                // ZORLA OKUMA KOMUTLARI (Force Read Cache Bypass)
                val standardCmds = POLL_IDS.filter { it != "0x16400b00" }
                    .joinToString(" ; ") { "dumpsys car_service get-property-value $it 0" }
                val doorCmds = doorAreas.joinToString(" ; ") { "dumpsys car_service get-property-value 0x16400b00 $it" }

                val cmd = "$standardCmds ; $doorCmds"

                try {
                    context.startService(
                        Intent(context, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                            action = "ACTION_EXECUTE_SHELL"
                            putExtra("command", cmd)
                        }
                    )
                } catch (e: Exception) {
                    LogManager.addLog("[VHAL_ERR] Poll gönderilemedi: ${e.message}")
                }

                delay(interval)
            }
        }
    }

    /**
     * ADB log satırını parse eder.
     * dumpsys car_service çıktısı: "mPropertyId:0x11600207 mValue:[12.5] ..."
     * veya: "PropertyId:0x11600207 areaId:0 value:[12.5]"
     */
    private fun parseLine(context: Context?, l: String) {
        // Property ID'yi çıkar (Örn: 0x11600207)
        val idStr = Regex("0x[0-9a-fA-F]+").find(l)?.value ?: "Unknown"

        // Değer bloğunu bul: "value=X" veya "mValue:[X]" formatı (Esnek Yakalayıcı)
        val valStr = Regex("(?i)value[:=]\\s*\\[?([\\d.,\\s\\-]+)\\]?").find(l)?.groupValues?.get(1)?.trim() ?: ""

        // Kapı satırları için zone varsa boş değer olabilir
        val isDoorLine = l.contains("0x16400b00")
        if (valStr.isEmpty() && !isDoorLine) return

        val numericVal = valStr.filter { it.isDigit() || it == '.' || it == '-' }
        var updated = false

        fun setDisplay(key: String, value: String) { displayMap[key] = value; updated = true }
        fun setRaw(key: String, value: Any) { rawMap[key] = value; updated = true }

        fun set(dk: String, dv: String, rk: String, rv: Any) { setDisplay(dk, dv); setRaw(rk, rv) }

        // BÜTÜN ham okumaları ID bazlı olarak kaydet (Diagnostic için)
        if (idStr != "Unknown") {
            setRaw("RAW_$idStr", numericVal.ifEmpty { valStr })
        }

        when {
            // TEMEL SENSÖRLER (AGENTS.md + saha doğrulaması)
            l.contains("0x11600207") -> {
                val raw = numericVal.toFloatOrNull() ?: 0f
                val kmh = raw * 3.6f
                set("HIZ", "${kmh.toInt()} km/h", "HIZ", kmh)
                setRaw("HIZ_RAW", raw)
            }
            l.contains("0x11600305") -> {
                val rpm = numericVal.toFloatOrNull() ?: 0f
                set("DEVİR", "${rpm.toInt()} RPM", "DEVİR", rpm)
            }
            l.contains("0x11600703") -> {
                val temp = numericVal.toFloatOrNull() ?: 0f
                set("DIŞ ISI", "${temp.toInt()} °C", "DIŞ ISI", temp)
            }
            l.contains("0x11400400") -> {
                val intVal = numericVal.substringBefore('.')
                val gearStr = when (intVal) {
                    "1" -> "N"; "2" -> "R"; "4" -> "P"; "8" -> "D"
                    else -> "?$intVal"
                }
                set("VİTES", gearStr, "VİTES", gearStr)
            }
            l.contains("0x11400401") -> {
                val intVal = numericVal.substringBefore('.')
                val ignStr = when (intVal) {
                    "1" -> "OFF"; "2" -> "ACC"; "3" -> "ON"; "4" -> "STARTING"
                    else -> "?$intVal"
                }
                set("KONTAK", ignStr, "KONTAK", ignStr)
            }
            l.contains("0x11200402") -> {
                val on = numericVal.startsWith("1")
                set("FREN", if (on) "ÇEKİLİ" else "BIRAKILDI", "FREN", on)
            }
            l.contains("0x11600308") -> {
                val km = numericVal.toFloatOrNull() ?: 0f
                set("MENZİL", "${km.toInt()} km", "MENZİL", km.toInt())
            }
            l.contains("0x11600307") -> {
                val litre = (numericVal.toFloatOrNull() ?: 0f) / 1000f
                set("YAKIT", "%.1f L".format(litre), "YAKIT", litre)
            }
            // İÇ SICAKLIK
            l.contains("0x15600502") -> {
                val temp = numericVal.toFloatOrNull() ?: 0f
                set("İÇ ISI SOL", "${temp.toInt()} °C", "İÇ ISI SOL", temp)
            }
            l.contains("0x15600503") -> {
                val temp = numericVal.toFloatOrNull() ?: 0f
                set("İÇ ISI SAĞ", "${temp.toInt()} °C", "İÇ ISI SAĞ", temp)
            }
            // SÜRÜŞ MODU (OEM smali CarDriveClient)
            l.contains("0x2140303a") -> {
                val mode = numericVal.substringBefore('.').toIntOrNull() ?: 2
                val modeStr = when (mode) { 1 -> "ECO"; 3 -> "SPORT"; else -> "NORMAL" }
                set("SÜRÜŞ MODU", modeStr, "SÜRÜŞ MODU", mode)
            }
            // FAR (OEM smali CarLampClient)
            l.contains("0x15200505") -> {
                val on = numericVal.startsWith("1")
                set("FAR", if (on) "AÇIK" else "KAPALI", "FAR", on)
            }
            // HVAC — OEM smali CarHvacClient
            l.contains("0x21401002") -> {
                val on = numericVal.startsWith("1")
                set("AC GÜÇ", if (on) "AÇIK" else "KAPALI", "AC GÜÇ", on)
            }
            l.contains("0x21401005") -> {
                val lvl = numericVal.toFloatOrNull()?.toInt() ?: 0
                set("FAN", "Kademe $lvl", "FAN", lvl)
            }
            l.contains("0x21401008") -> {
                val temp = numericVal.toFloatOrNull() ?: 0f
                set("KLİMA", "${temp.toInt()} °C", "KLİMA", temp)
            }
            // KAPI DURUMU — zone formatı
            isDoorLine -> {
                // Hem zone:1 hem de areaId=1 formatını destekle
                val zoneMatch = Regex("(?i)(zone|areaId)[:=]\\s*(0x[0-9a-fA-F]+|\\d+)").find(l)
                val zoneStr = zoneMatch?.groupValues?.get(2) ?: "0"
                val zone = if (zoneStr.startsWith("0x")) zoneStr.removePrefix("0x").toIntOrNull(16) ?: 0 else zoneStr.toIntOrNull() ?: 0
                
                val open = (numericVal.toFloatOrNull() ?: 0f) > 0f
                val zoneName = when (zone) {
                    1 -> "SOL ÖN KAPI"
                    4 -> "SAĞ ÖN KAPI"
                    16 -> "SOL ARKA KAPI"
                    64 -> "SAĞ ARKA KAPI"
                    0x20000000 -> "BAGAJ"
                    else -> "KAPI ($zone)"
                }
                set(zoneName, if (open) "AÇIK" else "KAPALI", zoneName, if (open) 1f else 0f)
            }
        }

        if (updated) {
            val newDisplay = displayMap.toMap()
            val newRaw = rawMap.toMap()
            if (newDisplay != lastMapSnapshot) {
                val diffs = newDisplay
                    .filter { it.value != lastMapSnapshot[it.key] }
                    .map { "${it.key}=${it.value}" }.joinToString(", ")
                if (diffs.isNotEmpty()) LogManager.addLog("[VHAL] $diffs")

                lastMapSnapshot = newDisplay
            }

            _vhalData.value = newDisplay
            _rawVhalData.value = newRaw

            // SystemBridgeManager'ı da güncelle
            SystemBridgeManager.updateVhal(newDisplay, newRaw)

            // Broadcast (legacy uyumluluk)
            context?.sendBroadcast(Intent(ACTION_VHAL_UPDATE).apply {
                putExtra("data", HashMap(newDisplay))
                setPackage(context?.packageName)
            })
        }
    }
}
