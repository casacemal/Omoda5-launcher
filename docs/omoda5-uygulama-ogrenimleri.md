# Omoda5 AVD Uygulama Ogrenimleri

Bu not, Omoda5 dump'i AAOS emulatorde calistirma surecinde edinilen teknik ogrenimleri ozetler.

## 1) Sistem ve platform uyumu en kritik konu

- Dump kaynagi Android 10 / API 29 tabanli OEM yapida.
- Hedef AVD Android Automotive 13 (API 33) oldugunda framework davranisi degisiyor.
- Bu fark, ayni APK'nin kurulu olup calissa bile UI'nin bos gelmesine veya servis baslatma hatalarina neden olabiliyor.

## 2) Priv-app APK'lar stock AAOS'ta dogrudan calismiyor

- `com.chery.launcher` ve `com.chery.hvac` OEM tarafta `android.uid.system` beklentisiyle geliyor.
- Stock emulatorde platform imza farki nedeniyle bu paketler dogrudan OEM davranisiyla calisamiyor.
- Pratik cozum: patch + yeniden imzalama + kontrollu fallback akisi.

## 3) Ilk siyah ekranin asil nedeni crash degil, bos ikon veri zinciriydi

- Launcher process foreground'da idi, ancak ikonlar uretilmiyordu.
- Kritik log: `setViews ==> 0` ve `initIconLayouts: viewSrcMap.size() = 0`.
- Sorun kaynak dosya yoklugu degil; ikonlari besleyen config/ref akisinin bos donmesiydi.

## 4) Runtime farklari nedeniyle OEM kodunda emulatore ozel patch gerekebiliyor

- Android 13'te bazi servis baslatma akisleri kisitli oldugundan arka plan servis start denemeleri devre disi birakildi.
- Bazi `android.car` API cagri farklari (`NoSuchMethodError` sinifi) yuzunden config istemci akisinda guvenli yol izlendi.

## 5) Launcher'i gorunur yapmak icin iki etkili teknik

- `initDefaultSource()` icine bos liste donusunde default ikon layout fallback'i eklendi.
- `onCreate()` sonunda `initViewSource()` dogrudan cagrilarak sadece LiveData tetiklerine bagimlilik kaldirildi.
- Sonuc: `setViews ==> 8` ve launcher UI ikonlari gorunur hale geldi.

## 6) Dogrulama sadece kurulumla bitmiyor

- Dogrulama adimlari:
  - `dumpsys activity top` ile gercek foreground activity kontrolu
  - `logcat` ile `viewSrcMap` ve crash sinyallerinin takibi
  - `uiautomator dump` ile node seviyesinde UI varlik dogrulamasi
  - `screencap` ile gorunur sonuc kontrolu

## 7) Cihazdan veri cekme stratejisi

- Once projede olmayan kritik dosyalar hedeflendi; tekrar cekim yapilmadi.
- Oncelik:
  - `system/framework/*` (android.car, services, framework-res, tbox)
  - gerekli `permissions/*.xml`
  - launcher/hvac bagimli OEM APK'lari (settings, upgrade, cerence vb.)
- Bu yaklasim sureyi kisaltiyor ve entegrasyon odagini kaybettirmiyor.

## 8) Gercekci sinir

- Emulator, arac HAL/CAN/ECU davranisini birebir vermez.
- "Calisiyor" tanimi emulasyon tarafinda su an icin:
  - launcher aciliyor ve ikonlari ciziyor
  - ana activity stabil kalabiliyor
  - kritik app akislari test edilebilir hale geliyor

## 9) Sonraki teknik adimlar (istege bagli)

- `navi/carplay/android auto/qdlink` ikonlarini fallback sete asamali geri ekleme.
- OEM bagimliliklari tek tek canlandirip hangi paketin hangi UI parcasi icin zorunlu oldugunu tabloya baglama.
- Ayni patch akisini scriptleyip tek komutluk tekrar edilebilir kurulum haline getirme.

## 10) android.uid.system icin net durum (2026-04-23)

- Stock `AAOS_NoPlay_33` tabaninda `com.chery.launcher` ve `com.chery.hvac` paketleri
  `android.uid.system` paylasimli UID nedeniyle `INSTALL_FAILED_SHARED_USER_INCOMPATIBLE` hatasina dusuyor.
- Bu APK'lari stock image'e `/system/priv-app` olarak zorla kopyalamak PackageManager tarafinda
  `Signature mismatch on system package ... for shared user android.uid.system/1000` hatasi uretip
  boot dongusune sebep olabiliyor.
- Bu nedenle guvenli kural:
  - Backup APK'lari degistirme.
  - Stock image'e zorla priv-app push yapma.
  - `android.uid.system` icin sadece patch'li `userdebug` AAOS image boot ettikten sonra
    launcher/hvac'i sisteme yerlestir.
