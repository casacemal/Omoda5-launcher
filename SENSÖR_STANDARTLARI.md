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

| Kategori | Standart Alias (Kısaltmalar) | Hex ID | Açıklama |
| :--- | :--- | :--- | :--- |
| Hareket | `HIZ`, `SPEED` | `11600207` | Araç hızı (km/h) |
| Motor | `DEVİR`, `RPM` | `11600305` | Motor devri |
| Şanzıman | `VİTES`, `GEAR` | `21402006` | Mevcut vites (P, R, N, D...) |
| Kapı FL | `KAPI (SOL ÖN)`, `ÖN SOL KAPI`, `KAPI_FL` | `21402012` | Ön Sol Kapı |
| Kapı FR | `KAPI (SAĞ ÖN)`, `ÖN SAĞ KAPI`, `KAPI_FR` | `21402013` | Ön Sağ Kapı |
| Kapı RL | `KAPI (SOL ARKA)`, `ARKA SOL KAPI`, `KAPI_RL` | `21402014` | Arka Sol Kapı |
| Kapı RR | `KAPI (SAĞ ARKA)`, `ARKA SAĞ KAPI`, `KAPI_RR` | `21402016` | Arka Sağ Kapı |
| Bagaj | `BAGAJ`, `BAGAJ KAPAĞI` | `21402015` | Bagaj |
| Klima S. | `AC_TEMP_DRIVER`, `KLİMA_SÜRÜCÜ`, `Sıcaklık`, `SICAKLIK` | `21401008` | Klima Sürücü Isısı |
| Klima Y. | `AC_TEMP_PASSENGER`, `KLİMA_YOLCU` | `21401009` | Klima Yolcu Isısı |
| Çevre | `DIŞ_ISILIK`, `OUTSIDE_TEMP`, `Dış Sıcaklık` | `11600703` | Dış ortam sıcaklığı |
| Yakıt | `YAKIT`, `FUEL` | `11600307` | Kalan Yakıt (Litre) |
| Menzil | `MENZİL`, `RANGE` | `11600308` | Kalan Menzil (km) |
| Enerji | `BATARYA`, `BATTERY` | `11600309` | EV Batarya Seviyesi (%) |

## 5. UI Geliştirme Kuralı
UI geliştiricileri veri okurken her zaman şu sırayı (Fallback Chain) izlemelidir:
`data["ALIAS"] ?: data["HEX_ID"] ?: data["LABEL"] ?: "Varsayılan"`

---
**Not:** Yeni bir kritik sensör eklendiğinde bu dokümana alias eklenmesi zorunludur.
