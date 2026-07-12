# 🔍 KOD İNCELEME RAPORU — Omoda Launcher v2

**Tarih:** 11.07.2026  
**Kapsam:** Tüm kaynak kodu — Ağ, Ses, UI, Güvenlik, Manifest, Mimari  
**Toplam Tespit:** 57 sorun (5 Kritik, 16 Yüksek, 22 Orta, 14 Düşük)

---

## 🔴 KRİTİK (DÜZELTİLDİ)

| # | Dosya | Sorun | Durum |
|---|---|---|---|
| **SEC-4** | `VoiceAssistantService.kt` | Voice command receiver `RECEIVER_EXPORTED` | ✅ Düzeltildi (`RECEIVER_NOT_EXPORTED`) |
| **SEC-3** | `AndroidManifest.xml` | `VoiceAssistantService` exported=true | ✅ Düzeltildi (exported=false) |
| **SEC-5** | `AndroidManifest.xml` | `BridgeActivity` exported=true | ✅ Düzeltildi (exported=false) |
| **SEC-6** | `AdbBridgeService.kt` | Rastgele ADB shell komutu çalıştırma | ✅ Düzeltildi (Service non-exported + Stop action) |
| **BUG-14** | `AssistantController.kt` | Sonsuza kadar dinleme takılması | ✅ Düzeltildi (SttManager failure callback + Timeout) |
| **BUG-49** | `ActionExecutor.kt` | `suspendCancellableCoroutine` çift resume | ✅ Düzeltildi (`cont.isActive` kontrolü eklendi) |
| **KEY-1** | `GlobalState.kt` | API key ve GitHub token hardcoded | ✅ Düzeltildi (Config'den dinamik yükleniyor) |

---

## 🟠 YÜKSEK ÖNCELİK (DÜZELTİLDİ)

### Ağ / Bağlantı Hataları
*   **NET-1/2:** Socket leak sorunları `Socket().use { ... }` yapısıyla giderildi.
*   **NET-3:** `NineRouterTTSManager` artık merkezi `NetworkModule.robustClient` kullanıyor.
*   **NET-4:** `AudioStreamSender` ve `Receiver` için WebSocket koptuğunda 3sn aralıkla otomatik yeniden bağlanma mantığı eklendi.
*   **NET-5:** `baseClient` ve `sseClient` için sonsuz timeoutlar (0) yerine makul sınırlar (30sn/5dk) getirildi.
*   **NET-7:** Loglardaki token kirliliği temizlendi.

### Ses / TTS Hataları
*   **TTS-1/2:** `onError` durumunda `onComplete` çağrılması engellendi, böylece fallback mekanizması doğru çalışıyor.
*   **TTS-3:** MediaPlayer durdurma ve oynatma işlemleri sırasında oluşabilecek çakışmalar için durum kontrolleri eklendi.
*   **TTS-4:** SSML injection riskine karşı metin kaçış (escape) karakterleri eklendi.
*   **TTS-5:** Eski `edge_tts_*.mp3` dosyaları için saatlik temizlik mekanizması eklendi.

### STT Hataları
*   **STT-1:** AudioRecord başlatılamazsa nesne release edilip temizleniyor.

---

## 🟡 ORTA ÖNCELİK (BÜYÜK KISMI DÜZELTİLDİ)

### Durum Yönetimi
*   **STATE-1:** `downloadProgressText`, `isRemoteAdbConnected` ve `mqttEnabled` durumları GlobalState üzerinden tekilleştirildi.
*   **STATE-2:** `workflowState` (IDLE, LISTENING, THINKING, TALKING) artık asistanın her adımında doğru şekilde atanıyor.
*   **STATE-3:** `isSimulationMode` artık config'den kalıcı olarak yükleniyor.
*   **STATE-4:** `SettingsScreen` üzerinde yerel temporary state kullanılarak İPTAL butonunun çalışması sağlandı.

### Kaynak Yönetimi
*   **RES-1:** `OverlayManager` için `destroy()` metodu eklendi ve coroutine scope iptali sağlandı.
*   **RES-2:** `WakeLock` için 10 dakikalık güvenlik zaman aşımı eklendi.
*   **RES-3:** `CheryAccessibilityService` içindeki ham Thread'ler modern `serviceScope` (Coroutine) yapısına taşındı ve `onDestroy`'da temizleniyor.

---

## 🔵 DÜŞÜK ÖNCELİK / ÖLÜ KOD
*   **DEAD-1/2/3/4:** `NavGraph.kt`, `HomeScreen.kt` (old), `SensorSelectionDialog.kt` ve `WaveOverlayView.kt` gibi ölü dosyalar projeden fiziksel olarak silindi.

---

## 🟡 ORTA ÖNCELİK

### Durum Yönetimi

| # | Dosya | Satır | Sorun |
|---|---|---|---|
| **STATE-1** | `GlobalState.kt` / `AssistantApplication.kt` | - | **Çift durum tanımı:** `downloadProgressText`, `isRemoteAdbConnected`, `mqttEnabled` hem GlobalState hem AssistantApplication'da — farklı flow'lar |
| **STATE-2** | `GlobalState.kt` | 85 | `workflowState` hiçbir zaman atanmıyor — overlay "DİNLE → DÜŞÜN → KONUŞ" adımları **ölü UI** |
| **STATE-3** | `AssistantApplication.kt` | 170, 194-233 | `isSimulationMode` her restart'ta sıfırlanıyor, config'den yüklenmiyor |
| **STATE-4** | `SettingsScreen.kt` | 362-428 | İPTAL butonu değişiklikleri geri almıyor — toggle'lar direkt GlobalState'i mutate eder |
| **STATE-5** | `HomeScreen.kt` | 303-304 | `isAdbConnected` her zaman `true`'ya set ediliyor — durum LED'i anlamsızlaşıyor |
| **STATE-6** | `AssistantController.kt` | 68, 199, 226 | `isListening` ile `GlobalState.isListening` arasında race condition |

### Kaynak Yönetimi

| # | Dosya | Satır | Sorun |
|---|---|---|---|
| **RES-1** | `OverlayManager.kt` | 33 | `serviceScope` hiçbir zaman iptal edilmiyor — coroutine sızıntısı |
| **RES-2** | `VoiceAssistantService.kt` | 176 | `wakeLock.acquire()` **zamansız** — crash olursa pile kadar tutulur |
| **RES-3** | `CheryAccessibilityService.kt` | 61-84, 163-197 | Ham `Thread`'ler sonsuza kadar çalışıyor, `onDestroy`'da durdurulmuyor |
| **RES-4** | `AssistantController.kt` | 376-383 | `wakeWordManager` destroy'da durdurulmuyor → AudioRecord sızıntısı |
| **RES-5** | `AndroidSystemTtsManager.kt` | 15-68 | Callback map'i temizlenmiyor, `isSpeaking` volatile değil |
| **RES-6** | `AudioEngine.kt` | 75-76 | Eski AudioFocusRequest üzerine yazılıyor — sızıntı |

### SSE / Gerçek Zamanlı Bağlantı

| # | Dosya | Satır | Sorun |
|---|---|---|---|
| **SSE-1** | `AgentManager.kt` | 156 | SSE client sonsuz read timeout — sunucu susarsa thread sonsuza kadar bloke |
| **SSE-2** | `AgentManager.kt` | 131-134 | `currentEventSource` senkronize değil — hızlı üst üste çağrılar race condition |
| **SSE-3** | `AgentManager.kt` | 206-220 | Cümle bölücü 60 karakter sınırı cümlenin ortasını kesebilir |
| **SSE-4** | `AgentManager.kt` | 52-54 | "altyazı", "teşekkür" içeren meşru girdiler **sessizce atılıyor** |

---

## 🔵 DÜŞÜK ÖNCELİK / ÖLÜ KOD

| # | Dosya | Satır | Sorun |
|---|---|---|---|
| **DEAD-1** | `NavGraph.kt` | - | Hiçbir yerde kullanılmıyor — tamamen ölü dosya |
| **DEAD-2** | `HomeScreen.kt` (ui/screens/) | - | `MainActivity.kt` içindeki aynı isimli composable tarafından gölgeleniyor — ölü dosya |
| **DEAD-3** | `SensorSelectionDialog.kt` | - | Hiçbir ekrandan çağrılmıyor |
| **DEAD-4** | `WaveOverlayView.kt` | - | Hiçbir yerde referans yok |
| **DEAD-5** | `GlobalState.kt` | 39 | `isAutoTasksEnabled` tanımlı ama hiç okunmuyor |
| **DEAD-6** | `AssistantApplication.kt` | 46 | `sessionId` hiç kullanılmıyor |
| **DEAD-7** | `SensorMonitorScreen.kt` | 134-143 | "Klima Aç/Kapat", "Kapıları Kilitle" butonları **boş** — hiçbir şey yapmıyor |
| **DEAD-8** | `OverlayManager.kt` | 124 | `updateAmplitude()` fonksiyonu **boş gövde** |
| **DEAD-9** | `MainActivity.kt` | 67-70 | `TARGET_SECTION` extra'sı okunuyor ama `SettingsScreen` tarafından hiç işlenmiyor |
| **DEAD-10** | `HardwareState.kt` | 13-15 | `switchToLocalSpeechEngine` boş gövde, hiç çağrılmıyor |

---

## ⚠️ GÜVENLİK

| # | Dosya | Satır | Sorun |
|---|---|---|---|
| **SEC-1** | `AndroidManifest.xml` | 59 | `usesCleartextTraffic="true"` — HTTP trafiği yakalanabilir |
| **SEC-2** | `AndroidManifest.xml` | 54 | `allowBackup="true"` — uygulama verileri ADB ile çıkarılabilir |
| **SEC-8** | `HomeScreen.kt` | 280, 606 | Admin şifresi hardcoded: `"4078"` |
| **SEC-9** | `VoiceAssistantService.kt` | 125-126 | `RECEIVER_EXPORTED` — üçüncü parti uygulamalar ses komutu enjekte edebilir |
| **SEC-10** | `SettingsScreen.kt` | 648-651 | Private method reflection ile erişiliyor — ProGuard bozar |
| **SEC-11** | `AndroidManifest.xml` | 98-105 | `PackageReplacedReceiver` exported=true — korumasız |

---

## 🏗️ MİMARİ SORUNLAR

| # | Dosya | Satır | Sorun |
|---|---|---|---|
| **ARCH-1** | `GlobalState.kt` | - | God Object (40+ alan) — tüm durum tek bir singleton'da, ayrışmamış endişeler |
| **ARCH-2** | Çeşitli | - | 10 ayrı `OkHttpClient` instance'ı — bağlam havuzu israfı, bağlantı yeniden kullanımı yok |
| **ARCH-3** | `DashboardScreen.kt` | 36 | `MediaControllerViewModel` iki kez oluşturuluyor, state paylaşmıyor |
| **ARCH-4** | `SettingsScreen.kt` | 648-651 | Private method reflection ile çağrılıyor — ProGuard ile bozulur |
| **ARCH-5** | `AndroidManifest.xml` | 107 | `AdbBridgeService` foreground service type belirtmemiş — Android 14+'ta crash |
| **ARCH-6** | `AndroidManifest.xml` | 107-110 | `AdbBridgeService` `startForeground()` çağırıyor ama `stopForeground()` hiç çağrılmıyor |

---

## 📊 KATEGORİ BAZLI İSTATİSTİK

| Kategori | Kritik | Yüksek | Orta | Düşük | Toplam |
|---|---|---|---|---|---|
| Güvenlik | 4 | 2 | 2 | 1 | **9** |
| Ağ/Bağlantı | 0 | 7 | 0 | 0 | **7** |
| Ses (STT/TTS) | 1 | 6 | 3 | 3 | **13** |
| Durum Yönetimi | 0 | 0 | 6 | 0 | **6** |
| Kaynak Yönetimi | 0 | 0 | 6 | 0 | **6** |
| Ölü Kod | 0 | 0 | 0 | 10 | **10** |
| Mimari | 0 | 1 | 5 | 0 | **6** |
| **Toplam** | **5** | **16** | **22** | **14** | **57** |

---

## 🔧 ÖNERİLEN ÖNCELİK SIRASI

1. **Güvenlik (SEC-3/4/5/6):** Receiver ve service export korumaları eklenmeli
2. **BUG-14/49:** Uygulama takılması ve crash düzeltmeleri
3. **NET-1/2:** Socket resource leak düzeltmeleri (`.use {}` pattern)
4. **TTS-1/2:** onError → onComplete yanlış çağrısı — fallback zincirinin kırılması
5. **KEY-1:** API key'ler BuildConfig veya config dosyasına taşınmalı
6. **NET-4:** AudioStreamSender'a yeniden bağlanma mantığı eklenmeli
7. **RES-2:** WakeLock zaman aşımı eklenmeli
8. **STATE-1:** Çift durum tanımı tekilleştirilmeli

---

## 📎 BAĞLANTI DURUMU MATRİSİ

| Bağlantı | Timeout | Hata Yönetimi | Fallback | Yeniden Bağlanma | Kaynak Temizliği |
|---|---|---|---|---|---|
| Hermes HTTP | ✅ robustClient | ✅ | ✅ (SttClient) | N/A | ✅ response.use |
| 9Router STT | ✅ robustClient | ✅ | ✅ (3 katman) | N/A | ✅ response.use |
| Edge TTS Yerel | ⚠️ bare OkHttpClient | ✅ | ✅ (AppTtsManager) | N/A | ✅ response.use |
| Edge TTS Çevrimiçi | ⚠️ yalnızca connect timeout | ✅ | ✅ (9Router'a düşer) | N/A | ✅ |
| Hermes SSE | ⚠️ readTimeout=∞ | ✅ | ❌ SSE'de yeniden deneme yok | N/A | ✅ eventSource.cancel |
| Relay WebSocket | ✅ 20s ping | ✅ | ✅ | ✅ Üstel gecikme (5 deneme) | ✅ |
| Ses TX WebSocket | ⚠️ ∞ timeout | ❌ Yalnızca log | ❌ Yok | ❌ Yeniden bağlanma yok | ⚠️ Manuel kapatma |
| Ses RX WebSocket | ⚠️ ∞ timeout | ✅ | ❌ Yok | ✅ 3s sabit gecikme | ✅ |
| MQTT | ✅ 10s/30s keepalive | ⚠️ Yayım hataları sessiz | ✅ Otomatik yeniden bağlanma | ✅ Paho yerleşik | ✅ |
| GitHub OTA | ✅ robustClient | ✅ | ❌ Yok | N/A | ✅ response.use |
| Sağlık Kontrolü TCP | ✅ 2s connect | ⚠️ Hata durumunda socket kapanmaz | N/A | ✅ 60s polling | ❌ Socket sızıntısı |
| ADB TCP Kontrol | ✅ 500ms connect | ⚠️ Hata durumunda socket kapanmaz | N/A | ✅ 5s polling | ❌ Socket sızıntısı |

---

## 🗂️ ÖLÜ BİLEŞENLER HARİTASI

| Dosya/Bileşen | Durum | Açıklama |
|---|---|---|
| `NavGraph.kt` | Ölü | Hiçbir yerde import veya çağrılmıyor |
| `HomeScreen.kt` (ui/screens/) | Ölü | MainActivity'deki同名 composable tarafından gölgeleniyor |
| `SensorSelectionDialog.kt` | Ölü | Hiçbir ekrandan çağrılmıyor |
| `WaveOverlayView.kt` | Ölü | Hiçbir yerde referans yok |
| `GlobalState.isAutoTasksEnabled` | Ölü | Tanımlı ama hiç okunmuyor |
| `GlobalState.latestVersion` | Ölü | Hiç güncellenmiyor |
| `AssistantApplication.sessionId` | Ölü | Hiç kullanılmıyor |
| `OverlayManager.updateAmplitude()` | Ölü | Boş gövde |
| `HardwareState.switchToLocalSpeechEngine()` | Ölü | Boş gövde, hiç çağrılmıyor |
| `SensorMonitorScreen` butonları | Ölü | "Klima Aç/Kapat", "Kapıları Kilitle" boş |
| `AndroidManifest.xml` RECEIVE_BOOT_COMPLETED | Ölü | İzin tanımlı ama BootReceiver yok |
| `AndroidManifest.xml` CALL_PHONE/SEND_SMS | Ölü | İzin tanımlı ama kod yok |
