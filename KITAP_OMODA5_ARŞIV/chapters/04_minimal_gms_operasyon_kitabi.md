# 04 - Minimal GMS Operasyon Kitabi

## Amac
Sadece cekirdek GMS bilesenlerini kurup performans kaybini minimumda tutmak.

## Onkosul
- `adb + su` aktif
- Android 10 / arm64 uyumlu Core/Pico GApps zip hazir
- Yedek zorunlu

## Adimlar
1. Preflight: `bash scripts/gms_minimal/01_preflight.sh`
2. Backup: `bash scripts/gms_minimal/02_backup_partitions.sh`
3. Kurulum: `bash scripts/gms_minimal/03_install_core_gapps.sh /path/core-gapps.zip push`
4. Tuning: `bash scripts/gms_minimal/04_post_install_tune.sh`
5. Verify: `bash scripts/gms_minimal/05_verify_gms.sh`

## Risk
- Yanlis GApps zip -> bootloop.
- Yedeksiz islem -> geri donus zor.
- Recovery/fastboot baglanti kopmasi.

## Geri Donus
- `gms_minimal_backups/<timestamp>/restore_fastboot.sh` ile rollback.
- Restore once hash dogrulamasi zorunlu.

## Dogrulama
- Paketler mevcut: `gsf`, `gms`, `vending`
- Play Store smoke test basarili.
- Meminfo ve logcat'te kritik hata yok.

## Kaynaklar
- `GMS_MINIMAL_RUNBOOK.md`
- `scripts/gms_minimal/*.sh`
- `GOOGLE_SERVICES_MINIMAL_CONFIG.md`
