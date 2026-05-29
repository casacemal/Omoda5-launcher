# Home Button Icon - Technical Analysis

## Screenshot Location
Device: 192.168.1.23:5555

## Extracted Home Button Icon

[![Home Button - Click to Open Launcher](home_button_icon.png)](open_launcher.py)

> **Not:** Bu görsel tıklandığında `open_launcher.py` scripti çalışarak Omoda 5 Launcher'ı başlatır.

## Quick Action

```bash
python3 open_launcher.py
```

## Technical Details
- **Source**: /tmp/device_screenshot.png
- **Extracted Icon**: home_button_icon.png
- **Icon Dimensions**: 120x120 pixels
- **Capture Date**: Çrş 13 May 2026 21:21:30 +03
- **Default HOME App**: ✅ com.omoda5.launcher (ayarlandı)

---

# Home Button Analysis - Teknik Özet

## Özet
Omoda 5 launcher'ı (`com.omoda5.launcher`) ile Home butonunun nasıl çalıştığını ve ana ekran ikonlarının neden Chery uygulamalarını açtığını anlamaya odaklanan analiz.

---

## Temel Bulgular

### 1. APK Analizi Sonuçları

**Hedef Uygulama:** `com.omoda5.launcher` (Omoda 5 Launcher)
- **Konum:** `/priv-app/launcher/launcher.apk`
- **Kaynak Kod:** `/priv-app/launcher/src/main/java/com/omoda5/launcher/`
- **Giriş Noktası:** `LauncherActivity.kt` (MAIN/HOME intent filtreleri)

### 2. Logcat Kanıtları - Home Butonu Mekaniği

```
05-13 21:17:57.982  3283  3283 D CPDisplayWindow: onHomeKeyClick: 
05-13 21:17:57.982  3090  3090 I SYSUI.HardKeyHandler: KEYCODE_HOME :openHomePage
05-13 21:17:57.993  3424  3424 D CarHardkeyManager: KEYCODE_HOME: take video from device
05-13 21:17:57.994  2724  2807 D WindowManager: startDockOrHome: Start home
05-13 21:17:57.994  2724  2807 I ActivityTaskManager: START u0 {act=android.intent.action.MAIN cat=[android.intent.category.HOME] flg=0x10000100 cmp=com.omoda5.launcher/.ui.MainActivity}
```

### 3. Belirlenen Kalıplar

#### Home Butonu Tetikleme Akışı:
1. **Donanım Girişi:** `KEYCODE_HOME` olayı alınır
2. **HardKeyHandler:** Home tuş tıklamasını işler
3. **CarHardkeyManager:** Otomotiv bağlamı için ek işlem
4. **WindowManager:** `startDockOrHome` başlatır
5. **ActivityTaskManager:** `com.omoda5.launcher/.ui.MainActivity` başlatır

#### İkon Eşleme Kalıbı (LauncherActivity.kt):
```kotlin
val row1 = Row.Builder().setTitle("Navigation").setOnClickListener(Action.BACK).build()
val row2 = Row.Builder().setTitle("Media").setOnClickListener(Action.BACK).build()
val row3 = Row.Builder().setTitle("Phone").setOnClickListener(Action.BACK).build()
val row4 = Row.Builder().setTitle("Vehicle").setOnClickListener(Action.BACK).build()
```

### 4. Belirlenen Tetik Koşulları

| Koşul | Davranış | Durum |
|-------|----------|-------|
| Home butonu basınca | Omoda 5 Launcher'ı başlatır | ✅ Çalışıyor |
| VLC'den sonra | Omoda 5 Launcher'a döner | ✅ Doğrulandı |
| Maps'ten sonra | Omoda 5 Launcher'a döner | ✅ Doğrulandı |
| LocalSend'ten sonra | Omoda 5 Launcher'a döner | ✅ Doğrulandı |

### 5. Kök Neden Analizi

**Neden Chery uygulamaları açıyor:**
- `com.chery.launcher` paketi başlangıçta varsayılan olarak ayarlanmış ve `com.omoda5.launcher` ile çakışıyordu
- Çözüm: `adb shell pm disable-user com.chery.launcher`
- Omoda 5 Launcher kodunda Chery paket adlarına doğrudan referanslar var (kaynak kodda doğrulanmalı)

### 6. Uygulanan Değişiklikler

```bash
# Çakışan Chery launcher'ı devre dışı bırak
adb shell pm disable-user com.chery.launcher

# Omoda 5'i varsayılan home olarak ayarla
adb shell cmd package set-home-activity --user 0 com.omoda5.launcher/.ui.MainActivity
```

---

## Sonuçlar

1. **Home Butonu Fonksiyonu:** Donanım home butonu `com.chery.launcher` devre dışı bırakıldıktan sonra doğru şekilde `com.omoda5.launcher`'ı tetikliyor

2. **İkon Uygulama Eşleme Sorunu:** Mevcut çözüm sadece launcher'ın açılmasını sağlıyor - bireysel ikonlar hâlâ Chery uygulamalarına yönlendiriyor çünkü `LauncherActivity.kt` kaynak kodu `Action.BACK` handler'ları kullanıyor ve doğru intent hedeflemesi yok



---

## Oluşturulan Teknik Dosyalar

| Dosya | Amaç |
|-------|------|
| `/tmp/device_screenshot.png` | Cihazdan alınan referans ekran görüntüsü |
| `home_button_icon.png` | Çıkarılan home butonu ikonu (120x120px) |
| `capture_home_icon.py` | Ekran görüntüsü alma ve ikon çıkarma scripti |
| `open_launcher.py` | Launcher başlatma scripti |
| `home_launcher.desktop` | Launcher için masaüstü girdisi |
