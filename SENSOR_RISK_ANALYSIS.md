# Omoda 5 VHAL Sensör Risk Sınıflandırması ve Güvenlik Protokolü

Bu doküman, Omoda 5 (AAOS / VHAL) sisteminde tespit edilen ve kullanılan tüm araç sensörlerinin ve kontrol mülklerinin risk düzeylerini, güvenlik protokollerini ve AI Agent kullanım kısıtlamalarını tanımlar.

---

## 🟢 1. Güvenli Okuma Sensörleri (Read-Only / Risk Sınıfı: DÜŞÜK)

Bu sensörler araçtan **sadece veri okur** (salt-okunur). Elektronik kontrol ünitelerine (ECU) hiçbir tetikleme veya komut göndermezler. Kod döngülerinde ve UI ekranlarında kullanımı **%100 GÜVENLİDİR**.

| Hex Property ID | VHAL Sembol Adı | Türkçe Etiket | Okunan Format / Birim |
| :--- | :--- | :--- | :--- |
| `0x11600207` | `PERF_VEHICLE_SPEED` | Araç Hızı | `float` (km/h) |
| `0x11600305` | `ENGINE_RPM` | Motor Devri | `float` (RPM) |
| `0x21402006` | `CURRENT_GEAR` | Mevcut Vites | `int` (P, R, N, D, D1-D3) |
| `0x11200305` | `ENGINE_COOLANT_TEMP` | Motor Soğutma Suyu (Hararet) | `float` (°C) |
| `0x11200301` | `ENGINE_OIL_TEMP` | Motor Yağ Sıcaklığı | `float` (°C) |
| `0x11600703` | `ENV_OUTSIDE_TEMPERATURE` | Dış Ortam Sıcaklığı | `float` (°C) |
| `0x11600307` | `FUEL_LEVEL` | Kalan Yakıt Seviyesi | `float` (Litre) |
| `0x11600308` | `REMAINING_RANGE` | Kalan Menzil | `float` (km) |
| `0x11600309` | `EV_BATTERY_LEVEL` | EV Batarya Seviyesi | `float` (%) |
| `0x11600204` | `ODOMETER` | Toplam Kilometre | `float` (km) |
| `0x11400b02` | `ABS_ACTIVE` | ABS Fren Durumu | `int` (1=Aktif, 0=Pasif) |
| `0x11400b03` | `TRACTION_CONTROL_ACTIVE` | Çekiş Kontrolü (ESP/TCS) | `int` (1=Aktif, 0=Pasif) |
| `0x11400b00` | `TURN_SIGNAL_STATE` | Sinyal Kolu Konumu | `int` (1=Sağ, 2=Sol, 4=Flaşör) |
| `0x11200402` | `HEADLIGHTS_STATE` | Far Durumu | `int` (1=Açık, 0=Kapalı) |
| `0x21402000` | `DOOR_OPEN_WARNING` | Kapı Açık İkazı | `int` (Zone: Sürücü, Yolcu vb.) |
| `0x21402012` | `DOOR_DRIVER` | Ön Sol Kapı Durumu | `int` (1=Açık, 0=Kapalı) |
| `0x21402013` | `DOOR_PASSENGER` | Ön Sağ Kapı Durumu | `int` (1=Açık, 0=Kapalı) |
| `0x21402014` | `DOOR_REAR_LEFT` | Arka Sol Kapı Durumu | `int` (1=Açık, 0=Kapalı) |
| `0x21402016` | `DOOR_REAR_RIGHT` | Arka Sağ Kapı Durumu | `int` (1=Açık, 0=Kapalı) |
| `0x21402015` | `DOOR_TRUNK` | Bagaj Kapağı Durumu | `int` (1=Açık, 0=Kapalı) |
| `0x21402005` | `DRIVE_MODE` | Sürüş Modu Durumu | `int` (ECO, SPORT, SNOW, MUD) |

---

## 🟡 2. Kontrol ve Müdahale Sensörleri (Risk Sınıfı: ORTA — UI ONAYI ŞART)

Bu mülkler araç konfor ve iklimlendirme sistemlerini **değiştirir/tetikler**. Araç dururken veya sürüş esnasında dikkatsiz kullanımı sürücü konforunu etkileyebileceğinden, App arayüzünden tetiklenmeden önce ekranda **`SafetyConfirmationDialog`** ikazı çıkması ve kullanıcıdan **manuel onay** alınması zorunludur.

