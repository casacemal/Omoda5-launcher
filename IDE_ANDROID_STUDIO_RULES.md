# IDE_ANDROID_STUDIO_RULES.md — Android Studio AI Kuralları
**Versiyon:** 9.0.0 | **Son Güncelleme:** 2026-05-22

Bu kuralları Android Studio'daki AI asistana yüklemek için:
- **Gemini Chat:** Her yeni sohbetin başına bu dosyayı "Kurallarım şunlardır:" diyerek yapıştır.
- **Cline / Roo-Cline:** `Settings → Custom Instructions` bölümüne yapıştır.

---

## 1. TEMEL KURALLAR

1. **Disk önceliği:** Kodu sadece hafızada tutma. Önce dosyaya yaz (`write_file`), sonra `grep` ile kanıtla.
2. **Onay mekanizması:** Gradle derlemesi veya ADB yüklemesi yapmadan önce "EVET" cevabı bekle.
3. **Log analizi:** Hataları tahmin etme. Cihazdan log çek, satır numarasıyla göster.
4. **API kısıtlaması:** Bu bir araba ünitesi (AAOS API 29). Sadece API 29 uyumlu kod yaz.
5. **Sıralı git:** Bir sorun çözülmeden diğerine geçme.
6. **Özellik koruma:** Eski sürümdeki (Legacy) kabiliyetleri eksiltmeden taşı.

---

## 2. GEMİNİ KURALLARI (KRİTİK)

### Sorun
Gemini Chat, hata düzeltirken tüm sınıfı/dosyayı yeniden yazar ve mevcut kodu siler.

### Zorunlu Kurallar

- Gemini'ye **"düzelt"** veya **"fix"** deme. Aşağıdaki şablonları kullan.
- **Apply butonuna hemen basma.** Çıktıyı önce oku, sadece değişen satırı manuel uygula.
- Gemini'ye göndermeden önce mutlaka: `git commit` veya Local History timestamp'ini not al.
- Gemini tüm sınıfı yazdıysa → Apply'a **asla basma**, farkı elle uygula.

### Gemini Prompt Şablonları

**Hata mesajı için:**
```
Şu hatayı düzelt: [HATA MESAJI]

Hatalı satır:
[SADECE HATALI KODU YAPISTIR]

KURALLAR:
- Tüm dosyayı/sınıfı yeniden yazma
- Sadece değişen satırları göster
- Format: ÖNCE: [eski] / SONRA: [yeni]
```

**Derleme hatası için:**
```
Derleme hatası: [HATA]
Hatalı blok: [MAX 10-15 SATIR]

Sadece bu bloğu düzelt. Başka yere dokunma.
```

**Gemini yine de tüm kodu yazdıysa:**
```
Hayır. Sadece değişen 1-3 satırı, satır numarasıyla göster.
```

### Güvenli Uygulama Adımları

1. Gemini çıktısını kopyala
2. Yeni geçici dosya aç (`temp_check.kt`)
3. Çıktıyı oraya yapıştır, orijinalle karşılaştır (Split Editor)
4. Sadece değişen satırları orijinale uygula
5. Geçici dosyayı sil
6. `Ctrl+F9` ile derle, test et

### Kod Silindiyse Kurtarma

```
Dosyaya sağ tık → Local History → Show History → Revert
```

veya

```bash
git checkout -- [dosya_adi].kt
```

---

## 4. TEKNİK HATA ÖNLEME PROTOKOLLERİ (VHAL & REVERSE ENG)

Bu bölüm, AI'nın "Token Tasarrufu" ve "Özetleme" alışkanlığı sonucu oluşan veri kayıplarını engellemek içindir.

### 4.1. Özetleme Yasağı (No Summarization)
- **Teknik Hata:** AI, uzun dosyalarda veya smali analizlerinde "mantığı anladım" diyerek tabloya döker ve ham veriyi eksiltir.
- **Kural:** Tersine mühendislik verileri (Property ID, Metod İsimleri) dökümante edilirken **ASLA** özet yapılamaz. Her bir ID, ham haliyle (0x...) ve orijinal metod adıyla listelenmek zorundadır.

### 4.2. Ellipsis (...) Kullanım Felaketi
- **Teknik Hata:** `replace_file_content` içinde kullanılan `...` API tarafından literal string olarak algılanır ve orijinal kodun binlerce satırını siler.
- **Kural:** Kod blokları arasında `...` kullanımı **KESİNLİKLE YASAKTIR**. Değişim yapılacaksa blok tam yazılmalıdır. Eğer dosya çok karmaşıksa `write_file` ile atomik (bütünsel) yazım tercih edilmelidir.

### 4.3. Buffer ve Context Senkronizasyonu
- **Teknik Hata:** AI'nın bağlam penceresi (Context Window) dolduğunda dosyanın başını veya sonunu unutarak eksik yazım yapması.
- **Kural:** Yazma işleminden hemen sonra `read_file` ile dosya boyutu/satır sayısı kontrol edilmelidir. Ciddi bir satır kaybı varsa otomatik **REVERT** (Geri Alma) yapılmalıdır.

### 4.4. Cemal'in Saha Notları Önceliği
- Kullanıcının `omoda5 kitap` altındaki her bir dökümanı "Teknik Kanun" niteliğindedir.
- Smali'den gelen ham veri ile kullanıcının saha notu çakışırsa, kullanıcının saha notu (örn: tuş kodları, log farkları) esas alınır.
