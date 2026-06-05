# 06 - ADB Komut Kartlari ve Saha Notlari

## Amac
Sahada hizli uygulama icin kritik komutlari tek bolumde toplamak.

## Onkosul
- ADB erisimi
- Cihaz yetkileri (normal veya su)

## Adimlar
1. Durum tespiti komutlarini calistir (`getprop`, `pm`, `dumpsys`).
2. Launcher, medya, gps, audio, gms ile ilgili hizli kontrol kartlarini kullan.
3. Uygulama notlarini rapor dosyasina kaydet.

## Risk
- Canli cihazda yanlis `pm disable/uninstall` komutu servis kaybi yaratir.

## Geri Donus
- Devre disi kalan paketleri tekrar enable et.
- Gerekirse backup restore.

## Dogrulama
- Komut kartlari kopyala-calistir formatinda.
- Her komutun beklenen cikti sinifi kitapta belirtili.

## Kaynaklar
- `adb_launcher_rehberi.md`
- `Chery_komut_ve_bilgi_listesi.md`
- `Chery_launcher_komut_bilgi_kartlari.md`
- `Chery tuş takımı logları.md`
