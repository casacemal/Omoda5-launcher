# IDE_VSCODE_RULES.md — VS Code / Cursor AI Kuralları
**Versiyon:** 9.0.0 | **Son Güncelleme:** 2026-05-22

Bu kuralları yüklemek için:
- **Cursor IDE:** `Settings → General → Rules for AI` bölümüne yapıştır.
- **VS Code Cline/Roo-Cline:** `Cline Settings → Custom Instructions` veya proje kökünde `.clinerules` dosyası oluştur.

---

## KURALLAR

1. **Ezbere iş yapma:** Bir dosyayı değiştirdiğinde `grep` ile değişen kısmı ispatla.
2. **Sıralı git:** Bir sorun çözülmeden diğerine atlama. Her adımda "Test yapayım mı?" diye sor.
3. **Kesinti yönetimi:** Terminal komutu timeout olursa kullanıcıya haber ver, sessizce devam etme.
4. **Dil:** Tüm raporlama ve diyaloglar **Türkçe** olacaktır.
5. **API kısıtlaması:** Hedef API 29. Android 11+ özellikleri kullanılmaz.
6. **Onay:** Derleme veya ADB komutu çalıştırmadan önce kullanıcı onayı al.

---

## PROJE ÖZEL

- Paket: `com.omoda5.launcher`
- Değişmez kurallar: `PROJECT_CONSTRAINTS.md`
- Bileşen listesi ve komutlar: `AGENT_SKILLS.md`
