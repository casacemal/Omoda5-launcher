# AAOS Launcher Plan

Bu plan, klasorde bulunan demo kodlari ve paylasilan tasarim notlari okunarak hazirlandi.
Hedef: Omoda 5 / AAOS uzerinde calisan, mevcut gorunumu koruyan ama uretime yaklasan bir launcher ve sesli asistan yapisi.

## 1. Okunan kaynaklar

- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/MainActivity_0a5932fa-f588-4cd3-9b89-5a19dfb184ff.kt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/VoiceAssistantService_159cffdf-052a-49af-9934-79ff818f5641.kt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/WaveOverlayView_c4b1a0cc-9fdd-4d33-a828-4a4b142c6ac7.kt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/OpenAIManager_5969a3a1-2125-404e-97de-8126a0bcb1c4.kt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/DemoAdbClient_bc58384d-a8a1-49f0-a0b9-b113308acc85.kt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/_b95d21b0-8790-421b-bd2c-0e880302dadb.txt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/_638c3ae9-0843-4095-8db9-27428c58435d.txt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/_459cf572-bf27-4460-93fb-0d168c1088ec.txt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/attachments/_496c7e76-7fb4-4147-a6c1-e1566ee408e7.txt`
- `shared-conversation-link---claude-2026-06-11T17-45-22/files/other/Android Automotive OS Yerel ve Yapay Zeka Destekli Sesli Asistan Projesi.pdf`

## 2. Kisa sonuc

Mevcut tasarim sabit kalacak:

- yuze yaklasan dark/glass gorunum
- sesli asistan overlay akisi
- direksiyon tusu ile tetikleme
- offline ve online STT modu
- AAOS uyumlu arka plan servis yapisi

Ama sistem daha duzgun bolunerek guclendirilecek:

- vehicle veri katmani
- command router
- audio policy
- AI/STT/TTS ayrimi
- overlay lifecycle kontrolu
- ADB / shell fallback izolasyonu

## 3. Mevcut durumdan cikan ana gercekler

- `MainActivity` su an bir ayar ekranı gibi calisiyor, servis baslatip mod seciyor.
- `VoiceAssistantService` gercek calisma akisini tasiyor: broadcast receiver, overlay, amplitude polling, kayit ve TTS.
- `WaveOverlayView` sadece ses dalga gorsellestirmesi ve durum metni icin kullaniliyor.
- `OpenAIManager` STT, LLM ve TTS akisini tek sinifta toplamis; bu calisiyor ama buyuyunce ayrismasi gerekiyor.
- `DemoAdbClient` yerel shell / ADB fallback icin kullanilabilir, ama ana akisin disinda kalmali.
- Blueprint notlari tek yonlu bir prensip veriyor: `Everything = Event`, UI state mutation dogrudan olmamali, oncelik CarPropertyManager + fallback.

## 4. Hedef mimari

```text
LauncherApp
  -> MainActivity / Settings UI
  -> VoiceAssistantService
  -> Event/Core Layer
  -> Vehicle Layer
  -> Command Router
  -> Audio Engine
  -> AI Client / STT / TTS
  -> Overlay UI
