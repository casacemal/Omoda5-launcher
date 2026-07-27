# FILE_INDEX.md

*   **[26.07.2026] UI ve Bildirim Optimizasyonu**
    *   `MainActivity.kt`: Üst durum çubuğu kaldırıldı.
    *   `OmodaBottomDock.kt`: Alt bar kaldırıldı (sadeleştirme).
    *   `AdbClient.kt`: Root hata bildirimleri kullanıcı isteğiyle sessize alındı.

*   **[26.07.2026] Docs Uyum Onarımları**
    *   `VoiceAssistantService.kt`: Saha notlarına göre HardKey tetikleme güvenliği artırıldı (Main Thread Sync).
    *   `CoolwalkWidgets.kt`: Yeni `CoolwalkRadioCard` widget'ı eklendi.
    *   `VehicleState.kt`: Radyo ve RDS verileri için model alanları açıldı.

*   **[26.07.2026] Mini-AA Coolwalk Dashboard Entegrasyonu**
    *   `OmodaDashboardScreen.kt`: Mini-AA Coolwalk tasarımlı yeni ana gösterge paneli.
    *   `CoolwalkWidgets.kt`: Medya, Hava Durumu ve Hız göstergesi UI bileşenleri.
    *   `VehicleState.kt`: Seyahat mesafesi (`tripDistance`) ve süresi (`tripDuration`) alanları eklendi.

*   **[26.07.2026] VHAL Veri Akışı Restorasyonu**
    *   `CoolwalkScreen.kt`: Eksik dosya geri yüklendi, Coolwalk navigasyonu onarıldı.
    *   `VehicleController.kt`: Multi-key indexing mantığı doğrulandı.

*   **[25.07.2026] Dashboard Refactor**
    *   `OmodaDashboardScreen.kt`: State-hoisting ile refactor edildi ve Preview desteği kazandı.

*   **[24.07.2026] Tema ve Renk Güncellemesi**
    *   `Theme.kt` & `Color.kt`: Tema motoru "Warm" (Altın/Amber) tonlarıyla güncellendi.
    *   `OmodaDashboardScreen.kt`: Premium Bento-box tasarımına geçildi (Önceki aşama).

*   **[24.07.2026] VHAL ID Onarımları**
    *   `ActionExecutor.kt`: VHAL `set-property-value` komutları gerçek AAOS decimal değerleriyle güncellendi.
    *   `AssistantController.kt`: MQTT telemetri köprüsü dinamik yenileme ile çözüldü.

*   **[24.07.2026] Omoda5-ui-desing Portu**
    *   `OmodaDashboardScreen.kt`: Dijital Hız Arc Kadranı ve Sürüş Modları Jetpack Compose ile yazıldı.

*   **[24.07.2026] Master Ansiklopedi**
    *   `PROJE_KITABI.md`: Architecture 2.0 ve 7 mimari katman dökümante edildi.

*   **[22.07.2026] Multi-key Indexing**
    *   `VehicleController.kt`: Hex, Etiket ve UI takma adları ile çoklu anahtar desteği.

*   **[22.07.2026] Ota ve Mağaza Onarımı**
    *   `OtaUpdateManager.kt`: Mağaza kaynağı `magaza` dizini olarak güncellendi.

*   **[22.07.2026] Kod Denetim Aksiyonları**
    *   `VehicleController.kt`: Mutex kilitleri eklendi.
    *   `EventBus.kt`: Buffer boyutu 256'ya çıkarıldı.

*   **[21.07.2026] AAOS UI Refactor**
    *   `SettingsScreen.kt`: 64dp yükseklik ve odak state desteği.

*   **[20.07.2026] UI Restorasyonu**
    *   `MainActivity.kt`: Grid padding değerleri manifesto standartlarına çekildi.
