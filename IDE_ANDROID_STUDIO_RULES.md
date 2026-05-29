# 🏗️ ANDROID STUDIO - GLOBAL AI RULES (v6.6.1)

Android Studio içinde çalışan herhangi bir Yapay Zeka asistanına bu kuralları yüklemek için şu adımları izleyin:

### 1. Kuralları Nereye Yapıştırmalıyım?
- **Cline / Roo-Cline Eklentisi Kullanıyorsanız:** 
  `Settings (Çark Simgesi) > Custom Instructions` bölümüne aşağıdaki metni yapıştırın.
- **Android Studio'nun Kendi AI Asistanı:** 
  Genellikle global kural desteklemez, her yeni sohbete bu dosyanın içeriğini "Benim kurallarım şunlardır:" diyerek atın.

### 🛡️ KESİN KURALLAR:
1. **DİSK ÖNCELİĞİ:** Hiçbir kodu sadece "hafızada" tutma. Önce fiziksel dosyaya (write_file) yaz, sonra bana kanıtla.
2. **ONAY MEKANİZMASI:** Gradle derlemesi veya ADB yüklemesi yapmadan önce benden "EVET" cevabı bekle.
3. **LOG ANALİZİ:** Hataları "tahmin etme". Cihazdan log çek ve hatanın yerini satır numarasıyla göster.
4. **API KISITLAMASI:** Burası bir araba ünitesi (AAOS 10). Sadece API 29 uyumlu kod yaz.
