# PROGRESS.md

## Son Durum (UI Restoration: v6312 Standards)
*   Sürüm 6382 (6.0.0) - 21.07.2026 13:58
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