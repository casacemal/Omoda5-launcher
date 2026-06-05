# GEMINI_WORKFLOW.md — Gemini ile Güvenli Hata Çözme
**Versiyon:** 9.0.0 | **Proje:** Omoda 5 Launcher (AAOS API 29)

Gemini Chat'in kodu silmesini / üzerine yazmasını önleyen adım adım iş akışı.

---

## SORUN NEDİR?

Gemini'ye "düzelt" dediğinde tüm sınıfı yeniden yazar. Apply'a basınca mevcut kod gider.
Bu iş akışı her adımı kontrol altında tutar.

---

## İŞ AKIŞI: 4 ADIM

```
[ 1. YEDEK AL ] → [ 2. DOĞRU PROMPT YAZ ] → [ 3. ÇIKTIYI DEĞERLENDİR ] → [ 4. GÜVENLE UYGULA ]
```

---

## ADIM 1 — YEDEK AL (Zorunlu, atlanmaz)

### Git varsa:
```bash
git add .
git commit -m "before-gemini: [hata açıklaması]"
```

### Git yoksa:
1. Düzenleyeceğin dosyaya **sağ tık** → `Local History → Show History`
2. En üstteki kaydın saatini not al (örn: `14:32`)
3. Bu saate kadar geri dönebilirsin

### Kritik dosyalar için ek önlem:
`MainActivity.kt`, `AdbBridgeService.kt`, `LauncherSettingsActivity.kt` gibi dosyalarda:
```
Dosyayı kopyala → MainActivity_backup.kt olarak kaydet
```

**Kontrol listesi:**
- [ ] `git commit` aldım VEYA Local History saatini not ettim
- [ ] Sadece hatalı kod bloğunu seçtim (tüm dosyayı değil)

---

## ADIM 2 — DOĞRU PROMPT YAZ

Hata türüne göre aşağıdaki şablonlardan birini kopyala, boşlukları doldur.

> **Altın kural:** Gemini'ye her zaman sadece hatalı bloğu gönder — tüm sınıfı değil.

---

### Şablon A — Crash / Runtime Hatası (NullPointer, IllegalState vb.)

```
Uygulama şu hatayı veriyor:
[HATA MESAJINI BURAYA YAPISTIR]

Crash olan satır:
[SADECE O SATIRI YAPISTIR]

ZORUNLU KURALLAR:
- Tüm dosyayı veya sınıfı yeniden YAZMA
- Sadece bu satırı düzelt
- Cevabını şu formatta ver:
  📄 Dosya: [dosya adı]
  📍 Satır: [satır numarası]
  ❌ Eski: [mevcut kod]
  ✅ Yeni: [düzeltilmiş kod]
```

---

### Şablon B — Derleme Hatası (Kırmızı alt çizgi / Build error)

```
Derleme hatası:
[HATA MESAJINI BURAYA YAPISTIR]

Hatalı kod bloğu:
[MAX 15 SATIR — SADECE HATALI BÖLÜMÜ YAPISTIR]

ZORUNLU KURALLAR:
- Sadece bu bloğu düzelt
- Başka hiçbir yere dokunma
- Değişikliği ÖNCE/SONRA formatında göster
```

---

### Şablon C — Logic Hatası (Yanlış çalışıyor)

```
Bu fonksiyon doğru çalışmıyor:
[SADECE O FONKSİYONU YAPISTIR]

Beklenen: [ne olmalı]
Olan: [ne oluyor]

Sadece bu fonksiyonu düzelt.
Başka fonksiyon ekleme, başka sınıfa dokunma.
```

---

### Şablon D — Import / Dependency Hatası

```
Bu import çalışmıyor:
[IMPORT SATIRINI YAPISTIR]

Hata: [HATA MESAJI]

Doğru import satırını ver. Başka değişiklik yapma.
```

---

### Şablon E — ADB / AAOS Özel Hata

```
Android Automotive OS (API 29) üzerinde çalışıyorum.
Şu hata var:
[HATA MESAJI]

İlgili kod:
[KOD BLOĞU]

ÖNEMLİ KISITLAMALAR:
- API 29 uyumlu çözüm ver
- Android 11+ API kullanma (ActivityResultAPI, yeni permission modelleri vb.)
- ADB üzerinden çalışan bir araç ünitesi, sistem izinleri kısıtlı
- Sadece bu bloğu düzelt
```

---

## ADIM 3 — ÇIKTIYI DEĞERLENDİR

