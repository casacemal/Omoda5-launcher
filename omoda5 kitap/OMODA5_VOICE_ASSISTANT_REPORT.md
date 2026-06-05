# OMODA5 Voice Assistant Forensic Report

## Kısa Sonuç

Bu dump içinde voice assistant desteğine ait güçlü teknik kanıtlar var. Sonuç, "yalnızca kalıntı kod" seviyesinden daha güçlü: sistem özellikleri, üreticiye özel `libvr` entegrasyonu, Cerence servis bağımlılığı ve geçmiş runtime logları birlikte değerlendirildiğinde cihaz ailesinde çalışan bir voice assistant mimarisi bulunduğu anlaşılıyor.

Bu dump özelinde en olası durum:

`entegrasyon var ama ana runtime bileşeni eksik veya bu varyantta görünür UI'dan kaldırılmış`

Ana gerekçe:

- Sistem seviyesinde mikrofon ve voice recognizer özellikleri tanımlı.
- Uygulama tarafında `com.chery.libvr` altında media, radio, navi ve settings için tam binder arayüzleri mevcut.
- Kod doğrudan `com.chery.cerence.VrService` servisine bağlanıyor.
- Ancak mevcut dump içinde `com.chery.cerence` ana uygulama paketi bulunmadı; yalnızca Cerence overlay paketleri bulundu.
- Arşiv logları `com.chery.cerence` ve `com.neusoft.ssp.ces.c4.car.assistant` paketlerinin başka bir çalışma anında sistemde kayıtlı/çalışır olduğunu gösteriyor.

## Doğrudan Kanıtlar

### 1. Sistem voice altyapısı açık

- Mikrofon feature kaydı:
  - `/home/cemal/Belgeler/apps/omoda5/etc/permissions/car_core_hardware.xml:39`
  - `android.hardware.microphone`
- Voice recognizer feature kaydı:
  - `/home/cemal/Belgeler/apps/omoda5/etc/permissions/car_core_hardware.xml:44`
  - `android.software.voice_recognizers`
- Hotword / voice keyphrase izni:
  - `/home/cemal/Belgeler/apps/omoda5/permissions/platform.xml:103`
  - `/home/cemal/Belgeler/apps/omoda5/permissions/platform.xml:105`
  - `android.permission.MANAGE_VOICE_KEYPHRASES`

Değerlendirme:
Bu satırlar, firmware tarafında sesli tanıma için temel Android kabiliyetlerinin kapatılmadığını gösteriyor.

### 2. Uygulama katmanında üreticiye özel voice entegrasyonu var

- Cerence paket sabiti:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:39`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:41`
- Iflytek servis sabiti:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:67`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:69`
- QDLink / assistant paket sabiti:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:101`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/common/PackageConstants.java:103`

Değerlendirme:
Bu sabitler sadece genel Android voice API kullanımını değil, OEM tarafında en az üç ayrı voice/projection ilişkili bileşenin bilindiğini gösteriyor: Cerence, Iflytek ve Neusoft/QDLink.

### 3. Kod doğrudan Cerence voice servisine bağlanıyor

- Cerence bind çağrısı:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/manager/platformmanager/VrPlatformService.java:161`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/manager/platformmanager/VrPlatformService.java:165`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/manager/platformmanager/VrPlatformService.java:166`

Önemli satır:

```java
intent.setClassName("com.chery.cerence", "com.chery.cerence.VrService");
this.mContext.bindService(intent, this.connetVrService, 1);
```

Değerlendirme:
Bu, entegrasyonun soyut değil doğrudan çalışan bir servis mimarisine bağlandığını gösterir. Yani burada sadece ileride kullanılabilecek yardımcı sınıflar değil, aktif servis bağlama akışı vardır.

### 4. Voice binder arayüzleri birden çok alt sistemi kapsıyor

- Media:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/media/IVrMedia.java:11`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/media/IVrMedia.java:33`
- Radio:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/radio/IVrRadio.java:11`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/radio/IVrRadio.java:33`
- Navi:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/navi/IVrNavi.java:11`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/navi/IVrNavi.java:33`
- Settings:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/setting/IVrSetting.java:11`
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/apps/setting/IVrSetting.java:33`

Değerlendirme:
Voice sistemi medya ile sınırlı değil. Araç içi farklı alanlara dağılmış resmi bir komut altyapısı var.

### 5. Wake word ve komut kapsamı tanımlanmış

- Wake word anahtarı:
  - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/requestkey/SettingKey.java:12`
  - `VR_WAKEUP_WORD = "vrWakeupWord"`
