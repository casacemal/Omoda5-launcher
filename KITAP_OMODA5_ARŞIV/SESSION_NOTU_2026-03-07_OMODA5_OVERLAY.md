# Omoda5 Overlay Session Note - 2026-03-07

## Kisa Ozet
- Cihaz kablosuz ADB ile bulundu ve baglandi: `192.168.2.89:5555`
- Cihaz bilgisi:
  - model: `x9 for arm64`
  - manufacturer: `SEMIDRIVE`
  - Android: `10`
- Overlay uygulamasi kuruldu ve calisiyor:
  - package: `com.omoda5.overlay`
  - versionName: `0.1.0`
  - firstInstallTime: `2026-03-07 04:38:06`
  - lastUpdateTime: `2026-03-07 04:46:15`

## ADB ve Sistem Durumu
- Varsayilan home activity:
  - `com.dofun.variety/com.dofun.overseasvariety.Launcher`
- `SYSTEM_ALERT_WINDOW` app-op:
  - `allow`
- Uygulama activity durumu:
  - `com.omoda5.overlay/.appshell.OverlayPanelActivity`
  - `mResumedActivity` olarak goruldu

## Uygulama Icin Yapilan Dogrulanmis Duzeltmeler
- `activity_overlay_panel.xml` icindeki iki hatali renk referansi duzeltildi:
  - `@color.outline` -> `@color/outline`
- OEM launcher package degeri cihaz gercegine gore duzeltildi:
  - eski beklenti: `com.yfve.launcher`
  - gercek cihaz: `com.dofun.variety`
- Overlay izin kontrolu yalniz `Settings.canDrawOverlays()` ile kalmadi:
  - `AppOpsManager OPSTR_SYSTEM_ALERT_WINDOW` sonucu da hesaba katildi
- `VehicleReader` baglanti akisi duzeltildi:
  - `Car.connect()` tekrarli cagri durumunda dusmuyordu
  - `getProperty(...)` tabanli uyumlu okuma ile VHAL verileri gorulmeye baslandi
- `VehicleRepository` icine hata logu eklendi

## Uygulama Kaynak Dosyalari
- `/home/cemal/Belgeler/apps/omoda5/omoda5-overlay-launcher/app/build.gradle`
- `/home/cemal/Belgeler/apps/omoda5/omoda5-overlay-launcher/app/src/main/res/layout/activity_overlay_panel.xml`
- `/home/cemal/Belgeler/apps/omoda5/omoda5-overlay-launcher/app/src/main/java/com/omoda5/overlay/safety/SystemSafetyRepository.kt`
- `/home/cemal/Belgeler/apps/omoda5/omoda5-overlay-launcher/app/src/main/java/com/omoda5/overlay/vehicle/VehicleRepository.kt`
- `/home/cemal/Belgeler/apps/omoda5/omoda5-overlay-launcher/app/src/main/java/com/omoda5/overlay/vehicle/VehicleReader.kt`
- `/home/cemal/Belgeler/apps/omoda5/omoda5-overlay-launcher/app/src/main/java/com/omoda5/overlay/vehicle/Omoda5VehicleProfile.kt`

## Izin Durumu
- Verilen car izinleri:
  - `android.car.permission.CAR_INFO`
  - `android.car.permission.CAR_SPEED`
  - `android.car.permission.CAR_ENERGY`
  - `android.car.permission.CAR_EXTERIOR_ENVIRONMENT`
  - `android.car.permission.CAR_POWERTRAIN`
- Verilmeyen runtime izinleri:
  - `android.permission.ACCESS_FINE_LOCATION`
  - `android.permission.ACCESS_COARSE_LOCATION`
- Bu iki location izni su an overlay ekraninin cekirdek calismasi icin gerekli gorunmedi

## Canli UI Durumu
`uiautomator dump` ile canli ekrandan okunan metinler:
- `0 km/h`
- `25,0 C`
- `15000 %`
- `Acik`
- `Desteklenmiyor`
- `Omoda5 VHAL bagli`

