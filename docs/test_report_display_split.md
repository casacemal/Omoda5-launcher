# Ekran Bolme (Multi-Task / Split-Screen) Test Raporu

> **Tarih:** 2026-06-25  
> **Arac:** Chery Omoda5 (T19C) — AAOS 10, SEMIDRIVE X9, 1920x720  
> **Hedef:** 2 uygulamayi yan yana gosterme (50/50)

---

## 1. Gecmiste Calisan Yontem

**Kaynak:** Omoda5-backup/doc/KITAP_OMODA5_ARŞIV/chapters/03_split_screen_ui_ve_medya_navigasyon.md

- Display 0 icin 50/50 split (sol medya, sag mini harita) calismisti
- medya + harita componentleri ayri panel
- Alt tab bar ile Music/Phone/Settings gecisleri

**Basari Anahtari:** com.yfve.t19c.projection.carplay.service (split partner servisi)

---

## 2. Tum Denenen Yontemler

### Yontem 1: `windowingMode 3` (Split Screen Mode)
```bash
# Hedef uygulamayi split modunda ac
am start -n com.omoda5.launcher/.ui.MainActivity --windowingMode 3

# Alternatif: hex flag ile
am start -W -n com.omoda5.launcher/.ui.MainActivity -f 0x10008000
```
**Durum:** Siyah ekran veriyor (cerence overlay eksik)

### Yontem 2: `windowingMode 4` (Freeform Mode)
```bash
am start -n com.omoda5.launcher/.ui.MainActivity --windowingMode 4
```
**Durum:** Denendi, calismadi

### Yontem 3: `dumpsys activity` ile dock stack'e gonder
```bash
adb shell am stack move-task <taskId> <stackId>
```
**Durum:** AAOS 10da stack yapisi farkli, calismadi

### Yontem 4: Overlay panel ile CarPlay Dock
**Kaynak:** omoda5-overlay-launcher
- OverlayPanelActivity split dashboard kullanir
- CarplayDock + CarplayActivity
- Aslinda overlay (ustte gosterim), gercek split degil

### Yontem 5: `wm overscan` ile ekrani bolme
```bash
wm overscan 0,0,0,0           # Reset
wm overscan -960,0,0,0        # Saga kaydir (yarisi)
```
**Durum:** Sadece goruntu kaydirma, gercek split degil

### Yontem 6: Mission Control / Multi-Task Recents
```bash
# Recents ac
input keyevent KEYCODE_APP_SWITCH

# Split screen start (long press recent)
```
**Durum:** AAOS 10da recents var ama split tetiklemiyor

### Yontem 7: `cmd activity` ile task bolme (AAOS ozel)
```bash
cmd activity start-activity ... --windowingMode split-screen

# Veya:
am start -n <paket/activity> --display 0 --windowingMode split-screen
```
**Durum:** Henuz denenmedi

---

## 3. ADB ile Split-Screen Log Izleme

```bash
# Split-screen loglari canli
adb logcat -v time | grep -E "split|SplitScreen|TaskOrganizer|MultiWindow|dockStack|StageCoordinator|windowingMode"

# WindowManager detayli
adb logcat WindowManager:V ActivityTaskManager:D *:S

# Activity gecisleri
adb logcat -v time | grep -E "sys.home_key|HomeActivity|START u0|ActivityTaskManager"
```

---

## 4. Denenecek Yeni Yontemler (Sirali)

### 1. `service call` ile VHAL yazma
```bash
# Tum servisleri listele
adb shell service list | grep car

# CarService'a direkt VHAL property yaz
adb shell service call car_service <sayi> <argumanlar>
```

### 2. `cmd car_service` ile VHAL yazma (AAOS 10)
```bash
# Property'leri listele
adb shell dumpsys car_service --properties

# Property yaz (calisirsa)
adb shell cmd car_service set-property-value <propId> <areaId> <value>
```

### 3. Cerence event broadcast ile OEM'leri kandir
```bash
# Cerence eventini taklit et
adb shell am broadcast -a com.chery.cerence.action.EVENT
```

### 4. Split-screen sonrasi (calisirsa):
```bash
# Launcher disable
adb shell pm disable-user --user 0 com.chery.launcher

# Split-mode ac
adb shell am start -n com.omoda5.launcher/.ui.MainActivity --windowingMode 3

# Split partner servisi aktif et
adb shell pm enable com.yfve.t19c.projection.carplay.service
```

---

## 5. Ozet

| Yontem | Calisti mi? | Not |
|--------|------------|-----|
| windowingMode 3 | KISMEN | Siyah ekran, cerence overlap eksik |
| windowingMode 4 | HAYIR | Freeform desteklenmiyor |
| wm overscan | HAYIR | Kaydirma sadece |
| CarPlay Dock overlay | EVET | Split degil, ustte gosterim |
| service call | DENENMEDI | Olas yontem |
| cmd car_service set-property | DENENMEDI | Olas yontem |
| Cerence event broadcast | DENENMEDI | OEM kandirmak icin |

**En umit vadeden:** `windowingMode 3` + `com.yfve.t19c.projection.carplay.service` kombinasyonu
