# v6.3.0 Kapsamlı Sistem Entegrasyon Planı

Bu plan, Semidrive cihazında bizzat test edilip doğrulanan kesin komutları projenin kalıcı standartları haline getirmeyi ve kullanıcı deneyimini (Home/Klima/Arayüz) iyileştirmeyi hedefler.

## Kullanıcı İncelemesi Gereken Noktalar
- **HVAC Paket Değişimi:** Loglarda kesinleştiği üzere `com.yfve.hvac` yerine artık kalıcı olarak **`com.chery.hvac`** kullanılacaktır.
- **Home Tuşu Müdahalesi:** "Launcher'ı Varsayılan Yap" butonu, sistemin orijinal launcher'a dönme inadını ADB üzerinden kıracaktır.

## Önerilen Değişiklikler

### 1. Sistem Anayasası ve Talimatlar
Doğrulanan paket isimleri ve yöntemler tüm agent dosyalarına işlenecektir.

#### [PROJECT_CONSTRAINTS.md](file:///media/cemal/depo/lancher%20proje/app/PROJECT_CONSTRAINTS.md)
- Klima paket adı **`com.chery.hvac`** olarak güncellenecek.
- Home tuşu davranış kuralları eklenecek.

---

### 2. Kullanıcı Arayüzü (UI) ve Deneyim
Buton okunabilirliği ve klima kontrolü iyileştirilecektir.

#### [MainActivity.kt](file:///media/cemal/depo/lancher%20proje/app/src/main/java/com/omoda5/launcher/ui/MainActivity.kt)
- "Araba Ayarları" ikonu artık doğrudan `com.chery.hvac` aktivitesini hedef alacak.
- Akıllı Başlatıcı: Eğer klima zaten açıksa ikona basıldığında `am force-stop` ile kapatacak (Toggle mantığı).

#### [LauncherSettingsActivity.kt](file:///media/cemal/depo/lancher%20proje/app/src/main/java/com/omoda5/launcher/ui/LauncherSettingsActivity.kt)
- **Yeni Butonlar:**
    - "Klimayı Kapat" (Zorla kapatma desteği).
    - "Home Tuşunu Bu Launcher'a Bağla" (Loglardaki sorunu çözen kritik buton).
- Tüm buton metinleri **20sp + Bold** yapılarak okunabilirlik sorunu çözülecek.

---

### 3. Arkaplan Servisleri (ADB & Accessibility)
Home tuşu yakalama ve komut hızı optimize edilecektir.

#### [AdbBridgeService.kt](file:///media/cemal/depo/lancher%20proje/app/src/main/java/com/omoda5/launcher/service/AdbBridgeService.kt)
- `force-stop` ve `set-home-activity` komutları için özel hızlı kanal açılacak.

---

### 4. Araç Verileri (VHAL)
v6.2.2 ile eklenen özel ID'lerin kararlılığı artırılacaktır.

#### [VehicleDataFragment.kt](file:///media/cemal/depo/lancher%20proje/app/src/main/java/com/omoda5/launcher/ui/VehicleDataFragment.kt)
- Semidrive cihazına özel VHAL zaman aşımı (timeout) süreleri güncellenecek.

## Doğrulama Planı

### Otomatik Kontroller
- `./gradlew assembleDebug` komutuyla derleme testi yapılacak.
- `grep` komutuyla eski `yfve` kalıntıları taranacak.

### Manuel Doğrulama
- Home tuşuna basıldığında Launcher'ın gelip gelmediği kontrol edilecek.
- Klima ikonuna basıldığında AÇILMA / TEKRAR BASILDIĞINDA KAPANMA mantığı test edilecek.
- Ayarlar sayfasındaki yazıların (20sp) sürücü koltuğundan okunabilirliği kontrol edilecek.
