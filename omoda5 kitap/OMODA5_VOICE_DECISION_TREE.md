# OMODA5 Voice Assistant Decision Tree

## Hızlı Karar

Bu dump için başlangıç kararı:

`Doğru OEM Cerence paketi elinde yoksa yeni bir hafif voice sistemi yapmak daha kolay.`

`Doğru com.chery.cerence runtime paketi bulunursa mevcut OEM sistemi diriltmek daha doğru ve muhtemelen daha az iş olur.`

## Bu Kararın Dayanağı

- Sistem doğrudan Cerence servisine bağlanmak istiyor:
  - [VrPlatformService.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/manager/platformmanager/VrPlatformService.java:165)
- Araç konfigürasyonunda voice özelliği bayrakla yönetiliyor:
  - [CarConfigInfoClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarConfigInfoClient.java:219)
  - [CarConfigInfoClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarConfigInfoClient.java:711)
  - [CarConfigInfoClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarConfigInfoClient.java:1172)
- Speech settings ve wakeup ayarları tasarlanmış:
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:26)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:27)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:29)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:40)
  - [PageConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PageConstants.java:210)

Sorun:

- Dump içinde `com.chery.cerence` ana paketi görünmüyor.
- Kod hazır olsa da runtime servis eksikse “aktif etme” işi basit ayar açma işi olmaktan çıkar.

## Karar Ağacı

### Yol 1: Önce OEM sistemi diriltmeyi dene

Bu yol şu durumda mantıklı:

- Elinde aynı cihaz ailesinden veya aynı build hattından `com.chery.cerence` APK/service paketi varsa
- Priv-app / system imzalama / izin zincirini yeniden kurabilecek durumdaysan
- Hedefin fabrikaya en yakın deneyimse

Bu yolda kritik kontrol listesi:

1. `com.chery.cerence` ana paketini bul
2. Paketin içinde gerçekten `com.chery.cerence.VrService` var mı doğrula
3. Paket hangi bölüme ait belirle:
   - `priv-app`
   - `system_ext`
   - `vendor`
   - `product`
4. Gerekli permission ve shared UID bağımlılıklarını çıkar
5. `voiceRecognition` araç konfigürasyon biti aktif mi kontrol et
6. Speech setting anahtarları gerçekten settings provider üzerinden okunuyor mu kontrol et
7. Voice tuşu veya wakeup event’i servis tarafına ulaşıyor mu test et

Başarı koşulu:

- `bindService(com.chery.cerence.VrService)` başarısız olmuyor
- wakeup veya voice key olayı geldiğinde servis cevap veriyor
- settings anahtarları state değiştiriyor

Bu yolun zorluk seviyesi:

`zor`

Ana riskler:

- eksik APK
- imza uyuşmazlığı
- priv-app izin eksikliği
- OEM bağımlı native library eksikliği
- araç config bitinin firmware tarafından kapalı olması

### Yol 2: Yeni hafif bir voice sistemi yap

Bu yol şu durumda mantıklı:

- OEM Cerence paketi yoksa
- Hedefin çalışır bir çözümse, fabrika aynısı değilse
- Kendi komut kümeni yönetmek istiyorsan

Bu yolda minimum mimari:

1. Bir tetikleme yöntemi seç
   - direksiyon/voice key
   - ekranda mikrofon butonu
   - uzun basma aksiyonu
2. Speech-to-text katmanı ekle
   - Android recognizer
   - offline motor
   - cloud tabanlı servis
3. Komut yorumlayıcı yaz
   - medya kontrol
   - radyo aç/kapat/değiştir
   - navigasyon intent
   - ses seviyesi
   - sınırlı araç fonksiyonları
4. Cevap katmanı ekle
   - TTS
   - UI toast/dialog
5. Ayar ekranı ekle
   - wake button davranışı
   - mikrofon erişimi
   - dil
   - TTS sesi

Başarı koşulu:

- butona basınca konuşma alınıyor
- en az 5-10 temel komut güvenilir çalışıyor
- hata durumunda kullanıcıya net geri bildirim veriliyor

Bu yolun zorluk seviyesi:

`orta`

Ana riskler:

- OEM kadar derin araç entegrasyonu kurmak zor olabilir
- bazı araç fonksiyonları public API ile açılamayabilir
- direksiyon tuşu yakalama ek iş çıkarabilir

## Hangisi Ne Zaman Daha Kolay

### OEM aktivasyonu daha kolay olur, eğer:

- `com.chery.cerence` paketi bulunduysa
- servis sınıfı gerçekten mevcutsa
- gerekli imza/izin yapısı yeniden kurulabiliyorsa
- amaç OEM deneyimi ise

### Yeni sistem daha kolay olur, eğer:

- ana Cerence paketi yoksa
- sadece kullanılabilir bir voice komut sistemi isteniyorsa
- medya/navigasyon gibi sınırlı ama pratik komutlar yeterliyse

## Sana Özel Net Tavsiye

Şu anki dump verisine göre öneri sırası:

1. Önce `com.chery.cerence` paketini başka backup/firmware içinde ara
2. Bulunursa OEM diriltme yoluna geç
3. Bulunamazsa yeni hafif voice assistant yap

Bugünkü eldeki kanıta göre nihai hüküm:

`Bu dump ile doğrudan OEM voice assistant açmak kolay değil.`

`Bu dump ile yeni bir hafif voice çözümü kurmak daha gerçekçi ve daha hızlı sonuç verir.`

## Bir Sonraki Teknik Adım

Eğer OEM yolu denenecekse:

- hedef: `com.chery.cerence` paketini bulmak ve servis yapısını doğrulamak

Eğer yeni sistem yapılacaksa:

- hedef: mikrofon butonu + speech-to-text + medya/radyo/navigasyon komutlarından oluşan minimum v1 tasarlamak
