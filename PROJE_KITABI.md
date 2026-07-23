# OMODA UNIVERSAL ASSISTANT V2 - TEKNİK ANSİKLOPEDİ VE REHBER 📘

Bu doküman, sistemin her bir hücresini, veri akışını, bugüne kadar çözülmüş kritik hataları ve geliştirme standartlarını içeren resmi "Master" dokümandır.

---

## 1. MİMARİ KATMANLAR VE VERİ SÖZLÜĞÜ 🛠️

Sistem "Architecture 2.0" prensiplerine göre 7 ana katmana ayrılmıştır.

### 1.1. Donanım Katmanı (VHAL)
- **Dosya:** `core/.../VehicleController.kt`
- **Giriş:** `dumpsys car_service get-property-value <ID> <ZONE>` (Shell Çıktısı)
- **Çıkış:** `GlobalState.vehicleDataValues: Map<String, String>`
- **Veri Tipi:** `String` (Tüm veriler UI'da kolay sergilenmesi için işlenmiş string olarak saklanır).
- **Standart:** 
    - Hex ID'ler 8 haneli, küçük harf ve **0x prefix'siz** olmalıdır (Örn: `11600207`).
    - Veriler Map'e 3 anahtarla yazılır: `HexID`, `İnsan Okunabilir Etiket` ve `Standart Alias (HIZ, RPM vb.)`.
- **Kritik Çözüm:** AAOS 10 `dumpsys` komutunda Hex ID'leri kabul etmez. Komut gönderilmeden önce Hex ID mutlaka `Long(16)` ile Decimal'e çevrilmelidir.

### 1.2. Yürütme Katmanı (Execution / ADB)
- **Dosya:** `core/.../AdbClient.kt`
- **Giriş:** Ham Shell Komutu (`String`)
- **Çıkış:** Satır satır callback (`(String) -> Unit`)
- **Teknoloji:** Yerel Socket (127.0.0.1:5555)
- **Kritik Çözüm:** Cihazda ADB portu kapalıysa veya `run-as` başarısız olursa, sistem otomatik olarak `su -c` (Root) fallback moduna geçer.

### 1.3. Yapay Zeka Katmanı (Hermes/AI)
- **Dosya:** `network/.../AgentManager.kt`, `SttClient.kt`, `EdgeOnlineTTSManager.kt`
- **Giriş:** `.wav` Ses Dosyası (16kHz, Mono, 16-bit)
- **Çıkış:** SSE Delta akışı üzerinden `String` parçacıkları.
- **Standart:** 
    - **STT:** Whisper API üzerinden Multipart Form-Data.
    - **LLM:** OpenAI uyumlu Chat Completions API.
    - **TTS:** Edge TTS üzerinden HTTP GET Stream (Arabelleğe yazmadan doğrudan çalma).
- **Kritik Çözüm:** Halüsinasyon filtresi eklendi. "Abone ol", "thanks for watching" gibi sessizlikte oluşan AI uydurmaları Regex ile engellenir.

---

## 2. KESİNLEŞMİŞ SORUN ÇÖZÜMLERİ (KNOWLEDGE BASE) 🧠

Bugüne kadar yaşanan ve kesin çözüme kavuşturulan "Don't Do" listesi:

| Sorun | Neden | Kesin Çözüm |
| :--- | :--- | :--- |
| **Hız/RPM Görünmüyor** | `dumpsys` ID formatı hatası. | ID'ler decimal'e çevrilerek gönderilmeli, 0x eklenmemeli. |
| **Simülasyon Kapanmıyor** | Uygulama donanımı tanımayınca zorla açıyordu. | `AssistantApplication` içindeki zorlayıcı `if` bloğu kaldırıldı. |
| **Sidebar Kayıyor** | Farklı ekran çözünürlükleri. | Sidebar genişliği **235dp** olarak mühürlendi (Architecture 2.0 kuralı). |
| **Sesler Çakışıyor** | Birden fazla AudioRecord instance'ı. | `AssistantController` üzerinden merkezi mikrofon odağı (Audio Focus) yönetimi. |
| **Uygulama İzinleri Düşüyor** | AAOS'un agresif yetki yönetimi. | `MainActivity`'de 5 dakikada bir çalışan **"Background Permission Injector"** kuruldu. |

---

## 3. VERİ VE EVENT STANDARTLARI 📊

### 3.1. EventBus Olay Tipleri (`Event.kt`)
Bir geliştirici yeni bir olay eklemek isterse bu mühürlü sınıfları (Sealed Classes) kullanmalıdır:
- `VehicleEvent.StateUpdated(state: VehicleState)`: Araç verisi değiştiğinde.
- `UIEvent.UpdateOverlayState(text: String)`: Asistan penceresindeki metni güncellemek için.
- `SystemEvent.ConfigUpdated`: Ayarlar değiştiğinde servislerin yeniden başlatılması için.

### 3.2. GlobalState Sözlüğü
| Değişken | Görevi | Veri Tipi |
| :--- | :--- | :--- |
| `isSimulationMode` | Veri kaynağını (VHAL vs MQTT) belirler. | `MutableStateFlow<Boolean>` |
| `sttMode` | Ses tanıma motoru seçimi (HERMES, SHERPA, LOCAL). | `MutableStateFlow<String>` |
| `vehicleDataValues` | Sistemin canlı bellek veri tabanı. | `MutableStateFlow<Map<String, String>>` |

---

## 4. GELİŞTİRİCİ REHBERİ: NASIL EDİT YAPILIR? 🛠️

### A. Yeni Bir Sensör Eklemek
1. `VehicleController.kt` içindeki `PROPERTY_DEFINITIONS` haritasına Hex ID ve Etiketi ekleyin.
2. `updateDisplay` metoduna (eğer gerekiyorsa) yeni bir **Alias** tanımlayın.
3. `SENSÖR_STANDARTLARI.md` dosyasına bu yeni sensörü kaydedin.

### B. Yeni Bir Sesli Komut Eklemek
1. `core/.../dsl/OmodaTools.kt` içine yeni fonksiyonu (tool) tanımlayın.
2. `FirewallV2.kt` içindeki beyaz listeye (Whitelist) fonksiyon adını ekleyin.
3. `ActionExecutor.kt` içine bu fonksiyonun shell karşılığını yazın.

### C. UI Bileşeni Eklemek
1. `AutomotiveComponents.kt` içindeki `CarButton` veya `CarIconButton` bileşenlerini kullanın (Min 64dp kuralı).
2. Tasarımda mutlaka **Sidebar (235dp)** boşluğunu hesaba katın.
3. Veriyi asla doğrudan çekmeyin, `GlobalState.vehicleDataValues`'ı `collectAsState()` ile dinleyin.

---

## 5. KRİTİK DOSYA İÇERİKLERİ VE STANDARTLAR 📄

### `AdbClient.kt` (Güvenli Komut İcrası)
```kotlin
// STANDART: Her komut ayrı bir Thread içinde izole edilmelidir.
fun executeCommand(cmd: String, onLine: (String) -> Unit) {
    // 1. Firewall kontrolü yapılır
    // 2. Local socket (5555) denenir
    // 3. Başarısız olursa 'su -c' (Runtime Fallback) tetiklenir
}
```

### `EventBus.kt` (Merkezi Sinir Sistemi)
```kotlin
// STANDART: Buffer kapasitesi 256, Taşma politikası DROP_OLDEST.
val events = MutableSharedFlow<Event>(
    extraBufferCapacity = 256,
    onBufferOverflow = BufferOverflow.DROP_OLDEST
)
```

---
*Doküman Sürümü: 3.0.0 (Geliştirilmiş Teknik Rehber)*
*Son Güncelleme: 23.07.2026*
