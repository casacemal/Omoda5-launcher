# 02 - Sistem Mimarisi ve Overlay Launcher

## Amac
Orijinal launcher'in arka planda kalmasi ve overlay arayuzun onde calismasi modelini standartlastirmak.

## Onkosul
- Orijinal launcher paket bilgisi biliniyor.
- Klima/panel servisleri orijinal launcher'a bagimli olabiliyor.

## Adimlar
1. Boot akisini: system launcher -> overlay launcher olarak tanimla.
2. Overlay acilamazsa orijinal launcher fallback kuralini zorunlu tut.
3. Vehicle HAL, audio, HVAC veri akislarini overlay katmanindan oku/izle.

## Risk
- Orijinal launcher devre disi kalirsa klima/panel kaybi.
- Overlay crash durumunda siyah ekran riski.

## Geri Donus
- Home activity'i tekrar orijinal launcher'a cevir.
- Hata durumunda fallback mekanizmasini aktif tut.

## Dogrulama
- Overlay acilis/kapanis testleri.
- Fallback tetikleme testi.
- Klima ve temel panel fonksiyonlari korunuyor.

## Kaynaklar
- `CHERY_OMODA5_OVERLAY_LAUNCHER_TASARIMI.md`
- `CHERY_OMODA5_KAPSAMLI_ANALIZ.md`
