# AGENTS.md - Bilgi Çıkarma Protokolü

Bu dosya, projedeki otonom ajanların çalışma prensiplerini ve bilgi yönetim protokollerini tanımlar.

## Bilgi Çıkarma Protokolü

0.  **Dil Kuralı:** Kod yazımı haricindeki tüm iletişim, raporlama ve dokümantasyon güncellemeleri KESİNLİKLE Türkçe yapılacaktır.
1.  **Bağlantı Sorunları Protokolü:** Hermes veya MQTT bağlantı sorunu yaşandığında:
    *   **Önce Sunucu Kontrolü:** Sunucunun (192.168.1.14) erişilebilirliği ve servislerin (8642, 1883 vb.) durumu kontrol edilmeden KESİNLİKLE kod değişikliği yapılmaz.
    *   **Kod Kontrolü:** Sunucu normalse, uygulamadaki **3 kırmızı LED** (Bağlantı durum göstergeleri) üzerinden hata analizi yapılır.
2.  **Gözlem:** Her kullanıcı isteğinde ve kod incelemesinde yeni bilgiler (teknik kısıtlar, tercihler, kararlar) aranır.
2.  **Kayıt:** Yeni bir bilgi tespit edildiğinde, kullanıcıya sormadan ilgili dokümana (PROJECT_BRIEF.md, ROADMAP.md vb.) eklenir.
3.  **Doğrulama:** Eğer yeni bilgi mevcut kararlarla çelişiyorsa, işlem yapmadan önce kullanıcıdan onay istenir.
4.  **Güncelleme:** Her görev sonunda PROGRESS.md, FILE_INDEX.md, ROADMAP.md ve UI_MANIFESTO.md güncellenir. Yeni bir dosya eklendiğinde veya bir dosyanın görevi değiştiğinde "Proje Mimari Haritası" tablosu derhal revize edilmelidir.

## Mimari Kısıtlar (ÖNEMLİ)

*   **UI Koruma:** Ana ekran 5x2 grid yapısı ve 235dp sidebar boşluğu `UI_MANIFESTO.md` kurallarına göre korunmalıdır. Değiştirilemez.
*   **Tek IP / Çoklu Port Mimarisi:** Projede tüm dış servisler TEK BİR IP adresi üzerinden sunulur. Farklı hizmetler sadece port numaraları ile ayırt edilir.
*   **Sabit Sunucu Adresi:** `100.95.239.119` (Tailscale) / `192.168.1.14` (Yerel Ağ)
*   **Doğrulanmış Servis ve Yetki Haritası (04.07.2026 Test Sonucu):**
    *   **Hermes API (8642):** 
        *   Görev: Chat Completions (SSE), Session yönetimi.
        *   Durum: **AKTİF** (200 OK)
        *   API Key: `cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34` (Primary)
    *   **Hermes WebSocket Relay (8766):**
        *   Görev: Bridge sunucusu ile Hermes arasında çift yönlü komut/yanıt WebSocket kanalı.
        *   Durum: **AKTİF** (websocket-relay.service — systemd)
        *   Not: `POST /relay/send` ile WS client'ına komut gönderilebilir.
    *   **BridgeServer (8765):**
        *   Görev: Cihaz üzerinde çalışan yerel HTTP API sunucusu (ActionExecutor komutları).
        *   Durum: **AKTİF** (BridgeServer.start)
    *   **9Router API (20128):** 
        *   Görev: STT (Whisper) ve TTS (OpenAI/Piper) proxy servisi.
        *   Durum: **AKTİF** (200 OK)
        *   API Key: `sk-b6f4d3879cc4a442-vwd4xl-8ad79a58` (Secondary/Fallback)
    *   **Wyoming/Bridge (5000):**
        *   Görev: 9Router veya Hermes başarısız olduğunda devreye giren otomatik yerel STT/TTS köprüsü.
        *   Durum: **AKTİF VE DÜZELTİLDİ** (wyoming-bridge.service — systemd, port 5000 dinliyor)
        *   Protokol: OpenAI-Compatible HTTP over port 5000.
        *   Not: STT → 9Router proxy, TTS → edge-tts (yerel)
    *   **Edge TTS (10201):**
        *   Görev: TTS (Edge TTS) HTTP sunucusu.
        *   Durum: **AKTİF** (edge-tts-server.service — systemd)
        *   Not: API key gerektirmez, `POST /v1/audio/speech`
    *   **Sherpa STT (5002):**
        *   Görev: Çevrimdışı (Yerel) Türkçe ASR (Whisper Tiny int8).
        *   Durum: **AKTİF** (sherpa-stt.service — systemd, port 5002 dinliyor)
        *   Not: Wyoming Bridge (Port 5000) rate limit veya 9Router hatası aldığında otomatik olarak bu servise yedek kanal (failover) olarak düşer.
    *   **MQTT (1883):** Telemetri.
