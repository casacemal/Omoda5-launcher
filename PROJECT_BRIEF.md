# PROJECT_BRIEF.md - AAOS Asistan (Üretim Seviyesi Mimari)

## Ürün Tanımı (PDF Plan v2.0 Tabanlı)
Android Automotive OS üzerinde çalışan; telemetri, AI sesli asistan, adaptif sürüş bağlam motoru ve ses karıştırma motorunu birleştiren **Automotive AI Runtime Layer**.

## Temel Prensipler
1.  **Everything = Event:** Tüm sistem iletişimi event-driven ( SharedFlow) olacak.
2.  **No Polling Dependency:** Mantıksal katmanlar polling verisine bağımlı olmayacak.
3.  **No UI-Driven Mutation:** Durum değişiklikleri UI üzerinden değil, Event Bus üzerinden tetiklenecek.

## Katmanlı Mimari (9 Kritik Katman)
1.  **Vehicle Layer:** CarPropertyManager (Primary) + Dumpsys (Fallback) hibrik telemetri.
2.  **Context Engine:** Sürüş modlarının (PARKED, CITY, HIGHWAY, TRAFFIC, RISK) çıkarımı.
3.  **Event Bus:** Sistem çapında tek SharedFlow iletişim noktası.
4.  **Intent Engine / Command Router:** Ses niyetlerinin (Araç, HA, AI) kural tabanlı ayrıştırılması.
5.  **Policy Engine:** Güvenlik ve izin kontrolü (hız > X ise kısıtlamalar).
6.  **Audio Engine & Hardware Awareness:** Donanım tipine göre (Araç vs Mobil) dinamik AudioAttributes seçimi ve öncelikli lane yönetimi (ALERT > AI > NAV > MUSIC).
7.  **Alert & Event Engine:** TPMS, yakıt, kapı gibi kritik olay uyarıları.
8.  **Driving Analysis Engine:** Sürüş sonrası özet ve verimlilik analizi.
9.  **AI Client (Hermes):** STT, LLM ve TTS pipeline yönetimi.
10. **Token Migration:** Tüm API anahtarları (GitHub, Hermes, 9Router, Edge TTS) `app_config.json` içerisinde XOR şifreli olarak saklanır ve `AppConfig` üzerinden yönetilir.
11. **OTA & App Store:** Github üzerinden otomatik sürüm kontrolü ve in-app güncelleme altyapısı.

## Kaynak Referanslar
*   **Asistan Referansı:** `/mnt/depo/omodaassist_v2` (Sesli asistan için test edilmiş, doğrulanmış kaynak klasör.)
*   **Launcher Referansı:** `/mnt/depo/lancher proje/app` (Launcher tasarımı ve kuralları için baz alınacak kaynak klasör.)

## Tasarım Kuralları (Launcher)
*   `/mnt/depo/lancher proje/app` klasöründeki görsel dil ve `MEDIA_TASARIM.md`, `OMODA5_ULTIMATE_MANIFESTO.md` gibi dokümanlardaki kurallar mevcut projeye (launcher_v2) uygulanacaktır.
*   Görsel tutarlılık için referans projelerdeki Glassmorphism ve renk paleti korunacaktır.

## Kısıtlar ve Kurallar
*   API 29 (AAOS 10) uyumluluğu kesin kuraldır.
*   **Bağlantı Ayarları (SABİT / TEK ENDPOINT MİMARİSİ):**
    *   **Main Server IP:** `192.168.1.14` (Local) / `100.95.239.119` (Tailscale)
    *   **Hermes API Port:** `8642` (Chat & Logic)
    *   **WebSocket Relay:** `8766` (Android Bridge WS bağlantısı)
    *   **BridgeServer:** `8765` (Yerel Ktor HTTP sunucusu)
    *   **9Router Port:** `20128` (STT & TTS - `/v1`)
    *   **Wyoming/Bridge Port:** `5000` (STT → 9Router proxy, TTS → edge-tts)
    *   **Edge TTS:** `10201` (Doğrudan edge-tts `/v1/audio/speech`)
    *   **MQTT Broker:** `100.95.239.119:1883`
