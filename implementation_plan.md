# Motor ve Araç Verilerinin UI'da Görünmesi İçin Düzeltme Planı

Motor ve araç verilerinin (Hız, Devir, Vites, Sıcaklık, Kapı Durumları vb.) arayüzdeki widget'larda görünmemesi sorununun analizi ve çözüm adımları aşağıda sunulmuştur.

## Sorunun Kök Nedeni (Root Cause)

`VehicleController.kt` sınıfı VHAL / dumpsys veya simülasyon üzerinden araç verilerini okuduğunda `updateDisplay` metodunu çağırarak `GlobalState.vehicleDataValues` map'ine verileri yazar.

Ancak key eşleşmelerinde büyük bir uyumsuzluk mevcuttur:
1. `VehicleController.kt` map'e SADECE `PROPERTY_DEFINITIONS` içindeki etiketleri yazar (Örn: `"Araç Hızı"`, `"Vites"`, `"Motor Devri"`, `"Ön Sol Kapı"`).
2. **`TeslaCarWidget.kt` (`PremiumCarWidget`)**: Map içinde `"HIZ"`, `"VİTES"`, `"KAPI (SOL ÖN)"` gibi farklı string anahtarlarını arar.
3. **`VehicleWidget.kt`**: Map içinde `"11600207"`, `"21402006"` gibi raw Hex Property ID anahtarlarını arar.
4. **`ClimateWidget.kt`**: Map içinde `"21401008"` Hex Property ID anahtarını arar.
5. **`SettingsScreen.kt`**: Map içinde `"HIZ"` anahtarını arar.

Map içindeki anahtar isimleri ile UI widget'larının aradığı anahtarlar uyuşmadığı için veriler `null` dönmekte ve ekranlarda varsayılan/fallback değerler (0 km/h, P, 22°C vb.) görünmektedir.

## Kullanıcı Onayı Gereken Hususlar

> [!IMPORTANT]
> `VehicleController.kt` güncellenerek `GlobalState.vehicleDataValues` haritasına veriler işlenirken HEM Hex Property ID (`"11600207"`), HEM Türkçe Etiket (`"Araç Hızı"`), HEM DE Kısaltma/Takma Adlar (`"HIZ"`, `"VİTES"`, `"DEVİR"` vb.) eşzamanlı yazılacaktır. Bu sayede tüm mevcut ve gelecekteki UI bileşenleri uyumlu çalışacaktır.

## Proposed Changes

### Core Motor / Vehicle Controller

#### [MODIFY] [VehicleController.kt](file:///mnt/depo/launcher_v2/core/src/main/java/com/omoda/lanc/core/VehicleController.kt)
- `updateDisplay` metodunu revize ederek gelen verileri `GlobalState.vehicleDataValues` haritasına:
  - Hex Property ID (ör: `"11600207"`),
  - İnsan okunabilir etiket (ör: `"Araç Hızı"`),
  - Kısaltma / UI takma adları (ör: `"HIZ"`, `"VİTES"`, `"DEVİR"`, `"KAPI (SOL ÖN)"`, `"KAPI (SAĞ ÖN)"`)
  olarak çoklu anahtarlarla (multi-key indexing) eklemek.
- `EventBus.tryEmit(Event.VehicleEvent.StateUpdated(next))` akışının kesintisiz çalıştığından emin olmak.

---

### UI Widgets

#### [MODIFY] [TeslaCarWidget.kt](file:///mnt/depo/launcher_v2/app/src/main/java/com/omoda/lanc/ui/widgets/vehicle/TeslaCarWidget.kt)
- `PremiumCarWidget` sınıfında verileri okurken fallback anahtar zinciri (ör: `vehicleData["HIZ"] ?: vehicleData["Araç Hızı"] ?: vehicleData["11600207"] ?: "0 km/h"`) kullanmak.

#### [MODIFY] [VehicleWidget.kt](file:///mnt/depo/launcher_v2/app/src/main/java/com/omoda/lanc/ui/widgets/vehicle/VehicleWidget.kt)
- Raw property ID aramasının yanında Türkçe etiket ve kısa ad desteğini sağlamak.

#### [MODIFY] [ClimateWidget.kt](file:///mnt/depo/launcher_v2/app/src/main/java/com/omoda/lanc/ui/widgets/climate/ClimateWidget.kt)
- Hem `"21401008"` hem de `"AC Sıcaklık (Sürücü)"` / `"Sıcaklık"` anahtarlarından veri okuyabilecek esnek yapıya geçirmek.

## Verification Plan

### Otomatik / Statik Testler
- Gradle üzerinden derleme testi yapmak: `./gradlew assembleDebug` veya `./gradlew :app:assembleDebug`

### Manuel / Sistem Testi
- `aes_app/main.py` masaüstü simülasyon arayüzü ile Hız, RPM ve Vites verileri enjekte edilecek.
- UI ekranlarında (Dashboard, PremiumCarWidget, VehicleWidget, SensorMonitorScreen) verilerin anlık güncellendiği teyit edilecek.
