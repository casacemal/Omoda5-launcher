# OMODA5 Voice Master Guide

## Kısa Hüküm

Bu dump'ta voice assistant mimarisi açık biçimde var, ama OEM runtime'ın çekirdek parçası olan `com.chery.cerence` ana paketi görünmüyor. Bu yüzden:

- `doğru OEM Cerence paketi bulunursa` mevcut sistemi diriltmek daha doğru yol
- `paket bulunamazsa` yeni hafif bir voice assistant yapmak daha kolay ve daha gerçekçi yol

Bu dosya üç şeyi tek yerde toplar:

1. OEM voice paketini nasıl arayacağın
2. Yeni bir voice assistant v1'i nasıl kuracağın
3. Direksiyon/voice tuşunun sistemde hangi kod yolundan geçtiği

## 1. Mevcut OEM Voice Sisteminin Durumu

### Kesin kanıtlar

- Sistem voice altyapısı açık:
  - [car_core_hardware.xml](/home/cemal/Belgeler/apps/omoda5/etc/permissions/car_core_hardware.xml:39)
  - [car_core_hardware.xml](/home/cemal/Belgeler/apps/omoda5/etc/permissions/car_core_hardware.xml:44)
  - [platform.xml](/home/cemal/Belgeler/apps/omoda5/permissions/platform.xml:105)
- Kod Cerence servisine doğrudan bağlanıyor:
  - [VrPlatformService.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/manager/platformmanager/VrPlatformService.java:165)
- Araç konfigürasyonunda voice özelliği bayrakla yönetiliyor:
  - [CarConfigInfoClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarConfigInfoClient.java:219)
  - [CarConfigInfoClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarConfigInfoClient.java:711)
  - [CarConfigInfoClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarConfigInfoClient.java:1172)
- Speech setting ekranı ve wakeup ayarları tasarlanmış:
  - [PageConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PageConstants.java:210)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:26)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:27)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:29)
  - [SettingConstans.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/SettingConstans.java:40)

### Asıl blokaj

Kodun bağlanmak istediği servis:

```java
intent.setClassName("com.chery.cerence", "com.chery.cerence.VrService");
```

Kaynak:
- [VrPlatformService.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/manager/platformmanager/VrPlatformService.java:165)

Ama bu dump'ta görünenler:

- `cerencethdoverlay.apk`
- `cerencetwooverlay.apk`

Görünmeyenler:

- `com.chery.cerence` ana APK
- `com.chery.iflytekosservice` ana APK
- `com.neusoft.ssp.ces.c4.car.assistant` APK

Bu yüzden basit “ayar açıp görünür yapma” işlemiyle bitmiyor. Önce eksik runtime bulunmalı.

## 2. OEM Paketi Nasıl Aranır

### Hedef

Bulunması gereken minimum parça:

- paket adı: `com.chery.cerence`
- servis adı: `com.chery.cerence.VrService`

İkincil aday paketler:

- `com.chery.iflytekosservice`
- `com.neusoft.ssp.ces.c4.car.assistant`

### Nerelerde aranmalı

1. Aynı araç ailesinin tam firmware dump'ları
2. Aynı modelin farklı bölge ROM'ları
3. Aynı Android tabanını kullanan yakın Chery/Omoda/Jaecoo headunit image'ları
4. Kendi cihazından alınmış daha tam `pm list packages -f` ve bölüm dump'ları
5. `system`, `vendor`, `product`, `system_ext`, `priv-app`, `oem`, `overlay` bölümleri

### Ne aranmalı

Arama eşleşmeleri:

- `com.chery.cerence`
- `VrService`
- `cerence_vr`
- `voiceRecognition`
- `cerence_speaker`
- `vr_custom_walkup_word`
- `com.chery.iflytekosservice`
- `com.neusoft.ssp.ces.c4.car.assistant`

### Doğrulama adımları

Bir APK bulduğunda şu sırayla doğrula:

1. Manifestte paket adı `com.chery.cerence` mi
2. `com.chery.cerence.VrService` gerçekten var mı
3. Uygulama `system` veya `priv-app` bağlamı bekliyor mu
4. Ek native library istiyor mu
5. Shared UID veya signature seviyesinde permission kullanıyor mu
6. Broadcast action olarak `com.chery.cerence.action.EVENT` kullanıyor mu

Bu dump'taki ilgili referanslar:

- [PackageConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:39)
- [PackageConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:67)
- [PackageConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:101)
- [SysEventConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/SysEventConstants.java:5)

### OEM yolu ne zaman mantıklı

OEM yoluna geçmek için en az biri sağlanmalı:

- `com.chery.cerence` APK bulundu
- başka dump'ta servis varlığı doğrulandı
- cihazda paket kurulu ama bu backup'a düşmemiş olduğu teyit edildi

### OEM yolunun riskleri

- system/priv-app konum zorunluluğu
- imza uyumsuzluğu
- missing native libs
- araç config bitinin kapalı olması
- overlay olup ana paketin olmaması