*   **Referans Mimarisi:** [Hermes-Android](https://github.com/rusty4444/hermes-android) uygulamasının asistan yöntemi baz alınmıştır. 
*   **Geliştirme Hızı:** Büyük değişiklikler hariç, sadece metod/kod güncellemelerinde "Apply Changes" (CTRL+F10) mekanizması kullanılacak.
*   **Command Firewall (Merkezi Karar Birimi) & Tasarım İlkesi:** 
    *   Araç kontrolü asla doğrudan LLM'e bırakılmaz. AI'dan gelen tüm araç fonksiyon istekleri (`tool_calls`) `CommandFirewall.kt` üzerinden geçer, Whitelist ve parametre sınır kontrolüne tabi tutulur.
    *   **Geri Bildirim ve Şeffaflık İlkesi:** Firewall bir komutu engellediğinde veya izin verdiğinde, bu durum anında Logcat'e (Log.e / Log.i) yazılmalı ve `EventBus` üzerinden `UIEvent.UpdateOverlayState` ile ekrandaki AI bildirim (Overlay) kısmına yansıtılmalıdır. Kullanıcı (ve AI), engellenme ve izin durumlarını anlık görebilmelidir.
*   **Genel Hata Ayıklama Tasarım Kuralı:** Ana kodları (mevcut veya yeni eklenecek olanlar) bozarak deneme-yanılma yapmak kesinlikle yasaktır. Herhangi bir şüpheli durumda (API hatası vb.), `aes_app/` (eski adıyla scripts) klasöründeki Python araçları/test script'leri kullanılmalı ve gerektiğinde bu test süiti genişletilmelidir.
*   Hareket halindeyken (Speed > 0) riskli ayarların değiştirilmesi engellenecek.
*   **TTS / STT Fallback Politikası:** Ses tanıma ve okuma işlemleri kaskad zincire sahiptir: **Online (9Router/Edge) -> Local (Sherpa/Piper)**. Local sistemler şu an beklemeye alınmış olsa da kod mimarisi buna uygun dizayn edilmiştir. Ses odağı (Audio Ducking) bu zincir bitene kadar korunur.
.
    *   **ASISTANT (Asistan) Modu:** Kısa yanıtlar, araç bağlamlı, yerel Regex motoru (`CommandRouter`) öncelikli. Sadece talep edilen eylemi gerçekleştirir.
    *   **CHAT (Sohbet) Modu:** Kesintisiz, derin ve samimi diyalog. Sürüş arkadaşı kişiliği.
*   **Donanım Farkındalığı (Hardware Awareness):** AI motoru (`AgentManager`), her diyalogda aracın güncel telemetri verilerini (Hız, Vites, Klima, Sıcaklık vb.) sistem promptu olarak alır ve yanıtlarını buna göre şekillendirir.
*   **MQTT Telemetri (Yegane Veri Akışı):** Araç verileri `100.95.239.119:1883` broker'ına `omoda/telemetri` konusuyla periyodik olarak aktarılır. REST tabanlı telemetri gönderimi tamamen kaldırılmıştır. Tüm anomali takip ve izleme işini MQTT üstlenir.
*   **OTA Güncelleme & Sürüm Düşürme:**
    *   Derlenen her yeni asistan sürümü kesinlikle GitHub releases (`casacemal/Omoda5-launcher`) alanına yüklenecektir, atlanmayacaktır.
    *   Uygulama içi App Store ekranında en güncel **4 sürüm** her zaman listelenecektir.
    *   Kullanıcının eski sürümlere geri dönebilmesi (Downgrade) için sürüm düşürme desteği korunacaktır. Eski sürümlerin yanındaki buton turuncu renkte **"DÜŞÜR"** olarak gösterilecek ve `pm install -r -d` komutuyla downgrade sağlanacaktır.
    *   **Otomatik Kontrol:** İnternet bağlantısı sağlandığında (NetworkMonitor üzerinden) sistem **1 defa** otomatik olarak güncelleme kontrolü yapacak ve ekrandaki Canlı İş Akışı (deploy) paneline bilgi yazacaktır.

## Çift Platform Desteği (AAOS & Mobil)
*   **Donanım Algılama:** Uygulama, çalışma anında `AssistantApplication.isCarHardware` üzerinden donanımı tespit eder.
*   **AAOS Modu:** Araç ünitelerinde (1920x720 vb.) yatay, geniş ve sürüş emniyeti odaklı (büyük butonlar, sidebar) arayüz sunar.
*   **Mobil/Test Modu:** Standart telefonlarda (Dikey/Portrait) çalışırken Simülasyon Modu'nu otomatik aktif eder. Arayüz dikey kullanıma, daha küçük ekranlara ve kaydırma (scroll) hareketlerine göre adapte edilir.
*   **Simülasyon:** Telefonlarda araç verisi bulunmadığı için VHAL verileri rastgele/statik değerlerle simüle edilir, bu sayede test süreçleri araçsız yürütülebilir.

## AAOS Geliştirme İpuçları & Önemli Bilgiler 💡
*   **Audio Focus İşlemleri:** AAOS üzerinde ses sentezlerken, Chery'nin multimedya sisteminin (Radyo, Bluetooth vb.) sesini kısmak (ducking) veya duraklatmak için mutlaka Android `AudioFocusRequest` mimarisi kullanılmalıdır. Aksi takdirde asistan konuşurken müzikle sesler birbirine karışır.
*   **Hız Ayarı (lengthScale):** Sürücüye anlık kritik bildirimler verirken (örn: "Sol kör noktada araç var!"), `lengthScale` değerini 0.85 veya 0.90 yaparak Fahrettin modelinin biraz daha seri ve dinamik konuşması sağlanmalıdır.