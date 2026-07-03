# FILE_INDEX.md - Mimari Harita ve Dosya Rehberi

Aşağıdaki tablo, projedeki dosyaların sorumluluklarını ve veri akışını özetler:

| Katman | Dosya | Görev |
| :--- | :--- | :--- |
| **Global** | `AssistantApplication.kt` | Uygulama hafızası, global StateFlow yönetimi ve dinamik IP/Bridge yapılandırması. (GÜNCELLENDİ: Kayıt anında MQTT ve Client yenileme eklendi.) |
| **Global** | `ConfigManager.kt` | Şifreli `app_config.json` yönetimi. (GÜNCELLENDİ: Sabit değer zorlamaları kaldırıldı.) |
| **AI** | `AgentManager.kt` | AI karar motoru, SSE akışı ve araç araçları (tools). (GÜNCELLENDİ: Groq bağımlılığı kaldırıldı.) |
| **Haberleşme**| `HermesClient.kt` | `100.95.239.119:20128` üzerinden STT ve Session yönetimi. (GÜNCELLENDİ: REST telemetri kaldırıldı.) |
| **Haberleşme**| `NetworkModule.kt` | Merkezi HTTP istemcileri ve zaman aşımı (timeout) yönetimi. |
| **Haberleşme**| `NetworkMonitor.kt` | Ağ durumu izleme ve Gateway erişilebilirlik (port 20128) denetimi. (GÜNCELLENDİ: VPN durum izleme ve otomatik onarım eklendi.) |
| **Haberleşme**| `MqttPublisher.kt` | `100.95.239.119:1883` üzerinden telemetri verilerini dışa aktarma. |
| **UI** | `SettingsScreen.kt` | Ayarlar ekranı. (GÜNCELLENDİ: Köprü tipi seçici eklendi.) |
| **UI** | `HomeScreen.kt` | Ana ekran. (GÜNCELLENDİ: Arayüz sadeleştirildi, motor seçimleri yerelleştirildi.) |
| **Global** | `AppConfig.kt` | Konfigürasyon veri sınıfı. (GÜNCELLENDİ: `bridgeType` desteği eklendi.) |
| **TTS** | `HermesTTSManager.kt` | Wyoming ve OpenAI protokolleri üzerinden TTS yönetimi. |
| **STT** | `HermesClient.kt` | STT gönderimi (Wyoming JSON/Base64 ve OpenAI Multipart desteği). |
| **Test** | `scripts/test_bridge_api.py` | Bridge API (192.168.1.29) için STT/TTS doğrulama aracı. |
| **Temizlik** | (Silindi) | `SettingsManager.kt`, `EdgeOnlineTTSManager.kt` ve eski log dosyaları sistemden temizlendi. |
| **Ses Algılama** | `WakeWordManager.kt` | "Hey Omoda" algılayıcısı. (GÜNCELLENDİ: Sabit IP mimarisine uyarlandı.) |

## Kritik Dosyalar
*   `MainActivity.kt`: Ana giriş noktası ve UI yönetimi.
*   `AssistantController.kt`: Merkezi iş mantığı, STT/TTS akış yönetimi. (GÜNCELLENDİ: Kaskad fallback sadeleştirildi.)
*   `CommandFirewall.kt`: Merkezi güvenlik ve komut denetim birimi.
*   `CommandRouter.kt`: Yerel niyet analiz motoru (Regex). (GÜNCELLENDİ: Parlaklık, Uygulama Başlatma ve Saat/Tarih desteği eklendi.)
*   `AppConfig.kt`: Konfigürasyon veri sınıfı. (GÜNCELLENDİ: Gereksiz alanlar temizlendi.)
*   `AdbClient.kt`: Shell komutu yürütme ve cihaz bağlantı yönetimi.
