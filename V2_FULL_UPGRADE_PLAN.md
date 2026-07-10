# 🚀 [v2.0.0] Full Paket ve UI Yenileme Planı

Bu döküman, uygulamanın v2.x serisine geçiş stratejisini, kalıcı model yönetimini ve yenilenen kullanıcı arayüzü (UI) detaylarını içerir.

## 1. Mimari Değişim: Kalıcı Model Yönetimi
Uygulamanın ses işleme (ASR/TTS) kabiliyetleri artık uygulama silinse bile cihazda kalacak şekilde yapılandırılmıştır.

*   **Depolama Yolu:** `/sdcard/Omoda/Models` (USB/Dahili Hafıza).
*   **Aktarım Stratejisi:** Modeller ilk kurulumda Assets'ten bu yola taşınır.
*   **Update Desteği:** Sonraki "Update" paketleri (küçük boyutlu APK'lar) model dosyalarını içermeyecek, doğrudan bu kalıcı yoldaki dosyaları kullanacaktır.
*   **İzin Yönetimi:** ADB üzerinden `mkdir` ve `cp` komutları ile yazma güvenliği sağlanır.

## 2. Kullanıcı Arayüzü (UI) Devrimi
Omoda 5 geniş ekranı için optimize edilmiş yeni görsel düzen:

*   **İkon Boyutları:** Uygulama ikonları **%40 büyütüldü** (64dp -> 90dp).
*   **Satır Sınırı:** Sayfa başına maksimum **2 satır** ikon düzenine geçildi.
*   **Hizalama:** Sol kenar boşluğu (`235.dp`) korunarak premium bir görünüm sağlandı.
*   **Kontrol İkonları:** Mic (Asistan), Duvar Kağıdı ve Ayarlar butonları **sol alt köşeye** taşındı.
*   **Versiyon Göstergesi:** Sol alt butonların yanında anlık sürüm numarası (`v2.0.0`) eklendi.
*   **Okunabilirlik:** Ayarlar sayfasındaki versiyon ve "GÜNCEL" yazıları **2 kat büyütüldü**.

## 3. Ses ve Zeka (Hybrid TTS/ASR)
En hafif ve en hızlı modellerle donanım optimizasyonu:

*   **ASR (Sesi Metne Çevirme):** `Whisper Tiny int8` (Sıkıştırılmış) - Pil dostu, yüksek hızlı.
*   **TTS (Metni Sese Çevirme):**
    1.  **Edge Online Direct:** 403 Bypass protokolü ile doğrudan Microsoft üzerinden doğal ses.
    2.  **Sherpa Offline:** Piper TR (Medium) modeli ile internetsiz Türkçe konuşma.
*   **VAD (Ses Aktivite Algılama):** `Silero VAD` ile sadece konuşma anında işlemci tetiklenir (Pil tasarrufu).
*   **Performans Sınırı:** Tüm yerel modeller `num-threads=2` ile kısıtlanarak aşırı ısınma önlenir.

## 4. Sürüm ve OTA Protokolü
*   **Başlangıç:** `VERSION_CODE=2000`, `VERSION_NAME=2.0.0`.
*   **Update Sürümü:** `VERSION_CODE=2005`, `VERSION_NAME=2.0.1`.
*   **Dağıtım:** GitHub App Store üzerinden otomatik güncelleme.
*   **Mod:** Bundan sonraki tüm yayınlar "Update Paket" (Hafif APK ~100MB) olarak sunulacaktır. Modeller APK dışına çıkarılmıştır.

---
**Durum:** Update Moduna Geçildi.
**Tarih:** 05.07.2026
**Not:** Full paketteki modeller `/sdcard/Omoda/Models` dizininde korunur.
