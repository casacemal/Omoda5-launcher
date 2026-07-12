# Omoda 5 VHAL Sensör ve Veri Analizi Raporu

Aracın `car_service` dökümünden (engine off state) elde edilen ham VHAL özelliklerinin tamamı taranmış ve aşağıdaki gibi kategorize edilmiştir. Bu analiz, uygulamanın hangi özelliklere erişimi olduğunu ve hangilerinin Android Automotive katmanına yansımadığını göstermektedir.

## 1. Tespit Edilen Standart Android Sensörleri

Aşağıdaki özellikler standart Android Automotive ID'leriyle eşleşmiştir ve sistem tarafından aktif olarak sunulmaktadır:

*   **Kapı ve Camlar:**
    *   `0x16200b02` - `DOOR_LOCK` (Kapı Kilit Durumu)
    *   `0x16400b00` - `DOOR_POS` (Kapı Açık/Kapalı Pozisyonu)
    *   `0x13400bc0` - `WINDOW_POS` (Cam / Sunroof Pozisyonu)
*   **İklimlendirme (HVAC):**
    *   `0x15200505` - `HVAC_AC_ON` (Klima Açık/Kapalı)
    *   `0x15400500` - `HVAC_FAN_SPEED` (Klima Fan Hızı)
    *   `0x1540050b` - `HVAC_SEAT_TEMPERATURE` (Koltuk Isıtma Derecesi)
    *   `0x15400513` - `HVAC_SEAT_VENTILATION` (Koltuk Soğutma/Havalandırma)
    *   `0x13200504` - `HVAC_DEFROSTER` (Cam Buğu Çözücü)
*   **Aydınlatma ve Işıklar:**
    *   `0x11400e00` - `HEADLIGHTS_STATE` (Farlar)
    *   `0x11400e01` - `HIGH_BEAM_LIGHTS_STATE` (Uzun Farlar)
    *   `0x11400e03` - `HAZARD_LIGHTS_STATE` (Dörtlü Flaşör)
    *   `0x11400e02` - `FOG_LIGHTS_STATE` (Sis Farları)
*   **Motor ve Güç:**
    *   `0x11400409` - `IGNITION_STATE` (Kontak/Motor Durumu)
    *   `0x11600305` - `ENGINE_RPM` (Motor Devri)
    *   `0x11600304` - `ENGINE_OIL_TEMP` (Motor Yağ Sıcaklığı)
    *   `0x11400303` - `ENGINE_OIL_LEVEL` (Motor Yağ Seviyesi)
*   **Enerji ve Yakıt:**
    *   `0x11600307` - `FUEL_LEVEL` (Kalan Yakıt Seviyesi)
    *   `0x11600104` - `INFO_FUEL_CAPACITY` (Toplam Yakıt Kapasitesi)
    *   `0x11200308` - `FUEL_DOOR_OPEN` (Yakıt Depo Kapağı Açık)
    *   `0x11600309` - `EV_BATTERY_LEVEL` (EV Batarya Yüzdesi)
    *   `0x1160030c` - `EV_BATTERY_INSTANTANEOUS_CHARGE_RATE` (Anlık Şarj Hızı)
    *   `0x1120030a` - `EV_CHARGE_PORT_OPEN` (Şarj Kapağı Açık)
    *   `0x1120030b` - `EV_CHARGE_PORT_CONNECTED` (Şarj Kablosu Takılı)
*   **Sürüş ve Diğer:**
    *   `0x11600204` - `PERF_ODOMETER` (Toplam Kilometre)
    *   `0x11600207` - `PERF_VEHICLE_SPEED` (Anlık Araç Hızı)
    *   `0x11600308` - `RANGE_REMAINING` (Kalan Menzil Tahmini)
    *   `0x11600703` - `ENV_OUTSIDE_TEMPERATURE` (Dış Sıcaklık)

> [!TIP]
> Bu veriler `dumpsys car_service get-property-value <ID> <ZONE>` formatıyla, aracın desteklediği doğru bölge (zone) id'si belirtilerek uygulamaya çekilebilir.

## 2. Eksik veya Sistem Tarafından Gizlenen Sensörler

Aşağıdaki özellikler standart Android Automotive dokümanlarında yer almasına rağmen Omoda 5'in yayınladığı VHAL dökümünde hiçbir şekilde bulunamamıştır:

*   `SEAT_BELT_BUCKLED` (Emniyet Kemeri Tokası Sensörü)
*   `SEAT_OCCUPANCY` (Koltuk Doluluk Sensörü)
*   `TIRE_PRESSURE` (Lastik Basıncı TPMS)

> [!WARNING]
> Üreticiler bazen emniyet veya homologasyon gereği TPMS ve emniyet kemeri verilerini direkt Android (Eğlence Sistemi) katmanına değil, sadece CAN-BUS üzerinden gösterge paneline iletebilirler. Ya da bu veriler özel "Custom OEM" ID'leri altında (`0x21...` vb) şifrelenmiş olabilir.

## 3. Omoda / Chery Özel (OEM Custom) Sensör Verileri

Sistem dökümünde `0x21...` ile başlayan, ismi olmayan ve sayısal formatta yüzlerce "Vendor-Specific" (Özel üretici) sensör kodu bulunmuştur. Bunlar muhtemelen Omoda'nın araç içi özel modülleri (Koltuk masajı, Ambiyans aydınlatması, Otonom Sürüş Asistanları, Kamera Sistemleri vb.) için tasarlanmıştır.

Öne çıkan bazı Hex blokları:
*   `0x2140...` (Örn: `0x21402006` - Sinyal Kolları için kullanıldığını daha önce çözmüştük)
*   `0x2170...`
*   `0x2110...`
*   `0x2160...`

**Sonuç / Ders:**
Aracın tüm özelliklerini sağlıklı bir şekilde kullanabilmemiz için isimleriyle açık olan standart sensörleri mevcut yapıya eklememiz yeterli. Eksik olan (Koltuk doluluk vb.) sensörleri ise listeden şimdilik kaldırmamız gerekiyor çünkü araç bunları Android sistemine sunmuyor. Ancak Kapı Kilidi, Koltuk Isıtma/Soğutma, Uzun Farlar ve Yakıt bilgileri net bir şekilde var ve entegre edilebilir!
