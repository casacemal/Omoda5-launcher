# AAOS Lab Notu: shared_uid Imza Blokunu Acma (APK Degistirmeden)

Amac:
- `com.chery.launcher` ve `com.chery.hvac` paketlerini APK degistirmeden calistirabilmek icin,
- sadece lab/emulator ortami icin PackageManager shared uid imza kontrolune whitelist bypass eklemek.

Kapsam:
- Uretim icin degildir.
- Sadece debug/userdebug AAOS test ortami icindir.

Eklenen dosyalar:
- `tools/omoda5/patches/0001-lab-bypass-shared-uid-signature-check.patch`
- `tools/omoda5/apply_shared_uid_bypass_patch.sh`

Uygulama adimlari:
1. AOSP kaynak agacinda `frameworks/base` hazir olmali.
2. Patch uygula:
   - `bash tools/omoda5/apply_shared_uid_bypass_patch.sh /home/cemal/Belgeler/apps/Omoda5-backup/.aosp-aaos`
3. Build:
   - `source build/envsetup.sh`
   - `lunch sdk_car_x86_64-trunk_staging-userdebug`
   - `m -j4`
4. Yeni image ile emulator olustur/boot et.
5. OEM APK'lari degistirmeden yukle/dogrula.

Beklenen etki:
- `android.uid.system` nedeniyle gelen `INSTALL_FAILED_SHARED_USER_INCOMPATIBLE` hatasi,
  yalniz whitelistteki paketlerde (launcher/hvac) lab ortami icin bypass edilir.

Risk:
- Bu degisiklik guvenlik modelini gevsetir.
- Uretim derlemelerine tasinmamalidir.
