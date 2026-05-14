# ADB/Fastboot Tum Satirlar

- Uretim zamani: 2026-03-06 00:55:59 +0300
- Toplam satir: 353
- Kaynak dosya sayisi: 20
- Kriter: satirda 'adb' veya 'fastboot' gecmesi

Bu dosya bilgi kaybi olmamasi icin deduplikasyon yapmadan satirlari oldugu gibi listeler.

```text
./emulator_guide.md:31:2. **Kütüphane Enjeksiyonu:** Elimizdeki `framework` ve cihazdan çekilecek `lib64` dosyaları emülatöre `adb push` ile aktarılır.
./emulator_guide.md:39:adb pull /system/lib/ ./lib_backup
./emulator_guide.md:40:adb pull /system/lib64/ ./lib64_backup
./emulator_guide.md:43:adb pull /vendor/ ./vendor_backup
./emulator_guide.md:46:adb pull /system/build.prop .
./emulator_guide.md:68:adb shell "ls -l /dev/block/by-name"
./emulator_guide.md:76:adb shell "su -c 'dd if=/dev/block/by-name/boot of=/data/local/tmp/boot.img'"
./emulator_guide.md:77:adb shell "su -c 'dd if=/dev/block/by-name/vendor of=/data/local/tmp/vendor.img'"
./emulator_guide.md:80:adb pull /data/local/tmp/boot.img .
./emulator_guide.md:81:adb pull /data/local/tmp/vendor.img .
./emulator_guide.md:88:adb pull /system/lib64/ ./lib64_backup
./emulator_guide.md:91:adb pull /vendor/ ./vendor_backup
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:223:adb shell dumpsys display
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:226:adb shell service check android.hardware.automotive.display
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:229:adb shell getprop init.svc.screentrigger
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:235:adb shell setprop ro.vendor.display.ports "0,1"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:238:adb shell setprop ro.vendor.display.port1.density 160
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:241:adb shell setprop ro.vendor.display.port1.width 1024
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:242:adb shell setprop ro.vendor.display.port1.height 600
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:248:adb shell ls -la /vendor/bin/screentrigger
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:252:adb shell /vendor/bin/screentrigger &
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:255:adb shell setprop init.svc.bootanim running
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:260:adb shell stop
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:261:adb shell start
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:263:adb reboot
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:269:adb shell service call SurfaceFlinger listDisplays
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:272:adb shell dumpsys display | grep "port:"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:275:adb shell am start -n com.android.systemui/.demo.DemoModeActivity
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:336:adb shell settings put secure enabled_notification_listeners \
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:364:adb shell settings put secure enabled_accessibility_services \
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:391:adb shell pm enable com.yfve.launcher
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:394:adb shell cmd package set-home-activity \
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:398:adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:401:adb reboot
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:718:adb push /home/cemal/Belgeler/apps/omoda5/backup/lib64/. /system/lib64/
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:721:adb push /home/cemal/Belgeler/apps/omoda5/backup/vendor/. /vendor/
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:724:adb install /home/cemal/Belgeler/apps/omoda5/backup/apps/launcher.apk
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:725:adb install /home/cemal/Belgeler/apps/omoda5/backup/apps/hvac.apk
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:726:adb install /home/cemal/Belgeler/apps/omoda5/backup/apps/media.apk
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:733:adb shell setprop ro.product.model "x9 for arm64"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:734:adb shell setprop ro.product.brand "yfve"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:735:adb shell setprop ro.product.name "chery_t19c"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:736:adb shell setprop ro.product.device "chery_t19c"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:739:adb shell setprop ro.sf.lcd_density 160
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:742:adb shell setprop persist.sys.timezone "Europe/Istanbul"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:745:adb shell setprop qemu.hw.mainkeys 0
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:751:adb root
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:752:adb remount
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:753:adb shell setenforce 0
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:760:adb install -r flauncher.apk
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:763:adb shell cmd package set-home-activity it.flauncher/.LauncherActivity
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:776:| adb | latest | Device Management |
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:862:adb connect <cihaz_ip>:5555
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:865:adb shell getprop ro.product.model
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:866:adb shell getprop ro.build.version.release
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:869:adb shell dumpsys audio
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:872:adb shell dumpsys bluetooth_manager
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:875:adb logcat | grep <paket_adı>
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:882:adb logcat <paket_adi>:*
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:885:adb logcat *:E
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:888:adb logcat | grep -i "media\|audio"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:895:adb shell dumpsys meminfo <paket_adi>
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:898:adb shell top -n 1
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:901:adb shell dumpsys battery
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:984:adb root
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:985:adb remount
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:988:adb shell setprop ro.vendor.display.ports "0,1"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:991:adb shell /vendor/bin/screentrigger &
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:994:adb reboot
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:999:adb shell dumpsys display
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1010:| Ekran yanıt vermez | %10 | `adb reboot` ile geri döner |
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1021:adb shell setprop ro.vendor.display.ports "0"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1022:adb reboot
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1058:adb shell setprop ro.config.theme_color "ACCENT_BLUE"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1059:adb shell setprop ro.config.night_mode "1"  # Dark mode
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1060:adb shell setprop ro.config.text_size "18sp"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1066:adb push custom_theme.apk /vendor/overlay/
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1067:adb shell pm install-existing com.android.theme.custom
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1073:adb shell setprop ro.vendor.display.port0.theme "light"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1076:adb shell setprop ro.vendor.display.port1.theme "dark"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1077:adb shell setprop ro.vendor.display.port1.accent_color "#FF6200EE"
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1093:   - [ ] `adb shell dumpsys display` komutuyla mevcut display'leri kontrol et
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1094:   - [ ] `adb shell service check android.hardware.automotive.display` ile HAL servisi çalışıyor mu kontrol et
./CHERY_OMODA5_KAPSAMLI_ANALIZ.md:1104:   - [ ] Cluster ekranının aktif olduğunu kontrol et (`adb shell dumpsys display | grep port:`)
./RADIO_RDS_PROBLEM_ANALYSIS.md:202:adb shell dumpsys radio
./RADIO_RDS_PROBLEM_ANALYSIS.md:203:adb shell dumpsys broadcastradio
./RADIO_RDS_PROBLEM_ANALYSIS.md:206:adb shell getprop ro.hardware.fm_tuner
./RADIO_RDS_PROBLEM_ANALYSIS.md:207:adb shell getprop ro.vendor.radio.rds_support
./RADIO_RDS_PROBLEM_ANALYSIS.md:489:adb shell dumpsys package com.yfve.radio | grep permission
./RADIO_RDS_PROBLEM_ANALYSIS.md:492:adb shell am start -n com.yfve.radio/.RadioActivity
./RADIO_RDS_PROBLEM_ANALYSIS.md:495:adb logcat | grep -i "rds\|program"
./Chery ADB   loglar.txt:711:1|chery_t19c:/ $ adb shell start
./Chery ADB   loglar.txt:713:/system/bin/sh: adb: inaccessible or not found
./Chery ADB   loglar.txt:714:127|chery_t19c:/ $ adb shell start
./Chery ADB   loglar.txt:716:/system/bin/sh: adb: inaccessible or not found
./Chery ADB   loglar.txt:720:1|chery_t19c:/ $ su adb shell start
./Chery tuş takımı logları.md:238:chery_t19c:/ $ adb logcat -c
./Chery tuş takımı logları.md:240:/system/bin/sh: adb: inaccessible or not found
./Chery tuş takımı logları.md:241:127|chery_t19c:/ $ adb logcat | grep -i hardkey
./Chery tuş takımı logları.md:243:/system/bin/sh: adb: inaccessible or not found
./Chery tuş takımı logları.md:395:- ADB erişim sorunları: `adb: inaccessible or not found`
./Chery ADB   loglarv2.txt:711:1|chery_t19c:/ $ adb shell start
./Chery ADB   loglarv2.txt:713:/system/bin/sh: adb: inaccessible or not found
./Chery ADB   loglarv2.txt:714:127|chery_t19c:/ $ adb shell start
./Chery ADB   loglarv2.txt:716:/system/bin/sh: adb: inaccessible or not found
./Chery ADB   loglarv2.txt:720:1|chery_t19c:/ $ su adb shell start
./cihaz_analizi_sorunlar ve çözüm önerileri.md:41:*   **Komut:** `adb shell settings put secure enabled_notification_listeners <uygulama_adı>/<servis_adı>`
./cihaz_analizi_sorunlar ve çözüm önerileri.md:51:*   **Komut:** `adb shell settings put secure enabled_accessibility_services <paket_adi>`
./cihaz_analizi_sorunlar ve çözüm önerileri.md:63:    1.  Orijinal Launcher'ı Etkinleştir: `adb shell pm enable com.yfve.launcher`
./cihaz_analizi_sorunlar ve çözüm önerileri.md:64:    2.  Varsayılanı Geri Al: `adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity`
./cihaz_analizi_sorunlar ve çözüm önerileri.md:65:    3.  Klima Manuel Başlatma: `adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity`
./cihaz_analizi_sorunlar ve çözüm önerileri.md:66:    4.  Cihazı Yeniden Başlat: `adb reboot`
./cihaz_analizi_sorunlar ve çözüm önerileri.md:69:adb shell pm enable com.yfve.launcher
./cihaz_analizi_sorunlar ve çözüm önerileri.md:72:adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity
./cihaz_analizi_sorunlar ve çözüm önerileri.md:75:adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity
./cihaz_analizi_sorunlar ve çözüm önerileri.md:78:adb reboot
./adb_launcher_rehberi.md:10:adb install flauncher.apk
./adb_launcher_rehberi.md:14:adb shell am start -n it.flauncher/.LauncherActivity
./adb_launcher_rehberi.md:18:adb shell pm disable-user --user 0 com.yfve.launcher
./adb_launcher_rehberi.md:33:adb shell pm enable com.yfve.launcher
./adb_launcher_rehberi.md:36:adb shell cmd package set-home-activity com.yfve.launcher/com.yfve.launcher.LauncherActivity
./adb_launcher_rehberi.md:44:adb shell am start -n it.flauncher/.LauncherActivity
./adb_launcher_rehberi.md:50:adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity
./adb_launcher_rehberi.md:56:adb shell pm enable com.yfve.launcher
./adb_launcher_rehberi.md:57:adb shell pm enable com.yfve.hvac
./adb_launcher_rehberi.md:58:adb reboot
./adb_launcher_rehberi.md:61:> **Not:** Paket adları (`com.yfve.launcher` vb.) cihaz modeline göre küçük farklılıklar gösterebilir. `adb shell pm list packages | grep yfve` komutu ile tam isimleri kontrol edebilirsiniz.
./duck_panel_v2_guvenli_prompt.md:236:                adb shell appops set ${activity.packageName} SYSTEM_ALERT_WINDOW allow
./duck_panel_v2_guvenli_prompt.md:721:                adb shell pm enable com.yfve.launcher
./duck_panel_v2_guvenli_prompt.md:722:                adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity
./duck_panel_v2_guvenli_prompt.md:723:                adb reboot
./duck_panel_v2_guvenli_prompt.md:833:adb shell appops set com.duckpanel SYSTEM_ALERT_WINDOW allow
./duck_panel_v2_guvenli_prompt.md:838:adb shell pm grant com.duckpanel android.permission.WRITE_SECURE_SETTINGS
./duck_panel_v2_guvenli_prompt.md:842:adb shell settings put secure enabled_accessibility_services com.duckpanel/.NavAccessibilityService
./duck_panel_v2_guvenli_prompt.md:845:# adb shell pm disable com.yfve.launcher  # HVAC bozar!
./duck_panel_v2_guvenli_prompt.md:848:# adb shell cmd package set-home-activity com.duckpanel/.LauncherActivity  # Sistem bozulur!
./duck_panel_v2_guvenli_prompt.md:875:            adb shell appops set ${context.packageName} SYSTEM_ALERT_WINDOW allow
./duck_panel_v2_guvenli_prompt.md:878:            adb shell settings put secure enabled_accessibility_services ${context.packageName}/.NavAccessibilityService
./duck_panel_v2_guvenli_prompt.md:1297:        adb shell appops set com.duckpanel SYSTEM_ALERT_WINDOW allow
./duck_panel_v2_guvenli_prompt.md:1306:        adb shell settings put secure enabled_accessibility_services com.duckpanel/.NavAccessibilityService
./duck_panel_v2_guvenli_prompt.md:1329:        adb shell pm enable com.yfve.launcher
./duck_panel_v2_guvenli_prompt.md:1330:        adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity
./duck_panel_v2_guvenli_prompt.md:1331:        adb reboot
./duck_panel_v2_guvenli_prompt.md:1540:adb install app/build/outputs/apk/debug/app-debug.apk
./duck_panel_v2_guvenli_prompt.md:1543:adb shell appops set com.duckpanel SYSTEM_ALERT_WINDOW allow
./duck_panel_v2_guvenli_prompt.md:1546:adb shell settings put secure enabled_accessibility_services com.duckpanel/.NavAccessibilityService
./duck_panel_v2_guvenli_prompt.md:1549:adb shell dumpsys package com.duckpanel
./duck_panel_v2_guvenli_prompt.md:1602:adb logcat -s DuckPanel:V NavAccessibility:V
./DOC-20260304-WA0006.txt:1:03-05 04:56:22.828  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:67:03-05 04:56:23.868  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:212:03-05 04:56:24.897  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:307:03-05 04:56:25.932  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:422:03-05 04:56:26.973  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:542:03-05 04:56:28.012  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:673:03-05 04:56:29.044  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:832:03-05 04:56:30.080  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:931:03-05 04:56:31.116  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1021:03-05 04:56:32.148  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1169:03-05 04:56:33.184  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1245:03-05 04:56:34.228  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1378:03-05 04:56:35.260  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1473:03-05 04:56:36.308  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1583:03-05 04:56:37.345  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1706:03-05 04:56:38.392  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1824:03-05 04:56:39.428  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:1948:03-05 04:56:40.256  7491  7517 I FA      : To enable debug logging run: adb shell setprop log.tag.FA VERBOSE
./DOC-20260304-WA0006.txt:1950:03-05 04:56:40.256  7491  7517 I FA      :   adb shell setprop debug.firebase.analytics.app com.teslacoilsw.launcher
./DOC-20260304-WA0006.txt:2180:03-05 04:56:40.472  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:2309:03-05 04:56:41.508  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:2450:03-05 04:56:42.540  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:2597:03-05 04:56:43.576  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:2720:03-05 04:56:44.608  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:2865:03-05 04:56:45.640  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:2967:03-05 04:56:46.680  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3070:03-05 04:56:47.720  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3189:03-05 04:56:48.760  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3340:03-05 04:56:49.807  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3446:03-05 04:56:50.840  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3544:03-05 04:56:51.876  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3667:03-05 04:56:52.911  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3779:03-05 04:56:53.948  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:3889:03-05 04:56:54.991  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4017:03-05 04:56:56.041  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4178:03-05 04:56:57.076  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4262:03-05 04:56:58.116  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4370:03-05 04:56:59.155  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4558:03-05 04:57:00.188  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4643:03-05 04:57:01.228  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4735:03-05 04:57:02.268  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4880:03-05 04:57:03.299  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:4982:03-05 04:57:04.337  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5101:03-05 04:57:05.376  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5219:03-05 04:57:06.416  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5344:03-05 04:57:07.452  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5415:03-05 04:57:08.500  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5572:03-05 04:57:09.532  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5726:03-05 04:57:10.572  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5812:03-05 04:57:11.608  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:5961:03-05 04:57:12.640  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6060:03-05 04:57:13.680  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6246:03-05 04:57:14.722  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6365:03-05 04:57:15.757  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6473:03-05 04:57:16.789  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6559:03-05 04:57:17.827  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6688:03-05 04:57:18.865  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6864:03-05 04:57:19.905  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:6965:03-05 04:57:20.941  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7071:03-05 04:57:21.982  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7228:03-05 04:57:23.021  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7324:03-05 04:57:24.053  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7450:03-05 04:57:25.090  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7563:03-05 04:57:26.126  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7666:03-05 04:57:27.162  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7791:03-05 04:57:28.194  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:7879:03-05 04:57:29.230  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8049:03-05 04:57:30.262  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8186:03-05 04:57:31.306  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8255:03-05 04:57:32.342  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8389:03-05 04:57:33.378  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8502:03-05 04:57:34.410  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8605:03-05 04:57:35.446  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8699:03-05 04:57:36.482  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8834:03-05 04:57:37.518  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:8901:03-05 04:57:38.550  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9044:03-05 04:57:39.586  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9208:03-05 04:57:40.622  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9314:03-05 04:57:41.658  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9393:03-05 04:57:42.694  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9529:03-05 04:57:43.730  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9674:03-05 04:57:44.769  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9767:03-05 04:57:45.802  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9878:03-05 04:57:46.846  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:9998:03-05 04:57:47.882  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10116:03-05 04:57:48.925  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10254:03-05 04:57:49.960  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10430:03-05 04:57:50.997  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10517:03-05 04:57:52.034  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10611:03-05 04:57:53.077  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10746:03-05 04:57:54.124  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10877:03-05 04:57:55.166  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:10967:03-05 04:57:56.199  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11099:03-05 04:57:57.234  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11213:03-05 04:57:58.273  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11304:03-05 04:57:59.313  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11496:03-05 04:58:00.354  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11616:03-05 04:58:01.392  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11679:03-05 04:58:02.425  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11818:03-05 04:58:03.467  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:11909:03-05 04:58:04.506  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12031:03-05 04:58:05.542  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12121:03-05 04:58:06.574  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12242:03-05 04:58:07.618  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12357:03-05 04:58:08.653  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12492:03-05 04:58:09.689  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12593:03-05 04:58:10.729  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12714:03-05 04:58:11.763  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12794:03-05 04:58:12.798  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:12889:03-05 04:58:13.829  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13062:03-05 04:58:14.868  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13172:03-05 04:58:15.905  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13266:03-05 04:58:16.935  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13390:03-05 04:58:17.980  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13550:03-05 04:58:19.014  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13709:03-05 04:58:20.054  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13809:03-05 04:58:21.089  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:13941:03-05 04:58:22.133  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14034:03-05 04:58:23.178  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14128:03-05 04:58:24.213  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14273:03-05 04:58:25.249  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14340:03-05 04:58:26.289  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14465:03-05 04:58:27.326  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14577:03-05 04:58:28.362  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14690:03-05 04:58:29.403  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14814:03-05 04:58:30.438  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./DOC-20260304-WA0006.txt:14977:03-05 04:58:31.470  2571  2596 I adbd    : opening control endpoint /dev/usb-ffs/adb/ep0
./Chery_komut_ve_bilgi_listesi.md:5:> Not: Loglarda “adb logcat …” komutunun **cihaz içinde çalışmadığı** görülüyor (adb binary yok). Cihaz kabuğunda log almak için `logcat` kullanılmalı.
./Chery_komut_ve_bilgi_listesi.md:21:### 1.3 (Logdan öğrenilen kritik fark) `adb logcat …` **cihaz içinde çalışmaz**
./Chery_komut_ve_bilgi_listesi.md:22:- **Amaç:** Loglarda, cihaz shell içinde `adb logcat` denenmiş ve **“adb: inaccessible or not found”** hatası alınmış.
./Chery_komut_ve_bilgi_listesi.md:24:  - **PC tarafında:** `adb logcat …` (host aracı)  
./Chery_komut_ve_bilgi_listesi.md:137:| Basit | “cihaz içinde `adb` yok” | Düşük | Düşük | PC’de adb, cihazda logcat |
./GMS_MINIMAL_RUNBOOK.md:11:- Host: `adb` kurulu
./GMS_MINIMAL_RUNBOOK.md:51:1. Cihazı bootloader/fastboot moduna alın.
./GMS_MINIMAL_RUNBOOK.md:57:- `fastboot` host'ta kurulu değilse restore scripti çalışmaz, önce platform-tools kurun.
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:270:fastboot flashall
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:279:adb shell pm list packages | grep -i google
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:282:adb uninstall com.google.android.apps.maps
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:283:adb uninstall com.google.android.apps.photos
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:284:adb uninstall com.chrome
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:285:adb uninstall com.google.android.youtube
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:286:adb uninstall com.google.android.gm (Gmail)
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:290:adb shell pm list packages | grep -i google
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:419:adb shell dumpsys meminfo | grep -E "TOTAL|Google"
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:422:adb shell pm set-idle-state com.google.android.gms true
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:425:adb shell settings put global auto_time 0
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:426:adb shell settings put global auto_time_zone 0
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:429:adb shell pm trim-caches 1024M
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:460:adb shell pm list packages | grep -i google
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:461:adb shell dumpsys meminfo | grep Google
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:464:adb shell dumpsys gfxinfo > baseline.txt
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:467:adb shell dumpsys batterystats | grep -i google
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:474:adb backup -apk -shared -all -f backup.ab
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:477:adb uninstall com.google.android.apps.maps
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:478:adb uninstall com.google.android.apps.photos
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:479:adb uninstall com.chrome
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:480:adb uninstall com.google.android.youtube
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:484:adb shell pm disable com.google.android.gms/.analytics.internal.AnalyticsService
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:485:adb shell pm disable com.google.android.gms/.location.internal.zzv
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:486:adb shell pm disable com.google.android.gms/.icing.PhoneNumberService
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:493:adb shell settings put global auto_time 0
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:494:adb shell settings put global auto_time_zone 0
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:495:adb shell settings put global htc_device_phone_type true
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:498:adb shell settings put global comp_sync_disabled 1
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:501:adb shell pm set-idle-state com.google.android.gms true
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:504:adb shell settings put global low_ram 1  # Hint to system
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:511:adb shell dumpsys meminfo | grep Google
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:514:adb shell top -m 5  # Top 5 processes
./GOOGLE_SERVICES_MINIMAL_CONFIG.md:579:├─ Monitor: adb logcat | grep -i crash
./cihaz_cozum_onerileri.md:7:*   **Komut:** `adb shell settings put secure enabled_notification_listeners <uygulama_adı>/<servis_adı>`
./cihaz_cozum_onerileri.md:17:*   **Komut:** `adb shell settings put secure enabled_accessibility_services <paket_adi>`
./cihaz_cozum_onerileri.md:33:    1.  Orijinal Launcher'ı Etkinleştir: `adb shell pm enable com.yfve.launcher`
./cihaz_cozum_onerileri.md:34:    2.  Varsayılanı Geri Al: `adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity`
./cihaz_cozum_onerileri.md:35:    3.  Klima Manuel Başlatma: `adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity`
./cihaz_cozum_onerileri.md:36:    4.  Cihazı Yeniden Başlat: `adb reboot`
./cihaz_cozum_onerileri.md:39:adb shell pm enable com.yfve.launcher
./cihaz_cozum_onerileri.md:42:adb shell cmd package set-home-activity com.yfve.launcher/.LauncherActivity
./cihaz_cozum_onerileri.md:45:adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity
./cihaz_cozum_onerileri.md:48:adb reboot
./chery_master_controller_ultimate_prompt.md:66:│   ├── adb/                       # ADB iletişim modülü
./chery_omoda4_verileri.txt:435:49	adb: [android.debug.IAdbManager]
./chery_omoda4_verileri.txt:2161:adb on /dev/usb-ffs/adb type functionfs (rw,relatime)
./Chery_launcher_komut_bilgi_kartlari.md:123:<b style="font-size: 1.05em;">Kritik fark: Cihaz shell’inde `adb` yok</b><br/>
./Chery_launcher_komut_bilgi_kartlari.md:124:<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#fecaca;color:#000;font-size:0.85em;margin-right:6px;">Önemli</span> Loglarda cihaz üzerinde <code>adb logcat</code> denenince <i>adb: inaccessible or not found</i> hatası görülüyor. Yani cihazın kendi terminalinde <b>adb değil</b> <b>logcat</b> kullanılmalı. <br/><b>Kullanım:</b> PC tarafında adb ile bağlanıp log alınabilir; cihaz içinde logcat çalışır.<br/><b>Sistem Yükü:</b> 1/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
./Chery_launcher_komut_bilgi_kartlari.md:138:<b style="font-size: 1.05em;">Komut Kartı: (PC) adb logcat | grep -i hardkey</b><br/>
./Chery_launcher_komut_bilgi_kartlari.md:139:<span style="display:inline-block;padding:2px 8px;border-radius:999px;background:#111827;color:#fff;font-size:0.85em;margin-right:6px;">Komut</span> <code>(PC) adb logcat | grep -i hardkey</code><br/><b>Amaç:</b> Aynı izlemeyi PC tarafında adb ile yapar. Not: Cihazın kendi shell’inde adb binary yok.<br/><b>Nerede:</b> PC (host) tarafında<br/><b>Sistem Yükü:</b> 2/5 &nbsp; <b>Sürüş Güvenliği Etkisi:</b> 2/5
./Chery ADB  komutlar .log:711:1|chery_t19c:/ $ adb shell start
./Chery ADB  komutlar .log:713:/system/bin/sh: adb: inaccessible or not found
./Chery ADB  komutlar .log:714:127|chery_t19c:/ $ adb shell start
./Chery ADB  komutlar .log:716:/system/bin/sh: adb: inaccessible or not found
./Chery ADB  komutlar .log:720:1|chery_t19c:/ $ su adb shell start
./CHERY_OMODA5_OVERLAY_LAUNCHER_TASARIMI.md:1394:   adb install -r app-debug.apk
./CHERY_OMODA5_OVERLAY_LAUNCHER_TASARIMI.md:1400:   adb logcat | grep "OverlayLauncher"
./CHERY_OTA_UPDATE_SYSTEM.md:132:│ │    adb shell setprop ro.vendor.radio.rds_support true
./CHERY_OTA_UPDATE_SYSTEM.md:206:6. Flash via recovery mode (adb sideload)
./CHERY_OTA_UPDATE_SYSTEM.md:263:5. adb sideload custom_ota.zip
./CHERY_OTA_UPDATE_SYSTEM.md:351:adb root
./CHERY_OTA_UPDATE_SYSTEM.md:352:adb pull /system system_backup
./CHERY_OTA_UPDATE_SYSTEM.md:362:adb sideload custom_ota.zip
./CHERY_OTA_UPDATE_SYSTEM.md:369:**Recovery:** Via fastboot + backup restore  
./CHERY_OTA_UPDATE_SYSTEM.md:395:adb install -r radio_modified.apk
./CHERY_OTA_UPDATE_SYSTEM.md:398:adb logcat | grep -i rds
./CHERY_OTA_UPDATE_SYSTEM.md:415:adb root
./CHERY_OTA_UPDATE_SYSTEM.md:424:adb sideload custom_ota_unsigned.zip
./CHERY_OTA_UPDATE_SYSTEM.md:549:├─ Install via adb
```
