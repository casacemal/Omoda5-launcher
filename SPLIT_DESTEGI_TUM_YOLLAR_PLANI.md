# Split Desteğini Açma Planı (Tüm Yollar)

**Tarih:** 27 Mayıs 2026  
**Cihaz:** Semidrive `x9_for_arm64` (Android 10 / API 29)

## 1) Mevcut Durum (Kesin Teşhis)

- `cmd activity supports-multiwindow` -> `true`
- `cmd activity supports-split-screen-multi-window` -> `false`
- `--windowingMode 3/4/5` ile başlatma denemeleri full-screen'e düşüyor.
- Orijinal launcher (`com.chery.launcher`) aktifken de sonuç değişmiyor.

Sonuç: Split-screen kilidi launcher kaynaklı değil, **framework/vendor sistem konfigürasyonu** kaynaklı.

---

## 2) Yol A - Root / ROM Değiştirmeden (En Düşük Risk)

Bu yolda gerçek split açılamaz; sadece split benzeri kullanım verilir.

### A1) Uygulama seviyesi fallback (önerilen)
- PiP/pinned + full-screen kombinasyonu (launcher fallback)
- İki uygulamayı yan yana gibi kullandırır; sistem split değildir.
- Risk: Düşük
- Geri dönüş: Kolay (APK rollback)

### A2) Doğrulama komutları
```bash
adb shell cmd activity supports-split-screen-multi-window
adb shell cmd activity stack list
adb shell dumpsys activity activities | grep -E "mWindowingMode|pinned|fullscreen"
```

### A3) Beklenen çıktı
- `supports-split-screen-multi-window=false` kalır.
- Pinned stack oluşabilir, ama gerçek split stack oluşmaz.

---

## 3) Yol B - Root Var, ROM Rebuild Yok (Orta Risk)

Amaç: Çalışan sistemde framework/overlay bayraklarını zorlamak.

### B1) Ön koşul
- Root shell (`adb root`/`su`) + `/system` veya ilgili partition yazılabilir olmalı.
- Tam yedek şart (boot/system/product/vendor).

### B2) Değiştirilecek temel bayraklar
Device/framework config tarafında aşağıdakiler `true` olmalı:
- `config_supportsMultiWindow`
- `config_supportsSplitScreenMultiWindow`
- (opsiyonel) `config_freeformWindowManagement`

### B3) Uygulama yaklaşımı
1. `framework-res` ve varsa device overlay APK'larında ilgili `bool` değerlerini patch et.
2. Gerekirse Magisk module ile overlay/patched resource uygula.
3. Reboot.

### B4) Test
```bash
adb shell cmd activity supports-split-screen-multi-window
adb shell cmd activity start-activity -W --windowingMode 3 -n <APP1>
adb shell cmd activity start-activity -W --windowingMode 4 -n <APP2>
adb shell cmd activity stack list
```

### B5) Risk
- Bootloop riski.
- OTA sonrası patch bozulabilir.
- Vendor policy/ATMS kısıtları nedeniyle bayraklar tek başına yetmeyebilir.

---

## 4) Yol C - BSP / AOSP Rebuild (En Doğru ve Kalıcı Yol)

Amaç: Split desteğini ürün seviyesinde kalıcı açmak.

### C1) Kaynak tarafı
- Device overlay `config.xml` içinde multi-window/split bayraklarını ürün politikasıyla uyumlu aç.
- Gerekirse `services`/`SystemUI`/vendor window policy tarafı uyumlandır.

### C2) Boyut politikası kontrolü
- Android CDD kuralı: **hem yükseklik hem genişlik 440dp altındaysa** split/freeform sunulmamalı.
- Cihazda `sw385dp` görülebilir; bu tek başına engel kanıtı değildir.
- Asıl karar için framework tarafında kullanılan efektif width/height dp hesabı BSP içinde doğrulanmalı.

### C3) CI/Test
- CTS/yerel testler + gerçek kullanım senaryosu
- `supports-split-screen-multi-window=true` + stack mode doğrulaması
- Geri dönüş ve OTA senaryosu testleri

### C4) Risk
- En yüksek geliştirme maliyeti.
- En düşük uzun vadeli teknik borç.

---

## 5) Karar Matrisi

- **Hızlı ve güvenli:** Yol A
- **Root erişimi var, kısa vadeli kalıcı çözüm aranıyor:** Yol B
- **Üretim kalitesi / kalıcı OEM çözümü:** Yol C

---

## 6) Bu Proje İçin Önerilen Sıra

1. Yol A ile kullanıcı deneyimini stabil tut (yapıldı/aktif).  
2. Paralelde Yol B için lab cihazında root patch PoC çıkar.  
3. Başarılıysa Yol C’ye BSP change request aç ve kalıcılaştır.

---

## 7) Hızlı Komut Seti (Teşhis)

```bash
adb shell cmd activity supports-multiwindow
adb shell cmd activity supports-split-screen-multi-window
adb shell cmd activity stack list
adb shell dumpsys activity activities | grep -E "mWindowingMode|supportsSplitScreenMultiWindow"
```

