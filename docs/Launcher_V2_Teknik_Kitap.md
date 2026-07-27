# 🚗 LAUNCHER_V2 — KAPSAMLI TEKNİK KİTAP
> Son güncelleme: 2025-07-25 | Kaynak: /mnt/depo/launcher_v2 + /mnt/depo/omodaassist_v2

---

## 1. PROJE ÖZETİ

| Özellik | Değer |
|---------|-------|
| Paket | `com.omoda.lanc` |
| Cihaz | Chery Omoda5 (T19C) AAOS10/SEMIDRIVE X9 |
| Ekran | 1920×720 @ 50.6FPS, density 160 |
| GPU | PowerVR |
| API | 29 (userdebug) |
| Build | chery_t19c-userdebug 10 QKQ1.200812.002 |
| Root | ROOTLU (su root erişimi var) |

---

## 2. MİMARİ — 7 KATMAN

```
┌─────────────────────────────────────────────┐
│ KATMAN 7: UI (Jetpack Compose)             │
│   MainActivity → Navigation → SettingsTabs  │
├─────────────────────────────────────────────┤
│ KATMAN 6: Servisler                         │
│   AdbBridgeService, ServiceManager          │
├─────────────────────────────────────────────┤
│ KATMAN 5: Ağ + Köprü                        │
│   AdbClient (su root), MqttTelemetryBridge  │
├─────────────────────────────────────────────┤
│ KATMAN 4: İşlem (Core)                      │
│   VehicleController, ActionExecutor          │
├─────────────────────────────────────────────┤
│ KATMAN 3: DSL + Politika                    │
│   FirewallV2, Omoda5Platform                │
├─────────────────────────────────────────────┤
│ KATMAN 2: Model + Durum                     │
│   VehicleState (AtomicReference), EventBus  │
├─────────────────────────────────────────────┤
│ KATMAN 1: Altyapı                           │
│   GlobalState.isSimulationMode (tek anahtar)│
└─────────────────────────────────────────────┘
```

### Temel İlkeler:
- **EventBus no-polling**: Her şey event-driven, periyodik polling YASAK
- **GlobalState.isSimulationMode**: Tüm simülasyon/kontrol için tek anahtar
- **Command Firewall (FirewallV2)**: Tehlikeli komutlar filtrelenir

---

## 3. DUMPSYS VERİ OKUMA MEKANİZMASI (KRİTİK)

### 3.1. Temel Akış

```
PC (ADB) → Cihaz (dumpsys) → Launcher_V2 (parse) → VehicleState
```

### 3.2. AdbClient — Root Modu

```kotlin
// AdbClient.kt — MASTER ROOT MODE (v6505)
object AdbClient {
    fun executeCommand(cmd: String, onLine: (String) -> Unit = {}) {
        Thread {
            // Omoda5 'su -c' DEĞİL, 'su root <cmd>' bekliyor!
            proc = Runtime.getRuntime().exec(arrayOf("su", "root", cmd))
            // ...
        }.start()
    }
}
```

**KRİTİK NOT**: Omoda5'te `su root <cmd>` formatı zorunlu. `su -c <cmd>` ÇALIŞMAZ.

### 3.3. VehicleController — Batch Okuma

```kotlin
// core/VehicleController.kt — readBatch()
private fun readBatch(propIds: List<String>) {
    // [FIX-04] Geçersiz property ID'leri filtrele
    val validProps = propIds.filter { id ->
        val cleanId = id.replace("0x", "")
        cleanId.toLongOrNull(16) != null
    }
    
    val command = validProps.joinToString(" ; ") { id ->
        // KRİTİK: AAOS get-property-value DECIMAL ID ister!
        val cleanId = id.replace("0x", "")
        val decimalId = cleanId.toLongOrNull(16) ?: 0L
        val zone = when (cleanId) {
            "16200b02", "1540050b", "15400513" -> "1"
            "13400bc0" -> "65536"
            else -> "0"
        }
        "dumpsys car_service get-property-value $decimalId $zone"
    }
    AdbClient.executeCommand(command) { line -> parseAndApplyLine(line) }
}
```

