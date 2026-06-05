# 02 - Flutter/Native Channel Sozlesmesi

## Channel Adlari
- `adb_channel`
- `root`

## `adb_channel` Metodlari

### `executeAdbCommand`
Istek:
```json
{
  "command": "shell getprop ro.product.model"
}
```

Cevap (basarili):
```json
{
  "ok": true,
  "stdout": "x9 for arm64",
  "stderr": "",
  "exitCode": 0,
  "durationMs": 120
}
```

Cevap (hata):
```json
{
  "ok": false,
  "code": "ADB_ERROR",
  "message": "Timeout",
  "stdout": "",
  "stderr": "command timed out"
}
```

## `root` Metodlari

### `isRooted`
Cevap:
```json
{ "ok": true, "rooted": true }
```

### `isRootAvailable`
Cevap:
```json
{ "ok": true, "available": true }
```

### `executeRootCommand`
Istek:
```json
{ "cmd": "id" }
```

Cevap:
```json
{
  "ok": true,
  "stdout": "uid=0(root) gid=0(root)",
  "stderr": "",
  "exitCode": 0
}
```

## Davranis Kurallari
- Max sure: 10s (default)
- Uzun sureli komutlar: explicit `timeoutMs` zorunlu
- Cikti boyutu limiti: 1 MB
- UI thread bloklanmaz (worker thread)
