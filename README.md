# Omoda 5 Launcher — Proje Dokümantasyon Haritası
**Güncel Versiyon:** 9.0.0 | **Platform:** AAOS API 29 | **Cihaz:** Semidrive

---

## Hızlı Başlangıç

**Yeni bir AI asistan mısın?** → `AGENTS.md`'yi oku, sonra `PROJECT_CONSTRAINTS.md`'yi oku.

**Bir hata çözecek misin?** → Önce `KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md`'ye bak, aynı sorun daha önce çözülmüş olabilir.

**Android Studio'da Gemini kullanıyor musun?** → `IDE_ANDROID_STUDIO_RULES.md`'deki Gemini bölümünü oku.

---

## Dosya Haritası

```
📁 Proje Kökü
│
├── AGENTS.md                         ← AI anayasası, altın kurallar, referans haritası
├── PROJECT_CONSTRAINTS.md            ← Değiştirilemeyen teknik kurallar (tek kaynak)
├── AGENT_SKILLS.md                   ← Bileşenler, ADB komutları, sınırlamalar
├── CHANGELOG.md                      ← Tüm sürüm geçmişi
├── KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md ← Kronik sorun çözüm arşivi
│
├── IDE_ANDROID_STUDIO_RULES.md       ← Android Studio + Gemini kuralları
├── IDE_VSCODE_RULES.md               ← VS Code / Cursor kuralları
│
├── MEDIA_TASARIM.md                  ← Medya widget mimarisi ve kodu
├── ARAC_VERISI_ERISIM_REHBERI.md     ← VHAL erişim sınırları (normal vs system app)
│
└── [KALDIRILDI] AGENT_INSTRUCTIONS.md  → AGENTS.md ile birleştirildi
```

---

## Hangi Dosyayı Ne Zaman Açarsın?

| Durum | Aç |
|-------|----|
| AI'a proje tanıtacaksın | `AGENTS.md` → `PROJECT_CONSTRAINTS.md` |
| Teknik değer/komut arayışı | `PROJECT_CONSTRAINTS.md` veya `AGENT_SKILLS.md` |
| "Bu hata daha önce çözüldü mü?" | `KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md` |
| Ne zaman ne değişti? | `CHANGELOG.md` |
| Araç verisi okumak istiyorsun | `ARAC_VERISI_ERISIM_REHBERI.md` |
| Medya widget geliştirme | `MEDIA_TASARIM.md` |
| Gemini kodu bozdu | `IDE_ANDROID_STUDIO_RULES.md` → Gemini bölümü |

---

## Güncelleme Kuralı

Bir şeyi değiştirdiğinde:
1. `PROJECT_CONSTRAINTS.md`'deki ilgili değeri güncelle
2. `CHANGELOG.md`'ye ekle
3. Sorun çözdüysen `KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md`'ye ekle
