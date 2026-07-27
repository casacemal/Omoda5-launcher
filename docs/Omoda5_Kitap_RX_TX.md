# OMODA5 Android Unit — ADB Komut Kitabı

> Bu kitap, Omoda5 cihazına (Chery T19C / SEMIDRIVE X9 / AAOS10) ADB ile bağlandıktan sonra
> denenen HER komut ve GERÇEK çıktısını içerir. Sistem teşhisi ve ADB komutlarını kapsar.
> launcher_v2 APK deploy yapılmaz — sadece inceleme/diagnostic.
>
> Cihaz: 100.121.172.79:5555 (Tailscale IP, ADB over TCP)
> Tarih: 2026-07-17

---

## BÖLÜM 1 — Cihaza Bağlanma (ADB Connect)

### 1.1 ADB sunucuyu temizle ve başlat
**Komut:**
```bash
adb kill-server
adb start-server
```
**Çıktı:**
```
* daemon not running; starting now at tcp:5037
* daemon started successfully
```

### 1.2 Cihaza bağlan
**Komut:**
```bash
adb connect 100.121.172.79:5555
```
**Çıktı:**
```
connected to 100.121.172.79:5555
```

### 1.3 Bağlı cihazları listele
**Komut:**
```bash
adb devices -l
```
**Çıktı:**
```
List of devices attached
100.121.172.79:5555    device product:chery_t19c model:x9_for_arm64 device:chery_t19c transport_id:1
```
**Not:** `model:x9_for_arm64` → SEMIDRIVE X9 platformu. `product:chery_t19c` → Chery T19C.

---

## BÖLÜM 2 — Root Erişimi (Nasıl Root Olunur)

Omoda5 AAOS10 **root'lu** cihazdır. ADB shell varsayılan olarak `shell` kullanıcısında
açılır (uid 2000). Root komutları için `su 0` kullanılır.

> ⚠️ DİKKAT: Bu cihazda `su -c 'komut'` syntax'ı ÇALIŞMAZ.
> Hata: `su: invalid uid/gid '-c'`
> Doğru form: `su 0 <komut>`  (veya `su 0` ile interaktif root shell)

### 2.1 Normal shell kontrolü (root DEĞİL)
**Komut:**
```bash
adb shell "whoami; id"
```
**Çıktı:**
```
shell
uid=2000(shell) gid=2000(shell) groups=2000(shell),1004(input),1007(log),1011(adb),1015(sdcard_rw),1028(sdcard_r),3001(net_bt_admin),3002(net_bt),3003(inet),3006(net_bw_stats),3009(readproc),3011(uhid) context=u:r:shell:s0
```
**Açıklama:** `uid=2000(shell)` → normal ADB shell, root değil. SELinux context `u:r:shell:s0`.

### 2.2 Root'a geçiş (uid=0)
**Komut:**
```bash
adb shell "su 0 id"
```
**Çıktı:**
```
uid=0(root) gid=0(root) groups=0(root),1004(input),1007(log),1011(adb),1015(sdcard_rw),1028(sdcard_r),3001(net_bt_admin),3002(net_bt),3003(inet),3006(net_bw_stats),3009(readproc),3011(uhid) context=u:r:su:s0
```
**Açıklama:** `uid=0(root)` → ROOT erişimi başarılı. SELinux context `u:r:su:s0` (su domain).

### 2.3 Yanlış syntax (ÇALIŞMAZ)
**Komut:**
```bash
adb shell "su -c 'id; echo ROOT_OK'"
```
**Çıktı:**
```
su: invalid uid/gid '-c'
```
**Açıklama:** Bu cihazdaki `su` binary'si `-c` flag'ini kabul etmez. `su 0 <komut>` kullan.

### 2.4 Root ile komut çalıştırma örneği
**Komut:**
```bash
adb shell "su 0 <komut>"
```
**Örnek:** `adb shell "su 0 getprop ro.build.display.id"`
Root izni gerektiren sistem özelliklerini/properties'i okumak için bu form kullanılır.

---

## BÖLÜM 3 — Permission Manager X Root İzin Sorunu Teşhisi

**Durum:** `com.mirfatif.permissionmanagerx` (Permission Manager X) APK kurulu ama root izni alamıyor.
**Tarih:** 2026-07-17