- Komut kategorileri:
  - Klima sıcaklık/hava yönü/hız:
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:6`
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:18`
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:24`
  - Tavan/cam:
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:98`
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:121`
  - Ses seviyesi:
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:107`
  - Medya:
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:143`
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:159`
  - Radyo:
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:172`
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:189`
  - Dil ve cihaz durumu:
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:73`
    - `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_jadx_fresh/sources/com/chery/libvr/bean/params/ParamsAction.java:93`

Değerlendirme:
Bu komut matrisi, sistemin amaçlanan kullanımının yalnızca "arama yapmak" olmadığını, araç fonksiyonları ve eğlence sistemi için geniş bir sesli komut katmanı olduğunu gösteriyor.

## Bağımlı Paketler ve Servis Zinciri

Bu dump içindeki servis zinciri şu şekilde okunuyor:

1. Sistem, mikrofon ve voice recognizer özelliklerini açıyor.
2. `com.chery.media` içindeki `libvr` katmanı voice servis istemcisi gibi davranıyor.
3. `VrPlatformService`, `com.chery.cerence.VrService` servisine bağlanmaya çalışıyor.
4. Alt binder arayüzleri media, radio, navi ve settings komutlarını taşıyor.
5. `PackageConstants` ayrıca `com.chery.iflytekosservice` ve `com.neusoft.ssp.ces.c4.car.assistant` paketlerini de tanıyor.

Çıkarım:
Bu mimari, sesli asistanın ayrı bir vendor paketi olarak sağlandığını ve medya/araç uygulamalarının bu pakete client olarak bağlandığını düşündürüyor.

## Runtime Evidence

Arşiv logları bu özellik ailesinin en az bir çalışma anında aktif paketler olarak sistemde bulunduğunu gösteriyor.

- Paket listesi logları:
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/Chery ADB   loglarv2.txt:29`
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/Chery ADB   loglarv2.txt:38`
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/Chery ADB   loglarv2.txt:291`
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/Chery ADB   loglarv2.txt:297`
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/Chery ADB   loglarv2.txt:524`
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/Chery ADB   loglarv2.txt:525`
- Çalışan/kurulu paket dökümü:
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/chery_omoda4_verileri.txt:2443`
  - `/home/cemal/Belgeler/apps/omoda5/KITAP_OMODA5_ARŞIV/chery_omoda4_verileri.txt:2474`

Değerlendirme:
Bu loglar `com.chery.cerence` ve `com.neusoft.ssp.ces.c4.car.assistant` paketlerinin gerçek cihaz çalışma anında mevcut olduğunu gösteriyor. Bu yüzden elimizdeki kod referansları, rastgele ölü stringlerden ibaret görünmüyor.

## Negatif Doğrulama

### 1. Mevcut dump içinde ana Cerence paketi bulunmadı

Tarama sonucu:

- Bulunanlar:
  - `/home/cemal/Belgeler/apps/omoda5/backup/vendor/vendor/overlay/cerencethdoverlay/cerencethdoverlay.apk`
  - `/home/cemal/Belgeler/apps/omoda5/backup/vendor/vendor/overlay/cerencetwooverlay/cerencetwooverlay.apk`