### 3.4. Hex → Decimal Dönüşüm Tablosu

| PropID (Hex) | Decimal | Açıklama |
|-------------|---------|----------|
| 0x11600207 | 291533319 | Hız (Vehicle Speed) |
| 0x11400400 | 288290816 | Vites (Gear Selection) |
| 0x11400301 | 288290561 | Motor Durumu (Ignition) |
| 0x11800207 | 293630471 | Direksiyon Açısı |
| 0x16200b02 | 371560194 | Sola Kaydırma |
| 0x1540050b | 356517131 | Sola Hareket |
| 0x15400513 | 356517139 | Sola Hareket 2 |
| 0x13400bc0 | 322964416 | Cam/Sunroof Pozisyon |
| 0x15400501 | 356517121 | Cam Pozisyonu |
| 0x15400502 | 356517122 | Cam Pozisyonu 2 |

**HVAC Set Property Decimal:**
| Decimal | Zone | Açıklama |
|---------|------|----------|
| 354419973 | 0 | HVAC ON/OFF |
| 356517120 | 0 | Fan Hızı |
| 358614274 | 0 | AC_ON |
| 358614275 | 1/16 | AC Sıcaklık (Sürücü/Yolcu) |
| 358614282 | 0 | Fan Hızı Set |

### 3.5. Komut Formatları

```bash
# TEK PROPERTY OKU (Decimal ID gerekli)
dumpsys car_service get-property-value <decimalId> <zone>

# TOPLU OKUMA (Araçlarda çalışmayabilir)
dumpsys car_service get-property-value

# TOPLU DÖKÜM (Eski método — omodaassist)
dumpsys car_service --vhal

# PROPERTY YAZ/SET
dumpsys car_service set-property-value <decimalId> <zone> <value>
```

### 3.6. Zone Haritası

| Zone | Anlam |
|------|-------|
| 0 | Global |
| 1 | Sürücü |
| 2 | Sağ ön yolcu |
| 15 | Tüm camlar |
| 16 | Yolcu tarafı |
| 65536 | Sunroof |

---

## 4. DUMPSYS OKUMA SORUN ANALİZİ

### 4.1. Olası Sorun Kaynakları

| # | Sorun | Belirti | Çözüm |
|---|-------|---------|-------|
| 1 | **Omoda5 Tailscale offline** | Ping 100% loss (100.121.172.79) | Cihazda Tailscale'i kontrol et |
| 2 | **`su root` format değişikliği** | "ROOT EXEC HATASI" logu | `su root` → `su -c` veya `su 0` dene |
| 3 | **Decimal ID dönüşüm hatası** | "get-property-value 0 0" | cleanId.toLongOrNull(16) kontrol |
| 4 | **AdbClient thread block** | Yanıt gelmiyor | Thread timeout ekle |
| 5 | **car_service restart** | "Service not found" | `dumpsys car_service` ile servisi kontrol |
| 6 | **Property ID güncellemesi** | "Property not found" | Yeni VHAL API'yi kontrol |

### 4.2. Teşhis Komutları (PC'den ADB ile)

```bash
# 1. Cihaz bağlantısını kontrol
adb connect 100.121.172.79:5555
adb devices

# 2. Root durumunu kontrol
adb shell su root id

# 3. car_service servisini kontrol
adb shell dumpsys car_service --version 2>/dev/null || echo "servis yok"

# 4. Tek property okuma (Decimal ID ile!)
adb shell dumpsys car_service get-property-value 291533319 0

# 5. Tüm VHAL property'leri dök (eski método)
adb shell dumpsys car_service --vhal 2>/dev/null | head -50

# 6. car_service listesi
adb shell dumpsys car_service list-properties 2>/dev/null | head -20

# 7. Launcher_v2 durumunu kontrol
adb shell dumpsys activity com.omoda.lanc 2>/dev/null | head -20

# 8. Root ile doğrudan test
adb shell su root dumpsys car_service get-property-value 291533319 0
```