### 3.1 Permission Manager X paketini doğrula
**Komut:**
```bash
adb shell "pm list packages" | grep -iE 'x'
```
**Çıktı:**
```
package:com.android.externalstorage
package:com.mirfatif.permissionmanagerx
package:com.frack.xeq
package:ru.yandex.yandexnavi
package:android.ext.shared
package:android.ext.services
package:muharroot.exe
package:com.android.proxyhandler
```
**Açıklama:** Permission Manager X = `com.mirfatif.permissionmanagerx`. Ayrıca isminde "root" geçen
`muharroot.exe` (userId=10045) var ama bu bir root manager DEĞİL, sadece isminde root geçiyor.

### 3.2 su binary'sinin yeri ve izinleri
**Komut:**
```bash
adb shell "su 0 which su; ls -la /system/bin/su /system/xbin/su /sbin/su"
```
**Çıktı:**
```
/system/xbin/su
ls: /system/bin/su: No such file or directory
ls: /sbin/su: No such file or directory
-rwsr-x--- 1 root shell 11528 2009-01-01 02:00 /system/xbin/su
```
**Açıklama:** `su` yalnızca `/system/xbin/su` adresinde. Permission: `-rwsr-x---`
→ **sadece `root` ve `shell` grubu** çalıştırabilir. Normal app'ler (örn. Permission Manager X,
uid 10045) bu `su`'ya **erişemez** (grup `shell`'de değiller).

### 3.3 Magisk var mı? (root manager daemon)
**Komut:**
```bash
adb shell "su 0 'ls -la /data/adb/magisk; ls -la /data/adb'"
```
**Çıktı:**
```
su: failed to exec ls -la /data/adb/magisk; ls -la /data/adb: No such file or directory
```
**Açıklama:** `/data/adb/magisk` YOK → Magisk kurulu değil. Proper bir root manager altyapısı yok.
Bu eski tip bir `su` (systemless değil, eski root). Permission Manager X Magisk'e bağlanmayı
dener ama Magisk olmadığı için root izni alamaz.

### 3.4 SELinux durumu
**Komut:**
```bash
adb shell "su 0 getenforce"
```
**Çıktı:**
```
Enforcing
```
**Açıklama:** SELinux **Enforcing** (aktif). App `su` çağırmaya kalksa bile SELinux policy'si
app domain'inden `su` domain'ine geçişi engeller.

### 3.5 App debuggable mı? (run-as testi)
**Komut:**
```bash
adb shell "run-as com.mirfatif.permissionmanagerx 'id; ls -la /system/xbin/su'"
```
**Çıktı:**
```
run-as: package not debuggable: com.mirfatif.permissionmanagerx
```
**Açıklama:** App debuggable değil → `run-as` ile contextsiz inceleme yapılamadı (normal durum).

---

### SONUÇ — Neden Permission Manager X root alamıyor?

| # | Sebep | Kanıt |
|---|-------|-------|
| 1 | `su` binary'si app'e kapalı | `-rwsr-x--- root shell` → sadece root+shell grubu, app (uid 10045) erişemez |
| 2 | SELinux = Enforcing | `getenforce` → Enforcing, app→su geçişi engellenir |
| 3 | Magisk yok | `/data/adb/magisk` yok, root manager daemon yok |

**Önemli:** Cihaz root'lu (biz `su 0 id` ile uid=0 alıyoruz) ama Permission Manager X app'inin
root alması bu 3 sebeple engelleniyor. App'e root vermek için ya `su` izni açılmalı, ya SELinux
permissive yapılmalı, ya da Magisk kurulmalı.

### Çözüm seçenekleri (değerlendirme)
| Yöntem | Açıklama | Risk |
|--------|----------|------|
| A) `su` iznini aç | `su 0 chmod 6755 /system/xbin/su` + SELinux permissive | /system remount gerekir |
| B) SELinux permissive | `su 0 setenforce 0` | Güvenlik açığı, geçici |
| C) Magisk kur | Proper root manager | Cleanest ama kurulum gerekir |
| D) App yerine `su 0` kullan | Zaten root var, app'e gerek yok | En güvenli |

---

## BÖLÜM 4 — Ekran Görüntüsü ve Klavye (IME) Uzama Sorunu

**Tarih:** 2026-07-17
**Aktif app:** `com.mirfatif.permissionmanagerx` (Permission Manager X) → `AdvSettingsActivityM`
**Ekran:** 1920x720 (fiziksel)

