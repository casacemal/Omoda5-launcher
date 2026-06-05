# Omoda 5 VHAL Debugging Suite (Python)

Bu klasör, Omoda 5 Launcher projesi için geliştirilen VHAL (Araç Veri Katmanı) hata ayıklama ve simülasyon araçlarını içerir.

## Araçlar

### 1. VHAL Simulator (`vhal_simulator.py`)
- **Versiyon:** v1.0.0
- **Görev:** Sanal VHAL verisi üretir ve UDP portu üzerinden yayınlar.
- **Kullanım:** `python3 vhal_simulator.py`

### 2. VHAL Receiver (`vhal_receiver.py`)
- **Versiyon:** v1.0.0
- **Görev:** Simülatörden gelen verileri Android `VhalManager.kt` mantığı ile çözer.
- **Kullanım:** `python3 vhal_receiver.py`

### 3. VHAL Monitor Pro (`vhal_monitor_pro.py`)
- **Versiyon:** v2.0.1
- **Görev:** ADB üzerinden gerçek cihaz loglarını okur, filtreler ve Dashboard üzerinde görselleştirir.
- **Kullanım:** `python3 vhal_monitor_pro.py`

## Test Sonuçları
- **Sözdizimi Kontrolü:** Başarılı (Python 3.8+)
- **Bağımlılıklar:** `curses`, `subprocess`, `threading`, `socket`, `re` (Hepsi Python standart kütüphanesidir).
- **Platform:** Linux / macOS (Windows için Terminal desteği gerekebilir).

## Kurulum
Herhangi bir kurulum gerektirmez, doğrudan çalıştırılabilir. ADB'nin sistemde yüklü ve cihazın bağlı olduğundan emin olun.
