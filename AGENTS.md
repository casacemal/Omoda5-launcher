# AGENTS.md - Bilgi Çıkarma Protokolü

Bu dosya, projedeki otonom ajanların çalışma prensiplerini ve bilgi yönetim protokollerini tanımlar.

## Bilgi Çıkarma Protokolü

1.  **Gözlem:** Her kullanıcı isteğinde ve kod incelemesinde yeni bilgiler (teknik kısıtlar, tercihler, kararlar) aranır.
2.  **Kayıt:** Yeni bir bilgi tespit edildiğinde, kullanıcıya sormadan ilgili dokümana (PROJECT_BRIEF.md, ROADMAP.md vb.) eklenir.
3.  **Doğrulama:** Eğer yeni bilgi mevcut kararlarla çelişiyorsa, işlem yapmadan önce kullanıcıdan onay istenir.
4.  **Güncelleme:** Her görev sonunda PROGRESS.md ve FILE_INDEX.md güncellenir.

## Teknik Kısıtlar (Kesin Kurallar)

*   **API Seviyesi:** Sadece API 29 (Android 10 - AAOS) uyumlu kod yazılacak.
*   **Disk Önceliği:** Kodlar önce fiziksel dosyaya yazılacak.
*   **Onay Mekanizması:** Gradle/ADB işlemleri için kullanıcıdan "EVET" beklenecek.
*   **Hızlı Yükleme:** Sürekli tam build yapmak yerine, sadece kod değişikliklerini uygulamak için (mümkünse) "Apply Changes" (CTRL+F10) tercih edilecek.
*   **Hata Analizi:** Logcat çıktıları üzerinden satır numarası ile analiz yapılacak.