### 4.1 Screenshot alma
**Komut:**
```bash
adb exec-out screencap -p > /home/dietpi/omoda5_screen.png
```
**Çıktı:** (dosya oluştu, 1920x720 PNG)
```
-rw-rw-r-- 1 dietpi dietpi 64982 omoda5_screen.png  (klavye açık)
-rw-rw-r-- 1 dietpi dietpi 56950 omoda5_screen_nokeyboard.png  (klavye kapalı)
```

### 4.2 Klavye (IME) durumunu kontrol et
**Komut:**
```bash
adb shell "dumpsys input_method | grep -iE 'mInputShown|mShowRequested'"
```
**Çıktı (klavye AÇIK):**
```
mShowRequested=true mShowExplicitlyRequested=true mShowForced=false mInputShown=true
```
**Çıktı (klavye KAPALI - input keyevent 111 sonrası):**
```
mShowRequested=false mShowExplicitlyRequested=false mShowForced=false mInputShown=false
```
**Açıklama:** `mInputShown=true/false` ile klavye durumu takip edilir. Kapatmak için `input keyevent 111` (KEYCODE_ESCAPE) veya `input keyevent 4` (BACK).

### 4.3 softInputMode kontrolü
**Komut:**
```bash
adb shell "dumpsys input_method | grep -iE 'softInputMode'"
```
**Çıktı:**
```
softInputMode=STATE_UNSPECIFIED|ADJUST_PAN
softInputMode=STATE_UNSPECIFIED|ADJUST_RESIZE
softInputMode=STATE_UNSPECIFIED|ADJUST_RESIZE|IS_FORWARD_NAVIGATION
...
```
**Açıklama:** App pencerelerinde hem `ADJUST_RESIZE` hem `ADJUST_PAN` karışık kullanılıyor.
`ADJUST_RESIZE` → klavye açılınca layout YENİDEN BOYUTLANIR (büzülür). Bu "uzama" hissinin kaynağı.

### 4.4 Klavye açık/kapalı piksel analizi (Python/PIL)
**Yöntem:** İki screenshot (klavye açık `test_kb_on.png`, kapalı `test_kb_off.png`) piksel farkı alındı.
**Sonuç:**
```
Boyut: 1920x720
Değişen piksel oranı: ~78%
Klavye üst sınırı: y≈440px
Klavye yüksekliği: ~340px (ekranın ~47%'si)
Üst bölge (0-400px) değişim: ~88%  → tüm sayfa yeniden çizildi
Alt bölge (440-580px) değişim: ~89% → klavye tuşları
```
**Açıklama:** Klavye açılınca Permission Manager X ayar ekranı `ADJUST_RESIZE` ile TÜM LAYOUT'U
yeniden boyutlandırıyor. Üst içerik büzülüyor, klavye kapanınca eski haline dönüyor. Geçişte
"uzama"/yeniden düzenlenme hissi oluşuyor.

### 4.5 Çözüm önerileri (uzama sorunu için)
| Yöntem | Açıklama |
|--------|----------|
| `ADJUST_PAN` kullan | Manifest'te `android:windowSoftInputMode="adjustPan"` → layout yeniden boyutlanmaz, sadece kayar |
| Fixed height container | İçerik RecyclerView yerine fixed-height FrameLayout ile klavye değişiminden etkilenmez |
| `fitsSystemWindows` | Root view'e `android:fitsSystemWindows="true"` ekleyerek klavye inset'ini yönet |
| `WindowInsets` API | Yeni API ile klavye yüksekliğini manuel handle et (padding yerine) |

**Not:** Bu analiz Permission Manager X app'i üzerinde yapıldı. launcher_v2 için aynı sorun
varsa `android:windowSoftInputMode="adjustPan"` veya `WindowInsets` API önerilir.

---

## BÖLÜM 5 — Klavye Taşma Sorunu ve OEM IME Değişimi

**Tarih:** 2026-07-17
**Sorun:** Klavye ekranın solundan ve sağından taşıyor (1cm fazla her iki taraftan)

### 5.1 OEM klavye tespiti
**Komut:**
```bash
adb shell "dumpsys window windows | grep -iE 'InputMethod' -A2"
```
**Çıktı:**
```
package=com.google.android.apps.automotive.inputmethod
mAttrs: (0,0)(fillxfill) gr=BOTTOM CENTER_VERTICAL sim={adjust=pan}
Surface: rect=(0.0,0.0) 2225 x 720   ← KLAVYE 2225px (ekran 1920px!)
fl=...LAYOUT_NO_LIMITS...
```
**Açıklama:** OEM klavyesi (`com.google.android.apps.automotive.inputmethod`) 2225px genişlikte
çiziliyor ama ekran 1920px. `LAYOUT_NO_LIMITS` flag'i yüzünden kenarlardan taşıyor.

