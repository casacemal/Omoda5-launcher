# OMODA 5 LAUNCHER v11.6.3 ÇÖZÜM VE ENTEGRASYON RAPORU (Resolution Report)

**Tarih:** 4 Haziran 2026  
**Oturum:** 21:00 - 23:00 Geliştirme Periyodu  
**Durum:** VHAL & İzinler TAMAM | Tuşlar ARAŞTIRMADA

---

## 1. GİRİŞ VE ÖZET (Executive Summary)

### Projenin/Geliştirmenin Amacı
Omoda 5 araç ünitesinde (AAOS 10) VHAL (araç verisi) akışındaki donmaları gidermek, yakıt ve sıcaklık verilerini ölçeklemek, sistem izinlerini otonom hale getirmek ve fiziksel tuşları (direksiyon/hardkey) her koşulda yakalamak.

### Nihai Sonuç
VHAL veri akışı ve ölçekleme motoru (v11.6.2) başarıyla mühürlendi. İzin yönetimi (`PermissionManager`) ve Launcher koruma (`DefaultLauncherManager`) sistemleri tam kapasite çalışmaktadır. Kernel seviyesinde tuş okuma denemesi (v11.6.3) sistem kısıtlamalarına takılmış olup, fiziksel tuş okuma sorunu dışında tüm sistem kararlı hale getirilmiştir.

---

## 2. İZLENEN YOL VE YÖNTEMLER (Methodology & Approach)

1.  **VHAL Güçlendirme:** `dumpsys` çıktısındaki boş parantezleri (`[]`) atlayan ve `int32Values` alanına odaklanan yeni bir regex motoru geliştirildi.
2.  **Adaptive Polling:** Araç hızına göre (3sn/8sn) çalışan akıllı sorgulama algoritması `VhalManager` içine entegre edildi.
3.  **İzin Otomasyonu:** `PermissionManager` (v11.5.2) yazılarak Overlay, Hidden API ve Accessibility izinleri taranabilir ve tek tuşla enjekte edilebilir hale getirildi.
4.  **Enforce Launcher:** `DefaultLauncherManager` ile Home tuşuna basıldığında sistemin orijinal launcher'a kaçmasını engelleyen "Balyoz" metodu mühürlendi.
5.  **UI Diagnostik:** Ayarlar sayfasına logları türüne göre süzebilen (VHAL/TUŞ) renkli şeritli bir "Live Data Stream" paneli eklendi.
6.  **Deploy & Kurulum:** PC üzerinden ADB kanalıyla APK kurulumu ve yetki enjeksiyonları yapıldı.

---

## 3. KARŞILAŞILAN SORUNLAR VE LOG ANALİZİ (Issues Encountered & Log Analysis)

-   **Hata (VHAL Parsing):** Loglarda `floatValues` boş geldiğinde `VhalManager` veriyi "..." olarak gösteriyordu. Logcat analizinde verinin `int32Values` içinde olduğu saptandı (Root Cause).
-   **Hata (Yakıt Ölçekleme):** Yakıt verisi `15000.0` (mL) olarak geliyordu ve UI'da `%15000` görünüyordu. `numericVal / 1000f` işlemiyle litre bazlı düzeltme sağlandı.
-   **Hata (Tuş Okuma):** `AccessibilityService`'in `onKeyEvent` metodu OEM kısıtlaması nedeniyle tetiklenmiyordu. 
-   **Hata (Kernel Panic):** `getevent` denemesi sırasında `/dev/input/event0` erişiminde cihaz ADB bağlantısını kopararak dondu. Loglarda "Bad arguments" ve "device offline" hataları görüldü.

---

## 4. TEKNİK DETAYLAR VE KOD ÇÖZÜMÜ (Technical Implementation)

### 4.1 VhalManager.kt (Kararlı Versiyon)
```kotlin
// Robust Regex to find content in floatValues or int32Values
var valueToParse = ""
val floatMatch = Regex("floatValues: \\[([\\d.,\\s-]+)\\]").find(l)
if (floatMatch != null && floatMatch.groupValues[1].trim().isNotEmpty()) {
    valueToParse = floatMatch.groupValues[1].trim()
} else {
    val int32Match = Regex("int32Values: \\[([\\d.,\\s-]+)\\]").find(l)
    if (int32Match != null && int32Match.groupValues[1].trim().isNotEmpty()) {
        valueToParse = int32Match.groupValues[1].trim()
    }
}
// Fuel Scaling (mL -> L)
if (l.contains("0x11600307")) {
    val fuelL = (numericVal.toFloatOrNull() ?: 0f) / 1000f
    update("YAKIT", "%.1f L".format(fuelL))
}
```

### 4.2 PermissionManager.kt (Entegrasyon)
```kotlin
fun grantMissingPermissions(ctx: Context) {
    verifyAllPermissions(ctx)
    permissions.filter { !it.isGranted }.forEach { perm ->
        val intent = Intent(ctx, AdbBridgeService::class.java).apply {
            action = AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", perm.command)
        }
        ctx.startService(intent)
    }
}
```

### 4.3 SettingsActivity.kt (Filtreleme)
```kotlin
val filteredLogs = logs.filter { log ->
    when(filterMode) {
        "VHAL" -> log.contains("[VHAL]")
        "TUŞ" -> log.contains("[TUŞ]")
        else -> true
    }
}
```

**Not:** v11.6.3 sürümü tüm bu özellikleri içermekte olup, proje dizinine mühürlenmiştir.
