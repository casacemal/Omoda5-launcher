# 01 - Modul Haritasi (Eski -> Yeni)

| Eski parca (decompile) | Gozlem | Yeni projede hedef modul |
|---|---|---|
| `MainActivity` (`adb_channel`) | Flutter MethodChannel ile `executeAdbCommand` calistiriyor | `CommandGateway` + `CommandExecutor` |
| `MainActivity.e0()` | `libadb.so` yolu bulup `sh -c` ile process calistiriyor | `NativeAdbExecutor` (opsiyonel) + `ShellExecutor` |
| `BootReceiver` | `BOOT_COMPLETED` ile uygulamayi aciyor | `BootOrchestrator` |
| `OverlayService` pluginleri | Overlay servisleri kayitli | `OverlayController` |
| `root` plugin (`ExecuteCommand`, `isRooted`) | Root shell kontrolu ve command execute | `RootProbe` + `RootCommandExecutor` |
| Geniş izin seti | Bir kisim izinler normal app icin fazla/privileged | `PermissionPolicy` (minimum izin) |

## Yeni Mimari (Oneri)
- `app-core`: UI ve durum yonetimi
- `app-platform`: Android servis, receiver, permission katmani
- `app-shell`: komut calistirma (read-only, privileged)
- `app-safety`: allowlist, timeout, audit log, rollback

## Cikarim Kurali
- Smali kodu birebir kopyalama yok.
- Yalnizca davranis/mantik referans alinacak.
- Komut calistirma sadece allowlist ile acilacak.
