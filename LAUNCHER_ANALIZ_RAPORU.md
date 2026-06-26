# Launcher_v2 — Cerence Smali Karşılaştırma Analiz Raporu

> **Tarih:** 2026-06-25  
> **Karşılaştırma:** OMODA5_CERENCE_VOICE_ANALIZ_RAPORU.md (Smali analiz) vs launcher_v2 (mevcut proje)

---

## 1. Mimari Karşılaştırma

### Eski Sistem (Cerence / Smali Analizi)

```
Cerence Runtime (com.chery.cerence.VrService) -> backup'ta YOK
  | Binder IPC
  v
VrPlatformService (com.chery.libvr)
  | queryFunctionToolBinder(code)
  v
VrFunctionBinderPool (3=Media, 4=Navi, 7=Radio, 8=Setting)
  v
CarAdapterUse -> VHAL
```

### Launcher_v2 (Yeni Sistem)

```
WakeWordManager / HermesSTT
  v
AssistantController
  +-> CommandRouter -> ActionExecutor (KLIMAT, MEDIA, VEHICLE, SISTEM, NAVI)
  +-> VehicleCommandEngine (kural tabanli komutlar)
  +-> VehicleLayer -> VehicleProvider -> CarSource / DumpsysSource
  +-> SensorDictionary / SensorPreferences
  +-> HermesClient (LLM API)
  +-> EventBus
  +-> OverlayManager (HUD)
```

---

## 2. Komut Isleme Karsilastirmasi

| Kategori | Smali (Cerence) | launcher_v2 | Durum |
|----------|-----------------|-------------|-------|
| HVAC | AcControlTemperature + 60+ property | klima:ac/kapat/sogut/isit | Kis-men |
| Kapilar | params/hvac/wind/defrost/door | kapi:kilitle/ac | Kis-men |
| Camlar | -- | cam:ac/kapat | Smalide yok, yeni |
| Koltuk | seat_heat/seat_cool | koltuk:isitma/sogutma | Eslenmis |
| Medya | VrMediaBinder (code=3) | MediaBridge -> MediaController | Farkli impl |
| Navigasyon | VrNaviBinder (code=4) | **YOK** | **Eksik** |
| Radyo | VrRadioBinder (code=7) | **YOK** | **Eksik** |
| Sistem Ayar | VrSettingBinder (code=8) | SettingsManager | Kis-men |
| Wake Word | vrWakeupWord (settings) | Sherpa ONNX offline | Farkli motor |
| Intent Events | com.chery.cerence.action.EVENT | EventBus (kendi) | OEM uyumsuz |

---

## 3. VHAL Erisim Stratejisi

| Yontem | Durum | Aciklama |
|--------|-------|----------|
| Car.createCar() | X Imza hatasi | Platform key gerek |
| CarPropertyManager | X Permission denied | Imza korumali |
| dumpsys car_service | OK OKUMA | Tum propertyler |
| dumpsys car_service get-property-value | OK OKUMA | ID bazli okuma |
| service call car_service ... | **Hic denenmedi** | Olas yazma yontemi |
| cmd car_service set-property | Denenmedi | AAOS 10da var mi? |
| am start --windowingMode 3 | OK Split-screen | Ekran bolme |

---

## 4. Farklar ve Eksikler

### Launcher_v2'de EKSIK:
1. Komut matrisi: Smalide HVAC icin 60+ property var, launcher_v2de 4 ana komut
2. Navi/Radio binder implementasyonu yok
3. Cerence event uyumu: com.chery.cerence.action.EVENT broadcasti yok
4. Platform key yok: VHAL yazma imkansiz
5. Sensor Dictionary: 488 propertyden sadece 40+ tanimlanmis

### Launcher_v2'de FAZLASI:
1. Overlay UI: WaveOverlayView, AssistantOverlayUI, GlassIcon
2. Hermes LLM entegrasyonu: Dogal dil komut cozumu
3. MQTT: Uzaktan telemetri
4. Dahili ADB: AdbBridgeService
5. Coklu STT/TTS: Whisper, Sherpa, Edge TTS, Hermes API

---

## 5. Oncelikli Oneriler

1. **Komut matrisini tamamla:** Smalideki HVAC propertylerini commandMap'e ekle
2. **VrFunctionBinderPool taklidi:** Media/Navi/Radio/Setting icin Binder servisi yaz
3. **Cerence Event broadcast:** com.chery.cerence.action.EVENT gondererek OEM uygulamalari kontrol et
4. **service call dene:** service call car_service ile VHAL yazma dene
5. **Sensor Dictionary zenginlestir:** discovered_sensors.json -> SensorDictionary
6. **Hardkey monitor ekle:** VoiceAssistantService.kt zaten Steering Wheel butonu dinliyor
7. **OEM launcher ile uyum:** Orijinal chery launcheri disable etmeden split calistir

---

*Kaynak: launcher_v2/app/src/main/java/com/omoda/lanc/ + OMODA5_CERENCE_VOICE_ANALIZ_RAPORU.md + discovered_sensors.json (488 property)*
