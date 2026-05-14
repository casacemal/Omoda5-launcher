# Chery Omoda 5 ADB ve Launcher Yönetim Rehberi

Bu dosya, F-Launcher kurulumu sırasında kullanılan komutları ve sistem özelliklerini (Klima, Bildirim Paneli vb.) geri getirmek için gereken düzeltme komutlarını içerir.

## 1. F-Launcher'ı Ana Ekran Yapma Komutları
F-Launcher'ı kurmak ve varsayılan yapmak için kullanılan komutlar:

```bash



# 3. (Opsiyonel) Orijinal launcher'ı devre dışı bırakma (ÖNERİLMEZ)
# Eğer bu komutu kullandıysanız Klima ve Bildirim ekranı gitmiş olabilir.
adb shell pm disable-user --user 0 com.yfve.launcher
```

## 2. Karşılaşılan Sorunlar ve Sebepleri
*   **Klima (HVAC) Ekranı Gelmiyor:** Chery'nin klima kontrol arayüzü orijinal launcher ile entegre çalışmaktadır. Orijinal launcher devre dışı kaldığında tetikleyiciler bozulur.
*   **Yukarıdan Aşağı Kaydırma (Bildirim Paneli) Çalışmıyor:** Status bar ve bildirim paneli kontrolleri genellikle OEM Launcher'ın sistem servislerine bağlıdır.

## 3. Düzeltme ve Kurtarma Komutları (Klima ve Panel İçin)
Eğer sistem özellikleri kaybolduysa aşağıdaki adımları sırasıyla uygulayın:

### A. Orijinal Launcher'ı Tekrar Aktif Etme
Klima ve panelin geri gelmesi için orijinal launcher'ın arka planda çalışıyor olması gerekir.

```bash
# 1. Orijinal launcher'ı etkinleştir
adb shell pm enable com.yfve.launcher

# 2. Orijinal launcher'ı varsayılan olarak geri ayarla (Panelin düzelmesi için gerekebilir)
adb shell cmd package set-home-activity com.yfve.launcher/com.yfve.launcher.LauncherActivity
```

### B. F-Launcher'ı "Yan Uygulama" Olarak Kullanma
Klima ekranını bozmadan F-Launcher kullanmak için orijinal launcher'ı silmek yerine F-Launcher'ı manuel başlatıp kullanmak daha güvenlidir.

```bash
# F-Launcher'ı manuel başlatmak için
adb shell am start -n it.flauncher/.LauncherActivity
```

### C. Klima Uygulamasını Manuel Başlatma (Test İçin)
Eğer klima menüsü hala gelmiyorsa, doğrudan klima uygulamasını tetikleyebilirsiniz:
```bash
adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity
```

## Özet Komut Listesi (Hızlı Tamir)
```bash
# Her şeyi orijinale döndürmek için:
adb shell pm enable com.yfve.launcher
adb shell pm enable com.yfve.hvac
adb reboot
```

> **Not:** Paket adları (`com.yfve.launcher` vb.) cihaz modeline göre küçük farklılıklar gösterebilir. `adb shell pm list packages | grep yfve` komutu ile tam isimleri kontrol edebilirsiniz.