| Hex Property ID | VHAL Sembol Adı | Türkçe Açıklama | UI İkaz Koşulu |
| :--- | :--- | :--- | :--- |
| `0x21401002` | `HVAC_POWER_ON` | Klima Güç Açma/Kapama | Ekran Uyarısı + Kullanıcı Onayı |
| `0x21401008` | `HVAC_TEMPERATURE_DRIVER` | Sürücü Klima Sıcaklığı Ayarı | Ekran Uyarısı + Kullanıcı Onayı |
| `0x21401009` | `HVAC_TEMPERATURE_PASSENGER` | Yolcu Klima Sıcaklığı Ayarı | Ekran Uyarısı + Kullanıcı Onayı |
| `0x21401005` | `HVAC_FAN_SPEED` | Klima Fan Hızı Ayarı | Ekran Uyarısı + Kullanıcı Onayı |
| `0x2140101e` | `HVAC_FRONT_DEFROST` | Ön Cam Rezistansı Kontrolü | Ekran Uyarısı + Kullanıcı Onayı |
| `0x2140101f` | `HVAC_REAR_DEFROST` | Arka Cam Isıtması Kontrolü | Ekran Uyarısı + Kullanıcı Onayı |
| `0x1540050b` | `SEAT_HEATING_LEVEL` | Koltuk Isıtma Seviyesi | Ekran Uyarısı + Kullanıcı Onayı |
| `0x15400513` | `SEAT_COOLING_LEVEL` | Koltuk Soğutma Seviyesi | Ekran Uyarısı + Kullanıcı Onayı |

---

## 🔴 3. Yüksek Riskli Sensörler ve Müdahaleler (Risk Sınıfı: YÜKSEK — KODA YAZMA YASAK)

> [!CAUTION]
> **HAYATİ GÜVENLİK UYARISI:**
> Aşağıdaki mülkler aracın hayati mekanik ve güvenlik sistemlerini (Hava Yastığı, Park Freni, Kontak, Cam/Sunroof Zorlama, Kapı Kilitleri) kontrol eder.
> 1. Bu mülklere **YAZMA (SET_PROPERTY) KOMUTU KOD TABANINA KESİNLİKLE EKLENMEYECEKTİR.**
> 2. Otonom yapay zeka ajanlarının (Hermes, LLM Subagent'ları) bu mülkleri tetiklemesi **MUTLAK ŞEKİLDE YASAKLANMIŞTIR.**

| Hex Property ID | VHAL Sembol Adı | Risk Nedeni | Yasaklama Kapsamı |
| :--- | :--- | :--- | :--- |
| `0x21103034` | `AP_POWER_STATE_REQ` / Airbag | Hava yastığı & Kaza güç senkronizasyonu | **Yazma / Tetikleme Yasak 🔴** |
| `0x11400402` | `PARKING_BRAKE_WRITE` | Seyir halinde park freni bırakma/çekme riski | **Yazma / Tetikleme Yasak 🔴** |
| `0x11400b01` | `IGNITION_STATE_WRITE` | Hareket halinde motoru/kontağı kesme riski | **Yazma / Tetikleme Yasak 🔴** |
| `0x16200b02` | `DOOR_LOCK_WRITE` | Sürüş esnasında kilitlerin aniden açılması | **Yazma / Tetikleme Yasak 🔴** |
| `0x13400bc0` | `WINDOW_SUNROOF_WRITE` | Sıkışma riski, cam/sunroof zorlama | **Yazma / Tetikleme Yasak 🔴** |

---

## 🤖 AI Agent Kullanım Protokolü

* **Otonom İşlem Yasağı:** Yapay zeka ajanları (Hermes, Subagent'lar) sadece **DÜŞÜK RİSK (🟢 Read-Only)** kategorisindeki sensörleri okuyup kullanıcıya bilgi verebilir.
* **Orta Riskli Eylemlerde Sürücü İzni:** AI agent bir klima değişikliği önerdiğinde, işlem doğrudan araca gönderilmez; ekranda `SafetyConfirmationDialog` ikazı açılır ve kullanıcının fiziksel dokunuşu beklenir.
* **Yüksek Riskli Eylemlerde Tam Blokaj:** AI agent'ların yüksek riskli komutları çalıştırma istekleri kod katmanında reddedilir.