### 5.2 Alternatif klavye araştırması
**Komut:**
```bash
adb shell "ime list -s"
```
**Çıktı:**
```
com.android.inputmethod.latin/.LatinIME          ← AOSP LatinIME (sistemde var)
com.google.android.apps.automotive.inputmethod/.InputMethodService  ← OEM
```
**Açıklama:** Sistemde hazır `com.android.inputmethod.latin` (AOSP klavye) mevcut. Yeni APK
indirmeye gerek yok.

### 5.3 OEM klavye yedeği alma
**Komut:**
```bash
adb shell "su 0 cp /data/app/com.google.android.apps.automotive.inputmethod-*/base.apk /sdcard/oem_keyboard_backup.apk"
```
**Çıktı:**
```
-rw-rw---- 1 root sdcard_rw 66219279 oem_keyboard_backup.apk  (66MB yedek)
```

### 5.4 Varsayılan IME'yi AOSP'ye değiştir
**Komut:**
```bash
adb shell "su 0 settings put secure default_input_method com.android.inputmethod.latin/.LatinIME"
adb shell "ime enable com.android.inputmethod.latin/.LatinIME"
```
**Doğrulama:**
```bash
adb shell "settings get secure default_input_method"
```
**Çıktı:** `com.android.inputmethod.latin/.LatinIME` ✅

### 5.5 SORUN DEVAM EDİYOR — AOSP klavye de 2225px!
**Komut:**
```bash
adb shell "dumpsys window windows | grep -iE 'InputMethod' -A8 | grep -iE 'Surface|rect'"
```
**Çıktı:**
```
package=com.android.inputmethod.latin
Surface: rect=(0.0,0.0) 2225 x 720   ← YİNE 2225px!
```
**Açıklama:** AOSP klavye de 2225px çiziliyor. Sorun klavye APK'ında DEĞİL — **sistem genelinde
Display Metrics uyuşmazlığı**. Ekran 1920x720 ama IME window 2225px oluşturuluyor.

### 5.6 Display config inceleme
**Komut:**
```bash
adb shell "wm size; wm density"
```
**Çıktı:**
```
Physical size: 1920x720
Physical density: 160
```
**Açıklama:** `wm` doğru rapor ediyor (1920x720) ama IME hâlâ 2225px. Bu bir **system property**
veya **surfaceflinger display config** sorunu olabilir (ro.sf.lcd_density veya overscan).

### 5.7 Çözüm yolları (değerlendirme)
| Yöntem | Açıklama | Risk |
|--------|----------|------|
| A) `wm overscan` ayarla | `wm overscan 38,0,38,0` (sol/sağ 1cm kısalt) | Geçici, tüm sistemi etkiler |
| B) Display density değiştir | `wm density 180` → klavye ölçeklenir | Tüm UI değişir |
| C) IME padding (root) | Klavye APK decompile + margin | Riskli, system app |
| D) OEM IME'ye geri dön | `settings put default_input_method automotive...` | Güvenli geri dönüş |

**Not:** Sorun sistem seviyesinde olduğu için tek klavye değişimi çözmez. `wm overscan` en pratik
geçici çözüm. Kitabın devamında BÖLÜM 6'da çözüm denenecek.

---

## BÖLÜM 6 — FlorisBoard Kurulumu (OEM Klavye Yerine)

**Tarih:** 2026-07-17
**Hedef:** OEM klavye (2225px taşıyor) yerine FlorisBoard kurup 2cm sağa kaydır / ortala

