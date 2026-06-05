# CHANGELOG.md — Sürüm Geçmişi
**Format:** `[vX.X.X] — YYYY-MM-DD` | Eklendi / Düzeltildi / Değiştirildi / Kaldırıldı

Tüm sürüm notları burada. Versiyon karşılaştırması her zaman `versionCode` (sayı) ile yapılır.

---

## [v9.0.0] — 2026-05-22 — PROJE YAPILANDIRMASI

### Değiştirildi
- `AGENTS.md` ve `AGENT_INSTRUCTIONS.md` tek dosyada birleştirildi
- Tüm dosyalar v9.0.0 ile senkronize edildi, versiyon karışıklığı giderildi
- `media_tasarımı.md` → `MEDIA_TASARIM.md` olarak yeniden yapılandırıldı
- `IDE_ANDROID_STUDIO_RULES.md`'ye Gemini güvenli kullanım kuralları eklendi

### Eklendi
- `CHANGELOG.md` — sürüm geçmişi tek dosyada toplandı

### Kaldırıldı
- `AGENT_INSTRUCTIONS.md` — `AGENTS.md` ile birleştirildi

---

## [v8.9.1] — 2026-05-xx — ULTIMATE MASTER

### Eklendi
- Home Engine: Accessibility + Overlay + Logcat — 3 paralel yöntem
- 9 canlı VHAL verisi, 4 saniyelik polling
- İzin Motoru: Her açılışta eksik izinleri otomatik tamamlar
- İkonlara 4 saniye uzun basış → "Favori / Gizle" dialog
- Ekran karartma sürgüsü (Alpha kontrolü)
- VPN Watchdog: Tailscale bağlı değilse otomatik bağlar

### Düzeltildi
- Semidrive `LocalLifecycleOwner` crash hatası
- Hayalet `"` klasörü oluşumu engellendi

### Değiştirildi
- Overscan: Sol `-235`, Sağ `-80`

---

## [v8.1.0] — 2026-xx-xx — NEXTGEN COMPOSE

### Eklendi
- Jetpack Compose tabanlı tam UI (MVVM + StateFlow)
- Dark Mode / Omoda Cyan tema
- `GlassIcon` sistemi
- Compose Wallpaper Engine
- Matrix Yeşili (`#00FF41`) canlı terminal
- Vehicle Data Live Hub: 16 VHAL verisi tek ekranda
- Adjacent Launch: Uzun basılan uygulamayı sola, haritayı sağa açar

### Değiştirildi
- ADB Bridge: Kuyruğa alınan (Queued) `Runtime.exec` modeli
- 2. sayfa: Favoriler başta, geri kalanlar tıklanma sıklığına göre

### Devam Eden
- Jestler (Geri / Home) — tamamlanmadı

---

## [v6.6.1] — 2026-xx-xx — DIAMOND FINAL

### Eklendi
- `AGENTS.md`, `PROJECT_CONSTRAINTS.md`, `AGENT_SKILLS.md` — AI anayasası
- `IDE_ANDROID_STUDIO_RULES.md`, `IDE_VSCODE_RULES.md` — IDE kuralları

---

## [v6.6.0] — 2026-xx-xx — DIAMOND

### Düzeltildi
- **Sonsuz güncelleme döngüsü:** `versionCode` karşılaştırmasına geçildi
- **Mükerrer ikon:** `MainActivity.kt`'e paket filtresi eklendi
- **Kilitli sistem izinleri:** `AdbBridgeService` açılışta otomatik enjekte

### Eklendi
- Multi-Task v2: Chery Media + Harita / Musicolet + Harita
- Araç teşhis ekranı: CarService kilitliyken "Neden" bilgisi
- ADB Terminal: Ayarlar sayfasında gerçek zamanlı shell
- OTA Update: GitHub API → indirme → ADB sessiz kurulum

### Değiştirildi
- Split Screen: `windowingMode` → `am stack resize` komutlarına geçildi

---

## [v6.5.x] — Eski

### Bilinen Sorunlar (Sonradan Düzeltildi)
- `versionName` tabanlı güncelleme → sonsuz döngü → v6.6.0'da düzeltildi
- `com.chery.launcher` varsayılan home olarak kalıyordu → `pm disable-user` ile düzeltildi

---

## Sabit Teknik Değerler

| Parametre | Değer |
|-----------|-------|
| Hedef API | 29 (Android 10) |
| ADB Port | 5555 |
| Sol Padding | 250dp |
| Sağ Padding | 100dp |
| Grid | 5 × 2 (10 ikon) |
| Overscan Sol | -235 |
| Overscan Sağ | -70 |
| Terminal Rengi | #00FF41 |
| APK Format | `app-debugV<versionName>.apk` |
