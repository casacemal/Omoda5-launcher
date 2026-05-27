# 📋 OMODA 5 - SAF KOTLIN MULTI-TASK GEÇİŞ PLANI (v6.5.0)

Bu dosya, XML layout bağımlılığını ortadan kaldıran ve kullanıcı arayüzünü tamamen programatik olarak inşa eden mimari geçiş adımlarını içerir.

## 🏗️ FAZ 4: GERÇEK MULTI-TASK (v6.5.0)
- [x] ActivityView Entegrasyonu
- [x] Harita Hapsolma Mekanizması

## 🏗️ FAZ 1: ALTYAPI VE İZOLASYON (HAZIRLIK)
- [x] Mevcut sürümü dondur ve Git Commit yap (v6.4.3).
- [x] `feature/pure-kotlin-multitask` branch mantığına uygun dizin yapısını kur.
- [x] `com.omoda5.launcher.multitask` paketini oluştur.
- [x] `build.gradle` sürümünü v6.5.0 (34) olarak yükselt.

## 🎨 FAZ 2: SAF KOTLIN UI MOTORU (SIFİR XML)
- [x] **BaseViewBuilder:** `PureKotlinUI.kt` ile ekran (1920x720) ve sol bar (235px) hesaplayan yapı kuruldu.
- [x] **VehicleDataView:** `VehicleDataPureActivity.kt` modern, yüksek kontrastlı saf Kotlin sayfası oluşturuldu.
- [x] **KeypadDataView:** `KeypadPureActivity.kt` ile donanımsal tuş takımını okuyan, görselleştiren ve medyayı kontrol eden saf Kotlin sayfası.
- [x] **MediaPanelView:** `MultiTaskActivity.kt` içinde `MediaSessionManager` entegreli kontrol paneli eklendi.
- [x] **MultiTaskContainer:** Google Maps ve Medya'yı yan yana tutan programatik ana konteyner tamamlandı.

## 🚀 FAZ 3: ENTEGRASYON VE TETİKLEYİCİLER
- [x] **MapsTrigger:** Ana ekrana "Harita Split" ikonu eklendi ve `MultiTaskActivity`'ye bağlandı.
- [x] **BackgroundSync:** Mevcut split seçim mekanizması butonsuz şekilde arka plana entegre edildi.
- [x] **LifecycleGuard:** RAM yönetimi ve geçişlerde durum (state) koruması `onSaveInstanceState` ile sağlandı.

## ✅ FAZ 4: DOĞRULAMA VE YAYIN
- [x] Derleme (Build) testi başarılı.
- [x] APK isimlendirme (`app-debugV6.4.7.apk`).
- [ ] İmzalandı ve GitHub Release yüklendi (v6.5.0 bekleniyor).

---
**MİMARİ NOT:** Bu geçişte `setContentView(R.layout...)` tamamen terk edilmiş, tüm View nesneleri `Context` üzerinden programatik olarak türetilmiştir.
