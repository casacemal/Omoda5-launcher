# FILE_INDEX.md

## Ana Klasörler
*   `/app`: Ana uygulama modülü.
*   `/app/src/main/java/com/omoda/lanc/vehicle`: Araç telemetri ve kontrol katmanı.
*   `/app/src/main/java/com/omoda/lanc/core`: EventBus ve temel sistem bileşenleri.
*   `/app/src/main/java/com/omoda/lanc/service`: Arka plan servisleri (VoiceAssistant, Hermes, MediaListener).
*   `/app/src/main/java/com/omoda/lanc/overlay`: Sesli asistan görsel geri bildirim arayüzü.

## Kritik Dosyalar
*   `MainActivity.kt`: Ana giriş noktası, UI yönetimi ve ADB görevleri. (GÜNCELLENDİ: Jest yönetimi ve otomatik izinler eklendi.)
*   `AgentManager.kt`: AI bağlam yönetimi ve LLM iletişimi. (GÜNCELLENDİ: GPS, Uygulamalar ve Cihaz bilgileri eklendi.)
*   `VehicleController.kt`: Hibrit telemetri ve batch okuma motoru.
*   `MediaNotificationListener.kt`: Medya verilerini yakalayan sistem servisi.
*   `MqttPublisher.kt`: MQTT Köprü ve Telemetri yayıncı sınıfı.
*   `AssistantOverlayUI.kt`: Compose tabanlı asistan görsel katmanı.
*   `DrivingAnalysisEngine.kt`: Sürüş verilerini analiz eden ve sürüş sonu özeti hazırlayan motor.
