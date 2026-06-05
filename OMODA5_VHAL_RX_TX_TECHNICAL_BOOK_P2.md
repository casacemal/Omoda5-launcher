# 📘 OMODA 5 VHAL TECHNICAL MASTER GUIDE — PART 2 (CHUNKED EDITION)
**Continuation of Revision:** 22.0.0 | **Date:** June 2026
**Platform:** AAOS 10 (API 29) | **Hardware:** Semidrive x9 (Chery T19C)

---

## 4. SES VE ASİSTAN (STT / TTS) ENTEGRASYONU

- **Ses Tanıma (VR):** `0x21705068` (Start/End), `0x21705069` (Result String)
- **Sesli Yanıt (TTS):** `STREAM_TTS` (Index 9)
- **Kanal Ayarı:** `TextToSpeech.Engine.KEY_PARAM_STREAM = 9`

---

## 5. ZAMANLAMA VE PERFORMANS (TIMING RULES)

- **100ms (Real-Time):** Hız, RPM, Vites, HardKeys.
- **250ms (Interaction):** Klima, Camlar, Ayna.
- **4000ms (Omoda 5 Polling):** Yakıt, TPMS, Dış Sıcaklık. **ZORUNLU.**
- **Uyarı:** `registerCallback` sürekli kullanılırsa Semidrive'da donmalara yol açar.

---

## 6. SNIFFING VE DEBUG KOMUTLARI (CEMAL'İN LİSTESİ)

### Basit (Düşük Risk)
```bash
logcat -c                                    # Log buffer temizle
logcat | grep -i hardkey                     # Tuş takibi
```

### Orta (Dikkatli Kullan)
```bash
dumpsys car_service | grep -Ei "speed|gear|ign|light|brake"
dumpsys car_service | grep -Ei "lamp|indicator|hazard"
```

### Gelişmiş Debug
```bash
# HVAC Komutları
am start -n com.chery.hvac/.view.activity.MainActivity
am force-stop com.chery.hvac

# Cluster Display Aktivasyonu (Saha Test Edildi)
adb shell setprop ro.vendor.display.ports "0,1"
adb shell /vendor/bin/screentrigger &
adb reboot
```

### Test Akışı (Önerilen)
1. `logcat -c`
2. `logcat | grep -i hardkey`
3. Her tuşa bas → keycode'ları not et
4. Hangi bileşenlerin devreye girdiğini takip et

---

## 7. KRİTİK PAKET LİSTESİ

| Paket | Açıklama | Not |
| :--- | :--- | :--- |
| `com.omoda5.launcher` | Launcher | Proje |
| `com.chery.hvac` | Klima | Arkaplan: `.model.service.HavcService` |
| `com.yfve.hvac` | Klima (Yedek) | Semidrive'da çalışmaz |
| `com.astrob.turbodog` | Harita | OEM navigasyon |
| `com.chery.media` | Medya | Müzik/Video |
| `com.chery.cerence` | Sesli Asistan | STT/TTS motoru |

---

## 8. OMODA 5 CANBUS KESİN BİLGİLERİ

### Sensörler
- **Hız:** `0x11600207` (Float, m/s → km/h × 3.6)
- **RPM:** `0x11600305` (Float/Int)
- **Dış Sıcaklık:** `0x11600703` (Float)
- **İç Sıcaklık Sol/Sağ:** `0x15600502` / `0x15600503`
- **Vites:** `0x11400400` (1:N, 2:R, 4:P, 8:D)

### HVAC Sistemi
- **Paket:** `com.chery.hvac`
- **Arkaplan Servisi:** `com.chery.hvac/.model.service.HavcService`
- **Açma:** `am start -n com.chery.hvac/.view.activity.MainActivity`
- **Kapatma:** `am force-stop com.chery.hvac`

### Polling Kuralı
- **4000ms (4 saniye)** aralıklı sorgulama zorunludur.
- Sürekli `registerCallback` semidrive'da donmalara yol açar.

---

## 9. CARLAMPCLIENT DEŞİFRELERİ (AYDINLATMA)

```smali
# CarLampClient.smali (Far ve Sinyal Sistemleri)
0x15200505 -> mHeadLampSts          # Ana Far Durumu
# mTurnSignalLeftSts                # Sol Sinyal
# mTurnSignalRightSts               # Sağ Sinyal
# mHazardLightSts                   # Dörtlü Durumu
# mAutoLightSts                     # Otomatik Far Modu
# mBrakeLightSts                    # Fren Lambası
```

---

## 10. HATA KODLARI VE EXCEPTION HANDLING

- **VR Başarısızlık:** `0x03` (TTS yanıt veremezse)
- **VHAL Zaman Aşımı:** 5000ms içinde cevap gelmezse UI "Stale" uyarısı
- **Polling Donması:** `registerCallback` kullanımından kaçınılmalıdır.

---

**END OF TECHNICAL BOOK PART 2**