```

### 4.1 UI katmani

- Ana gorunum mevcut stilini korur.
- Glassmorphism ve koyu tema korunur.
- Dashboard, mod secimi ve durum kartlari tek ekranda kalabilir.
- AAOS ekran oranlarina gore responsive calismali.

### 4.2 Event/Core katmani

- Tanimlanmis event tipleri ile calisir.
- Servis, UI, vehicle ve AI akisi birbirini direkt cagirmak yerine event uretir.
- Tek kaynakli state modeli kullanilir.

### 4.3 Vehicle katmani

- Oncelik: `CarPropertyManager`.
- Ikinci seviye: `dumpsys car_service` / shell fallback.
- Son seviyede: heuristic / cached snapshot.
- Data modeli: speed, rpm, gear, door, climate, fuel, warning.

### 4.4 Command Router

- Ses metni once kurallara göre analiz edilir.
- Araç komutlari LLM'ye birakilmaz.
- Bilgi / sohbet / genel soru ise AI'ye gider.

### 4.5 Audio katmani

- Medya, asistan sesi ve kritik alarm sesleri ayrilir.
- Audio focus ve ducking kurallari merkezi olur.
- TTS bitince medya geri gelir.

### 4.6 AI katmani

- STT, LLM ve TTS ayrik hizmetler olur.
- `OpenAIManager` icindeki URL ve anahtarlar ayrilir.
- Network olmayan durumda offline yol calismaya devam eder.

### 4.7 Overlay katmani

- `WaveOverlayView` korunur.
- Kayit, dinleme, isleme, hazir durumlari net sekilde gosterilir.
- Overlay gostermek ve kaldirmak servis tarafindan yonetilir.

## 5. Degistirilmeyecek seyler

- Gorunum genel olarak ayni kalacak.
- Sesli tetikleme mantigi kalacak.
- Offline calisma destegi kalacak.
- AAOS cihazda arka plan servis mantigi kalacak.
- ADB / shell fallback tamamen atilmayacak.

## 6. Iyilestirme listesi

1. `OpenAIManager` icindeki STT, LLM ve TTS islerini ayri siniflara bol.
2. `VoiceAssistantService` icindeki UI kontrolu ile is mantigini ayir.
3. `DemoAdbClient` icin timeout ve worker-thread garantisi ekle.
4. `VehicleLayer` icin primary/fallback kaynak zinciri kur.
5. `CommandRouter` ile arac komutlarini AI'den ayir.
6. `SettingsManager` icindeki URL ve API anahtarlarini netlestir.
7. Overlay durum metinlerini event tabanli hale getir.
8. Main thread uzerinde bloklayan IO'yu kaldir.

## 7. AAOS uyum kurallari

- Ana thread'de network yok.
- Arac kontrolu LLM kararina birakilmaz.
- Sadece okuma ve izleme mantigi kullanilir.
- Foreground service yasam dongusu net tutulur.
- Overlay izinleri kontrol edilir.
- Sistem bozulursa degrade mode calisir.

## 8. Uygulama sirasi

1. Mevcut demo akisi bozmadan klasorleri ayir.
2. Core event modelini olustur.
3. Vehicle layer ve fallback zincirini ayir.
4. Command router'i ekle.
5. Audio policy katmanini cikart.
6. AI client'i bol.
7. Overlay ve service lifecycle'i temizle.
8. Ayar ve profil ekranini sabitle.
9. Son olarak AAOS cihazda test et.

## 9. Kabul kriterleri

- Launcher aciliyor.
- Servis basliyor ve kapanmiyor.
- Direksiyon tusu ile kayit basliyor.
- Ses dalga overlay'i gorunuyor.
- STT offline modda calisiyor.
- Online modda AI cevap verebiliyor.
- Araç komutlari router uzerinden gidiyor.
- Yavas / kopuk network'te uygulama cokmuyor.
- AAOS ekraninda UI tasma yapmiyor.

## 10. Riskler

- `dumpsys` formatinin OEM'e gore degismesi.
- Tek sinif icinde fazla sorumluluk birikmesi.
- Overlay izinlerinin cihazda farkli davranmasi.
- ADB fallback'in sadece debug/userdebug cihazlarda anlamli olmasi.
- MediaRecorder / ses format uyumsuzlugu.

## 11. Su anki plan uyumu

Bu plan, okunan dosyalardaki ana hedeflerle uyumludur:

- tasarim korunuyor
- AAOS gercegi dikkate aliniyor
- offline-first calisma korunuyor
- command routing blueprint ile ayni kalıyor
- privilege / fallback mantigi kabul ediliyor

Eksik olan kisim:

- repository icinde henüz gercek launcher kaynak kodu yok
- bu nedenle plan su an tasarim ve uygulanacak yol haritasi seviyesinde

## 12. Sonraki dogrulama

- Kaynak kod eklendiginde bu plan satir satir kod yapisina cevrilecek.
- Sonraki adimda her ana modul icin klasor ve sinif haritasi cikartilacak.
- Uygulama bittikten sonra bu plan tekrar kontrol edilip sapma var mi bakilacak.