- Bulunmayan:
  - `com.chery.cerence` ana APK
  - `com.neusoft.ssp.ces.c4.car.assistant` APK
  - `com.chery.iflytekosservice` APK

Değerlendirme:
Bu dump'ta ana voice paketi yok, ama voice overlay paketleri var. Bu durum aşağıdaki ihtimalleri güçlendiriyor:

- Bu backup eksik/alınırken bazı vendor paketleri yakalanmamış olabilir.
- Farklı bölge/trim/build için voice servis paketi çıkarılmış olabilir.
- UI ve client entegrasyonu bırakılıp runtime servis kaldırılmış olabilir.

### 2. Görünür UI tarafında doğrudan voice entry bulunmadı

Elde edilen görünür resource taramasında doğrudan OEM voice ayar ekranı veya launcher entry bulunmadı. Görülen tek açık resource, AppCompat'in genel `abc_ic_voice_search_api_material.xml` dosyası oldu:

- `/home/cemal/Belgeler/apps/omoda5/backup/apps/media/res/drawable/abc_ic_voice_search_api_material.xml`
- `/home/cemal/Belgeler/apps/omoda5/backup/apps/media_new/res/drawable/abc_ic_voice_search_api_material.xml`

Değerlendirme:
Bu, kullanıcıya açık voice butonunun bu dump içinde doğrudan görünmediğini gösteriyor. Yani entegrasyon mevcut olsa bile UI seviyesinde gizlenmiş, koşullu bırakılmış veya launcher tarafında odex içinde tutulmuş olabilir.

## Olası Gizleme / Devre Dışı Bırakma Senaryoları

### Senaryo A: Bölgesel veya donanım varyantı farkı

En güçlü senaryo bu. Kod aynı platform ailesi için tutulmuş, fakat ilgili voice servis paketi bu dump'ta yok. Loglardaki eski/başka cihaz çalışma anı bunu destekliyor.

### Senaryo B: Runtime servis kaldırılmış, client entegrasyonu bırakılmış

Media ve diğer modüller `libvr` üzerinden Cerence'e bağlanmak üzere bırakılmış olabilir; ancak üretim paketinden `com.chery.cerence` çıkarılmış olabilir.

### Senaryo C: Özellik görünür UI'dan saklanmış

`vrWakeupWord` gibi ayar anahtarlarının varlığı, bir noktada kullanıcı veya servis tarafında wake word konfigürasyonu düşünüldüğünü gösteriyor. Bu yüzden özellik tamamen yok olmaktan çok, görünür menüden gizlenmiş olabilir.

## Güven Seviyesi

- Sistem desteği: `yüksek`
- Uygulama içi voice entegrasyonu: `yüksek`
- Cerence runtime servis bağımlılığı: `yüksek`
- Bu dump'ta özelliğin çalışır halde olduğu iddiası: `orta-düşük`
- Cihaz ailesinde veya başka varyantta çalıştığı iddiası: `yüksek`

## Açık Belirsizlikler

- `com.chery.cerence` ana APK'nın bu backup dışında mı olduğu, yoksa gerçekten bu build'den mi çıkarıldığı net değil.
- Launcher tarafında voice girişi odex/vdex içinde saklı olabilir; mevcut araştırma launcher'ı tam decompile etmeden yapıldı.
- `com.neusoft.ssp.ces.c4.car.assistant` paketinin voice assistant mı, projection/assistant hub mı olduğu daha derin tersine analizle daha kesin ayrıştırılabilir.

## Nihai Sonuç

Bu dump'ta voice assistant özelliğine ait mimari `kesin olarak izlenebiliyor`. Ancak mevcut dosya setinde ana Cerence runtime paketi görünmediği için bu özel dump için en doğru hüküm şudur:

`özellik kesin var; uygulama entegrasyonu korunmuş; fakat bu backup'ta ana runtime bileşeni eksik veya görünür UI'dan kaldırılmış`