## 3. Direksiyon / Voice Tuşu Sistemde Nereden Geçiyor

Bu kısım önemli, çünkü yeni sistem yapılacaksa en mantıklı tetikleme noktası burası olabilir.

### Doğrudan callback zinciri

Arayüzde voice callback tanımlı:

- [IBasicListener.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/interfaces/IBasicListener.java:17)

Client, bu olayı dinleyiciye iletiyor:

- [CarBasicClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarBasicClient.java:458)
- [CarBasicClient.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/caradapter/carapi/client/CarBasicClient.java:510)

İş akışı:

```java
CarBasicClient.this.onCtpKeyVoiceRemind(message.arg1);
```

ve ardından:

```java
iBasicListener.onCtpKeyVoiceRemind(r1);
```

### Uygulama tarafındaki hook noktası

`CarAdapterUse` içinde callback boş bırakılmış:

- [CarAdapterUse.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/media/util/CarAdapterUse.java:130)

Bu çok önemli, çünkü pratikte burada bir voice launch veya custom action bağlanabilecek doğal bir giriş noktası var.

### Ek voice-related girişler

- Sistem etkinlik türleri:
  - [CarProjectionManager.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/android/car/CarProjectionManager.java:57)
  - [CarProjectionManager.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/android/car/CarProjectionManager.java:60)
- HVAC voice property:
  - [YFVehicleProperty.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/android/hardware/automotive/YFvehicle/V2_0/YFVehicleProperty.java:335)
- Cerence sistem eventleri:
  - [SysEventConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/SysEventConstants.java:9)
  - [SysEventConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/SysEventConstants.java:10)
  - [SysEventConstants.java](/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/SysEventConstants.java:11)

### Çıkarım

Yeni sistem kurulacaksa en temiz başlangıç noktası şudur:

- `onCtpKeyVoiceRemind()` callback'ini yakala
- bu olay geldiğinde kendi voice UI veya STT akışını başlat

## 4. Yeni Voice Assistant V1 Mimarisi

### Amaç

OEM Cerence paketi olmadan çalışabilen, pratik ve sınırlı bir voice assistant v1 kurmak.

### Minimum v1 kapsamı

Komut seti:

- medya oynat / duraklat / sonraki / önceki
- radyo aç / frekans veya preset değiştir
- navigasyon uygulamasını aç
- ses aç / kıs / mute
- bluetooth phone ekranını aç

### Mimari

1. Tetikleyici
   - direksiyon voice key
   - ekrandaki mikrofon butonu
   - uzun basma aksiyonu

2. Speech-to-text katmanı
   - Android recognizer ile başla
   - gerekiyorsa sonra offline motor ekle

3. Komut çözücü
   - basit intent/keyword tabanlı parser
   - ilk sürümde NLU yerine deterministik kurallar kullan

4. Aksiyon katmanı
   - media session komutları
   - mevcut uygulama activity/service intentleri
   - ses ayarı API'leri

5. Geri bildirim
   - TTS veya kısa UI overlay
   - hata durumunda “anlaşılmadı / desteklenmiyor” mesajı

### Önerilen v1 akışı

1. Voice tuşu basılır
2. Kısa overlay açılır: “Dinliyorum”
3. STT sonucu alınır
4. Parser niyeti çıkarır
5. Aksiyon tetiklenir
6. TTS veya toast ile geri bildirim verilir

### Neden bu yaklaşım

- OEM runtime bağımlılığı yok
- iteratif geliştirilebilir
- hata ayıklaması kolay
- direksiyon tuşuna bağlanabilirse kullanıcı deneyimi yeterince doğal olur

## 5. Hangisi Daha Kolay

### OEM sistemi diriltmek daha kolay olur, eğer:

- `com.chery.cerence` paketi bulunursa
- servis sınıfı gerçekten varsa
- cihaz imzası/izinleriyle uyumluysa

### Yeni sistem yapmak daha kolay olur, eğer:

- ana Cerence paketi yoksa
- sadece çalışan bir çözüm isteniyorsa
- medya ve temel araç komutları yeterliyse

### Bu dump için net hüküm

`Bugünkü eldeki veriye göre yeni hafif voice assistant yapmak daha kolay.`

`OEM sistemi diriltme yolu ancak doğru com.chery.cerence paketi bulunursa tekrar öne geçer.`

## 6. Sana Özel Uygulama Sırası

En mantıklı sıra şu:

1. Önce `com.chery.cerence` paketini ara
2. Bulunursa OEM aktivasyon yolunu dene
3. Bulunmazsa `onCtpKeyVoiceRemind()` tabanlı yeni voice v1 başlat

## 7. Nihai Sonuç

Bu dump OEM voice assistant desteğinin izlerini güçlü biçimde taşıyor, ama eldeki dosya seti OEM sistemi doğrudan açmak için yeterli görünmüyor. Bu yüzden bugünkü pratik karar:

`OEM paket bulunana kadar yeni voice assistant v1 geliştirmek en gerçekçi yol`
