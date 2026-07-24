package com.omoda.lanc.core.dsl

import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.core.GlobalState
import android.graphics.Color

/**
 * Architecture 2.0: Omoda 5 Platform Tanımı (MASTER SYNC)
 * Kapı bölgeleri, TPMS ve tüm otomasyonlar dahil.
 */

val Omoda5 = vehiclePlatform("Chery Omoda 5") {
    
    // 1. TEMEL SENSÖRLER
    property("speed") {
        id = "0x11600207"
        type = DataType.FLOAT
        unit = "km/h"
        pollingTier = 2
        label = "HIZ"
        conversion = { v -> "${((v.toFloatOrNull() ?: 0f) * 3.6f).toInt()} km/h" }
        rawConversion = { v -> (v.toFloatOrNull() ?: 0f) * 3.6f }
    }

    property("gear") {
        id = "0x11400400"
        type = DataType.INT
        pollingTier = 2
        label = "VİTES"
        conversion = { v ->
            when (v.substringBefore(".")) {
                "1" -> "N"; "2" -> "R"; "4" -> "P"; "8" -> "D"
                else -> "D"
            }
        }
    }

    property("fuel") {
        id = "0x11600307"
        type = DataType.FLOAT
        pollingTier = 5
        label = "YAKIT"
        conversion = { v -> "%.1f L".format((v.toFloatOrNull() ?: 0f) / 1000f) }
    }

    property("engine_rpm") { id = "0x11600305"; type = DataType.FLOAT; pollingTier = 2; label = "MOTOR DEVRİ"; conversion = { v -> "${v.toFloatOrNull()?.toInt() ?: 0} RPM" } }
    property("odometer") { id = "0x11600204"; type = DataType.FLOAT; pollingTier = 5; label = "TOPLAM KM"; conversion = { v -> "${v.toFloatOrNull()?.toInt() ?: 0} km" } }
    property("range_km") { id = "0x11600308"; type = DataType.FLOAT; pollingTier = 5; label = "KALAN MENZİL"; conversion = { v -> "${v.toFloatOrNull()?.toInt() ?: 0} km" } }
    property("engine_status") { id = "0x11400301"; type = DataType.INT; pollingTier = 2; label = "MOTOR DURUMU"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("ignition_state") { id = "0x11400409"; type = DataType.INT; pollingTier = 5; label = "KONTAK"; conversion = { v -> when(v.substringBefore(".")) { "1" -> "KAPALI"; "2" -> "ACC"; "3" -> "ON"; "4" -> "START"; else -> "BİLİNMİYOR" } } }

    // 2. KAPILAR (Chery Özel ID'leri - Hermes-bridge'den alındı)
    property("door_fl") { id = "0x21402012"; pollingTier = 5; label = "ÖN SOL KAPI"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("door_fr") { id = "0x21402013"; pollingTier = 5; label = "ÖN SAĞ KAPI"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("door_rl") { id = "0x21402014"; pollingTier = 5; label = "ARKA SOL KAPI"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("door_rr") { id = "0x21402016"; pollingTier = 5; label = "ARKA SAĞ KAPI"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("door_trunk") { id = "0x21402015"; pollingTier = 5; label = "BAGAJ KAPAĞI"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("door_locks") { id = "0x16200b02"; type = DataType.INT; pollingTier = 5; label = "KAPI KİLİDİ"; conversion = { v -> if (v.substringBefore(".") == "1") "KİLİTLİ" else "AÇIK" } }

    // 3. KLİMA (HVAC)
    hvac {
        power { id = "0x21401002"; label = "AC GÜÇ" }
        tempDriver { id = "0x21401008"; label = "SOL ISI" }
        tempPassenger { id = "0x21401009"; label = "SAĞ ISI" }
        fanSpeed { id = "0x21401005"; label = "FAN" }
        acMode { id = "0x21401007"; label = "AUTO" }
    }
    property("outside_temp") { id = "0x11600703"; type = DataType.FLOAT; pollingTier = 5; label = "DIŞ ISI"; conversion = { v -> "%.1f°C".format(v.toFloatOrNull() ?: 0f) } }
    property("seat_heat") { id = "0x1540050b"; type = DataType.INT; pollingTier = 5; label = "KOLTUK ISITMA" }
    property("seat_vent") { id = "0x15400513"; type = DataType.INT; pollingTier = 5; label = "KOLTUK SOĞUTMA" }
    property("front_defrost") { id = "0x2140101e"; type = DataType.INT; pollingTier = 5; label = "ÖN REZİSTANS"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("rear_defrost") { id = "0x2140101f"; type = DataType.INT; pollingTier = 5; label = "ARKA REZİSTANS"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("ac_circulation") { id = "0x21401004"; type = DataType.INT; pollingTier = 5; label = "SİRKÜLASYON"; conversion = { v -> if (v.substringBefore(".") == "1") "İÇ SİRK" else "DIŞ HAVA" } }
    property("ac_compressor") { id = "0x21401003"; type = DataType.INT; pollingTier = 5; label = "AC KOMPRESÖR"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("ac_sync") { id = "0x2140101a"; type = DataType.INT; pollingTier = 5; label = "KLİMA SYNC"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }

    // 4. LASTİK BASINÇLARI (TPMS)
    property("tpms_fl") { id = "0x21403042"; pollingTier = 5; label = "FL"; type = DataType.INT; conversion = { v -> "${(v.toFloatOrNull() ?: 0f) / 100f} bar" } }
    property("tpms_fr") { id = "0x21403043"; pollingTier = 5; label = "FR"; type = DataType.INT; conversion = { v -> "${(v.toFloatOrNull() ?: 0f) / 100f} bar" } }
    property("tpms_rl") { id = "0x21403044"; pollingTier = 5; label = "RL"; type = DataType.INT; conversion = { v -> "${(v.toFloatOrNull() ?: 0f) / 100f} bar" } }
    property("tpms_rr") { id = "0x21403045"; pollingTier = 5; label = "RR"; type = DataType.INT; conversion = { v -> "${(v.toFloatOrNull() ?: 0f) / 100f} bar" } }

    // 5. İNDİKATÖRLER & SİNYALLER
    property("turn_left") { id = "0x21402002"; type = DataType.INT; pollingTier = 2; label = "SOL SİNYAL"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("turn_right") { id = "0x21402001"; type = DataType.INT; pollingTier = 2; label = "SAĞ SİNYAL"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("hazard_lights") { id = "0x11400e03"; type = DataType.INT; pollingTier = 5; label = "DÖRTLÜLER"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("headlights") { id = "0x11200402"; type = DataType.INT; pollingTier = 5; label = "FARLAR"; conversion = { v -> if (v.startsWith("1")) "AÇIK" else "KAPALI" } }
    property("parking_brake") { id = "0x2140100d"; type = DataType.INT; pollingTier = 2; label = "EL FRENİ"; conversion = { v -> if (v.startsWith("1")) "AKTİF" else "PASİF" } }
    property("window_pos") { id = "0x13400bc0"; type = DataType.INT; pollingTier = 5; label = "CAM POZİSYONU" }

    // 6. EK SİSTEMLER
    property("driving_mode") { id = "0x21402005"; type = DataType.INT; pollingTier = 5; label = "SÜRÜŞ MODU"; conversion = { v -> when(v.substringBefore(".")) { "1" -> "ECO"; "2" -> "SPORT"; "3" -> "SNOW"; "4" -> "MUD"; else -> "NORMAL" } } }
    property("ambient_light") { id = "0x2140303a"; pollingTier = 5; label = "AMBİYANS"; type = DataType.INT }
    property("auto_lock") { id = "0x21403001"; pollingTier = 5; label = "OTO KİLİT"; type = DataType.INT }
    property("auto_fold") { id = "0x21403002"; pollingTier = 5; label = "OTO KATLAMA"; type = DataType.INT }
    property("brightness") { id = "0x2140302c"; pollingTier = 5; label = "PARLAKLIK"; type = DataType.INT }
    property("ev_battery") { id = "0x11600309"; type = DataType.FLOAT; pollingTier = 5; label = "EV BATARYA"; conversion = { v -> "${v.toFloatOrNull()?.toInt() ?: 0}%" } }
    property("fuel_capacity") { id = "0x11600104"; type = DataType.FLOAT; pollingTier = 5; label = "YAKIT KAPASİTESİ"; conversion = { v -> "%.1f L".format((v.toFloatOrNull() ?: 0f) / 1000f) } }
    // 6. OTOMASYONLAR
    automation {
        rule("Düşük Yakıt") {
            condition { it.isEngineRunning && it.fuelLevel > 0f && it.fuelLevel < 5f }
            action { _ -> EventBus.tryEmit(Event.UIEvent.UpdateOverlayState("YAKIT KRİTİK!", Color.RED)) }
        }

        rule("Hız Duyarlı Panel") {
            condition { true }
            action { state ->
                // Manifesto Kural 7: Hız > 80 km/h ise Dashboard Left Weight Artır
                if (state.speed > 80f) {
                    GlobalState.dashboardLeftWeight.value = 0.65f
                } else {
                    GlobalState.dashboardLeftWeight.value = 0.60f
                }
            }
        }
    }
}

val OmodaTools = toolRegistry {
    
    tool("set_hvac_temp") {
        description = "Klima sıcaklığını ayarlar"
        parameter("temperature", ParamType.NUMBER, "Sıcaklık", true, 16.0, 28.0)
        offlinePhrases("dereceyi {temperature} yap")
        onExecute { args -> "dumpsys car_service set-property-value 557846536 1 ${args["temperature"]}" }
    }

    tool("hvac_on") {
        description = "Klimayı açar"
        offlinePhrases("klimayı aç", "soğutmayı başlat")
        onExecute { "dumpsys car_service set-property-value 557846530 0 1 ; am start -n com.chery.hvac/.view.activity.MainActivity" }
    }

    tool("hvac_off") {
        description = "Klimayı kapatır"
        offlinePhrases("klimayı kapat", "soğutmayı durdur")
        onExecute { "dumpsys car_service set-property-value 557846530 0 0" }
    }

    tool("media_control") {
        description = "Medya kontrolü"
        parameter("action", ParamType.STRING, "next, prev, play_pause", true)
        onExecute { args ->
            when (args["action"]) {
                "next" -> "input keyevent 87"
                "prev" -> "input keyevent 88"
                else -> "input keyevent 85"
            }
        }
    }

    tool("open_windows") {
        description = "Camları açar"
        offlinePhrases("camları aç", "camı aç")
        onExecute { "dumpsys car_service set-property-value 322964416 15 100" }
    }

    tool("close_windows") {
        description = "Camları kapatır"
        offlinePhrases("camları kapat", "camı kapat")
        onExecute { "dumpsys car_service set-property-value 322964416 15 0" }
    }
}
