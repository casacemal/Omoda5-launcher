package com.omoda.lanc.core

import android.content.Context
import android.util.Log

sealed class CommandResult {
    data class Success(val message: String) : CommandResult()
    data class Blocked(val reason: String) : CommandResult()
    object NotMatched : CommandResult()
}

/**
 * CommandRouter - Niyet Analiz ve Yönlendirme Motoru.
 * 
 * Bu sınıf, kullanıcıdan gelen sesli komut metnini analiz ederek işlemin yerel 
 * (Araç/Sistem) bir komut mu yoksa yapay zeka (AI) tarafından işlenmesi gereken 
 * bir talep mi olduğuna karar verir. "Araç komutları LLM'ye bırakılmaz" prensibi 
 * gereği, kritik araç fonksiyonları (klima, medya, ses vb.) öncelikle burada 
 * Regex kalıplarıyla eşleştirilir.
 * 
 * @property context Uygulama bağlamı.
 * @property commandFirewall Komutların doğrulanması ve yürütülmesi için kullanılan güvenlik birimi.
 */
class CommandRouter(
    private val context: Context,
    private val commandFirewall: CommandFirewall
) {
    // Niyetleri yakalayacak Regex kalıpları
    private val hvacTempPattern = Regex("klima(yı)?\\s*(?<derece>\\d+)\\s*derece")
    private val hvacStatePattern = Regex("klima(yı)?\\s*(?<durum>aç|kapat)")
    private val mediaPattern = Regex("(müzik|şarkı|medya)\\s*(?<aksiyon>geç|sonraki|durdur|oynat|başlat|duraklat)")
    private val volumePattern = Regex("ses(i)?\\s*(?<aksiyon>artır|yükselt|azalt|kıs|kapat|aç)")
    private val brightnessPattern = Regex("(?<aksiyon>ekran)?\\s*parlaklık\\s*(?<seviye>\\d+)?\\s*(?<islem>artır|yükselt|azalt|kıs|yap)?")
    private val appPattern = Regex("(?<aksiyon>aç|başlat)\\s*(?<app>navigasyon|harita|spotify|youtube|ayarlar|müzik|video)")
    private val timePattern = Regex("(saat|vakit|tarih|gün)\\s*(?<soru>kaç|ne|nedir)")
    private val windowPattern = Regex("(?<hedef>cam|sunroof|açılır tavan)(ları)?\\s*(?<aksiyon>aç|kapat|yarıya kadar aç|kaldır|indir)")

    /**
     * Metni analiz eder ve eğer yerel bir komutsa yürütür.
     * @return Yürütme sonucu veya eşleşmediyse NotMatched
     */
    fun analyzeAndExecute(text: String): CommandResult {
        val lowerText = text.lowercase().trim()

        // 1. Klima Derecesi
        hvacTempPattern.find(lowerText)?.let { match ->
            val derece = match.groups["derece"]?.value?.toIntOrNull()
            if (derece != null) {
                commandFirewall.validateAndExecute("set_hvac_temp", "{\"temperature\": $derece}")
                return CommandResult.Success("Klimayı $derece dereceye ayarlıyorum.")
            }
        }

        // 2. Klima Açma/Kapatma
        hvacStatePattern.find(lowerText)?.let { match ->
            val durum = match.groups["durum"]?.value
            if (durum == "aç") {
                commandFirewall.validateAndExecute("hvac_on", "{}")
                return CommandResult.Success("Klimayı açıyorum.")
            } else if (durum == "kapat") {
                commandFirewall.validateAndExecute("hvac_off", "{}")
                return CommandResult.Success("Klimayı kapattım.")
            }
        }

        // 3. Medya Kontrolü
        mediaPattern.find(lowerText)?.let { match ->
            val aksiyon = match.groups["aksiyon"]?.value
            return when (aksiyon) {
                "geç", "sonraki" -> {
                    commandFirewall.validateAndExecute("media_next", "{}")
                    CommandResult.Success("Sonraki parçaya geçiliyor.")
                }
                "durdur", "duraklat" -> {
                    commandFirewall.validateAndExecute("media_play_pause", "{}")
                    CommandResult.Success("Medya durduruldu.")
                }
                "oynat", "başlat" -> {
                    commandFirewall.validateAndExecute("media_play_pause", "{}")
                    CommandResult.Success("Medya başlatılıyor.")
                }
                else -> CommandResult.NotMatched
            }
        }

        // 4. Ses Kontrolü
        volumePattern.find(lowerText)?.let { match ->
            val aksiyon = match.groups["aksiyon"]?.value
            return when (aksiyon) {
                "artır", "yükselt" -> {
                    commandFirewall.validateAndExecute("execute_adb", "{\"command\": \"input keyevent 24\"}")
                    CommandResult.Success("Ses artırılıyor.")
                }
                "azalt", "kıs" -> {
                    commandFirewall.validateAndExecute("execute_adb", "{\"command\": \"input keyevent 25\"}")
                    CommandResult.Success("Ses azaltılıyor.")
                }
                "kapat" -> {
                    commandFirewall.validateAndExecute("execute_adb", "{\"command\": \"input keyevent 164\"}")
                    CommandResult.Success("Ses kapatıldı.")
                }
                "aç" -> {
                    commandFirewall.validateAndExecute("execute_adb", "{\"command\": \"input keyevent 164\"}")
                    CommandResult.Success("Ses açıldı.")
                }
                else -> CommandResult.NotMatched
            }
        }

        // 5. Parlaklık Kontrolü
        brightnessPattern.find(lowerText)?.let { match ->
            val seviye = match.groups["seviye"]?.value?.toIntOrNull()
            val islem = match.groups["islem"]?.value
            
            if (seviye != null) {
                val brightnessVal = (seviye * 2.55).toInt().coerceIn(0, 255)
                commandFirewall.validateAndExecute("set_brightness", "{\"level\": $brightnessVal}")
                return CommandResult.Success("Ekran parlaklığını yüzde $seviye yapıyorum.")
            }
            
            return when (islem) {
                "artır", "yükselt" -> {
                    commandFirewall.validateAndExecute("execute_adb", "{\"command\": \"input keyevent 221\"}") // Brightness Up
                    CommandResult.Success("Parlaklık artırılıyor.")
                }
                "azalt", "kıs" -> {
                    commandFirewall.validateAndExecute("execute_adb", "{\"command\": \"input keyevent 220\"}") // Brightness Down
                    CommandResult.Success("Parlaklık azaltılıyor.")
                }
                else -> CommandResult.NotMatched
            }
        }

        // 6. Uygulama Başlatma
        appPattern.find(lowerText)?.let { match ->
            val app = match.groups["app"]?.value
            val pkg = when (app) {
                "navigasyon", "harita" -> "com.google.android.apps.maps"
                "spotify" -> "com.spotify.music"
                "youtube" -> "com.google.android.youtube"
                "ayarlar" -> "com.android.settings"
                "müzik" -> "com.android.music"
                "video" -> "com.android.video"
                else -> null
            }
            if (pkg != null) {
                commandFirewall.validateAndExecute("open_app", "{\"package_name\": \"$pkg\"}")
                return CommandResult.Success("${app?.replaceFirstChar { it.uppercase() }} açılıyor.")
            }
        }

        // 7. Saat ve Tarih
        if (timePattern.containsMatchIn(lowerText)) {
            val sdf = java.text.SimpleDateFormat("HH:mm", java.util.Locale.getDefault())
            val date = sdf.format(java.util.Date())
            if (lowerText.contains("gün") || lowerText.contains("tarih")) {
                val sdfDate = java.text.SimpleDateFormat("d MMMM EEEE", java.util.Locale("tr"))
                return CommandResult.Success("Bugün ${sdfDate.format(java.util.Date())}. Saat ise $date.")
            }
            return CommandResult.Success("Şu an saat $date.")
        }

        // 8. Cam ve Sunroof Kontrolü
        windowPattern.find(lowerText)?.let { match ->
            val hedef = if (match.groups["hedef"]?.value?.contains("sunroof") == true || match.groups["hedef"]?.value?.contains("tavan") == true) "sunroof" else "window"
            val aksiyon = match.groups["aksiyon"]?.value
            val pos = when (aksiyon) {
                "aç", "indir" -> 100
                "kapat", "kaldır" -> 0
                "yarıya kadar aç" -> 50
                else -> 0
            }
            commandFirewall.validateAndExecute("set_window_position", "{\"target\": \"$hedef\", \"position\": $pos}")
            val hedefTr = if (hedef == "sunroof") "Sunroof'u" else "Camları"
            val aksiyonTr = if (pos == 0) "kapatıyorum" else "açıyorum"
            return CommandResult.Success("$hedefTr $aksiyonTr.")
        }

        // 5. Mod Değişiklikleri (AgentManager'dan buraya taşındı)
        when {
            lowerText.contains("sohbet moduna geç") || lowerText.contains("sohbet modu") -> {
                com.omoda.lanc.AssistantApplication.currentMode.value = "CHAT"
                return CommandResult.Success("Sohbet moduna geçtim.")
            }
            lowerText.contains("asistan moduna dön") || lowerText.contains("asistan modu") -> {
                com.omoda.lanc.AssistantApplication.currentMode.value = "ASISTANT"
                return CommandResult.Success("Asistan moduna geçtim.")
            }
            lowerText.contains("izleme modu") || lowerText.contains("monitör modu") -> {
                com.omoda.lanc.AssistantApplication.currentMode.value = "MONITOR"
                return CommandResult.Success("İzleme modundayım.")
            }
        }

        return CommandResult.NotMatched
    }
}
