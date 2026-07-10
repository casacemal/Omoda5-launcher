# PROGRESS.md

## Son Durum (UI Restoration & Chery Integration)
*   Sürüm 6076 (6.0.0) - 10.07.2026 17:55
*   **UI Ölçeklendirme Onarıldı:** Ayarlar ve ana ekran ikonlarının büyük görünme sorunu giderildi. Referans projeye (v9.3.0) uygun ölçüler (160dp container, 110dp icon) uygulandı.
*   **5x2 Grid Düzeni:** Ana ekran kesin olarak 5 sütun x 2 satır (10 ikon) düzenine sabitlendi.
*   **Chery İkon Entegrasyonu:** İlk sayfa ikonları Chery stok mipmap ikonları (`home_app_*`) ile değiştirildi ve stok uygulama paketlerine bağlandı.
*   **Hermes Bridge Landscape Fix:** `BridgeActivity` ekranının yan açılma sorunu `AndroidManifest.xml` üzerinden landscape zorlanarak çözüldü.
*   **Auto-Pairing Kodu:** DietPi kurulumları ile uyum için varsayılan eşleşme kodu `OMODA5` olarak set edildi.
*   **UI Manifestosu:** Gelecekteki tasarım bozulmalarını önlemek için `UI_MANIFESTO.md` oluşturuldu ve kurallar mühürlendi.

## Önceki Durum (Update Tab Fix & Version Info)
*   Sürüm 6075 (6.0.0) - 10.07.2026 18:30
*   **Market Sekmesi Geri Getirildi:** `SettingsScreen.kt` içindeki responsive tasarım güncellemesi sırasında kaybolan "Market" (Güncelleme) sekmesi geri eklendi.
*   ...