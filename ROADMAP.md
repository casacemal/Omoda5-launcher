# ROADMAP.md - Geliştirme Planı

## Faz 1: Altyapı (Tamamlandı)
- [x] Proje dizin yapısı oluşturuldu
- [x] 9 katmanlı mimari dizinleri hazırlandı
- [x] Core Event modeli (EventBus) temel yapısı
- [x] AssistantController ile iş mantığı ayrıştırıldı

## Faz 2: Vehicle Layer (Tamamlandı)
- [x] CarPropertyManager entegrasyonu (Dumpsys Fallback)
- [x] VehicleProvider ile hibrit telemetri yönetimi
- [x] Dumpsys fallback mekanizması aktif

## Faz 3: Context Engine (Tamamlandı)
- [x] Sürüş modları (PARKED, CITY, HIGHWAY, TRAFFIC, RISK) algılama

## Faz 4: Intent Engine / Command Router (Tamamlandı)
- [x] Türkçe anahtar kelime ve Regex tabanlı niyet tanıma
- [x] Araç komutları (klima, medya, ses) yerel eşleştirme
- [x] "Araç komutları LLM'ye bırakılmaz" prensibi entegre edildi
- [x] AgentManager ve AssistantController ile entegrasyon tamamlandı

## Faz 5: Policy Engine (Tamamlandı)
- [x] Hız kontrolü (>5 km/h ise kısıtlama)
- [x] Güvenlik kuralları entegrasyonu

## Faz 6: Audio Engine (Tamamlandı)
- [x] Audio focus yönetimi (ALERT > AI > NAV > MUSIC)
- [x] Ducking altyapısı ve merkezi kontrol

## Faz 7: Alert & Event Engine (Tamamlandı)
- [x] TPMS, yakıt, kapı uyarıları takibi
- [x] Kritik uyarılarda sesli anons entegrasyonu

## Faz 8: AI Client (Hermes) - (Tamamlandı)
- [x] STT entegrasyonu ve stabilizasyonu (Hermes/Groq)
- [x] LLM pipeline (Gelişmiş Fonksiyon Çağırma ve Karar Motoru)
- [x] TTS entegrasyonu (Edge/Hermes)

## Faz 9: Driving Analysis Engine (Tamamlandı)
- [x] Sürüş sonrası özet ve verimlilik analizi
- [x] Sert fren ve sürüş skoru hesaplama
- [x] Trip summary anons entegrasyonu