*   **GitHub OTA Yapılandırması:**
    *   Token: `AssistantApplication.GITHUB_TOKEN` (Hardcoded fallback + ConfigManager override)
    *   Kullanım: Sürüm kontrolü ve APK indirme süreçlerinde yetkilendirme sağlar.
    *   Yönetim: Token, `AppConfig.githubToken` alanı üzerinden `app_config.json`'a yazılır. Config dosyasında yoksa hardcoded varsayılan kullanılır.
*   **Paket Boyutu ve Güncelleme Politikası (Kritik):**
    *   Derleme ve yükleme süreçlerinde her zaman APK boyutunu küçük tutmaya (modelleri dışarıda bırakan hafif "Update" paketi: `app/build.gradle` içindeki `isUpdateOnly = true`) ve güncellemeleri bu hafif paket üzerinden kurmaya özen gösterilmelidir.
    *   Full paket (`app-fullV*.apk`) yalnızca modellerin ilk kurulumu veya modellerin güncellenmesi gereken önemli ve major durumlarda tercih edilmelidir. Cihazda modeller zaten yüklü ise her zaman update paketi derlenip yüklenmelidir.
*   **Sunucu SSH Erişimi:**
    *   Host: `192.168.1.14`
    *   User: `dietpi` (40781)
    *   Password: `40781`
*   **Servis Uç Noktaları:**
    *   **Chat:** `http://192.168.1.14:8642/v1`
    *   **WebSocket Relay:** `ws://192.168.1.14:8766/ws`
    *   **Relay Send (HTTP):** `POST http://192.168.1.14:8766/relay/send`
    *   **BridgeServer (Local):** `http://192.168.1.14:8765`
    *   **STT/TTS (9Router):** `http://192.168.1.14:20128/v1`
    *   **STT/TTS (Wyoming):** `http://192.168.1.14:5000/v1`
    *   **TTS (Edge):** `http://192.168.1.14:10201/v1/audio/speech`
    *   **STT (Sherpa Local):** `http://192.168.1.14:5002/v1/stt`
*   **Servis Kısıtlamaları:** Groq veya diğer harici doğrudan bulut API'leri KESİNLİKLE kullanılmayacaktır. Tüm yapay zeka ve ses işlemleri `100.95.239.119:8642` ve diğer yerel portlar üzerinden yürütülecektir. TTS (Text-to-Speech) olarak yalnızca yerel Edge TTS sunucusu (Port `10201` - `/v1/audio/speech`) kullanılacaktır.

## Kod İnceleme Protokolü

Bir dosya "kontrol et" dendiğinde aşağıdaki adımlar sırasıyla uygulanır:

1.  **Doğrudan Okuma:** Hedef dosya baştan sona okunur, tüm fonksiyonların mantığı analiz edilir.
2.  **Cross-Reference Taraması:** Dosyadaki import'lar ve referans verilen semboller (`instance`, `static` çağrılar) grep ile proje genelinde taranır. İlgili tüm dosyalar okunur.
3.  **Döküman Uyumluluğu:** AGENTS.md, PROJECT_BRIEF.md ve ROADMAP.md'deki teknik kısıtlar (port numaraları, IP adresleri, servis tanımları) kodla karşılaştırılır. Tutarsızlık varsa raporlanır.
4.  **Bağımlılık Zinciri Analizi:** Dosyanın çağırdığı ve çağrıldığı tüm noktalar belirlenir, eksik/hatalı bağlantılar tespit edilir.
5.  **Bug/Kaçak Taraması:**
    *   Her callback/invoke yolunda kaynak yönetimi (foreground notification, scope iptali, WebSocket kapatma) kontrol edilir.
    *   Null-safety: `?.` kullanılmayan nullable çağrılar taranır.
    *   Lifecycle: Coroutine scope'ların iptal edilme senaryoları gözden geçirilir.
    *   Race condition: Birden çok callback'in aynı anda tetiklenme olasılığı değerlendirilir.
6.  **Raporlama:** Bulgular öncelik sırasına göre (BUG / UYUMSUZLUK / DÜŞÜK RİSK) etiketlenerek sunulur.

## API Hata Ayıklama Protokolü

