# PROGRESS.md

## AAOS UI Guidelines & Hermes Enhancements (21.07.2026)
*   **Hermes Pairing & Telemetry:** Eşleşme kodu `OMODA5` olarak hardcode edildi (`PairingManager.kt`). `CommandDispatcher.kt` içerisinde donanım yetenekleri (`DeviceCapabilities`) state olarak LLM'e sağlandı.
*   **AAOS Distraction Guidelines:** Ana sayfa (`DashboardScreen`) hariç, tüm sayfalarda (Settings, App Store, Sensor Monitor, Sylvie, Coolwalk) minimum **64dp** Touch Target kurallarına uygun olarak `CarButton` ve `CarIconButton` bileşenleri (`AutomotiveComponents.kt`) entegre edildi. 
*   **Odaklanma Desteği:** D-pad ve Rotary Controller cihazları için özel focus state (Border) UI'a dahil edildi. Metin boyutları araç kullanımına uygun olarak büyütüldü.

## Son Durum (UI Restoration: v6312 Standards)
*   Sürüm 6388 (6.0.0) - 21.07.2026 17:46
*   **Restorasyon:** Tüm UI bileşenleri 19.07.2026 08:00-12:00 (v6312) aralığındaki altın oranlara ve `UI_MANIFESTO.md` standartlarına geri döndürüldü.
*   **HomeScreen:** Grid padding değerleri manifesto ile eşitlendi (end=80dp, bottom=80dp).
*   **Dashboard:** Sidebar genişliği 235dp'ye sabitlendi ve akıllı split oranı (high speed) 0.65f olarak güncellendi.
*   **Architecture 2.0:** `LayoutEngine` tüm Dashboard sayfaları için 235dp sidebar boşluğu kuralını devraldı.

## DashboardScreen.kt Preview Fix (20.07.2026)
*   **Fix:** `DashboardScreen.kt` dosyasındaki rendering hatası düzeltildi.
*   **Problem:** `MediaControllerViewModel` örneği, Application context gerektirdiği için Preview'da ömür verse (crash) oluyordu.
*   **Çözüm:** 
    *   `PreviewDashboardScreen()` fonksiyonu yeni bir `DashboardScreenPreview()` composable'ına yönlendirdi.
    *   `DashboardScreenPreview()` fonksiyonu, ViewModel yerine sabit bir medya durumu (fake state) kullandı.
    *   Gerçek `DashboardScreen()` fonksiyonu hala ViewModel'i kullanıyor, ancak preview için ayrı bir implementasyon sağlandı.
    *   `DashboardMediaWidgetSmallPreview()` composable'ı, preview için özel bir implementasyon sağladı.