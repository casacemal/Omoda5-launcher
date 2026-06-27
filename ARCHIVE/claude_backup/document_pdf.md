# Android Automotive OS Yerel ve Yapay Zekâ Destekli Sesli Asistan Projesi

## Proje Amacı
Android Automotive OS (AAOS) üzerinde çalışan, direksiyon üzerindeki sesli komut tuşu ile tetiklenen, hem tamamen çevrimdışı çalışabilen hem de yapay zekâ destekli gelişmiş komutları işleyebilen profesyonel bir araç içi sesli asistan geliştirmek.

Sistem sürüş güvenliğini öncelik olarak kabul eder. Araç kontrol komutları hiçbir zaman LLM veya yapay zekânın kararına bırakılmaz. Yapay zekâ yalnızca bilgi, sohbet ve yüksek seviyeli yorumlama görevlerinde kullanılır.

## Genel Mimari
Sistem 9 ana katmandan oluşur:
1. Tetikleme Katmanı
2. Ses Yakalama Katmanı
3. STT Katmanı
4. Komut Yönlendirme Katmanı
5. Araç Komut Motoru
6. Yapay Zekâ Katmanı (Hermes)
7. Olay ve Uyarı Motoru
8. Ses Yönetim Katmanı
9. Ayarlar ve Profil Sistemi

### 1. Tetikleme Katmanı
**Bileşenler:**
* VoiceCommandReceiver
* VoiceAssistantService

**Görev:**
Direksiyon üzerindeki mikrofon tuşunu dinlemek. AAOS tarafından gönderilen `com.saic.keyevent.hardkey.report` yayını yakalanır.

**Tuş basıldığında:**
* Floating mikrofon açılır.
* Ses kaydı başlatılır.
* Asistan dinleme moduna geçer.

### 2. Ses Yakalama Katmanı
**Bileşen:** AudioRecord
**Özellikler:** 16 kHz, Mono, PCM WAV
**Görev:** Sürücünün konuşmasını kaydetmek. Kayıt tamamlandığında ses dosyası STT katmanına aktarılır.

### 3. STT Katmanı
**Desteklenen Motorlar:**
* **Vosk:** Tamamen çevrimdışı. Türkçe model cihaz içerisinde bulunur.
* **Hermes STT:** Yerel ağ veya localhost üzerinden çalışır. (Örn: 127.0.0.1:2700)
* **OpenAI Whisper:** Bulut tabanlı. İnternet bağlantısı gerektirir.

**Görev:** Ses verisini metne çevirmek.

### 4. Komut Yönlendirme Katmanı
En kritik bileşendir. STT sonucu doğrudan Hermes'e gönderilmez. Önce Command Router tarafından analiz edilir.
**Örnekler:**
* "klimayı aç" → Araç Komut Motoru
* "salon ışıklarını kapat" → Home Assistant
* "bugün hava nasıl" → Hermes AI
* "müzik sesini yüzde 30 yap" → Araç Komut Motoru

**Amaç:** Araç kontrolünü yapay zekâdan ayırmak.

### 5. Araç Komut Motoru
Tamamen kural tabanlıdır. LLM kullanılmaz.
**Desteklenen Alanlar:**
* Klima / Fan / Cam rezistansı
* Medya kontrolü
* Telefon / Navigasyon
* Ses seviyesi
* Koltuk özellikleri
* Araç ayarları

### 6. Yapay Zekâ Katmanı (Hermes)
Araç kontrolü yapmaz.
**Görevleri:**
* Sohbet / Bilgi verme
* Hava durumu / Trafik bilgisi
* Home Assistant entegrasyonu
* Genel sorular

### 7. Olay ve Uyarı Motoru
Arka planda sürekli çalışır.
**Veri Kaynakları:** Trafik servisleri, Meteoroloji, AFAD, Araç sensörleri (TPMS, Yakıt).
**Kurallar:** Trafik gecikmesi > %40, şiddetli yağış, düşük yakıt veya kapı açık durumlarında bildirim/uyarı üretir.

### 8. Sürüş Analiz Motoru
Araç hareket ederken konuşmaz. Şartlar (Hız=0, Vites=P, Sürüş tamamlandı) sağlandığında sürüş özeti oluşturur.
**Örnek:** "Bugünkü sürüşünüzde 3 kez ani fren yaptınız. Ortalama yakıt tüketiminiz 6.4 litre oldu."

### 9. Ses Yönetim Katmanı
Tüm ses çıkışları bu katmandan geçer.
**Akış:** AudioFocus iste -> Medya sesini kıs/durdur -> TTS seviyesini ayarla -> TTS oynat -> Medya geri başlat.

## Bildirim Öncelik Sistemi
* **Seviye 1 - Kritik:** Motor arızası, kapı açık, lastik basıncı, aşırı sıcaklık. (Her zaman okunur)
* **Seviye 2 - Önemli:** Trafik yoğunluğu, kuvvetli yağış, fırtına, afet bildirimi.
* **Seviye 3 - Bilgilendirici:** Takvim, haber, hava durumu özeti.
* **Seviye 4 - Sohbet:** Yalnızca kullanıcı talep ettiğinde.

## Profil Sistemi
* **Minimal Mod:** Sadece güvenlik uyarıları.
* **Normal Mod:** Güvenlik, trafik, hava durumu.
* **Asistan Modu:** Tüm özellikler.
* **Sessiz Mod:** Sadece kritik güvenlik uyarıları.

## Güvenlik Kuralları
**Araç hareket halindeyken değiştirilemez:** Güvenlik/trafik eşikleri, afet bildirimleri, kritik ses seviyeleri.
**Araç hareket halindeyken sesli değiştirilebilir:** Ses tonu, konuşma hızı, Hermes açık/kapalı, bilgilendirme profili.

## Nihai Hedef
Tesla, Mercedes MBUX ve Android Automotive sistemlerine benzer; ancak araç kontrolünü yapay zekâdan tamamen ayıran, çevrimdışı çalışabilen, Home Assistant entegrasyonuna sahip, güvenlik odaklı profesyonel bir AAOS sesli asistan oluşturmak.
