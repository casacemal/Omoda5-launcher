# PROJECT_BRIEF.md - AAOS Asistan (Üretim Seviyesi Mimari)

## Ürün Tanımı (PDF Plan v2.0 Tabanlı)
Android Automotive OS üzerinde çalışan; telemetri, AI sesli asistan, adaptif sürüş bağlam motoru ve ses karıştırma motorunu birleştiren **Automotive AI Runtime Layer**.

## Temel Prensipler
1.  **Everything = Event:** Tüm sistem iletişimi event-driven ( SharedFlow) olacak.
2.  **No Polling Dependency:** Mantıksal katmanlar polling verisine bağımlı olmayacak.
3.  **No UI-Driven Mutation:** Durum değişiklikleri UI üzerinden değil, Event Bus üzerinden tetiklenecek.

## Katmanlı Mimari (9 Kritik Katman)
1.  **Vehicle Layer:** CarPropertyManager (Primary) + Dumpsys (Fallback) hibrik telemetri.
2.  **Context Engine:** Sürüş modlarının (PARKED, CITY, HIGHWAY, TRAFFIC, RISK) çıkarımı.
3.  **Event Bus:** Sistem çapında tek SharedFlow iletişim noktası.
4.  **Intent Engine / Command Router:** Ses niyetlerinin (Araç, HA, AI) kural tabanlı ayrıştırılması.
5.  **Policy Engine:** Güvenlik ve izin kontrolü (hız > X ise kısıtlamalar).
6.  **Audio Engine & Hardware Awareness:** Donanım tipine göre (Araç vs Mobil) dinamik AudioAttributes seçimi ve öncelikli lane yönetimi (ALERT > AI > NAV > MUSIC).
7.  **Alert & Event Engine:** TPMS, yakıt, kapı gibi kritik olay uyarıları.
8.  **Driving Analysis Engine:** Sürüş sonrası özet ve verimlilik analizi.
9.  **AI Client (Hermes):** STT, LLM ve TTS pipeline yönetimi.
10. **OTA & App Store:** Github üzerinden otomatik sürüm kontrolü ve in-app güncelleme altyapısı.

## Kaynak Referanslar
*   **Asistan Referansı:** `/mnt/depo/omodaassist_v2` (Sesli asistan için test edilmiş, doğrulanmış kaynak klasör.)
*   **Launcher Referansı:** `/mnt/depo/lancher proje/app` (Launcher tasarımı ve kuralları için baz alınacak kaynak klasör.)

## Tasarım Kuralları (Launcher)
*   `/mnt/depo/lancher proje/app` klasöründeki görsel dil ve `MEDIA_TASARIM.md`, `OMODA5_ULTIMATE_MANIFESTO.md` gibi dokümanlardaki kurallar mevcut projeye (launcher_v2) uygulanacaktır.
*   Görsel tutarlılık için referans projelerdeki Glassmorphism ve renk paleti korunacaktır.

## Kısıtlar ve Kurallar
*   API 29 (AAOS 10) uyumluluğu kesin kuraldır.
*   **Bağlantı Ayarları (SABİT):**
    *   **Gateway IP:** `100.95.239.119`
    *   **Hermes/STT Port:** `8642`
    *   **TTS Port:** `10201`
    *   **Proxy:** Groq ve Edge istekleri her zaman bu Gateway üzerinden proxy edilir.
*   **Geliştirme Hızı:** Büyük değişiklikler hariç, sadece metod/kod güncellemelerinde "Apply Changes" (CTRL+F10) mekanizması kullanılacak.
*   Araç kontrolü asla doğrudan LLM'e (Yapay Zeka) bırakılmayacak; Command Router tarafından yakalanacak.
*   Hareket halindeyken (Speed > 0) riskli ayarların değiştirilmesi engellenecek.
*   **TTS / STT Politikası:** Piper STT yerel olarak test edilmiş olup ilerleyen fazlarda entegre edilecektir. Sherpa TTS ise işlemci darboğazı (CPU lock) yarattığı için şu an baypas edilmiş / beklemeye alınmıştır; sorun çözülmeden bu yapıya dokunulmayacaktır. Local/Online TTS (Edge) ve Local STT yetenekleri Ayarlar üzerinden kontrol edilecektir.