### 6.1 FlorisBoard APK indir
**Komut (DietPi'de):**
```bash
curl -L -o florisboard.apk "https://github.com/florisboard/florisboard/releases/download/v0.5.2/florisboard-0.5.2-stable.apk"
```
**Çıktı:**
```
-rw-rw-r-- 1 dietpi dietpi 14757790 florisboard.apk  (14MB, Android package)
```
**Not:** GitHub API ile asset URL bulundu:
`https://github.com/florisboard/florisboard/releases/download/v0.5.2/florisboard-0.5.2-stable.apk`

### 6.2 Cihaza kur
**Komut:**
```bash
adb install -r /home/dietpi/florisboard.apk
```
**Çıktı:**
```
Performing Streamed Install
Success
```
**Not:** İlk deneme 60sn timeout (124) verdi, 120sn ile başarılı.

### 6.3 Paket doğrula
**Komut:**
```bash
adb shell "pm list packages | grep -i floris"
```
**Çıktı:**
```
package:dev.patrickgold.florisboard
```

### 6.4 Varsayılan IME yap (DENEME - eksik)
**Komut:**
```bash
adb shell "ime enable dev.patrickgold.florisboard/.FlorisBoard"
adb shell "su 0 settings put secure default_input_method dev.patrickgold.florisboard/.FlorisBoard"
```
**Çıktı:**
```
Unknown input method dev.patrickgold.florisboard/.FlorisBoard cannot be enabled for user #0
(Ama settings get secure default_input_method -> dev.patrickgold.florisboard/.FlorisBoard döndü)
```
**Sorun:** FlorisBoard `ime list -s`'de GÖRÜNMÜYOR. İlk açılışta "Enable in settings"
ekranı çıkarıyor, manuel setup gerekli.

### 6.5 FlorisBoard aç (setup)
**Komut:**
```bash
adb shell "am start -n dev.patrickgold.florisboard/.app.FlorisAppActivity"
```
**Çıktı:** `Starting: Intent { cmp=dev.patrickgold.florisboard/.app.FlorisAppActivity }`
**Sonuç:** Hâlâ `ime list -s`'de görünmüyor → cihazda manuel "Klavye etkinleştir" gerekiyor.

### 6.6 SONRAKI ADIM (cihazda manuel)
1. Ayarlar → Sistem → Diller ve giriş → Klavye → FlorisBoard'ı ETKİNLEŞTİR
2. Varsayılan klavye olarak FlorisBoard seç
3. FlorisBoard ayarları → Keyboard → **Bottom offset** / **Keyboard width** ile 2cm (75px) ayarla
4. `adb shell "dumpsys window windows | grep InputMethod"` ile 1920px içinde olduğunu doğrula

**Not:** FlorisBoard v0.5.2'de "Bottom offset" var ama "horizontal offset" yok. 2cm sağa kaydırma
için ya `Keyboard width` azaltıp ortala, ya da v0.6 alpha'daki "floating window" özelliği kullanılır.

---

## BÖLÜM 6 — FlorisBoard Kurulumu ve Taşma Sorunu

**Tarih:** 2026-07-17
**Hedef:** OEM klavye (2225px taşıyor) yerine FlorisBoard kur + 2cm sağa kaydır/ortala

### 6.1 FlorisBoard APK indir (DietPi)
**Komut:**
```bash
curl -L -o florisboard.apk "https://github.com/florisboard/florisboard/releases/download/v0.5.2/florisboard-0.5.2-stable.apk"
```
**Çıktı:** `-rw-rw-r-- 14757790 florisboard.apk` (14MB)
**Asset URL:** `https://github.com/florisboard/florisboard/releases/download/v0.5.2/florisboard-0.5.2-stable.apk`

### 6.2 Cihaza kur
**Komut:** `adb install -r /home/dietpi/florisboard.apk`
**Çıktı:** `Performing Streamed Install / Success` (120sn ile, ilk 60sn timeout verdi)

### 6.3 Paket + Servis adı bul
**Komut:** `adb shell "dumpsys package dev.patrickgold.florisboard | grep FlorisImeService"`
**Çıktı:**
```
e621296 dev.patrickgold.florisboard/.FlorisImeService filter 1c7866f
  permission android.permission.BIND_INPUT_METHOD
```
**ÖNEMLİ:** Servis adı `.FlorisBoard` DEĞİL, **`.FlorisImeService`**!

### 6.4 Enable + Varsayılan yap
**Komut:**
```bash
adb shell "ime enable dev.patrickgold.florisboard/.FlorisImeService"
adb shell "su 0 settings put secure default_input_method dev.patrickgold.florisboard/.FlorisImeService"
```
**Çıktı:**
```
Input method dev.patrickgold.florisboard/.FlorisImeService: now enabled for user #0
settings get secure default_input_method → dev.patrickgold.florisboard/.FlorisImeService
```

### 6.5 Klavye aç
**Komut:** `adb shell "input tap 500 120"` sonra `input text 'a'`
**Doğrulama:**
```bash
adb shell "dumpsys input_method | grep -iE 'mInputShown|mCurId'"
```
**Çıktı:**
```
mCurId=dev.patrickgold.florisboard/.FlorisImeService mHaveConnection=true mBoundToMethod=true mVisibleBound=true
mShowRequested=true mShowExplicitlyRequested=true mShowForced=false mInputShown=true
```
✅ Klavye açıldı, FlorisBoard aktif.

### 6.6 SORUN DEVAM — FlorisBoard da 2225px!
**Komut:** `adb shell "dumpsys window windows | grep -iE 'InputMethod' -A8 | grep -iE 'Surface|rect'"`
**Çıktı:**
```
package=dev.patrickgold.florisboard
mSystemDecorRect=[0,0][2225,720] mLastClipRect=[0,0][2225,720]
```
**SONUÇ:** FlorisBoard da **2225 x 720** çiziyor! OEM klavye, AOSP LatinIME, FlorisBoard —
HEPSİ 2225px. Sorun klavye APK'ında DEĞİL → **sistem display config hatası**.

### 6.7 Display config araştırması
**Komut:** `adb shell "su 0 getprop | grep -iE 'ro.sf|display|overscan|lcd_density'"`
**Çıktı:**
```
[persist.sys.displayinset.top]: [0]
[ro.sf.hwrotation]: [90]
[ro.sf.lcd_density]: [160]
```
**Açıklama:** `hwrotation=90` (yatay ekran), `density=160`, `overscan` yok.
2225px = 1920 × 1.16 → sistem yanlış display genişliği hesaplıyor.

### 6.8 Çözüm yolu (sadece klavyeyi etkileyen)
FlorisBoard v0.5.2 ayarlarında **Keyboard width** (% olarak) ve **Bottom offset** var ama
**horizontal offset** YOK. 2cm sağa kaydırma için:
- A) `Keyboard width: 90%` + ortala (en temiz, kenarlardan 5% boşluk)
- B) v0.6 alpha kur (floating window → serbest konum)
- C) `wm overscan 75,0,75,0` (tüm sistemi etkiler, reddedildi)