Gemini cevap verdi. Apply'a basmadan önce şunu sor:

### ✅ Güvenli — Apply basabilirsin:
- Sadece 1-5 satır değişiklik gösterdiyse
- `ÖNCE/SONRA` veya diff formatı kullandıysa
- "Sadece şu satırı değiştir" dediyse

### ❌ Tehlikeli — Apply BASMA:
- "İşte güncellenmiş tam sınıf:" yazdıysa
- Çıktı gönderdiğinden çok daha uzunsa
- Yeni import, yeni fonksiyon eklediyse (istemediğin)
- Tüm dosyayı yeniden yazdıysa

### Gemini yine de tüm kodu yazdıysa — bunu söyle:
```
Hayır. Sadece değişmesi gereken satırları göster.
Satır numarasıyla birlikte, ÖNCE/SONRA formatında.
```

---

## ADIM 4 — GÜVENLE UYGULA

Gemini çıktısı güvenli görünüyorsa, üç yöntemden birini seç:

### Yöntem 1 — Yan Yana Karşılaştırma (En Güvenli)
1. Gemini çıktısını kopyala
2. `temp_check.kt` adında yeni boş dosya aç
3. Çıktıyı oraya yapıştır
4. Orijinal dosyayı yanına aç: sağ tık → `Split Right`
5. Gözle karşılaştır, sadece değişen satırları orijinale yaz
6. `temp_check.kt`'yi sil

### Yöntem 2 — Find & Replace (Hızlı)
1. `Ctrl+R` → Find & Replace
2. "Find": eski kodu yapıştır
3. "Replace": yeni kodu yapıştır
4. **"Replace All" değil** → tek seferlik "Replace"

### Yöntem 3 — Satıra Git (Tek satır değişiklik)
1. `Ctrl+G` → satır numarasını gir
2. O satırı elle değiştir
3. Başka hiçbir şeye dokunma

### Uyguladıktan sonra:
```
Ctrl+F9  →  Derle
```
- Hata gittiyse → `git commit -m "fix: [hata açıklaması]"`
- Yeni hata çıktıysa → Adım 5'e geç

---

## ADIM 5 — GERİ ALMA (Bir şeyler bozulduysa)

### Hızlı geri al:
```
Ctrl+Z  (birden fazla kez)
```

### Local History ile kurtar:
```
Dosyaya sağ tık → Local History → Show History
→ Gemini'ye göndermeden önceki saati bul → Revert
```

### Git ile kurtar:
```bash
# Sadece bu dosyayı son commit'e döndür
git checkout -- MainActivity.kt

# Belirli commit'e dön
git log --oneline
git checkout [commit_id] -- [dosya.kt]
```

---

## PROJE ÖZEL NOTLAR

### Bu projedeki kritik dosyalar (ekstra dikkat):
| Dosya | Neden kritik |
|-------|-------------|
| `MainActivity.kt` | 5×2 grid düzeni — bozulursa tüm UI çöker |
| `AdbBridgeService.kt` | İzin enjeksiyonu — bozulursa uygulama çalışmaz |
| `LauncherSettingsActivity.kt` | Terminal + ADB kontrolleri |
| `UpdateManager.kt` | `versionCode` mantığı — bozulursa sonsuz döngü |
| `CheryAccessibilityService.kt` | Home/Back jestleri |

### Gemini'ye ASLA gönderme:
- Tüm `MainActivity.kt` (800+ satır)
- `PROJECT_CONSTRAINTS.md` içeriğini (kural olarak ver, kod olarak değil)
- Birden fazla dosyayı aynı anda

### Gemini'ye sormadan önce kontrol et:
`KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md` — aynı sorun daha önce çözülmüş olabilir.

---

## HIZLI REFERANS KARTI

```
Hata var
  ↓
git commit -m "before-gemini: [hata]"
  ↓
Sadece hatalı bloğu seç (tüm dosyayı değil)
  ↓
Şablonu kopyala → boşlukları doldur → Gemini'ye gönder
  ↓
Çıktı 1-5 satır mı?
  ├─ EVET → Apply veya Yöntem 2/3 ile uygula
  └─ HAYIR → "Sadece değişen satırları göster" de → tekrar iste
        ↓
Ctrl+F9 ile derle
  ├─ Başarılı → git commit -m "fix: [hata]"
  └─ Hata → Ctrl+Z veya Local History → Revert
```
