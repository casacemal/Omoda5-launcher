# AAOS Launcher System Architecture - Teknik Tasarım Dokümanı (v6.0.0)

## 1. Genel Sistem Mimarisi
Proje, Android Automotive OS (AAOS 10) üzerinde çalışan, AI tabanlı bir asistan ve telemetri motorunu barındıran katmanlı bir yapıdır.
*   **Modüller:** 
    *   `:app`: UI (Compose), Navigation, Media Controller, Audio Engine.
    *   `:core`: EventBus, VehicleController, ActionExecutor, CommandFirewall, GlobalState.
    *   `:network`: AgentManager, HermesClient, MqttPublisher, AdbClient, OTA.
    *   `:voice-offline`: Sherpa ASR, Local TTS.
*   **Bağımlılık Yönetimi:** Singleton pattern (manuel DI).
*   **Thread Modeli:** Yoğun olarak Coroutines kullanılır. `Dispatchers.Main` UI için, `Dispatchers.IO` ağ/VHAL/MQTT için, `Dispatchers.Default` ses işleme için.

## 2. Launcher Mimarisi
*   **Boot Süreci:** `MainActivity` sisteme Home Activity olarak enjekte edilir. Başlangıçta ADB üzerinden kritik izinler (`pm grant`) ve sistem ayarları (`settings put`) atanır.
*   **UI Yapısı:** 5x2 dinamik Grid (`LazyVerticalGrid`). Sidebar için 235dp "safe-zone" bırakılmıştır.
*   **Split Screen:** `FLAG_ACTIVITY_LAUNCH_ADJACENT` kullanılarak Yandex Navi gibi uygulamalar native split-screen modunda başlatılır. `ActivityView` API 29 kısıtları nedeniyle devre dışı bırakılmıştır.

## 3. UI Architecture
*   **Compose Tree:** `MainActivity` -> `MainNavigation` -> `HomeScreen`/`DashboardScreen`/`SettingsScreen`.
*   **State Yönetimi:** `GlobalState` singleton objesi üzerinden `StateFlow` ve `SharedFlow` ile reaktif bir yapı kurulmuştur.
*   **Recomposition:** `derivedStateOf` ve `remember` kullanılarak performans optimizasyonu sağlanmıştır.

## 4. Vehicle Architecture
*   **VehicleController:** Merkezi veri toplama birimidir. `dumpsys car_service get-property-value` komutlarını kullanarak VHAL verilerini (Hız, Vites, Sıcaklık vb.) 2s, 5s ve 10s periyotlarla pollar.
*   **VehicleState:** Aracın tüm anlık durumunu tutan veri modelidir. Her güncelleme `EventBus` üzerinden yayılır.
*   **Simulation Mode:** Araç donanımı olmayan cihazlarda sahte veri enjeksiyonu (`injectSimulatedData`) sağlar.

## 5. Voice Assistant Pipeline
1.  **Tetikleme:** Wake Word ("Hey Omoda") veya Direksiyon Tuşu (HardKey Intent).
2.  **Audio Focus:** `AudioEngine` üzerinden `USAGE_ASSISTANCE_SONIFICATION` ile müzik ducking (kısma) yapılır.
3.  **Recording:** `SttManager` 16kHz Mono olarak sesi yakalar.
4.  **Transcription (STT):** Whisper (Port 20128) üzerinden metne dönüştürülür.
5.  **Processing:** `AgentManager` önce `CommandRouter` (Regex) kontrolü yapar, eşleşme yoksa LLM'e (Hermes Port 8642) gönderir.
6.  **Response:** SSE (Server-Sent Events) ile gelen cümle parçaları anlık olarak `HermesTTSManager`'a stream edilir.

## 6. AI Architecture (Hermes)
*   **Engine:** OpenAI-compatible Chat Completions API.
*   **Context Injection:** Her asistan isteğine güncel araç verileri (Hız, Klima durumu vb.) sistem prompt'u olarak eklenir.
*   **Tool Calling:** LLM, araç fonksiyonlarını tetiklemek için ön tanımlı araçları (`set_hvac_temp`, `media_control` vb.) kullanır.

## 7. Audio System
*   **AudioEngine:** Android `AudioManager` ve `AudioFocusRequest` mimarisini yönetir.
*   **Hiyerarşi:** `ALERT` > `ASSISTANT` > `NAVIGATION` > `MEDIA`.
*   **Ducking:** Asistan konuştuğunda müzik sesi otomatik olarak %20 seviyesine çekilir.

## 8. Event System
*   **EventBus:** `SharedFlow<Event>` tabanlı merkezi olay dağıtıcıdır.
*   **Kategoriler:** `UIEvent`, `VoiceEvent`, `VehicleEvent`, `NetworkEvent`.
*   **Thread Safety:** `tryEmit` ve `emit` ile thread-safe yayın yapılır.

## 9. Network & Security
*   **MQTT:** `omoda/telemetri` ve `omoda/status` kanalları üzerinden canlı telemetri.
*   **Command Firewall:** LLM'den gelen her komut whitelist kontrolünden geçer. Hız > 110 km/h ise cam açma gibi riskli komutlar engellenir.
*   **Config Security:** API anahtarları XOR ile şifreli saklanır.

## 10. Background Services
*   **VoiceAssistantService:** Ses asistanı ve wake-word takibi için foreground servis.
*   **AdbBridgeService:** Shell komutlarını (VHAL) icra etmek için kullanılan köprü servis.

## 11. Performance & Error Recovery
*   **Performance:** `LazyLayout` kullanımı ve coroutine bazlı asenkron operasyonlar ile UI donmaları engellenmiştir.
*   **Recovery:** Sunucu hatasında `AndroidSystemTtsManager` ve yerel ASR fallback olarak devreye girer.

## 12. Veri Akışı (Sequence Diagram - Özet)
1.  `HardKey` -> `VehicleController` -> `EventBus` -> `AssistantController`
2.  `AssistantController` -> `AudioEngine` (Focus) -> `SttManager` (Record)
3.  `SttManager` -> `AgentManager` -> `Hermes (SSE)`
4.  `Hermes` -> `CommandFirewall` -> `ActionExecutor` -> `Shell (Dumpsys)`
5.  `Hermes` -> `MediaPlayer` (Audio Stream) -> `User`

## 13. Genel Mimari Değerlendirme
Sistem, AAOS 10 kısıtlarına rağmen son derece esnek ve dayanıklı (resilient) bir yapıda tasarlanmıştır. `EventBus` ve `GlobalState` kullanımı kod karmaşıklığını azaltırken, `CommandFirewall` araç güvenliğini üst seviyede tutmaktadır.

**PUAN: 8.8 / 10**
- Güçlü Yönler: Event-driven mimari, güvenlik katmanı, hibrit asistan.
- Zayıf Yönler: Dumpsys polling kaynaklı CPU overhead'i (ileride CarPropertyManager Callback'e tam geçiş önerilir).