### 4.3. AdbClient Hata Ayıklama

AdbClient `su root <cmd>` kullanıyor. Olası sorunlar:

1. **`su root` Omoda5'te farklı çalışıyorsa** → `su 0 <cmd>` dene
2. **Shell interactive mode** → `su -c "<cmd>"` dene
3. **Timeout** → `su root` interactive kalabilir, EOF gönder
4. **Permission** → `android.permission.DUMP` gerekir (app AndroidManifest.xml'de olmalı)

---

## 5. ACTIONEXECUTOR — KONTROL KOMUTLARI

### 5.1. HVAC Kontrolü

```kotlin
"hvac_on" -> {
    executeShellCommand("dumpsys car_service set-property-value 354419973 0 1") // HVAC ON
    executeShellCommand("dumpsys car_service set-property-value 356517120 0 3") // Fan hızı
    executeShellCommand("am start -n com.chery.hvac/.view.activity.MainActivity")
}
"hvac_off" -> {
    executeShellCommand("dumpsys car_service set-property-value 354419973 0 0")
    executeShellCommand("dumpsys car_service set-property-value 356517120 0 0")
}
"set_hvac_ac" -> {
    executeShellCommand("dumpsys car_service set-property-value 358614274 0 $value") // 1=On,0=Off
}
"set_hvac_fan" -> {
    executeShellCommand("dumpsys car_service set-property-value 358614282 0 $value") // 1-7
}
```

### 5.2. Klima Sıcaklığı

```kotlin
executeShellCommand("dumpsys car_service set-property-value 358614275 1 $temp")  // Sürücü
executeShellCommand("dumpsys car_service set-property-value 358614275 16 $temp") // Yolcu
```

### 5.3. Cam/Sunroof Kontrolü

```kotlin
// Sunroof (zone 65536)
executeShellCommand("dumpsys car_service set-property-value 322964416 65536 $position")

// Tüm camlar (zone 15)
executeShellCommand("dumpsys car_service set-property-value 322964416 15 $position")
```

### 5.4. WiFi Onarım

```kotlin
"svc wifi disable; sleep 2; svc wifi enable"
```

---

## 6. ADBBRIDGESERVICE — ADB KÖPRÜSÜ

```kotlin
// AdbBridgeService.kt — ADB üzerinden car_service erişimi
commands = listOf(
    "dumpsys car_service",      // Tüm car_service çıktısı
    "dumpsys deviceidle",       // Pil optimizasyon durumu
)
```

---

## 7. FIREWALLV2 — KOMUT FİLTRELEME

FirewallV2, tehlikeli komutları engeller. Örn:
- `set-property-value` ile kritik property değişiklikleri engellenebilir
- Bazı property'ler salt okunur

---

## 8. PLATFORM ÖZELLİKLERİ (Omoda5Platform.kt)

Omoda5Platform, cihazın donanım haritasını tanımlar:
- Sensör ID'leri
- Area/Zone haritası
- Desteklenen property'ler

---

## 9. PREVIOUS SESSION FINDINGS

### Eski omodaassist Approach:
- `dumpsys car_service --vhal` → Tüm VHAL dump'u
- Regex ile parse: `(?i)(?:value|floatValues|int32Values)[s]?[:=]\s*\[([^]]*)]`
- 2 saniye periyot ile polling
- 3 ana property: Hız (0x11600207), Vites (0x11400400), Motor (0x11400301)

### Yeni launcher_v2 Approach:
- Batch `get-property-value` (decimal ID ile)
- Tiered polling: 2s → 5s → 10s → 30s (hız optimizasyonu)
- PROPERTY_DEFINITIONS map'i ile hex-to-decimal dönüşüm
- FIX-04: Geçersiz ID filtreleme
- Decimal-to-hex fallback parsing

---

## 10. DOSYA YAPISI

```
launcher_v2/
├── AGENTS.md                    # Proje kuralları (okundu)
├── SISTEM_CALISMA_MANTIGI.md    # Sistem çalışma mantığı
├── ARCHITECTURE_2_0_PLAN.md     # Mimari plan
├── USER_CONTEXT.md              # Kullanıcı bağlamı
├── PROGRESS.md                  # İlerleme kaydı
├── ROADMAP.md                   # Yol haritası
├── 531_SENSOR_CATALOG.md        # Sensör kataloğu (531 sensör)
├── PROJE_KITABI.md              # Proje kitabı
├── test_dumpsys.kt              # Dumpsys test dosyası
├── app/src/main/java/com/omoda/lanc/
│   ├── MainActivity.kt          # Ana activity
│   ├── service/
│   │   └── AdbBridgeService.kt  # ADB köprüsü
│   ├── ui/screens/settings/
│   │   ├── SettingsTabSystem.kt  # Sistem ayarları
│   │   └── SettingsTabLogs.kt    # Log ekranı
│   └── core/src/main/java/com/omoda/lanc/core/
│       ├── VehicleController.kt  # ARAÇ KONTROLCÜ (dumpsys okuma)
│       ├── ActionExecutor.kt     # Komut çalıştırıcı (dumpsys yazma)
│       └── dsl/
│           ├── FirewallV2.kt     # Komut filtresi
│           └── Omoda5Platform.kt # Donanım haritası
└── core/src/main/java/com/omoda/lanc/network/
    └── AdbClient.kt             # Root shell erişimi

omodaassist_v2/
├── app/src/main/java/com/omoda/universal/assistant/core/
│   └── VehicleController.kt     # Eski dumpsys approach
└── full_dumpsys.txt             # Önceki dumpsys çıktısı
```

---

## 11. SORUN ÇÖZÜM YOLU (ADIM ADIM)

### Öncelik Sırası:

**ADIM 1: Cihaz Bağlantısı**
```bash
adb connect 100.121.172.79:5555
```
⚠️ Şu anda Tailscale offline — cihaz muhtemelen kapalı

**ADIM 2: Root Testi**
```bash
adb shell su root id
# Beklenen: uid=0(root) gid=0(root)
```

**ADIM 3: Dumpsys Temel Test**
```bash
adb shell su root dumpsys car_service get-property-value 291533319 0
# Beklenen: Property:0x11600207 ... floatValues: [hız_değeri]
```

**ADIM 4: Eski Yöntem Test**
```bash
adb shell dumpsys car_service --vhal | head -30
# Eski method hâlâ çalışıyorsa → VehicleController patch gerekebilir
```

**ADIM 5: App Debug**
```bash
# Launcher_v2 loglarını kontrol et
adb shell logcat -d | grep -E "AdbClient|VehicleController|dumpsys" | tail -30
```

**ADIM 6: Permission Kontrol**
```bash
adb shell dumpsys package com.omoda.lanc | grep -E "DUMP|granted"
# android.permission.DUMP izni GEREKLİ
```

---

## 12. HATIRLATMALAR

1. **dumpsys car_service** root gerektirir → `su root` zorunlu
2. **get-property-value** DECIMAL ID ister (hex değil!)
3. **set-property-value** ile HVAC, cam, sunroof kontrol edilebilir
4. **AdbClient** thread'de çalışır, callback ile döner
5. **VehicleController** tiered polling kullanır (2s, 5s, 10s, 30s)
6. **FirewallV2** tehlikeli komutları engeller
7. **EventBus** polling yok, event-driven
8. **Omoda5 AAOS10**: ActivityView hidden API, split-screen bloke
9. **Cerence lisanslı**, backup yok
10. **CarPlayCommServ** native crash loop (SIGSEGV her 2-5sn)
