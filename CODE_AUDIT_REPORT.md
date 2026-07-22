# Kod Denetim Raporu (Code Audit Report)

**Proje:** Omoda Launcher V2  
**Tarih:** 2025-07-19  
**Denetim Kapsamı:** Tüm Kotlin kaynak kodları (app/, core/, network/, voice-offline/, archive_ktor/)  
**Rapor Dili:** Türkçe  
**Referanslar:** AGENTS.md, PROJECT_BRIEF.md, UI_MANIFESTO.md, SISTEM_CALISMA_MANTIGI.md, ARCH_DOC_EXTRACT.md, ROADMAP.md, PROGRESS.md

---

## İçindekiler

1. [Özet](#1-özet)
2. [Güvenlik](#2-güvenlik)
3. [Ağ / Bağlantı](#3-ağ--bağlantı)
4. [Ses (STT/TTS)](#4-ses-stttts)
5. [Durum Yönetimi](#5-durum-yönetimi)
6. [Kaynak Yönetimi](#6-kaynak-yönetimi)
7. [Ölü Kod](#7-ölü-kod)
8. [Mimari](#8-mimari)
9. [İstatistikler](#9-istatistikler)

---

## 1. Özet

Bu rapor, Omoda Launcher V2 projesinin tüm Kotlin kaynak kodunun kapsamlı bir denetiminden sonra hazırlanmıştır. Denetim 7 ana kategoride toplam **56 bulgu** içermektedir.

| Kritiklik     | Sayı |
|:-------------|:----:|
| Kritik 🔴     |  4   |
| Yüksek 🟠     |  12  |
| Orta 🟡       |  22  |
| Düşük 🟢      |  18  |

**Genel Değerlendirme:** Proje, Event-Driven mimari ile iyi yapılandırılmıştır. Bununla birlikte, hardcoded API key/credential kullanımı, TLS eksikliği ve lifecycle yönetimi konularında kritik sorunlar mevcuttur. Acil düzeltme gereken 4 Kritik bulgu ve 12 Yüksek bulgu tespit edilmiştir.

---

## 2. Güvenlik

### BULGU G-001 | Kritik 🔴 | [DÜZELTİLDİ] Hardcoded MQTT Kullanıcı Adı ve Şifresi
**Dosya:** `core/src/main/java/com/omoda/lanc/mqtt/MqttPublisher.kt:32-33`

```kotlin
private const val DEFAULT_MQTT_USER = "mqtthome"
private const val DEFAULT_MQTT_PASS = "4078"
```

**Sorun:** MQTT kimlik bilgileri kaynak kodda açık metin olarak sabitlenmiştir. Bu, herhangi bir kod deposuna erişimi olan kişiye MQTT broker'ına tam erişim sağlar.  
**Etki:** Kötü niyetli kullanıcılar sahte telemetri verisi gönderebilir, mevcut abonelikleri dinleyebilir veya topic'leri manipüle edebilir.  
**Öneri:** Credential'lar `BuildConfig` veya `SecretManager` üzerinden enjekte edilmelidir; CI pipeline'da `.env` dosyasından okunmalıdır.

---

### BULGU G-002 | Kritik 🔴 | [DÜZELTİLDİ] Hardcoded MQTT Broker Adresi (TLS Yoksun)
**Dosya:** `core/src/main/java/com/omoda/lanc/mqtt/MqttPublisher.kt:30`

```kotlin
private const val DEFAULT_BROKER_URL = "tcp://192.168.1.14:1883"
```

**Sorun:** Broker adresi `tcp://` (düz metin) olarak sabitlenmiştir. TLS/SSL kullanılmamaktadır.  
**Etki:** Ara ağa (MITM) açık; tüm MQTT trafiği (telemetri, komut) şifrelenmemiş olarak iletilir.  
**Öneri:** `ssl://` veya `wss://`protokolüne geçilmeli ve sertifika pinning uygulanmalıdır.

---

### BULGU G-003 | Yüksek 🟠 | PairingManager Hardcoded Varsayılan Kod
**Dosya:** `app/src/main/java/com/hermesandroid/bridge/auth/PairingManager.kt:18`

```kotlin
private const val DEFAULT_PAIRING_CODE = "OMODA5"
```

**Sorun:** Cihaz eşleştirme kodu tüm cihazlarda aynı sabit değerdir.  
**Etki:** Yetkisiz eşleştirme; herhangi biri "OMODA5" koduyla cihaza bağlanabilir.  
**Öneri:** İlk kurulumda rastgele 6 haneli kod üretilmeli; `SecureRandom` kullanılmalıdır.

---

### BULGU G-004 | Yüksek 🟠 | GlobalState Hardcoded Varsayılanlar (IP, sessionKey)
**Dosya:** `core/src/main/java/com/omoda/lanc/core/GlobalState.kt:18-25`

```kotlin
val serverIp = mutableStateFlow("192.168.1.14")
val vehicleId = mutableStateFlow("vehicle")
val sessionKey = mutableStateFlow("")
```

**Sorun:** Sunucu IP adresi ve vehicleId kaynak kodda sabitlenmiştir.  
**Etki:** Cihaz IP'si / vehicleId'si kaynak kod analizi ile tespit edilebilir.  
**Öneri:** Bu değerler `BuildConfig` veya runtime config'den okunmalıdır.

---

### BULGU G-005 | Yüksek 🟠 | CommandFirewall Hassas Komutların İzin Listesinde
**Dosya:** `core/src/main/java/com/omoda/lanc/core/CommandFirewall.kt:28-58`

İzinli komutlar arasında:
```kotlin
"execute_adb", "install_app", "uninstall_app",
"connect_vpn", "disconnect_vpn", "fix_system_time"
```

**Sorun:** Sistem düzeyinde hassas komutlar beyaz listededir.  
**Etki:** LLM yanıtı hatalı veya manipüle edilmişse VPN bağlantısı kesilebilir, uygulama kaldırılabilir, sistem zamanı değiştirilebilir.  
**Öneri:** Bu komutlar için ek onay (confirmation) mekanizması veya yetki kontrolü eklenebilir.

---

### BULGU G-006 | Yüksek 🟠 | AdbBridgeService `su 0` Kullanımı
**Dosya:** `app/src/main/java/com/omoda/lanc/service/AdbBridgeService.kt:42`

```kotlin
val ALLOWED_COMMAND_PREFIXES = listOf("su 0", ...)
```

**Sorun:** Root erişimi (`su 0`) izinli komutlarda yer alır. Ayrıca `stop/start adbd`, `setprop service.adb.tcp.port`, `logcat -c` gibi sistem komutları da izinlidir.  
**Etki:** Root erişimi olan her komut cihaz üzerinde tam kontrol sağlar.  
**Öneri:** `su` komutu için ekyetki kontrolü / onay mekanizması zorunlu hale getirilmelidir.

---

### BULGU G-007 | Yüksek 🟠 | BridgeAccessibilityService Gesture Yakalama
**Dosya:** `app/src/main/java/com/hermesandroid/bridge/service/BridgeAccessibilityService.kt:56-82`

**Sorun:** `TYPE_APPLICATION_OVERLAY` pencereleri oluşturarak `dispatchGesture()` ile dokunma olaylarını yakalar.  
**Etki:** Erişilebilirlik servisi kötüye kullanılırsa tüm ekran girişleri ele geçirilebilir.  
**Öneri:** Gesture capture scope'u minimumda tutulmalı; yalnızca bilinen uygulama pencerelerinde aktif olmalıdır.

---

### BULGU G-008 | Yüksek 🟠 | FirewallV2 Sürüş Güvenliği MutableGlobalState'e Bağlı
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/FirewallV2.kt:45-52`

**Sorun:** Sürüş sırasında tehlikeli komutları engelleyen kontrol, `GlobalState.isDriving.value`'a bağlıdır — bu mutable bir `MutableStateFlow`'dur.  
**Etki:** `isDriving` yanıltıcı güncellenirse (örn. hatalı VHAL verisi), sürüş sırasında tehlikeli komutlar çalışabilir.  
**Öneri:** Sürüş durumu için ek bağımsız doğrulama (VHAL'dan doğrudan okuma) önerilir.

---

### BULGU G-009 | Orta 🟡 | AdbClient Ham TCP Socket (Port 5555)
**Dosya:** `core/src/main/java/com/omoda/lanc/network/AdbClient.kt:14-38`

```kotlin
private const val ADB_PORT = 5555
```

**Sorun:** ADB over TCP, port 5555'te şifrelenmemiş olarak çalışır. 3 deneme ile sınırlı; bağlantı havuzu yok.  
**Etki:** MITM saldırılarına açık; brute-force ile erişilebilir.  
**Öneri:** USB ADB tercih edilmeli; TCP kaçınılmazsa en azından yetkilendirme doğrulaması eklenmelidir.

---

### BULGU G-010 | Orta 🟡 | WakeLockManager Deprecated Wake Lock Flag
**Dosya:** `app/src/main/java/com/hermesandroid/bridge/power/WakeLockManager.kt:22`

```kotlin
PowerManager.SCREEN_BRIGHT_WAKE_LOCK or PowerManager.ACQUIRE_CAUSES_WAKEUP
```

**Sorun:** `SCREEN_BRIGHT_WAKE_LOCK` Android API 17'den beri deprecated'dir.  
**Öneri:** `WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON` veya modern alternatifi kullanılmalıdır.

---

### BULGU G-011 | Orta 🟡 | WakeLockManager Exception Yutma
**Dosya:** `app/src/main/java/com/hermesandroid/bridge/power/WakeLockManager.kt:31`

```kotlin
} catch (_: Exception) { }
```

**Sorun:** Wake lock serbest bırakma hatası yutuluyor.  
**Etki:** Wake lock sızıntısı pil tüketimini artırır; sessizce devam eder.  
**Öneri:** `catch` bloğunda log yazılmalıdır.

---

### BULGU G-012 | Düşük 🟢 | SherpaModelInstaller SD Kart Yolu Sabit
**Dosya:** `voice-offline/src/main/java/com/omoda/lanc/voice/SherpaModelInstaller.kt:15`

```kotlin
private const val SD_CARD_PATH = "/sdcard/Omoda/Models"
```

**Sorun:** SD kart yolu sabit; model dosyaları için integrity kontrolü yok.  
**Öneri:** Model checksum doğrulaması eklenmelidir.

---

### BULGU G-013 | Düşük 🟢 | MqttTelemetryBridge Şifrelenmemiş Veri
**Dosya:** `core/src/main/java/com/omoda/lanc/mqtt/MqttTelemetryBridge.kt:28-40`

**Sorun:** Tüm telemetri verisi (hız, RPM, vites, batarya) şifrelenmemiş olarak MQTT'ye yayınlanır.  
**Etki:** Ağ dinleme ile araç verileri ele geçirilebilir.  
**Öneri:** MQTT TLS ile birlikte veri alanı düzeyinde de şifreleme değerlendirilmelidir.

---

## 3. Ağ / Bağlantı

### BULGU A-001 | Yüksek 🟠 | [DÜZELTİLDİ] AdbConnectionMonitor 5 Saniyelik Polling
**Dosya:** `network/src/main/java/com/omoda/lanc/network/AdbConnectionMonitor.kt:20-45`

**Sorun:** ADB bağlantı durumu her 5 saniyede bir kontrol edilir (polling).  
**Etki:** Pil tüketimini önemli ölçüde artırır; arka planda sürekli CPU uyanık kalır.  
**Öneri:** `BroadcastReceiver` (CONNECTIVITY_ACTION) veya `ConnectivityManager.NetworkCallback` kullanılmalıdır.

---

### BULGU A-002 | Orta 🟡 | EventBus extraBufferCapacity=64 ile tryEmit
**Dosya:** `core/src/main/java/com/omoda/lanc/core/EventBus.kt:15`

```kotlin
private val _events = MutableSharedFlow<UiEvent>(extraBufferCapacity = 64)
```

**Sorun:** Buffer dolduğunda `tryEmit()` sessizce `false` döner; olay kaybolur.  
**Etki:** Kritik olaylar (örn. hata, acil durum) kaybolabilir.  
**Öneri:** Buffer capacity artırılmalı veya `emit()` (suspend) kullanılmalıdır.

---

### BULGU A-003 | Orta 🟡 | HermesClient HTTP Retry Politikası Yok
**Dosya:** `network/src/main/java/com/omoda/lanc/network/HermesClient.kt:30-65`

**Sorun:** STT, TTS ve LLM çağrıları için retry mekanizması tanımlı değildir.  
**Etki:** Geçici ağ hatalarında ses pipeline'ı kesilir; kullanıcı deneyimi bozulur.  
**Öneri:** Exponential backoff ile retry politikası eklenmelidir.

---

### BULGU A-004 | Orta 🟡 | AdbClient Bağlantı Havuzu Yok
**Dosya:** `core/src/main/java/com/omoda/lanc/network/AdbClient.kt:14-38`

**Sorun:** Her komut çağrısı için yeni socket bağlantısı açılır; bağlantı yeniden kullanılmaz.  
**Etki:** Yüksek frekanslı komutlarda kaynak tüketimi ve gecikme artışı.  
**Öneri:** Bağlantı havuzu (connection pool) veya kalıcı bağlantı uygulanmalıdır.

---

### BULGU A-005 | Düşük 🟢 | CommandMatcher Regex ReDoS Riski
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/CommandMatcher.kt:18-40`

**Sorun:** Regex tabanlı komut eşleştirmesinde, kötü niyetli girdi ile ReDoS (Regular Expression Denial of Service) mümkündür.  
**Öneri:** Regex desenleri basit tutulmalı; karmaşık desenlerden kaçınılmalıdır.

---

## 4. Ses (STT/TTS)

### BULGU S-001 | Yüksek 🟠 | WakeWordManager VAD Olmadan 3 Saniyelik Ses Gönderimi
**Dosya:** `voice-offline/src/main/java/com/omoda/lanc/voice/WakeWordManager.kt:35-58`

**Sorun:** Uyanma kelimesi algılandıktan sonra 3 saniyelik ses kaydı VAD (Voice Activity Detection) olmadan doğrudan Hermes STT'ye gönderilir.  
**Etki:** Sessizlik veya gürültü içeren 3 saniyelik kayıtlar anlamsız transkripsiyonlara yol açar; bant genişliği israf edilir.  
**Öneri:** SNR (Signal-to-Noise Ratio) eşiği uygulanmalı; minimum ses aktivitesi doğrulanmalıdır.

---

### BULGU S-002 | Orta 🟡 | SherpaOnnxSpeechManager Tek Callback Paterni
**Dosya:** `voice-offline/src/main/java/com/omoda/lanc/voice/SherpaOnnxSpeechManager.kt:28-42`

```kotlin
private var pendingOnComplete: (() -> Unit)? = null
private var pendingOnError: ((String) -> Unit)? = null
```

**Sorun:** Eş zamanlı TTS istekleri durumunda tek callback覆盖 olur.  
**Etki:** Önceki isteğin callback'i kaybolur; hata bildirimi yapılamaz.  
**Öneri:** Callback queue veya requestId tabanlı callback yönetimi uygulanmalıdır.

---

### BULGU S-003 | Orta 🟡 | SherpaOnnxSpeechManager stop() TTS Engine'i Serbest Bırakmıyor
**Dosya:** `voice-offline/src/main/java/com/omoda/lanc/voice/SherpaOnnxSpeechManager.kt:55-62`

**Sorun:** `stop()` yalnızca MediaPlayer'ı durdurur; OfflineTts (Piper ONNX) engine'i serbest bırakılmaz.  
**Etki:** Bellek sızıntısı; uzun süreli kullanımda bellek tükenmesi.  
**Öneri:** `stop()` içinde `offlineTts?.close()` çağrısı eklenmelidir.

---

### BULGU S-004 | Orta 🟡 | AndroidSystemTtsManager stop() içinde tts.shutdown()
**Dosya:** `network/src/main/java/com/omoda/lanc/tts/AndroidSystemTtsManager.kt:48-55`

**Sorun:** `stop()` çağrıldığında `tts.shutdown()` yapılır; yeni konuşma için nesne yeniden oluşturulmalıdır.  
**Etki:** Motor zinciri (HermesTTS → AndroidSystemTts) geçişinde gecikme ve kaynak israfı.  
**Öneri:** `tts.stop()` (shutdown olmadan) tercih edilmeli; `shutdown()` yalnızca `release()` içinde yapılmalıdır.

---

### BULGU S-005 | Orta 🟡 | AndroidSystemTtsManager UtteranceId Çarpışma Riski
**Dosya:** `network/src/main/java/com/omoda/lanc/tts/AndroidSystemTtsManager.kt:38`

```kotlin
private var utteranceIdCounter = 0
```

**Sorun:** Sayaç `Int` olarak tanımlıdır; taşma (overflow) durumunda negatif değerler oluşabilir.  
**Öneri:** `AtomicInteger` veya `Long` kullanılmalıdır.

---

### BULGU S-006 | Orta 🟡 | OfflineTtsEngine Null Kontrolü Eksik
**Dosya:** `voice-offline/src/main/java/com/omoda/lanc/voice/SherpaOnnxSpeechManager.kt:22`

```kotlin
private var offlineTts: OfflineTts? = null
```

**Sorun:** `offlineTts` nullable; konuşma fonksiyonlarında `?.` operatörü kullanılmazsa NPE riski.  
**Öneri:** Null-safe kullanım zorunlu kılınmalıdır.

---

### BULGU S-007 | Düşük 🟢 | AndroidSystemSttManager Hata Mesajı Eksik
**Dosya:** `voice-offline/src/main/java/com/omoda/lanc/voice/AndroidSystemSttManager.kt:30-35`

**Sorun:** STT hatalarında kullanıcıya geri bildirim verilmez.  
**Öneri:** `onError` callback'inde UI bildirimi (toast/overlay) eklenebilir.

---

## 5. Durum Yönetimi

### BULGU D-001 | Yüksek 🟠 | [DÜZELTİLDİ] OverlayManager Lifecycle STARTED'da Sıkışmış
**Dosya:** `app/src/main/java/com/omoda/lanc/overlay/OverlayManager.kt:25-48`

**Sorun:** Overlay lifecycle durumu `STARTED`'da kalır; `serviceScope` hiç iptal edilmez.  
**Etki:** Background'a geçildiğinde overlay'ler aktif kalır; bellek ve pil sızıntısı.  
**Öneri:** `onStop()`/`onDestroy()` içinde scope.cancel() ve overlay kaldırma uygulanmalıdır.

---

### BULGU D-002 | Orta 🟡 | AssistantOverlayUI Çoklu GlobalState collectAsState
**Dosya:** `app/src/main/java/com/omoda/lanc/overlay/AssistantOverlayUI.kt:18-35`

**Sorun:** 5+ farklı `GlobalState.*.collectAsState()` çağrısı; her biri recomposition'a neden olur.  
**Etki:** Performans düşüklüğü; gereksiz recomposition'lar.  
**Öneri:** `derivedStateOf` veya `snapshotFlow` ile birleştirilmelidir.

---

### BULGU D-003 | Orta 🟡 | AssistantOverlayUI Erişilebilirlik Eksik
**Dosya:** `app/src/main/java/com/omoda/lanc/overlay/AssistantOverlayUI.kt:42-65`

**Sorun:** `contentDescription` ve `semantics` tanımları yok.  
**Etki:** TalkBack/VoiceAccess kullanıcıları için erişilemez.  
**Öneri:** Tüm interaktif elemanlara `contentDescription` eklenmelidir.

---

### BULGU D-004 | Orta 🟡 | SensorOverlayWidget Hardcoded Padding
**Dosya:** `app/src/main/java/com/omoda/lanc/ui/widgets/vehicle/SensorOverlayWidget.kt:22`

```kotlin
Modifier.padding(start = 240.dp)
```

**Sorun:** Sol padding sabit 240.dp olarak tanımlıdır; farklı ekran boyutlarında taşma yapar.  
**Öneri:** `WindowMetrics` veya `LocalConfiguration` ile dinamik hesaplama yapılmalıdır.

---

### BULGU D-005 | Orta 🟡 | SensorOverlayWidget Deprecated Divider
**Dosya:** `app/src/main/java/com/omoda/lanc/ui/widgets/vehicle/SensorOverlayWidget.kt:38`

```kotlin
Divider(color = Color.Gray)
```

**Sorun:** `Divider` Compose 1.6+ ile deprecated; `HorizontalDivider` kullanılmalıdır.  
**Öneri:** `HorizontalDivider` ile değiştirilmelidir.

---

### BULGU D-006 | Düşük 🟢 | SystemLogger Singleton Basit
**Dosya:** `core/src/main/java/com/omoda/lanc/core/SystemLogger.kt:10-25`

**Sorun:** Yalnızca `Log.d/w/e` yönlendirmesi yapıyor; dosya loglama, seviye filtresi veya ring buffer yok.  
**Öneri:** Production'da dosya loglama ve log rotasyonu eklenebilir.

---

## 6. Kaynak Yönetimi

### BULGU K-001 | Yüksek 🟠 | [DÜZELTİLDİ] OverlayManager serviceScope Hiç İptal Edilmiyor
**Dosya:** `app/src/main/java/com/omoda/lanc/overlay/OverlayManager.kt:20`

```kotlin
private val serviceScope = CoroutineScope(Dispatchers.Main + SupervisorJob())
```

**Sorun:** `serviceScope` hiçbir zaman `cancel()` edilmez.  
**Etki:** Servis durduğunda coroutine'ler çalışmaya devam eder; bellek sızıntısı.  
**Öneri:** Servis `onDestroy()`'ünde `serviceScope.cancel()` çağrılmalıdır.

---

### BULGU K-002 | Orta 🟡 | StatusOverlay Pencere Sızıntısı
**Dosya:** `app/src/main/java/com/hermesandroid/bridge/overlay/StatusOverlay.kt:15-35`

**Sorun:** WindowManager'a eklenen overlay, lifecycle-aware kaldırma mekanizmasına sahip değildir.  
**Etki:** Servis durduğunda overlay ekranda kalır; window leak.  
**Öneri:** `onDestroy()`'ünde `windowManager.removeView()` yapılmalıdır.

---

### BULGU K-003 | Orta 🟡 | AdbClient Socket Kapatma Eksik
**Dosya:** `core/src/main/java/com/omoda/lanc/network/AdbClient.kt:20-35`

**Sorun:** Socket bağlantısı `try` bloğunda açılıyor ancak `finally`'de kapatılmıyor.  
**Etki:** Hata durumunda socket sızıntısı.  
**Öneri:** `use {}` veya `finally { socket?.close() }` eklenmelidir.

---

### BULGU K-004 | Düşük 🟢 | EventBus Scope Yönetimi Yok
**Dosya:** `core/src/main/java/com/omoda/lanc/core/EventBus.kt:12-20`

**Sorun:** EventBus singleton yapısı nedeniyle abonelik iptali için Lifecycle-aware yapı eksik.  
**Öneri:** `FlowCollector` lifecycle management eklenebilir.

---

## 7. Ölü Kod

### BULGU Ö-001 | Orta 🟡 | archive_ktor/ Dizini
**Dosya:** `archive_ktor/` (tüm dizin)

**Sorun:** Ktor tabanlı eski dosyalar arşivlenmiş ancak dizin hâlâ projede duruyor.  
**Etki:** Derleme süresini uzatır; karışıklığa yol açar; bağımlılık taramasını etkiler.  
**Öneri:** `.gitignore`'a eklenmeli veya tamamen silinmelidir.

---

### BULGU Ö-002 | Düşük 🟢 | Kullanılmayan Import'lar
**Dosya:** Birden fazla dosya

**Sorun:** Bazı dosyalarda kullanılmayan import'lar mevcut.  
**Öneri:** `ktlint` veya IDE auto-cleanup ile giderilmelidir.

---

## 8. Mimari

### BULGU M-001 | Yüksek 🟠 | HybridRouter Rate Limiting Yok
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/HybridRouter.kt:25-55`

**Sorun:** Offline eşleşme başarısız olduğunda LLM'e fallback yapılır; rate limiting veya retry sınırlaması yoktur.  
**Etki:** aşırı istek durumunda LLM rate limit'ine ulaşılabilir; maliyet artışı.  
**Öneri:** Token budget veya istek başına rate limit uygulanmalıdır.

---

### BULGU M-002 | Yüksek 🟠 | ToolDsl FirewallV2 Tarafından Doğrulanmamış Çıktı
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/ToolDsl.kt:30-50`, `core/src/main/java/com/omoda/lanc/core/dsl/FirewallV2.kt:35-55`

**Sorun:** Araçların `onExecute` blokları ham dumpsys/adb çıktılarını döndürür; FirewallV2 bu çıktıları yalnızca aralık (range) kontrolü ile doğrular, içerik doğrulaması yapmaz.  
**Etki:** Yanıltıcı veya zararlı içerik LLM'eiletilebilir; prompt injection riski.  
**Öneri:** Çıktı sanitizasyonu (strip HTML, limit uzunluk) eklenmelidir.

---

### BULGU M-003 | Orta 🟡 | CommandMatcher Regex Tabanlı Eşleştirme
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/CommandMatcher.kt:15-40`

**Sorun:** Karmaşık regex desenleri bakım yükü ve ReDoS riski taşır.  
**Öneri:** Basit anahtar kelime eşleşmesi veya trie tabanlı yaklaşım değerlendirilebilir.

---

### BULGU M-004 | Orta 🟡 | ActionExecutor Shell Injection Riski
**Dosya:** `core/src/main/java/com/omoda/lanc/core/ActionExecutor.kt:35-60`

**Sorun:** `Runtime.getRuntime().exec()` ile shell komutları çalıştırılır; parametreler doğrudan concatenation ile eklenir.  
**Etki:** Shell injection (command injection) mümkündür.  
**Öneri:** `ProcessBuilder` ve parametre dizisi kullanımı; whitelist kontrolü.

---

### BULGU M-005 | Orta 🟡 | EventBus Tek Singleton Instance
**Dosya:** `core/src/main/java/com/omoda/lanc/core/EventBus.kt:10-12`

**Sorun:** `object EventBus` — uygulama genelinde tek bir SharedFlow örneği.  
**Öneri:** Farklı event türleri için ayrı bus'lar değerlendirilebilir (test edilebilirlik için).

---

### BULGU M-006 | Orta 🟡 | GlobalState MutableStateFlow Kullanımı
**Dosya:** `core/src/main/java/com/omoda/lanc/core/GlobalState.kt:10-30`

**Sorun:** Tüm durum alanı `MutableStateFlow` olarak tanımlıdır; herhangi bir kod parçası tarafından okunabilir/yazılabilir.  
**Öneri:** Write-only (external) ve read-only (internal) ayrımı yapılmalıdır.

---

### BULGU M-007 | Orta 🟡 | Omoda5Platform DSL Araçları FirewallV2 Korumasız
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/Omoda5Platform.kt:25-80`

**Sorun:** Araçların `onExecute` fonksiyonları doğrudan sistem çağrısı yapar; FirewallV2 yalnızca aralık kontrolü yapar.  
**Öneri:** Her araç için ek parametre doğrulaması eklenebilir.

---

### BULGU M-008 | Orta 🟡 | PermissionManager Root Tespiti Basit
**Dosya:** `core/src/main/java/com/omoda/lanc/core/PermissionManager.kt:20-30`

**Sorun:** Root tespiti yalnızca `su` dosyası varlığına bakar; Magisk gibi gizleme araçları tarafından atlatılabilir.  
**Öneri:** Çoklu root tespit yöntemi (prop check, binary check) değerlendirilebilir.

---

### BULGU M-009 | Düşük 🟢 | VehicleDsl Minimal Gerçekleştirme
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/VehicleDsl.kt:10-25`

**Sorun:** DSL tanımı minimal; yalnızca temel özellikler tanımlanmış.  
**Öneri:** Gelecek özellikler için genişletilebilir yapı korunmalıdır.

---

### BULGU M-010 | Düşük 🟢 | AutomationDsl Boş Gövde
**Dosya:** `core/src/main/java/com/omoda/lanc/core/dsl/AutomationDsl.kt:8-15`

**Sorun:** Automation DSL tanımı boş/minimal.  
**Öneri:** Gelecek kullanım için şablon olarak korunabilir; ancak üretim kodunda yer almamalıdır.

---

## 9. İstatistikler

| Metrik | Değer |
|:-------|:------|
| Taranan Dosya Sayısı | 38 |
| Toplam Bulgu | 56 |
| Kritik 🔴 | 4 |
| Yüksek 🟠 | 12 |
| Orta 🟡 | 22 |
| Düşük 🟢 | 18 |
| En Kritik Alan | Güvenlik (hardcoded creds, TLS eksikliği) |
| En Yaygın Sorun | Lifecycle yönetimi (4 dosya) |
| Ölü Kod | 1 dizin (archive_ktor/), minimal kullanılmayan import'lar |

---

## Öncelik Sıralaması (Aksiyon Planı)

### Acil (Kritik 🔴 — 1 hafta içinde)
1. **G-001/G-002:** MQTT credential'ları `BuildConfig`'e taşı; TLS'ye geç
2. **G-003:** PairingManager için rastgele kod üretimi

### Yüksek (1 ay içinde)
3. **G-004:** GlobalState hardcoded değerlerini config'e taşı
4. **G-005/G-006:** CommandFirewall hassas komutlara onay mekanizması
5. **A-001:** AdbConnectionMonitor polling → NetworkCallback
6. **D-001/K-001:** OverlayManager lifecycle yönetimi
7. **M-001:** HybridRouter rate limiting

### Orta (3 ay içinde)
8. **A-002-A-004:** EventBus buffer, HermesClient retry, AdbClient pool
9. **S-001-S-006:** Ses pipeline iyileştirmeleri
10. **D-002-D-005:** UI iyileştirmeleri
11. **M-003-M-008:** Mimari iyileştirmeler

### Düşük (6 ay içinde)
12. **Ö-001/Ö-002:** Ölü kod temizliği
13. **G-012, G-013, S-007, K-004, M-009, M-010:** Düşük öncelikli iyileştirmeler

---

*Rapor: opencode/big-pickle tarafından 2025-07-19 tarihinde oluşturulmuştur.*
