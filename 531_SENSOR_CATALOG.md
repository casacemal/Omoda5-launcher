# Omoda 5 - 531 VHAL Sensör ve Mülk Kataloğu

Bu doküman, Omoda 5 AAOS (Android Automotive OS) sisteminde tespit edilen toplam **482 adet benzersiz VHAL mülkünün** tam listesini, Hex ID'lerini, işlevlerini ve risk sınıflandırmasını içerir.

| # | Hex Property ID | VHAL Orijinal / Türkçe Adı | Risk Seviyesi | İşlev ve Güvenlik Notu |
| :--- | :--- | :--- | :--- | :--- |
| 1 | `0x11100101` | Araç Kimlik / Model Bilgisi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 2 | `0x11200308` | Yakıt Seviyesi/Kapasitesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 3 | `0x1120030a` | EV_CHARGE_PORT_OPEN | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 4 | `0x1120030b` | EV_CHARGE_PORT_CONNECTED | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 5 | `0x11200402` | PARKING_BRAKE_ON | 🔴 Yüksek Risk | Hayati güvenlik/mekanik sistem. Koda yazma eklenmesi yasaktır. |
| 6 | `0x11200405` | Yakıt Seviyesi/Kapasitesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 7 | `0x11200407` | NIGHT_MODE | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 8 | `0x1120040a` | ABS Fren Sistemi Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 9 | `0x1120040b` | Çekiş Kontrolü (ESP/TCS) | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 10 | `0x11400108` | Yakıt Seviyesi/Kapasitesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 11 | `0x11400109` | Araç Kimlik / Model Bilgisi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 12 | `0x11400303` | Motor Yağ Sıcaklığı | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 13 | `0x11400400` | Vites Durumu (GEAR_SELECTION) | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 14 | `0x11400401` | Vites Durumu (GEAR_SELECTION) | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 15 | `0x11400409` | IGNITION_STATE | 🔴 Yüksek Risk | Hayati güvenlik/mekanik sistem. Koda yazma eklenmesi yasaktır. |
| 16 | `0x1140050d` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 17 | `0x1140050e` | Sıcaklık Sensörü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 18 | `0x11400605` | Araç Hızı (PERF_VEHICLE_SPEED) | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 19 | `0x11400a03` | DISPLAY_BRIGHTNESS | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 20 | `0x11400e00` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 21 | `0x11400e01` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 22 | `0x11400e02` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 23 | `0x11400e03` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 24 | `0x11400e10` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 25 | `0x11400e11` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 26 | `0x11400e12` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 27 | `0x11400e13` | Aydınlatma / Far Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 28 | `0x11407002` | 0x11407002 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 29 | `0x11407003` | 0x11407003 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 30 | `0x11407006` | 0x11407006 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 31 | `0x11407007` | 0x11407007 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 32 | `0x11407008` | 0x11407008 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 33 | `0x11407009` | 0x11407009 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 34 | `0x1140700a` | 0x1140700a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 35 | `0x1140700b` | 0x1140700b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 36 | `0x1140700c` | 0x1140700c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 37 | `0x1140700d` | 0x1140700d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 38 | `0x1140700e` | 0x1140700e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 39 | `0x1140700f` | 0x1140700f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 40 | `0x11407011` | 0x11407011 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 41 | `0x11407012` | 0x11407012 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 42 | `0x11407013` | 0x11407013 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 43 | `0x11407014` | 0x11407014 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 44 | `0x11410105` | Yakıt Seviyesi/Kapasitesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 45 | `0x11410107` | Araç Kimlik / Model Bilgisi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 46 | `0x11410a00` | AP_POWER_STATE_REQ | 🔴 Yüksek Risk | Hayati güvenlik/mekanik sistem. Koda yazma eklenmesi yasaktır. |
| 47 | `0x11410a01` | AP_POWER_STATE_REPORT | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 48 | `0x11410a10` | HW_KEY_INPUT | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 49 | `0x11417004` | 0x11417004 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 50 | `0x11510306` | WHEEL_TICK | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 51 | `0x11600104` | Yakıt Seviyesi/Kapasitesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 52 | `0x11600106` | Akü / EV Batarya Seviyesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 53 | `0x11600204` | PERF_ODOMETER | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 54 | `0x11600207` | Araç Hızı (PERF_VEHICLE_SPEED) | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 55 | `0x11600304` | Motor Yağ Sıcaklığı | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 56 | `0x11600305` | Motor Devri (ENGINE_RPM) | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 57 | `0x11600307` | Yakıt Seviyesi/Kapasitesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 58 | `0x11600308` | RANGE_REMAINING | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 59 | `0x11600309` | Akü / EV Batarya Seviyesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 60 | `0x1160030c` | Akü / EV Batarya Seviyesi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 61 | `0x11600703` | Sıcaklık Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 62 | `0x11707001` | 0x11707001 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 63 | `0x11707010` | 0x11707010 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 64 | `0x11e00c00` | VEHICLE_MAP_SERVICE | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 65 | `0x11e00d00` | OBD2_LIVE_FRAME | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 66 | `0x11e00d01` | OBD2_FREEZE_FRAME | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 67 | `0x11e00d02` | Araç Kimlik / Model Bilgisi | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 68 | `0x11e00d03` | OBD2_FREEZE_FRAME_CLEAR | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 69 | `0x13200504` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 70 | `0x13200bc4` | Cam Pozisyon Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 71 | `0x13400bc0` | Cam Pozisyon Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 72 | `0x15200505` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 73 | `0x15200506` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 74 | `0x15200507` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 75 | `0x15200508` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 76 | `0x15200509` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 77 | `0x1520050a` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 78 | `0x15200510` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 79 | `0x15200512` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 80 | `0x1540010a` | Koltuk Sensörü / Isıtma | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 81 | `0x15400500` | Araç Hızı (PERF_VEHICLE_SPEED) | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 82 | `0x15400501` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 83 | `0x1540050b` | Sıcaklık Sensörü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 84 | `0x15400513` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 85 | `0x15410511` | Klima / Havalandırma Mülkü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 86 | `0x15600503` | Sıcaklık Sensörü | 🟡 Orta Risk | İklimlendirme ve konfor kontrolü. UI ikaz onayı şarttır. |
| 87 | `0x16200b02` | Kapı Algılama / Kilit Sensörü | 🔴 Yüksek Risk | Hayati güvenlik/mekanik sistem. Koda yazma eklenmesi yasaktır. |
| 88 | `0x16400b00` | Kapı Algılama / Kilit Sensörü | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 89 | `0x17600309` | Lastik Basıncı / Sıcaklığı | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 90 | `0x21100104` | 0x21100104 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 91 | `0x21103034` | 0x21103034 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 92 | `0x21106201` | 0x21106201 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 93 | `0x21106206` | 0x21106206 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 94 | `0x21106207` | 0x21106207 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 95 | `0x21106208` | 0x21106208 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 96 | `0x21106209` | 0x21106209 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 97 | `0x2110620a` | 0x2110620a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 98 | `0x2110620b` | 0x2110620b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 99 | `0x2110620c` | 0x2110620c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 100 | `0x21401002` | 0x21401002 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 101 | `0x21401003` | 0x21401003 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 102 | `0x21401004` | 0x21401004 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 103 | `0x21401005` | 0x21401005 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 104 | `0x21401006` | 0x21401006 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 105 | `0x21401007` | 0x21401007 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 106 | `0x21401008` | 0x21401008 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 107 | `0x21401009` | 0x21401009 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 108 | `0x2140100a` | 0x2140100a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 109 | `0x2140100b` | 0x2140100b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 110 | `0x2140100c` | 0x2140100c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 111 | `0x2140100d` | 0x2140100d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 112 | `0x2140100e` | 0x2140100e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 113 | `0x2140100f` | 0x2140100f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 114 | `0x21401010` | 0x21401010 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 115 | `0x21401011` | 0x21401011 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 116 | `0x21401012` | 0x21401012 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 117 | `0x21401013` | 0x21401013 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 118 | `0x21401014` | 0x21401014 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 119 | `0x21401015` | 0x21401015 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 120 | `0x21401016` | 0x21401016 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 121 | `0x21401017` | 0x21401017 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 122 | `0x21401018` | 0x21401018 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 123 | `0x21401019` | 0x21401019 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 124 | `0x2140101a` | 0x2140101a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 125 | `0x2140101b` | 0x2140101b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 126 | `0x2140101c` | 0x2140101c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 127 | `0x2140101d` | 0x2140101d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 128 | `0x2140101e` | 0x2140101e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 129 | `0x2140101f` | 0x2140101f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 130 | `0x21401020` | 0x21401020 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 131 | `0x21401021` | 0x21401021 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 132 | `0x21401022` | 0x21401022 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 133 | `0x21401023` | 0x21401023 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 134 | `0x21401024` | 0x21401024 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 135 | `0x21401025` | 0x21401025 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 136 | `0x21401026` | 0x21401026 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 137 | `0x21401027` | 0x21401027 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 138 | `0x21401028` | 0x21401028 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 139 | `0x21401029` | 0x21401029 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 140 | `0x2140102a` | 0x2140102a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 141 | `0x2140102b` | 0x2140102b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 142 | `0x2140102c` | 0x2140102c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 143 | `0x2140102d` | 0x2140102d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 144 | `0x2140102e` | 0x2140102e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 145 | `0x2140102f` | 0x2140102f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 146 | `0x21401030` | 0x21401030 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 147 | `0x21401031` | 0x21401031 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 148 | `0x21401032` | 0x21401032 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 149 | `0x21401033` | 0x21401033 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 150 | `0x21401034` | 0x21401034 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 151 | `0x21401035` | 0x21401035 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 152 | `0x21401036` | 0x21401036 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 153 | `0x21402000` | 0x21402000 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 154 | `0x21402001` | 0x21402001 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 155 | `0x21402002` | 0x21402002 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 156 | `0x21402005` | 0x21402005 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 157 | `0x21402006` | 0x21402006 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 158 | `0x21402007` | 0x21402007 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 159 | `0x21402008` | 0x21402008 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 160 | `0x21402009` | 0x21402009 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 161 | `0x2140200a` | 0x2140200a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 162 | `0x2140200b` | 0x2140200b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 163 | `0x2140200c` | 0x2140200c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 164 | `0x2140200d` | 0x2140200d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 165 | `0x2140200e` | 0x2140200e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 166 | `0x2140200f` | 0x2140200f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 167 | `0x21402010` | 0x21402010 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 168 | `0x21402011` | 0x21402011 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 169 | `0x21402012` | 0x21402012 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 170 | `0x21402013` | 0x21402013 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 171 | `0x21402014` | 0x21402014 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 172 | `0x21402015` | 0x21402015 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 173 | `0x21402016` | 0x21402016 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 174 | `0x21402017` | 0x21402017 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 175 | `0x21402018` | 0x21402018 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 176 | `0x21402019` | 0x21402019 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 177 | `0x2140201a` | 0x2140201a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 178 | `0x2140201b` | 0x2140201b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 179 | `0x2140201c` | 0x2140201c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 180 | `0x2140201d` | 0x2140201d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 181 | `0x2140201e` | 0x2140201e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 182 | `0x2140201f` | 0x2140201f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 183 | `0x21402020` | 0x21402020 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 184 | `0x21402021` | 0x21402021 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 185 | `0x21402022` | 0x21402022 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 186 | `0x21402024` | 0x21402024 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 187 | `0x21402025` | 0x21402025 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 188 | `0x21402026` | 0x21402026 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 189 | `0x21402027` | 0x21402027 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 190 | `0x21402028` | 0x21402028 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 191 | `0x21402029` | 0x21402029 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 192 | `0x2140202c` | 0x2140202c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 193 | `0x21402031` | 0x21402031 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 194 | `0x21402032` | 0x21402032 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 195 | `0x21402033` | 0x21402033 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 196 | `0x21402034` | 0x21402034 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 197 | `0x21402035` | 0x21402035 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 198 | `0x21402036` | 0x21402036 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 199 | `0x21402037` | 0x21402037 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 200 | `0x21402038` | 0x21402038 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 201 | `0x21402039` | 0x21402039 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 202 | `0x2140203a` | 0x2140203a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 203 | `0x2140203b` | 0x2140203b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 204 | `0x2140203c` | 0x2140203c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 205 | `0x2140203d` | 0x2140203d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 206 | `0x2140203e` | 0x2140203e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 207 | `0x2140203f` | 0x2140203f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 208 | `0x21402040` | 0x21402040 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 209 | `0x21402041` | 0x21402041 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 210 | `0x21402042` | 0x21402042 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 211 | `0x21402044` | 0x21402044 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 212 | `0x21402046` | 0x21402046 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 213 | `0x21402047` | 0x21402047 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 214 | `0x21402048` | 0x21402048 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 215 | `0x21403001` | 0x21403001 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 216 | `0x21403002` | 0x21403002 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 217 | `0x21403003` | 0x21403003 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 218 | `0x21403004` | 0x21403004 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 219 | `0x21403005` | 0x21403005 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 220 | `0x21403006` | 0x21403006 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 221 | `0x21403007` | 0x21403007 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 222 | `0x21403008` | 0x21403008 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 223 | `0x21403009` | 0x21403009 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 224 | `0x2140300a` | 0x2140300a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 225 | `0x2140300b` | 0x2140300b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 226 | `0x2140300c` | 0x2140300c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 227 | `0x2140300d` | 0x2140300d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 228 | `0x2140300e` | 0x2140300e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 229 | `0x2140300f` | 0x2140300f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 230 | `0x21403010` | 0x21403010 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 231 | `0x21403011` | 0x21403011 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 232 | `0x21403012` | 0x21403012 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 233 | `0x21403013` | 0x21403013 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 234 | `0x21403014` | 0x21403014 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 235 | `0x21403015` | 0x21403015 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 236 | `0x21403016` | 0x21403016 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 237 | `0x21403017` | 0x21403017 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 238 | `0x21403018` | 0x21403018 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 239 | `0x21403019` | 0x21403019 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 240 | `0x2140301a` | 0x2140301a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 241 | `0x2140301b` | 0x2140301b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 242 | `0x2140301c` | 0x2140301c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 243 | `0x2140301d` | 0x2140301d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 244 | `0x2140301f` | 0x2140301f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 245 | `0x21403020` | 0x21403020 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 246 | `0x21403021` | 0x21403021 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 247 | `0x21403022` | 0x21403022 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 248 | `0x21403023` | 0x21403023 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 249 | `0x21403024` | 0x21403024 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 250 | `0x21403025` | 0x21403025 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 251 | `0x21403026` | 0x21403026 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 252 | `0x21403027` | 0x21403027 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 253 | `0x21403028` | 0x21403028 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 254 | `0x21403029` | 0x21403029 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 255 | `0x2140302a` | 0x2140302a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 256 | `0x2140302b` | 0x2140302b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 257 | `0x2140302c` | 0x2140302c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 258 | `0x2140302e` | 0x2140302e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 259 | `0x2140302f` | 0x2140302f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 260 | `0x21403030` | 0x21403030 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 261 | `0x21403031` | 0x21403031 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 262 | `0x21403032` | 0x21403032 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 263 | `0x21403033` | 0x21403033 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 264 | `0x21403035` | 0x21403035 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 265 | `0x21403036` | 0x21403036 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 266 | `0x21403037` | 0x21403037 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 267 | `0x21403038` | 0x21403038 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 268 | `0x21403039` | 0x21403039 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 269 | `0x2140303a` | 0x2140303a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 270 | `0x2140303b` | 0x2140303b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 271 | `0x2140303c` | 0x2140303c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 272 | `0x2140303d` | 0x2140303d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 273 | `0x2140303e` | 0x2140303e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 274 | `0x2140303f` | 0x2140303f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 275 | `0x21403040` | 0x21403040 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 276 | `0x21403041` | 0x21403041 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 277 | `0x21403042` | 0x21403042 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 278 | `0x21403043` | 0x21403043 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 279 | `0x21403044` | 0x21403044 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 280 | `0x21403045` | 0x21403045 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 281 | `0x21403046` | 0x21403046 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 282 | `0x21403047` | 0x21403047 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 283 | `0x21403048` | 0x21403048 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 284 | `0x21403049` | 0x21403049 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 285 | `0x21403050` | 0x21403050 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 286 | `0x21403051` | 0x21403051 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 287 | `0x21403052` | 0x21403052 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 288 | `0x21403053` | 0x21403053 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 289 | `0x21403054` | 0x21403054 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 290 | `0x21403055` | 0x21403055 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 291 | `0x21403056` | 0x21403056 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 292 | `0x2140306d` | 0x2140306d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 293 | `0x21601037` | 0x21601037 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 294 | `0x21601038` | 0x21601038 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 295 | `0x21602003` | 0x21602003 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 296 | `0x21602004` | 0x21602004 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 297 | `0x21602023` | 0x21602023 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 298 | `0x2160202b` | 0x2160202b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 299 | `0x2160202d` | 0x2160202d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 300 | `0x2160202e` | 0x2160202e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 301 | `0x2160202f` | 0x2160202f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 302 | `0x21602030` | 0x21602030 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 303 | `0x21602043` | 0x21602043 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 304 | `0x2160301e` | 0x2160301e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 305 | `0x21701001` | 0x21701001 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 306 | `0x2170202a` | 0x2170202a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 307 | `0x21702045` | 0x21702045 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 308 | `0x21703000` | 0x21703000 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 309 | `0x2170302d` | 0x2170302d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 310 | `0x21705001` | 0x21705001 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 311 | `0x21705002` | 0x21705002 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 312 | `0x21705003` | 0x21705003 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 313 | `0x21705004` | 0x21705004 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 314 | `0x21705005` | 0x21705005 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 315 | `0x21705006` | 0x21705006 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 316 | `0x21705007` | 0x21705007 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 317 | `0x21705008` | 0x21705008 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 318 | `0x21705009` | 0x21705009 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 319 | `0x2170500a` | 0x2170500a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 320 | `0x2170500b` | 0x2170500b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 321 | `0x2170500c` | 0x2170500c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 322 | `0x2170500d` | 0x2170500d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 323 | `0x2170500e` | 0x2170500e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 324 | `0x2170500f` | 0x2170500f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 325 | `0x21705010` | 0x21705010 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 326 | `0x21705011` | 0x21705011 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 327 | `0x21705012` | 0x21705012 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 328 | `0x21705013` | 0x21705013 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 329 | `0x21705014` | 0x21705014 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 330 | `0x21705015` | 0x21705015 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 331 | `0x21705016` | 0x21705016 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 332 | `0x21705017` | 0x21705017 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 333 | `0x21705018` | 0x21705018 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 334 | `0x21705019` | 0x21705019 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 335 | `0x2170501a` | 0x2170501a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 336 | `0x2170501b` | 0x2170501b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 337 | `0x2170501c` | 0x2170501c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 338 | `0x2170501d` | 0x2170501d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 339 | `0x2170501e` | 0x2170501e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 340 | `0x2170501f` | 0x2170501f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 341 | `0x21705020` | 0x21705020 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 342 | `0x21705021` | 0x21705021 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 343 | `0x21705022` | 0x21705022 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 344 | `0x21705023` | 0x21705023 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 345 | `0x21705024` | 0x21705024 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 346 | `0x21705025` | 0x21705025 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 347 | `0x21705026` | 0x21705026 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 348 | `0x21705027` | 0x21705027 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 349 | `0x21705028` | 0x21705028 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 350 | `0x21705029` | 0x21705029 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 351 | `0x2170502a` | 0x2170502a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 352 | `0x2170502b` | 0x2170502b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 353 | `0x2170502c` | 0x2170502c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 354 | `0x2170502d` | 0x2170502d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 355 | `0x2170502e` | 0x2170502e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 356 | `0x2170502f` | 0x2170502f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 357 | `0x21705030` | 0x21705030 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 358 | `0x21705031` | 0x21705031 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 359 | `0x21705032` | 0x21705032 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 360 | `0x21705033` | 0x21705033 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 361 | `0x21705034` | 0x21705034 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 362 | `0x21705035` | 0x21705035 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 363 | `0x21705036` | 0x21705036 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 364 | `0x21705037` | 0x21705037 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 365 | `0x21705038` | 0x21705038 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 366 | `0x21705039` | 0x21705039 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 367 | `0x2170503a` | 0x2170503a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 368 | `0x2170503b` | 0x2170503b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 369 | `0x2170503c` | 0x2170503c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 370 | `0x2170503d` | 0x2170503d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 371 | `0x2170503e` | 0x2170503e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 372 | `0x2170503f` | 0x2170503f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 373 | `0x21705040` | 0x21705040 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 374 | `0x21705041` | 0x21705041 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 375 | `0x21705042` | 0x21705042 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 376 | `0x21705043` | 0x21705043 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 377 | `0x21705044` | 0x21705044 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 378 | `0x21705045` | 0x21705045 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 379 | `0x21705046` | 0x21705046 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 380 | `0x21705047` | 0x21705047 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 381 | `0x21705048` | 0x21705048 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 382 | `0x21705049` | 0x21705049 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 383 | `0x2170504a` | 0x2170504a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 384 | `0x2170504b` | 0x2170504b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 385 | `0x2170504c` | 0x2170504c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 386 | `0x2170504d` | 0x2170504d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 387 | `0x2170504e` | 0x2170504e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 388 | `0x2170504f` | 0x2170504f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 389 | `0x21705050` | 0x21705050 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 390 | `0x21705051` | 0x21705051 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 391 | `0x21705052` | 0x21705052 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 392 | `0x21705053` | 0x21705053 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 393 | `0x21705054` | 0x21705054 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 394 | `0x21705055` | 0x21705055 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 395 | `0x21705056` | 0x21705056 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 396 | `0x21705057` | 0x21705057 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 397 | `0x21705058` | 0x21705058 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 398 | `0x21705059` | 0x21705059 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 399 | `0x2170505a` | 0x2170505a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 400 | `0x2170505b` | 0x2170505b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 401 | `0x2170505c` | 0x2170505c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 402 | `0x2170505d` | 0x2170505d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 403 | `0x2170505e` | 0x2170505e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 404 | `0x2170505f` | 0x2170505f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 405 | `0x21705060` | 0x21705060 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 406 | `0x21705061` | 0x21705061 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 407 | `0x21705062` | 0x21705062 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 408 | `0x21705063` | 0x21705063 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 409 | `0x21705064` | 0x21705064 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 410 | `0x21705065` | 0x21705065 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 411 | `0x21705066` | 0x21705066 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 412 | `0x21705067` | 0x21705067 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 413 | `0x21705068` | 0x21705068 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 414 | `0x21705069` | 0x21705069 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 415 | `0x2170506a` | 0x2170506a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 416 | `0x2170506b` | 0x2170506b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 417 | `0x2170506c` | 0x2170506c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 418 | `0x2170506d` | 0x2170506d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 419 | `0x2170506e` | 0x2170506e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 420 | `0x2170506f` | 0x2170506f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 421 | `0x21705070` | 0x21705070 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 422 | `0x21705071` | 0x21705071 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 423 | `0x21705072` | 0x21705072 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 424 | `0x21705073` | 0x21705073 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 425 | `0x21705074` | 0x21705074 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 426 | `0x21705075` | 0x21705075 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 427 | `0x21705076` | 0x21705076 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 428 | `0x21705077` | 0x21705077 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 429 | `0x21705078` | 0x21705078 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 430 | `0x21705079` | 0x21705079 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 431 | `0x2170507a` | 0x2170507a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 432 | `0x2170507b` | 0x2170507b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 433 | `0x2170507c` | 0x2170507c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 434 | `0x2170507d` | 0x2170507d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 435 | `0x2170507e` | 0x2170507e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 436 | `0x2170507f` | 0x2170507f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 437 | `0x21705080` | 0x21705080 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 438 | `0x21705081` | 0x21705081 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 439 | `0x21705082` | 0x21705082 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 440 | `0x21705083` | 0x21705083 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 441 | `0x21705084` | 0x21705084 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 442 | `0x21705085` | 0x21705085 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 443 | `0x21705086` | 0x21705086 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 444 | `0x21705087` | 0x21705087 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 445 | `0x21705088` | 0x21705088 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 446 | `0x21705089` | 0x21705089 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 447 | `0x2170508a` | 0x2170508a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 448 | `0x2170508b` | 0x2170508b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 449 | `0x2170508c` | 0x2170508c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 450 | `0x2170508d` | 0x2170508d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 451 | `0x2170508e` | 0x2170508e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 452 | `0x2170508f` | 0x2170508f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 453 | `0x21705090` | 0x21705090 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 454 | `0x217051ff` | 0x217051ff | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 455 | `0x21705200` | 0x21705200 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 456 | `0x21705201` | 0x21705201 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 457 | `0x21705202` | 0x21705202 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 458 | `0x21706200` | 0x21706200 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 459 | `0x21706202` | 0x21706202 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 460 | `0x21706203` | 0x21706203 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 461 | `0x21706204` | 0x21706204 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 462 | `0x21706205` | 0x21706205 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 463 | `0x2170620d` | 0x2170620d | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 464 | `0x2170620e` | 0x2170620e | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 465 | `0x2170620f` | 0x2170620f | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 466 | `0x2170c000` | 0x2170c000 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 467 | `0x2170c001` | 0x2170c001 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 468 | `0x2170c002` | 0x2170c002 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 469 | `0x2170c003` | 0x2170c003 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 470 | `0x2170c004` | 0x2170c004 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 471 | `0x2170c005` | 0x2170c005 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 472 | `0x2170c006` | 0x2170c006 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 473 | `0x2170c007` | 0x2170c007 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 474 | `0x2170c008` | 0x2170c008 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 475 | `0x2170c009` | 0x2170c009 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 476 | `0x2170c00a` | 0x2170c00a | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 477 | `0x2170c00b` | 0x2170c00b | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 478 | `0x2170c00c` | 0x2170c00c | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 479 | `0x21e00666` | 0x21e00666 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 480 | `0x23400103` | 0x23400103 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 481 | `0x25600102` | 0x25600102 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
| 482 | `0x26200101` | 0x26200101 | 🟢 Düşük Risk (Read-Only) | Güvenli salt-okunur veri akışı. |
