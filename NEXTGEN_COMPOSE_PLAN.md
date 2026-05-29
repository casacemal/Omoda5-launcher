# 🚀 OMODA 5 LAUNCHER - NEXTGEN (JETPACK COMPOSE) GEÇİŞ PLANI

Bu döküman, mevcut XML tabanlı Launcher'ın modern Jetpack Compose mimarisine taşınma yol haritasını içerir.

## 🎯 HEDEF: Tesla Seviyesinde Akıcılık ve Modernlik

### 🏗️ FAZ 1: MODERN ALTYAPI (SIFIR NOKTASI)
- [ ] **Proje Yapılandırması:** Gradle Version Catalogs (libs.versions.toml) ile profesyonel bağımlılık yönetimi.
- [ ] **API 29 Uyumu:** Android 10 donanım kısıtlamalarına tam uyumlu Compose 1.5+ kurulumu.
- [ ] **Clean Architecture:** MVVM + StateFlow ile veri ve arayüzün tam ayrımı.
- [ ] **Theming:** Chery markasına uygun, yüksek kontrastlı Dark Mode / Neon teması (Material 3).

### 🎨 FAZ 2: ANA EKRAN VE GÖRSEL SADAKAT (İKONLAR AYNI)
- [ ] **Home Grid:** 5x2 Sabit ızgara yapısının kopyalanması.
- [ ] **Varlık Göçü:** Tüm mevcut ikonların (`drawable`) ve duvar kağıtlarının yeni projeye aktarılması.
- [ ] **Wallpaper Engine:** Compose tabanlı dinamik duvar kağıdı geçiş motoru.
- [ ] **Page Logic:** 1. Sayfa sabit, 2. sayfa akıllı sıralama mantığının korunması.

### ⚡ FAZ 3: SİSTEM SERVİSLERİ VE OTOMASYON
- [ ] **ADB Bridge Porting:** Mevcut `AdbBridgeService`'in yeni mimariye taşınması.
- [ ] **Otomatik İzinler:** Overlay ve Notification Access izinlerinin sessiz enjeksiyon motoru.
- [ ] **Tailscale Sync:** İnternet algılama ve otomatik VPN başlatma otomasyonu.
- [ ] **OTA Update:** Akıllı sürüm kontrolü ve "İndir-Onayla" mekanizması.

### 📊 FAZ 4: YENİ NESİL SAYFALAR (REDESIGN)
- [ ] **Futuristic Vehicle Data:** 4 sütunlu, animasyonlu grafiklerin olduğu yeni bir araç gösterge paneli.
- [ ] **Premium Multi-Task:** Draggable (sürüklenebilir) ayırıcı, gömülü WebView ve cam efektli (Glassmorphism) medya kontrolleri.
- [ ] **Matrix Terminal:** Matrix yeşili canlı logların aktığı, modern bir Ayarlar sayfası.

### ✅ FAZ 5: DOĞRULAMA VE SERTİFİKA
- [ ] **Performans Testi:** API 29 üzerinde FPS kontrolü ve RAM optimizasyonu.
- [ ] **Release Signing:** Profesyonel imza dosyası (.jks) oluşturma ve mühürleme.
- [ ] **Final Deployment:** app-debugV7.0.0.apk olarak ilk yayım.

---
**ANAYASA NOTU:** Anasayfa düzeni ve ikonlar asla değişmeyecektir. Diğer tüm sayfalar profesyonel ve modern (Tesla style) bir görünüme kavuşacaktır.
