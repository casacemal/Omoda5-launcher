# 01 - Proje ve Cihaz Profili

## Amac
Omoda5 cihazinin teknik tabanini tek yerde netlestirmek.

## Onkosul
- Cihaz bilgisi: Android 10 (API 29), arm64, AAOS tabanli
- ADB erisimi

## Adimlar
1. Cihaz ozelliklerini `getprop` ile dogrula.
2. Cihazin launcher, hvac, media, settings sistem uygulamalarini envantere al.
3. Cift ekran ve display konfig durumu not et.

## Risk
- Yanlis model/SDK varsayimi tum operasyonu bozar.
- Multi-display varsayimi dogrulanmadan kod/kurulum hatali ilerler.

## Geri Donus
- Sadece belgeleme adimi oldugu icin operasyonel geri donus gerekmez.
- Kurulum oncesi preflight raporunu referans al.

## Dogrulama
- `ro.build.version.sdk = 29`
- `ro.product.cpu.abi = arm64-v8a`
- Sistem paketleri ve display notlari kitapta yer aliyor.

## Kaynaklar
- `CHERY_OMODA5_KAPSAMLI_ANALIZ.md`
- `emulator_guide.md`