Bu, su alanlarin canli oldugunu gosteriyor:
- hiz: geliyor
- dis sicaklik: geliyor
- park freni: geliyor
- veri kaynagi: `Omoda5 VHAL bagli`

Su alan problemli:
- yakit: `15000 %`
- kapi: `Desteklenmiyor`

## VHAL ve Car Service Bulgulari
`dumpsys car_service` ve `logcat` ile dogrulanan property'ler:
- `PERF_VEHICLE_SPEED` -> `0x11600207`
- `FUEL_LEVEL` -> `0x11600307`
- `RANGE_REMAINING` -> `0x11600308`
- `INFO_FUEL_CAPACITY` -> `0x11600104`
- `ENV_OUTSIDE_TEMPERATURE` -> `0x11600703`
- `DOOR_POS` -> `0x16400b00`

`logcat` icinde uygulamanin bu property'leri okudugu goruldu:
- `0x11600207`
- `0x11600703`
- `0x11600307`
- `0x16400b00` areaId `0x1`, `0x4`, `0x10`, `0x40`, `0x20000000`

## Dokumanlarda Bulunan Ilgili Ipuclari
Asagidaki dosyalar property kimlikleri ve genel hedef davranis icin faydali:
- `/home/cemal/Belgeler/apps/omoda5/CHERY_OMODA5_OVERLAY_LAUNCHER_TASARIMI.md`
- `/home/cemal/Belgeler/apps/omoda5/Codex_Prompt_Chery_Master_Auto_Launcher_v2.md`
- `/home/cemal/Belgeler/apps/omoda5/Chery ADB  komutlar .log`
- `/home/cemal/Belgeler/apps/omoda5/openautodash-majorfixes/OMODA5_MIGRATION_NOTES.md`
- `/home/cemal/Belgeler/apps/omoda5/omoda5 canbus bilgileri .md`

Bu dokumanlarda dogrulanan kisimlar:
- `FUEL_LEVEL` dogru property olarak geciyor
- `RANGE_REMAINING` ve `INFO_FUEL_CAPACITY` da mevcut
- `DOOR_POS` ve fuel door property'leri belgelenmis

Bulunamayan kritik bilgi:
- hicbir `md` veya `log` dosyasinda `FUEL_LEVEL` icin acik olceklendirme kurali yok
- yani `15000` degerinin:
  - dogrudan yuzde,
  - 100 ile carpilmis yuzde,
  - litre,
  - mililitre,
  - kapasiteye oranla normalize edilmesi gereken ham seviye
  oldugunu belgeler tek basina soylemiyor

## Yakit Icin Sonuc
Su an kesin olarak bildigimiz:
- property okunuyor
- uygulama ekrani `15000 %` gosteriyor
- sorun property erisimi degil, yorumlama / olceklendirme

Yakit icin sonraki mantikli teshis adimi:
1. Uygulama icinde ayni anda `FUEL_LEVEL`, `INFO_FUEL_CAPACITY`, `RANGE_REMAINING` ham degerlerini loglamak
2. Arac gostergesindeki gercek yakit seviyesi ile karsilastirmak
3. Gerekirse normalize kuralini asagidaki adaylardan biriyle secmek:
   - `raw / 100`
   - `raw / capacity * 100`
   - `raw / (capacity * 1000) * 100`

## Kapi Durumu Icin Sonuc
- `DOOR_POS` property tanimli
- uygulama `DOOR_POS` areaId bazli okuma yapiyor
- buna ragmen UI `Desteklenmiyor` diyor
- bu, su ihtimalleri acik birakiyor:
  - property null donuyor
  - alanlar her zaman `0` ama unsupported branch'e dusuluyor
  - cihaz vendor implementasyonu farkli area/value semantigi kullaniyor

## Operasyonel Notlar
- Bu klasor kokunde `git` deposu gorunmedi
- Bu yuzden degisiklik takibi icin dosya tabanli oturum notu daha guvenilir
- Sonraki oturumda bu dosya ilk referans olmali

## Sonraki Oturumda Ilk Bakilacak Dosya
- `/home/cemal/Belgeler/apps/omoda5/SESSION_NOTU_2026-03-07_OMODA5_OVERLAY.md`
