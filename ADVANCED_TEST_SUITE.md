# 🧪 Omoda 5 Launcher - Gelişmiş Test ve Doğrulama Protokolü (v10.0.0)

Bu dosya, her sürüm öncesi yapılması gereken derinlemesine sistem testlerini içerir.

## 1. VERİ YOLU VE KÖPRÜ (BRIDGE) TESTLERİ
- [ ] **Data Persistence:** Sayfa 1'den Sayfa 3'e (Lab) hızlı geçiş yapıldığında Medya Başlığı kayboluyor mu?
- [ ] **VHAL Stress:** PC Simülatöründen saniyede 10 veri basıldığında `VhalManager` donuyor mu?
- [ ] **Hybrid Sync:** Hem Socket (ADB) hem de Broadcast verisi aynı anda geldiğinde köprüde çakışma oluyor mu?

## 2. ETKİLEŞİM VE GESTURE TESTLERİ
- [ ] **Home Intercept:** Tüm metodlar (Key, Overlay, Watchdog) çalışıyor mu?
- [ ] **Edge Gestures:** Overscan aktifken (-235px) sol kenar kaydırma "Geri" tetikliyor mu?
- [ ] **Multi-Display:** Cluster ekranı tetiklendiğinde ana ekran dokunmatiği gecikiyor mu?

## 3. ASİSTAN VE SES TESTLERİ
- [ ] **Offline Detection:** Cihazda STT motoru yokken "Mic" tuşu direkt rehber ekranını açıyor mu?
- [ ] **Hybrid Engine:** SYS ve VOSK butonları ilgili motorları bağımsız olarak tetikliyor mu?
- [ ] **VOSK Load:** Assets altındaki `model-tr` yüklendiğinde VOSK "Dinliyorum" durumuna geçiyor mu?
- [ ] **Cerence Trigger:** `com.nuance.voiceserver` (veya ilgili paket) manuel olarak `am start` ile uyandırılabiliyor mu?
- [ ] **Command Parsing:** "Klimayı aç" komutu `am start` komutuna sıfır hata ile dönüşüyor mu?

## 4. KRİTİK YAŞAM DESTEK (RECOVERY)
- [ ] **Crash Loop:** `MainActivity` arka arkaya 3 kez `throw Exception` edildiğinde `RecoveryActivity` açılıyor mu?
- [ ] **Rollback:** `/sdcard/Download` altındaki eski APK'lar listede doğru görünüyor mu?

## 5. PERFORMANS (CPU/RAM)
- [ ] **Socket Leak:** 1 saatlik ADB akışı sonrası `AdbBridgeService` RAM tüketimi 100MB'ı geçiyor mu?
- [ ] **Polling Check:** VHAL verisi 4000ms aralıkla düzgün akıyor mu?

---
**Not:** Bu liste her büyük değişiklik sonrası güncellenmeli ve "SÜREKLİ GÖREV" kapsamında takip edilmelidir.
