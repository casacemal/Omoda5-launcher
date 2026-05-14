# 04 - Uygulama Adimlari (Uretim Sirasi)

## Faz 1 - Iskelet (1-2 gun)
- `CommandExecutor` arayuzu
- `ShellExecutor` implementasyonu
- timeout + stdout/stderr toplama
- birim testler

## Faz 2 - Channel ve Presetler (1-2 gun)
- `adb_channel` + `root` channel adaptoru
- komut preset dosyasi (json/yaml)
- allowlist validator

## Faz 3 - Boot/Overlay Orkestrasyonu (1 gun)
- `BootReceiver` (opsiyonel)
- app auto-start policy
- overlay izin kontrol akisi

## Faz 4 - Guvenlik ve Loglama (1 gun)
- audit logger
- role guard
- kill switch

## Faz 5 - Omoda5 Entegrasyonu (2-4 gun)
- launcher fallback presetleri
- HVAC kontrol presetleri
- GMS preflight/verify presetleri

## Kabul Kriterleri
- Her preset deterministic sonuc dondurur.
- Timeout ve hata kodlari standart.
- Root yokken uygulama graceful degrade olur.
- Kritikte tek tus rollback calisir.

## Baslangic Komut Seti (Preset ID)
- `diag.device_info`
- `diag.audio_status`
- `launcher.restore_original`
- `hvac.start`
- `gms.check_core_packages`
- `system.reboot`
