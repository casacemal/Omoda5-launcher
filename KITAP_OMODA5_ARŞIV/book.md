# Omoda5 Teknik Arsiv Kitabi

Bu kitap, Omoda5 icin teknik arastirma, operasyon ve geri donus adimlarini tek dosyada toplar.

## Icindekiler
1. [Proje ve Cihaz Profili](#1-proje-ve-cihaz-profili)
2. [Sistem Mimarisi ve Overlay Launcher](#2-sistem-mimarisi-ve-overlay-launcher)
3. [Split-Screen UI ve MedyaNavigasyon](#3-split-screen-ui-ve-medyanavigasyon)
4. [Minimal GMS Operasyon Kitabi](#4-minimal-gms-operasyon-kitabi)
5. [OTA Recovery Fastboot ve Geri Donus](#5-ota-recovery-fastboot-ve-geri-donus)
6. [ADB Komut Kartlari ve Saha Notlari](#6-adb-komut-kartlari-ve-saha-notlari)
7. [Risk Matrisi ve Dogrulama Checklist](#7-risk-matrisi-ve-dogrulama-checklist)

---

## 1. Proje ve Cihaz Profili
Kaynak: `chapters/01_proje_ve_cihaz_profili.md`

- Platform: Android 10 (API 29), arm64, AAOS tabanli
- Operasyon oncesi zorunlu: ADB + cihaz ozellik dogrulamasi

## 2. Sistem Mimarisi ve Overlay Launcher
Kaynak: `chapters/02_sistem_mimarisi_ve_overlay_launcher.md`

- Strateji: Orijinal launcher arka planda, overlay on planda
- Kritik kural: Overlay fail durumunda fallback ile orijinal launcher'a donus

## 3. Split-Screen UI ve MedyaNavigasyon
Kaynak: `chapters/03_split_screen_ui_ve_medya_navigasyon.md`

- Display 0 uzerinde 50/50 split model
- Sol panel medya, sag panel mini nav + full nav gecisi

## 4. Minimal GMS Operasyon Kitabi
Kaynak: `chapters/04_minimal_gms_operasyon_kitabi.md`

Zorunlu adim sirasi:
1. `01_preflight.sh`
2. `02_backup_partitions.sh`
3. `03_install_core_gapps.sh`
4. `04_post_install_tune.sh`
5. `05_verify_gms.sh`

## 5. OTA Recovery Fastboot ve Geri Donus
Kaynak: `chapters/05_ota_recovery_fastboot_geri_donus.md`

- Recovery/OTA degisiklikleri mutlaka backup ile birlikte yurur.
- Restore sirasinda hash dogrulamasi zorunlu.

## 6. ADB Komut Kartlari ve Saha Notlari
Kaynak: `chapters/06_adb_komut_kartlari_ve_saha_notlari.md`

- Saha operasyonu icin hizli komut setleri tek yerde.
- Tehlikeli komutlar once raporlandiktan sonra uygulanir.

## 7. Risk Matrisi ve Dogrulama Checklist
Kaynak: `chapters/07_risk_matrisi_ve_dogrulama_checklist.md`

- Her ana alan icin risk-etki-azaltma tablosu
- Karar oncesi kontrol listesi

---

## Tehlikeli Komut Uyari Etiketi
- `[RISK-HIGH]`: Partition flash, dd, pm uninstall (system kritik)
- `[RISK-MEDIUM]`: pm disable, settings global degisiklikleri
- `[RISK-LOW]`: read-only tanilama komutlari

## Derleme Notu
PDF export icin:
```bash
bash ./scripts/build_book.sh
```
`pandoc` yoksa script Markdown birlesimini tamamlar, PDF adimini atlar.
