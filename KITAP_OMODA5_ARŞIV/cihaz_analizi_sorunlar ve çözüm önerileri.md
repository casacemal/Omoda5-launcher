# Chery Omoda 5 - Mevcut Kısıtlamalar ve Eksiklikler Analizi

## 1. Mevcut Durum Analizi
Kök dizindeki dosyalara dayanarak yapılan tespitler:
- **İşletim Sistemi:** Android 10 (API Level 29) tabanlı Android Automotive OS.
- **Mimari:** ARM64 (64-bit).
- **Kritik Uygulamalar:** 
  - `priv-app/launcher/launcher.apk`: Chery Ana Ekran Uygulaması.
  - `priv-app/hvac/hvac.apk`: Klima ve havalandırma kontrolü.
  - `framework/android.car.jar`: Otomotiv API kütüphaneleri.
  - `bin/carplay_reset.sh`: Apple CarPlay ve USB mod değişim betiği.
  
  
Cihaz üzerinde yapılan ADB incelemeleri sonucunda tespit edilen kritik sorunlar aşağıdadır:

## 1. Bildirim Erişimi (Notification Listener) Kısıtlaması
*   **Sorun:** Sistemde "Bildirim Erişimi" (Notification Access) menüsü tamamen gizlenmiş veya devre dışı bırakılmış.
*   **Etkisi:** 3. parti Launcher uygulamaları (Vivid, Car Launcher vb.) medya oynatıcılarını kontrol edemiyor, şarkı bilgilerini çekemiyor ve bildirimleri ekranda gösteremiyor.
*   **Teknik Durum:** `enabled_notification_listeners` ayarı boş veya kısıtlı. Normalde kullanıcı arayüzünden verilmesi gereken izin, sistem tarafından engellenmiş.

## 2. Navigasyon Çubuğu (Navigation Bar) ve Tuş Eksikliği
*   **Sorun:** Cihazda standart Android navigasyon tuşları (Geri, Ana Ekran, Son Uygulamalar) yok. Bunun yerine Chery'nin kendi sol barı (`LeftNavigationBar`) kullanılıyor.
*   **Etkisi:** Kullanıcı başka bir uygulama açtığında geri dönmek veya ana ekrana geçmek için fiziksel bir tuşa veya yazılımsal bir bara sahip değil.
*   **Teknik Durum:** `qemu.hw.mainkeys` veya benzeri sistem özellikleri navigasyon barını gizlemek üzere yapılandırılmış.

## 3. Erişilebilirlik Servisleri (Accessibility Services) Blokajı
*   **Sorun:** Navigasyon barı uygulamalarının (Soft Keys vb.) çalışması için gereken "Erişilebilirlik" izinleri verilemiyor.
*   **Etkisi:** Cihazda `accessibility_enabled=0` olarak ayarlanmış ve ayarlar menüsünde bu kısım kilitli. Bu izin olmadan ekrana sanal tuş koyan uygulamalar tıklama işlemini gerçekleştiremiyor.

## 4. Sistem İzinleri ve Overlay (Üstte Gösterim) Engelleri
*   **Sorun:** "Diğer uygulamaların üzerinde göster" (Overlay) izni birçok uygulama için sistem tarafından otomatik reddediliyor.
*   **Etkisi:** Yüzen butonlar (Floating buttons) veya yan paneller çalışırken hata veriyor veya sistem tarafından kapatılıyor.


# Chery Omoda 5 - Çözüm Önerileri ve İyileştirme Planı

Cihazdaki kısıtlamaları aşmak için Root yetkisiyle uygulanabilecek yöntemler:

## 1. Bildirim Erişimini Zorla Aktif Etme (Root)
Kullanıcı arayüzünde menü olmasa bile, ADB üzerinden istediğimiz Launcher'a bildirim izni verebiliriz.
*   **Komut:** `adb shell settings put secure enabled_notification_listeners <uygulama_adı>/<servis_adı>`
*   **Sonuç:** Launcher, medya kontrollerine ve bildirim verilerine anında erişebilir hale gelir.

## 2. Yazılımsal Navigasyon Barını (Native Android) Geri Getirme
Sistemin gizlediği standart Android navigasyon barını `build.prop` veya `settings` üzerinden zorla açabiliriz.
*   **Yöntem A:** `qemu.hw.mainkeys=0` ayarını `build.prop` dosyasına eklemek. (Dikkatli yapılmalı).
*   **Yöntem B:** `settings put global policy_control immersive.full=*` komutuyla ekranın alt kısmında navigasyon alanını tetiklemek.

## 3. Erişilebilirlik İzinlerini Manuel Tanımlama
Hangi navigasyon barı uygulamasını yüklediyseniz, onun iznini SQL veritabanına doğrudan yazarak aktif edebiliriz.
*   **Komut:** `adb shell settings put secure enabled_accessibility_services <paket_adi>`
*   **Sonuç:** Uygulama, ayarlara girmeye gerek kalmadan çalışmaya başlar.

## 4. Chery Sol Barını (LeftNavigationBar) Özelleştirme
Madem sistemde bir `LeftNavigationBar` var, bu pencerenin önceliğini (Z-Order) değiştirerek veya 3. parti bir Launcher'ın butonlarını bu alanın üzerine (Overlay) bindirerek hibrit bir çözüm üretebiliriz.


## 6. Launcher ve Klima (HVAC) Sorunları Çözümü
F-Launcher kullanımı sonrası kaybolan Klima ve Bildirim Paneli için:

*   **Sorun:** Orijinal launcher devre dışı kaldığında sistem servisleri (HVAC, Status Bar) tetiklenmiyor.
*   **Çözüm (Geri Yükleme):**
    1.  Orijinal Launcher'ı Etkinleştir: `adb shell pm enable com.yfve.launcher`
    2.  Varsayılanı Geri Al: `adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity`
    3.  Klima Manuel Başlatma: `adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity`
    4.  Cihazı Yeniden Başlat: `adb reboot`

# 1. Orijinal Launcher'ı tekrar etkinleştirin (Klima ve Panel buna bağlıdır)
adb shell pm enable com.yfve.launcher

# 2. Orijinal Launcher'ı varsayılan olarak geri tanımlayın
adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity

# 3. Eğer Klima hala açılmıyorsa manuel tetikleyin
adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity

# 4. Değişikliklerin tamamen aktif olması için sistemi yeniden başlatın
adb reboot