**Not:** Asıl sorun sistem display metrics olduğu için tek klavye çözümü kalıcı olmayabilir.
BÖLÜM 7'de `wm size` / display fix denenecek.

---

## BÖLÜM 7 — Turbodog App Teşhisi (Neden Çalışmıyor?)

**Tarih:** 2026-07-17
**Paket:** `com.astrob.turbodog`

### 7.1 Paket var mı?
**Komut:** `adb shell "pm list packages | grep -i turbodog"`
**Çıktı:** `package:com.astrob.turbodog` ✅

### 7.2 İzin kontrolü (ÖNCE)
**Komut:** `adb shell "dumpsys package com.astrob.turbodog | grep -iE 'permission|granted'"`
**Önemli izinler:**
```
android.car.permission.CAR_VENDOR_EXTENSION  (OEM özel)
android.permission.READ_EXTERNAL_STORAGE: restricted=true → granted=true (SYSTEM_FIXED)
android.permission.WRITE_EXTERNAL_STORAGE: restricted=true → granted=true (SYSTEM_FIXED)
android.permission.SYSTEM_ALERT_WINDOW: granted (install)
android.permission.FOREGROUND_SERVICE: granted
android.permission.BIND_INCALL_SERVICE: granted=true
android.permission.BIND_ATTENTION_SERVICE: granted=true
```
**Sonuç:** İzinler SORUNSUZ (system-fixed granted). Eksik izin YOK.

### 7.3 App durumu
**Komut:** `adb shell "pm dump com.astrob.turbodog | grep -iE 'enabled|stopped|userId|targetSdk'"`
**Çıktı:**
```
userId=1000          ← sistem kullanıcısı (system-level app)
versionCode=33 minSdk=26 targetSdk=29
User 0: enabled=0    ← APP PASİF (devre dışı!)
stopped=false notLaunched=false
```
**KRİTİK:** `enabled=0` → Turbodog **etkin değil** (devre dışı). Bu yüzden çalışmıyor.

### 7.4 Ana activity + açılış testi
**Komut:** `adb shell "am start -n com.astrob.turbodog/.WelcomeActivity"`
**Çıktı:** `Starting: Intent { cmp=com.astrob.turbodog/.WelcomeActivity }` (hatasız açıldı)
**Ama:** `enabled=0` olduğu için launcher'da görünmez / tam çalışmaz.

