# 📐 OMODA 5 UI & SES MANİFESTOSU

Bu belge, uygulamanın görsel ve işitsel tutarlılığını korumak için uyulması gereken kesin kuralları içerir.

## 1. Ana Ekran (Home Screen / Dashboard) Kısıtları
- **Sütun/Satır Sayısı:** 5 Sütun x 2 Satır (Sayfa başına tam 10 ikon).
- **1. Sayfa Sabitliği:** İlk sayfa her zaman Chery stok uygulamalarını ve Omoda Store'u içermelidir. Kullanıcı bu sayfayı değiştiremez.
- **İkon Boyutları:**
    - Araç Modu (AAOS): `iconSize = 110.dp`, `containerWidth = 160.dp`, `fontSize = 18.sp`.
    - Mobil Modu: `iconSize = 64.dp`, `containerWidth = 80.dp`, `fontSize = 12.sp`.
- **Ekran Dolgusu (Padding):** 
    - Sol (Sidebar Boşluğu): `235.dp`.
    - Üst: `60.dp`.
    - Alt: `80.dp`.
    - Sağ: `80.dp`.
- **Muafiyet (KRİTİK):** Ana ekran (DashboardScreen), Google AAOS UI Refactoring (Touch Target vb.) kurallarından tamamen muaftır. Klasik Omoda tasarımı korunacaktır.

## 2. Automotive OS (AAOS) Tasarım Standartları
- **Touch Target (Tıklama Hedefleri):** Sürücü dikkat dağınıklığını önlemek (Driver Distraction Guidelines) amacıyla tüm butonlar ve ikonlar (Ana ekran hariç) en az `64.dp` boyutunda (`MinCarTouchTarget`) olmalıdır. Standart Compose `Button` veya `FilterChip` kullanımı yasaktır, yerine `CarButton` vb. sarmalayıcılar kullanılmalıdır.
- **Odak (Focus):** Rotary controller (D-pad) desteği için tüm tıklanabilir bileşenlerde özel focus state (örn. beyaz kalın kenarlık) bulundurulmalıdır. Bunun için `CarButton` ve `CarIconButton` (AutomotiveComponents.kt) kullanılmalıdır.
- **Renk ve Kontrast:** Tüm alt ekranlar AAA kontrast kurallarına uymalıdır, metin boyutları sürüş anında okunabilmesi için büyük (genellikle >= 16.sp) tutulmalıdır.

## 3. Ekran Oryantasyonu ve Görünüm
- **Landscape Zorunluluğu:** Tüm kritik aktiviteler (`MainActivity`, `BridgeActivity`) yatay (landscape) modda çalışmalıdır.
- **Immersive Mode:** Durum çubuğu ve navigasyon gizlenerek tam ekran kullanılmalıdır.

## 4. Mikrofon ve Ses Kayıt Standartları (KRİTİK)
- **Örnekleme Hızı:** `16000 Hz`.
- **Kanal:** `Mono (CHANNEL_IN_MONO)`.
- **Format:** `PCM 16bit`.
- **VAD Hassasiyeti (SNR):** `1.6f` (Motor ve klima gürültüsüne adaptif).
- **Yazılımsal Kazanç (Gain):** `3.5f` (Referans projeden optimize edildi).
- **Sessizlik Süresi:** `2000ms` (Konuşma bittikten sonraki bekleme).
- **Mikrofon Kaynağı:** Varsayılan `VOICE_RECOGNITION`.
- **İzin Enjeksiyonu:** Her açılışta ADB üzerinden `RECORD_AUDIO` izni agresif olarak tekrar basılmalıdır.

## 5. Chery Stok Uygulama Bağlantıları
- **Medya:** `com.chery.media`
- **Telefon:** `com.chery.dialer`
- **Ayarlar:** `com.chery.settings`
- **Araç Bilgisi:** `com.chery.carsettings`
- **Klima:** `com.chery.hvac`
- **Video:** `com.chery.video`
- **Yardım/Kılavuz:** `com.chery.help`
- **Android Auto:** `com.yfve.car.androidauto`
- **Apple CarPlay:** `com.yfve.car.carplay`

## 6. Güvenlik ve Eşleşme (Pairing)
- **Varsayılan Eşleşme Kodu:** `OMODA5` (DietPi ve Otomatik Kurulumlar için).
- **Değişiklik:** Kullanıcı UI üzerinden kodu yenileyebilir ancak sistemler `OMODA5` ile ön tanımlı senkronize edilir.

## 7. Dashboard (Split Screen) Kısıtları
- **Akıllı Split (Smart Hız Kuralı):** Ekran bölme oranı `>80 km/h` ise dar (0.6f medya), `≤80 km/h` ise geniş (0.35f medya) harita odaklı olmalıdır. Manuel kaydırmalar araç hızı `20 km/h` altına düşene kadar korunmalıdır.
- **Premium Medya Arayüzü:** Dashboard'da geleneksel üst barlar kullanılmamalı, sistem bilgileri (Hız, ECO vb.) harita üzerinde Glassmorphism efektiyle asılı overlay'ler olarak gösterilmelidir.
