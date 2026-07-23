# SENSÖR_STANDARTLARI.md - VHAL Veri Yönetim Protokolü

Bu doküman, araçtan (VHAL) gelen verilerin `GlobalState.vehicleDataValues` içerisinde nasıl saklanacağını ve UI tarafından nasıl tüketileceğini standartlaştırır.

## 1. Veri Depolama Yapısı
Tüm araç verileri `GlobalState.vehicleDataValues` (Map<String, String>) içerisinde saklanır. Bir veri güncellendiğinde, haritaya (Map) birden fazla anahtar (multi-key) ile yazılır.

## 2. Anahtar (Key) Hiyerarşisi
Her sensör verisi için aşağıdaki 3 tip anahtar zorunludur veya opsiyoneldir:

### A. Birincil Anahtar: HEX_ID (Zorunlu)
- **Format:** 8 haneli küçük harf hex string (Örn: `"11600207"`)
- **Kapsam:** Her sensörün değişmez, teknik kimliğidir.
- **Kullanım:** Teknik analiz ve ham veri takibi için kullanılır.

### B. İkincil Anahtar: STANDART_ALIAS (Kritik Sensörler İçin Zorunlu)
- **Format:** Büyük harf, İngilizce veya Türkçe standart kısaltma (Örn: `"HIZ"`, `"GEAR"`, `"RPM"`)
- **Kapsam:** UI Widget'larının kod bağımlılığını azaltmak için kullanılır.
- **Kullanım:** `PremiumCarWidget`, `ClimateWidget` gibi ana bileşenler sadece bu anahtarları dinler.

### C. Etiket Anahtarı: LABEL (Zorunlu)
- **Format:** `VehicleController.PROPERTY_DEFINITIONS` içinde tanımlanan Türkçe etiket (Örn: `"Araç Hızı"`)
- **Kapsam:** İnsan tarafından okunabilirlik sağlar.
- **Kullanım:** `SensorMonitorScreen` ve log ekranlarında başlık olarak kullanılır.

## 3. Takma Adı (Alias) Olmayan Sensörler
Eğer bir sensör `VehicleController` içinde özel bir `alias` grubuna dahil edilmemişse:
1. Sadece **HEX_ID** ve **LABEL** anahtarlarıyla saklanır.
2. UI bileşenleri bu verilere erişmek için **HEX_ID** kullanmak zorundadır.
3. Bu sensörler "Pasif Sensör" olarak kabul edilir (Örn: `"Toplam KM"`, `"Dörtlü Flaşör"`).

## 4. Standart Alias Tablosu (Master List)

| Kategori | Standart Alias | Hex ID | Açıklama |
| :--- | :--- | :--- | :--- |
| Hareket | `HIZ`, `SPEED` | `11600207` | Araç hızı (km/h) |
| Motor | `RPM`, `DEVİR` | `11600305` | Motor devri |
| Şanzıman | `GEAR`, `VİTES` | `21402006` | Mevcut vites (P, R, N, D...) |
| Kapılar | `KAPI_FL`, `KAPI_FR`, `KAPI_RL`, `KAPI_RR`, `BAGAJ` | `214020*` | Kapı açık/kapalı durumları |
| Klima | `AC_TEMP_D`, `AC_TEMP_P`, `SICAKLIK` | `21401008` | Klima sıcaklık ayarları |
| Enerji | `YAKIT`, `FUEL`, `BATARYA`, `BATTERY` | `1160030*` | Enerji seviyeleri |
| Çevre | `DIŞ_ISI`, `OUTSIDE_TEMP` | `11600703` | Dış ortam sıcaklığı |

## 5. UI Geliştirme Kuralı
UI geliştiricileri veri okurken her zaman şu sırayı (Fallback Chain) izlemelidir:
`data["ALIAS"] ?: data["HEX_ID"] ?: data["LABEL"] ?: "Varsayılan"`

---
**Not:** Yeni bir kritik sensör eklendiğinde bu dokümana alias eklenmesi zorunludur.
