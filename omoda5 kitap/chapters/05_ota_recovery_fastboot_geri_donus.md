# 05 - OTA, Recovery, Fastboot ve Geri Donus

## Amac
Sistem degisikligi sonrasi guvenli geri donus kapasitesini korumak.

## Onkosul
- Recovery erisimi
- Fastboot komutlari icin host araci
- Partition yedekleri

## Adimlar
1. Islem oncesi partition yedegi al.
2. OTA veya zip flash adimlarini recovery uzerinden ilerlet.
3. Sorunda fastboot ile restore sirasini izle.

## Risk
- Imza dogrulama/uyumsuz package hatasi.
- Yanlis partition flash kritik brick riski.

## Geri Donus
- Bootloader'a gir.
- Hash dogrula.
- `boot -> system -> vendor -> product` restore et.

## Dogrulama
- Sistem acilisi normal.
- Ana servisler (launcher/hvac/media) aktif.
- ADB ulasimi tekrar acik.

## Kaynaklar
- `CHERY_OTA_UPDATE_SYSTEM.md`
- `CHERY_OMODA5_KAPSAMLI_ANALIZ.md`