*   **Sorun Tespiti:** Bağlantı veya yapılandırma sorunu yaşanırsa, doğrudan uygulamanın ana kodlarını bozarak deneme-yanılma yapmak **KESİNLİKLE YASAKTIR!**
*   **Test Araçlarının Kullanımı:** Ajanlar, API arızalarında öncelikle `scripts/` dizininde bulunan yerel test aracı olan [test_voice_system.py](file:///mnt/depo/launcher_v2/scripts/test_voice_system.py) betiğini kullanmalıdır.

### Servis Canlılık ve API Entegrasyon Testi

Bir bağlantı/hata durumunda PC veya sunucu üzerinden şu adımlar sırayla izlenmelidir:

1.  **Ping Kontrolü:** Hedef IP'ye (örneğin 192.168.1.14) ping atılır:
    ```bash
    ping -c 2 -W 3 <ip>
    ```
    Erişilemiyorsa ağ veya sunucu kapalıdır.
2.  **Otomatik API Testi:** Ping başarılıysa, terminal üzerinden test aracı çalıştırılır:
    ```bash
    python3 scripts/test_voice_system.py --ip <ip>
    ```
    Bu araç sırasıyla şu servisleri test eder:
    - **Wyoming STT** (Port 5000 /v1/stt)
    - **9Router STT** (Port 20128 /v1/audio/transcriptions)
    - **Wyoming TTS** (Port 5000 /v1/tts)
    - **9Router TTS** (Port 20128 /v2/audio/speech - Edge proxy)
    - **Yerel Edge TTS** (Port 10201 /v1/audio/speech)
    - **Hermes Chat API** (Port 8642 /v1/chat/completions)

## Ortamdan Çıkarılacak Bilgiler

...

## Overlay Uç Noktası

### Sorun:	eger
Overlay, sesli yanıtı iki kez gösteriyor: üstte gri metin ve altta mavi metin. Çözüm: `AssistantOverlayUI` içinde yalnızca tek metin görünmesi sağlanmalı. Bu değişiklik `AssistantOverlayUI.kt` dosyasında yapılmıştır.

## Ses İletim Mimarisi ve Yol Haritası

```mermaid
sequenceDiagram
    autonumber
    actor Kullanıcı
    participant APP as Omoda Android App
    participant STT as STT (Port 20128/5000)
    participant Hermes as Hermes Chat API (Port 8642)
    participant EdgeTTS as Yerel Edge TTS (Port 10201)

    Kullanıcı->>APP: Bas-Konuş (Keycode 290)
    Note over APP: AudioEngine odak alır,<br/>SttManager kaydı başlatır (.wav)
    Kullanıcı->>APP: Konuşmayı bitirir / Zaman aşımı (8s)
    Note over APP: Kayıt diske yazılır
    APP->>STT: POST /v1/audio/transcriptions (Dosya yollanır)
    STT-->>APP: Yanıt: "klima derecesini 22 yap" (Metin)
    
    APP->>Hermes: POST /v1/chat/completions (SSE Stream açılır)
    Note over APP: AgentManager gelen kelimeleri birleştirerek<br/>cümle bittikçe (., ?, !) tetikler
    
    loop Cümle Akışı (SSE)
        Hermes-->>APP: Cümle parçaları (Delta text)
        Note over APP: MediaPlayer'a doğrudan HTTP GET Stream<br/>URL'si (Port 8642?input=...) atanır!
        APP->>Hermes: GET /v1/audio/speech?input=... (Stream isteği)
        Hermes->>EdgeTTS: Proxy /v1/audio/speech (Yerel Edge)
        EdgeTTS-->>Hermes: MP3 Binary Stream
        Hermes-->>APP: Audio Stream
        Note over APP: MediaPlayer arabelleğe alıp<br/>doğrudan çalar (I/O gecikmesi yok!)
        APP->>Kullanıcı: Sesli Yanıt (Hoparlör)
    end
```

### Ses İletim Adımları

1. **Sesin Alınması (STT):** Kullanıcı bas-konuş yaptığında ses `.wav` dosyası olarak kaydedilir ve `http://192.168.1.14:20128/v1/audio/transcriptions` (Yedek: `http://192.168.1.14:5000/v1/stt`) adresi üzerinden metne dönüştürülür.
2. **AI İşleme (Hermes Chat completions SSE):** Çözümlenen metin `http://192.168.1.14:8642/v1/chat/completions` OpenAI-compatible endpoint'ine gönderilir. Kelimeler SSE stream olarak geri akar. Cümle bitişlerinde (`.`, `?`, `!`) veya 50 karakter sınırında sentezleme sıraya alınır.
3. **Ses Sentezleme (HTTP GET Stream):** Bölünen cümleler diske yazılmaksızın doğrudan MediaPlayer'a stream URL'si olarak yollanır. MediaPlayer, `http://${serverIp}:8642/v1/audio/speech?input=...&voice=edge` adresi üzerinden ses akışını (GET) alır. Hermes API bu isteği yerel Edge TTS sunucusuna (Port 10201) proxy eder ve dönen MP3 binary akışı MediaPlayer tarafından arabelleğe alınarak anında hoparlörden çalınır. (I/O yazma gecikmesi tamamen engellenmiştir).