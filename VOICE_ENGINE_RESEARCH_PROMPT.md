# 🎙️ Omoda 5 Ses Motoru Araştırma Promptu

Bu dosya, Omoda 5 (AAOS 10) projesi için en uygun çevrimdışı ses motorunu bulmak amacıyla hazırlanmıştır.

---

### Araştırma Metni (Kopyala/Yapıştır):

"Android Automotive OS 10 (API 29) tabanlı, Google Play Servisleri (GMS) içermeyen bir araç ünitesi (Semidrive chery_t19c) için **tamamen çevrimdışı (offline) çalışabilen Türkçe (tr-TR) Speech-to-Text (STT)** çözümü arıyorum. 

**Cihaz Kısıtlamaları:**
1. **OS:** Android 10 (API 29) - Modern Android 12+ kütüphaneleri çalışmayabilir.
2. **GMS:** Yok (Google Sesli Arama veya Google Speech Services kullanılamaz).
3. **CPU/RAM:** Sınırlı (Gömülü sistem kaynaklarını tüketmemeli).
4. **Bağlantı:** İnternet erişimi her zaman mevcut değil.

**İhtiyaçlarım:**
- **Vosk, Sherpa-ONNX, Pocketsphinx veya Mozilla DeepSpeech** gibi kütüphanelerin API 29 ve Türkçe dil modelleriyle performansı nasıldır?
- Chery'nin orijinalinde kullandığı **Cerence (Nuance)** motoruna dışarıdan bir Intent veya SDK ile erişim sağlamak mümkün müdür?
- Hafif (Lightweight), `libvosk.so` veya benzeri `.so` kütüphaneleriyle Android projesine (Kotlin/Compose) kolayca entegre edilebilecek alternatifler nelerdir?
- Bu donanımda (ARM64-v8a) en düşük gecikme (latency) süresine sahip, 'Klimayı aç' gibi kısa komutları en iyi tanıyan motor hangisidir?

Lütfen bana teknik karşılaştırma, varsa GitHub kütüphane linkleri ve Android Studio için gerekli `.aar` veya Maven bağımlılıklarını içeren bir rapor sun."
