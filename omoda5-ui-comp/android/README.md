# Omoda 5 AAOS (Android Automotive OS) - Jetpack Compose Native Version

Bu klasör, Omoda 5 Akıllı Kokpit Sisteminin **%100 Native Android Jetpack Compose** ve **Android Automotive OS (AAOS)** standartlarına uygun olarak yazılmış tam sürümüdür.

## Özellikler & Mimari:
1. **Jetpack Compose Material 3** modern UI mimarisi.
2. **AAOS Dokunmatik Hedef Standartları**: Sürüş esnasında rahat dokunma için minimum 48dp dokunmatik alanlar.
3. **Tesla Minimalist Gösterge Paneli** (Jetpack Compose Canvas & Telemetri).
4. **Apple CarPlay 2.0 Split Dashboard** görünümü.
5. **Araç Kontrolü & İklimlendirme** (Kapılar, cam tavan, klima sıcaklık kontrolleri).

## Android Studio ile Çalıştırma:
1. `android` klasörünü Android Studio'da açın.
2. Gradle Senkronizasyonunun (`Gradle Sync`) tamamlanmasını bekleyin.
3. Bir **Automotive Emulator** (Android Automotive OS Emülatörü) veya standart Android Tablet Emülatörü seçip **Run** (Shift + F10) yapın.

## Proje Yapısı:
- `app/src/main/java/com/omoda/aaos/MainActivity.kt`: Başlangıç Activity.
- `app/src/main/java/com/omoda/aaos/theme/Theme.kt`: AAOS, Tesla & CarPlay renk paleti jetpack compose token'ları.
- `app/src/main/java/com/omoda/aaos/ui/OmodaAaosApp.kt`: Ana Scaffold & Alt AAOS Dock Dokunmatik Çubuğu.
- `app/src/main/java/com/omoda/aaos/ui/screens/`:
  - `HomeScreen.kt`: Bento Izgara Ana Ekranı.
  - `TeslaClusterScreen.kt`: Tesla Hız & ADAS Ekranı.
  - `CarPlayScreen.kt`: CarPlay 2.0 Split Ekranı.
  - `VehicleControlScreen.kt`: Araç Kapı & Sunroof Ayarları.
  - `ClimateControlScreen.kt`: İklimlendirme Ekranı.
  - `AppsGridScreen.kt`: AAOS Uygulamaları Izgarası.
