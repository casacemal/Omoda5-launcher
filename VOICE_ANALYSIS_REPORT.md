# 🎙️ Omoda 5 Sesli Asistan Derin Analiz Raporu

**Versiyon:** 1.0 (v10.2.x bazlı)
**Durum:** Mikrofon Erişim Hatası Tespit Edildi

---

## 🚨 1. Temel Arıza: AudioFlinger Blokajı
Uygulama mikrofonu açmaya çalıştığında sistem seviyesinde red (Access Denied) alıyor.

*   **Hata Kodu:** `-1` (AudioFlinger could not create record track)
*   **Hata Sebebi:** Android Automotive OS, mikrofon donanımını (Hardware) OEM uygulamalarına (Chery/Cerence) rezerve etmiş. Üçüncü parti uygulamaların standart `AudioRecord` çağrıları reddediliyor.
*   **Kullanılan Kaynak:** `inputSource 6` (VOICE_RECOGNITION) - Sistem tarafından engellenmiş olabilir.

---

## 🧠 2. Ses Motorları (Engine Status)
*   **VOSK (Offline):** ✅ Modeller harici klasörden başarıyla yükleniyor. Ancak donanım (Mic) kapalı olduğu için veri işleyemiyor.
*   **Google STT (Online):** ❌ Cihazda GMS (Google Play Services) olmadığı için bu motor tamamen devre dışı.
*   **Cerence (OEM):** 🔍 `/product/app/cerence/cerence.apk` konumunda tespit edildi. Bu motor sistemle bütünleşik çalışıyor.

---

## 🛠️ 3. Çözüm Önerileri
1.  **Kaynak Rotasyonu:** `VOICE_RECOGNITION` yerine `VOICE_COMMUNICATION` (7) kaynağını dene. Bu kaynak genellikle telefon görüşmeleri için açık bırakılır.
2.  **Audio Manager Focus:** Mikrofonu istemeden önce `AudioManager.requestAudioFocus` ile sistemden "Ses Odağı" talep et.
3.  **Cerence Proxy:** Fiziksel Mic tuşu (293) basıldığında, direkt olarak orijinal asistanı tetikleyen bir Intent gönder:
    `am start -n com.nuance.voiceserver/.VoiceActivity` (Paket adı doğrulanacak).

---

## 🏁 Sonuç
Şu anki mimaride **VOSK**, mikrofon engeline takılıyor. Bir sonraki adımda mikrofon giriş kaynağını değiştirerek sistemin "güvenlik duvarını" aşmayı deneyeceğiz.
