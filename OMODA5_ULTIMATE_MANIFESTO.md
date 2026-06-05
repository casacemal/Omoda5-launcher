# 👑 OMODA 5 LAUNCHER - ULTIMATE MASTER MANİFESTOSU (v9.3.0)

Bu belge, Omoda 5 Launcher projesinin tüm teknik, görsel ve operasyonel kurallarını içeren nihai referans kaynağıdır.

## 🛠 1. SİSTEM VE CİHAZ KİMLİĞİ
- **Hedef Cihaz:** Semidrive Infotainment Ünitesi (Omoda 5 / Chery).
- **İşletim Sistemi:** Android Automotive OS 10 (API 29).
- **Ekran:** 1920x720 (Landscape).
- **Mimari:** Jetpack Compose + MVVM + StateFlow.

## 📐 2. GÖRSEL STANDARTLAR VE UI KURALLARI
- **Grid Yapısı:** 5 Sütun x 2 Satır (Toplam 10 ikon). 1. Sayfa sabittir.
- **Navigasyon Bar (v9.0.0):** Ekranın alt ortasında iki adet yatay ince çizgi bulunur.
    - **Sol Çizgi:** 1. Sayfaya (Home) geçiş sağlar.
    - **Sağ Çizgi:** 2. Sayfaya (Apps) geçiş sağlar.
    - **Çift Tıklama (Alan):** Navigasyon alanına çift tıklama anasayfayı tetikler.
- **Stok Görünüm (v8.9.9):** İkonlar etrafındaki transparan kutular ve çerçeveler kaldırıldı. ✅

## 🕹 3. NAVİGASYON VE MÜDAHALE (INTERCEPTION) MOTORU
- **Home Tuşu:** KeyCode 3/294 yakalama, Görünmez Overlay (Sol alt) ve Logcat Watchdog.
- **Global Jestler:** Geri (Sağdan Sola), Home (Alttan Yukarı).
- **Uzun Basış (>4sn):** "Favori/Gizle" Popup menüsü.

## ⚡ 4. MULTI-TASK VE SPLIT-SCREEN
- **Yapı:** Side-by-Side (Dikey Yan Yana) bölme.
- **Koordinatlar:** Sol (235, 0, 1077, 720), Sağ (1077, 0, 1920, 720).
- **Tetikleyici:** 1.2 saniyelik gecikmeli ADB komutu.

## 🛠 5. SETTINGS HUB (AYARLAR & TEŞHİS)
- **Tam Ekran (Immersive):** `settings put global policy_control immersive.full=*`
- **Klima Diag:** `logcat | grep HVAC` (Sıcaklık ve fan takibi)
- **Kapı Diag:** `logcat | grep Door` (Kilit ve açıklık takibi)
- **Tuş Diag:** `logcat | grep HardKey` (Fiziksel tuş takibi)
- **Home Analiz:** `dumpsys activity` (Odaklanılan launcher tespiti)
- **Acil Durdurma:** `ACTION_STOP_COMMAND` (Soket seviyesinde terminal kesme)
- **Omoda 5 Store (v9.1.0):** GitHub `jetpack_componse` branch üzerinden APK listeleme ve sessiz kurulum motoru aktif. ✅
- **Akıllı Güncelleme:** `versionCode` ve `versionName` tabanlı hibrit kontrol motoru aktif. ✅
- **Smart HUD (v9.2.0):** Sağ altta 2 seviyeli (Tag + Açıklama) bildirim sistemi. ✅
- **UI & Root (v9.3.0):** Ayarlar fontları 2 kat büyütüldü. Root Test özelliği (UID 0 kontrolü) eklendi. ✅
- **Gelişmiş İzleme:** "Tuş Takımı Dinle" ve "Araç Verisi İzle" anahtarları Ayarlar'a eklendi. ✅
- **Dual Multi-Task:** Uzun basışla (>1sn) seçilen uygulama solda, varsayılan uygulama sağda açılır. ✅

## 🛡 6. KESİN GELİŞTİRİCİ KURALLARI
1. **API Kısıtlaması:** Sadece API 29.
2. **Kayıt Önceliği:** Kodlar önce fiziksel dosyaya yazılacak.
3. **Onay Mekanizması:** Kritik işlemlerde (ADB/Build) onay beklenecek.
4. **Hayalet Klasör Yasaktır:** `"` klasörü oluşumu engellenecek.
5. **Özellik Eksiltmeme (No Feature Loss):** Eski sürümlerde çalışan bir özellik, yeni sürüme taşınırken işlevsel kabiliyeti azaltılamaz.

---
**STATÜ:** MÜHÜRLÜ (v9.3.0)
**SORUMLU:** ULTIMATE MASTER AGENT
