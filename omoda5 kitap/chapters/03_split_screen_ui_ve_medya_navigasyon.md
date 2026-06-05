# 03 - Split-Screen UI ve Medya/Navigasyon

## Amac
Display 0 icin 50/50 split (sol medya, sag mini harita) tasarim modelini operasyonel hale getirmek.

## Onkosul
- 1024x600 landscape sabit layout varsayimi
- Medya ve harita componentleri aktif

## Adimlar
1. Sol panelde now-playing + temel playback kontrolleri.
2. Sag panelde mini harita + ETA + full-screen nav gecisi.
3. Alt tab bar ile Music/Phone/Settings gecisleri.

## Risk
- Harita/gps polling agirligi performansi dusurebilir.
- Cok sik UI update batarya tuketimini artirir.

## Geri Donus
- Full-screen nav'den split mode'a tek adim geri donus.
- Harita bileseni sorunluysa media-only fallback.

## Dogrulama
- Split layout orientation degisimi olmadan stabil.
- Medya kontrolleri ve nav gecisleri calisiyor.
- 30+ dk kullanimda donma/ANR yok.

## Kaynaklar
- `CHERY_OMODA5_SPLIT_SCREEN_UI_TASARIMI.md`
- `ORIGINAL_LAUNCHER_WIDGET_INTEGRATION.md`