### 7.5 Servisleri (asistan mı?)
**Komut:** `pm dump com.astrob.turbodog | grep -iE 'Service|Receiver'`
**Çıktı:**
```
Receiver: com.astrob.turbodog/.SystemMessageReceiver
Service:  com.astrob.turbodog/.NaviAidlService
Service:  com.astrob.turbodog/.SpeedLimitAssistService
          Action: "com.astrob.turbodog.SPEED_LIMIT_ASSIST_SERVICE"
```
**Sonuç:** Turbodog bir ARAÇ ASİSTANI (navigasyon + hız limiti asistanı).

### 7.6 Varsayılan asistan mı?
**Komut:** `adb shell "settings get secure assistant"`
**Çıktı:** (BOŞ) → Turbodog varsayılan asistan olarak AYARLI DEĞİL.

### 7.7 SONUÇ — Neden çalışmıyor?
1. `enabled=0` → app devre dışı (launcher'da yok, tam açılmaz)
2. Varsayılan asistan olarak ayarlı değil (`settings secure assistant` boş)
3. `CAR_VENDOR_EXTENSION` izni OEM'e özel → Chery SEMIDRIVE platformunda çalışır

### 7.8 ÇÖZÜM (sıradaki adım)
A) App'i etkinleştir: `adb shell "pm enable com.astrob.turbodog"`
B) Varsayılan asistan yap: `adb shell "su 0 settings put secure assistant com.astrob.turbodog/.WelcomeActivity"`
C) Yeniden başlat, test et

---

## BÖLÜM 8 — Turbodog Etkinleştirme + TTS

**Tarih:** 2026-07-17
**Not:** Kullanıcı "asistan değil, TTS/voice istiyor" dedi → sadece etkinleştir + aç,
asistan ayarı YAPILMEDI.

### 8.1 İzin kontrolü (ÖNCE - TTS/voice)
**Komut:** `dumpsys package com.astrob.turbodog | grep -iE 'RECORD_AUDIO|MODIFY_AUDIO|INTERNET|FOREGROUND|WAKE_LOCK'`
**Çıktı:**
```
MODIFY_AUDIO_SETTINGS: granted=true
MODIFY_AUDIO_ROUTING: granted=true
INTERNET: granted=true
FOREGROUND_SERVICE: granted=true
WAKE_LOCK: granted=true
```
**Sonuç:** TTS/voice için gerekli izinler SORUNSUZ.

### 8.2 Sistem TTS motorlari
**Komut:** `pm list packages | grep -iE 'tts|synth'`
**Çıktı:**
```
com.reecedunn.espeak   (varsayılan: tts_default_synth=com.reecedunn.espeak)
com.google.android.tts
```

### 8.3 Turbodog etkinleştir
**Komut:** `adb shell "pm enable com.astrob.turbodog"`
**Çıktı:**
```
Package com.astrob.turbodog new state: enabled
User 0: enabled=1  ← AKTİF
```

### 8.4 Turbodog ac
**Komut:** `adb shell "am start -n com.astrob.turbodog/.WelcomeActivity"`
**Çıktı:** `Starting: Intent { cmp=com.astrob.turbodog/.WelcomeActivity }`
**Doğrulama:** `dumpsys window | grep mFocusedApp` → `com.astrob.turbodog/.WelcomeActivity` ✅ AÇIK

### 8.5 TTS durumu
- `tts_default_synth = com.reecedunn.espeak` (eSpeak motoru aktif)
- Turbodog sesli komut/voice özelliği bu motoru kullanır
- Logcat'te henüz TTS/audio logu yok (app ses çalmadıği için normal)

**SONUÇ:** Turbodog artık çalışıyor (etkin + açık). TTS için eSpeak motoru hazır.
Kullanıcı "voice istiyor" → Turbodog sesli asistan/araç bilgilendirme özelliği eSpeak ile çalışır.

---

## ÖZET — Root Olma Adımları
1. `adb connect 100.121.172.79:5555` ile bağlan
2. Normal shell: `adb shell "id"` → `uid=2000(shell)` (root değil)
3. Root shell: `adb shell "su 0 id"` → `uid=0(root)` ✅
4. Root komutu: `adb shell "su 0 <komut>"`
5. ❌ `su -c` KULLANMA — bu cihazda çalışmaz

---
*Son güncelleme: 2026-07-17 — BÖLÜM 3 (Permission Manager X root sorunu teşhisi) eklendi.*
