# Architecture 2.0: Platform & DSL Transformation Plan

Bu doküman, projenin klasik bir Launcher'dan profesyonel bir **AAOS Runtime Platform**'una dönüşüm yol haritasını içerir.

## Temel Hedefler
1.  **UI Engine:** Compose'u bir render motoru olarak kullanmak (Panel-based Dashboard).
2.  **Platform DSL:** Araç yeteneklerini, otomasyonları ve UI düzenini Kotlin DSL ile tanımlamak.
3.  **Modülerlik:** Widget tabanlı bağımsız bileşen mimarisi.
4.  **Resilience:** Çevrimdışı (offline) komut yönetimi ve güvenlik duvarı (Firewall 2.0).

---

## 1. Hazırlık Aşaması (Faz 0)
- [x] Yeni branch oluşturma: `feature/architecture-2-0`
- [x] Proje klasör yapısının (`ui/dashboard`, `ui/widgets`, `core/dsl`) hazırlanması.
- [x] Temel interface tanımları (`DashboardWidget`, `VehicleDefinition`).

## 2. Platform DSL Altyapısı (Faz 1)
- [x] **Vehicle DSL:** Dumpsys hex kodlarını ve veri tiplerini soyutlayan DSL'in yazılması.
- [x] **Tool DSL:** AI ve Yerel komutlar için ortak "Command Registry" oluşturulması.
- [x] **Automation DSL:** Hız/Durum bazlı akıllı kuralların (`if speed > 110`) DSL'e taşınması.
- [x] **Omoda 5 Mapping:** Mevcut Omoda 5 özelliklerinin yeni DSL'e aktarılması.

## 3. UI Render Engine & Dashboard (Faz 2)
- [x] **Layout Engine:** `Row/Column` tabanlı dinamik panel yönetimi.
- [x] **Dashboard DSL:** UI düzenini tanımlayan Kotlin DSL'in yazılması.
- [x] **Widget Migration:** Medya, Araç, Klima ve Navigasyon widget'larının oluşturulması.
- [x] **Dashboard Host:** DSL tabanlı layout'u render eden ana bileşenin yazılması.
- [x] **Adaptive Engine:** Ekran çözünürlüğüne göre DSL üzerinden layout seçimi altyapısı.

## 4. Offline Intelligence & Firewall (Faz 3)
- [x] **Command Matcher:** DSL'de tanımlanan "offlinePhrases" kalıplarını metinle eşleştiren motorun yazılması.
- [x] **Firewall V2:** DSL üzerinden tanımlanan güvenlik kurallarının ve parametre doğrulamalarının aktif edilmesi.
- [x] **Hybrid Router:** DSL tabanlı komutların hem LLM'e (Schema) hem yerel Regex motoruna bağlanması.

## 5. Stabilizasyon & Migration (Faz 4)
- [x] **Core Init:** DSL bileşenlerinin `AssistantApplication` üzerinde başlatılması.
- [x] **MainActivity Migration:** Home ekranının `DashboardHost` yapısına geçirilmesi.
- [x] **Agent Migration:** Sesli asistanın `HybridRouter` ve `FirewallV2` kullanacak şekilde güncellenmesi.
- [x] **Vehicle Migration:** `VehicleController`'ın DSL üzerinden polling yapması sağlandı.
- [x] **Visual Restoration:** Tüm eski özelliklerin (HUD, Overlay, Nav lines) yeni yapıya taşınması.
- [ ] Performans testleri (API 29 üzerinde CPU/Memory analizi).

---

## Kontrol Listesi (Sürekli Güncellenecek)
- [ ] Platform DSL temeli atıldı mı?
- [ ] Layout Engine panelleri doğru çiziyor mu?
- [ ] Çevrimdışı komutlar DSL üzerinden tetikleniyor mu?
- [ ] Omoda 5 donanım kısıtları (235dp sidebar vb.) DSL'de tanımlı mı?
