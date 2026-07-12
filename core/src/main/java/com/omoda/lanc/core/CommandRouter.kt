package com.omoda.lanc.core

import android.content.Context

sealed class CommandResult {
    data class Success(val message: String) : CommandResult()
    data class Blocked(val reason: String) : CommandResult()
    object NotMatched : CommandResult()
}

/**
 * CommandRouter - Niyet Analiz ve Yönlendirme Motoru.
 */
class CommandRouter(
    private val context: Context,
    private val commandFirewall: CommandFirewall
) {
    private val hvacTempPattern = Regex("klima(yı)?\\s*(?<derece>\\d+)\\s*derece")
    private val hvacStatePattern = Regex("klima(yı)?\\s*(?<durum>aç|kapat)")
    private val mediaPattern = Regex("(müzik|şarkı|medya)\\s*(?<aksiyon>geç|sonraki|durdur|oynat|başlat|duraklat)")
    private val volumePattern = Regex("ses(i)?\\s*(?<aksiyon>artır|yükselt|azalt|kıs|kapat|aç)")
    private val brightnessPattern = Regex("(?<aksiyon>ekran)?\\s*parlaklık\\s*(?<seviye>\\d+)?\\s*(?<islem>artır|yükselt|azalt|kıs|yap)?")
    private val appPattern = Regex("(?<aksiyon>aç|başlat)\\s*(?<app>navigasyon|harita|spotify|youtube|ayarlar|müzik|video)")
    private val timePattern = Regex("(saat|vakit|tarih|gün)\\s*(?<soru>kaç|ne|nedir)")
    private val windowPattern = Regex("(?<hedef>cam|sunroof|açılır tavan)(ları)?\\s*(?<aksiyon>aç|kapat|yarıya kadar aç|kaldır|indir)")

    private fun executeWithFirewall(cmd: String, args: String, successMsg: String): CommandResult {
        val result = commandFirewall.validateAndExecute(cmd, args)
        return if (result.startsWith("Error:")) {
            CommandResult.Blocked(result.removePrefix("Error:").trim())
        } else {
            CommandResult.Success(successMsg)
        }
    }

    fun analyzeAndExecute(text: String): CommandResult {
        val lowerText = text.lowercase().trim()

        hvacTempPattern.find(lowerText)?.let { match ->
            val derece = match.groups["derece"]?.value?.toIntOrNull()
            if (derece != null) {
                return executeWithFirewall("set_hvac_temp", "{\"temperature\": $derece}", "Klimayı $derece dereceye ayarlıyorum.")
            }
        }

        hvacStatePattern.find(lowerText)?.let { match ->
            val durum = match.groups["durum"]?.value
            if (durum == "aç") {
                return executeWithFirewall("hvac_on", "{}", "Klimayı açıyorum.")
            } else if (durum == "kapat") {
                return executeWithFirewall("hvac_off", "{}", "Klimayı kapattım.")
            }
        }

        mediaPattern.find(lowerText)?.let { match ->
            val aksiyon = match.groups["aksiyon"]?.value
            return when (aksiyon) {
                "geç", "sonraki" -> executeWithFirewall("media_next", "{}", "Sonraki parçaya geçiliyor.")
                "durdur", "duraklat" -> executeWithFirewall("media_play_pause", "{}", "Medya durduruldu.")
                "oynat", "başlat" -> executeWithFirewall("media_play_pause", "{}", "Medya başlatılıyor.")
                else -> CommandResult.NotMatched
            }
        }

        volumePattern.find(lowerText)?.let { match ->
            val aksiyon = match.groups["aksiyon"]?.value
            return when (aksiyon) {
                "artır", "yükselt" -> executeWithFirewall("execute_adb", "{\"command\": \"input keyevent 24\"}", "Ses artırılıyor.")
                "azalt", "kıs" -> executeWithFirewall("execute_adb", "{\"command\": \"input keyevent 25\"}", "Ses azaltılıyor.")
                "kapat" -> executeWithFirewall("execute_adb", "{\"command\": \"input keyevent 164\"}", "Ses kapatıldı.")
                "aç" -> executeWithFirewall("execute_adb", "{\"command\": \"input keyevent 164\"}", "Ses açıldı.")
                else -> CommandResult.NotMatched
            }
        }

        brightnessPattern.find(lowerText)?.let { match ->
            val seviye = match.groups["seviye"]?.value?.toIntOrNull()
            val islem = match.groups["islem"]?.value
            
            if (seviye != null) {
                val brightnessVal = (seviye * 2.55).toInt().coerceIn(0, 255)
                return executeWithFirewall("set_brightness", "{\"level\": $brightnessVal}", "Ekran parlaklığını yüzde $seviye yapıyorum.")
            }
            
            return when (islem) {
                "artır", "yükselt" -> executeWithFirewall("execute_adb", "{\"command\": \"input keyevent 221\"}", "Parlaklık artırılıyor.")
                "azalt", "kıs" -> executeWithFirewall("execute_adb", "{\"command\": \"input keyevent 220\"}", "Parlaklık azaltılıyor.")
                else -> CommandResult.NotMatched
            }
        }

        val youtubeSearchPattern = Regex("youtube('da)?\\s*(?<sorgu>.+)\\s*(aç|ara|başlat|oynat|bul)")
        youtubeSearchPattern.find(lowerText)?.let { match ->
            val sorgu = match.groups["sorgu"]?.value
            if (sorgu != null) {
                return executeWithFirewall("search_youtube", "{\"query\": \"$sorgu\"}", "YouTube'da $sorgu aranıyor.")
            }
        }

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
                val response = if (app == "youtube") {
                    "YouTube açılıyor, ne izlemek istersiniz?"
                } else {
                    "${app?.replaceFirstChar { it.uppercase() }} açılıyor."
                }
                return executeWithFirewall("open_app", "{\"package_name\": \"$pkg\"}", response)
            }
        }

        if (timePattern.containsMatchIn(lowerText)) {
            val sdf = java.text.SimpleDateFormat("HH:mm", java.util.Locale.getDefault())
            val date = sdf.format(java.util.Date())
            if (lowerText.contains("gün") || lowerText.contains("tarih")) {
                val sdfDate = java.text.SimpleDateFormat("d MMMM EEEE", java.util.Locale("tr"))
                return CommandResult.Success("Bugün ${sdfDate.format(java.util.Date())}. Saat ise $date.")
            }
            return CommandResult.Success("Şu an saat $date.")
        }

        windowPattern.find(lowerText)?.let { match ->
            val hedef = if (match.groups["hedef"]?.value?.contains("sunroof") == true || match.groups["hedef"]?.value?.contains("tavan") == true) "sunroof" else "window"
            val aksiyon = match.groups["aksiyon"]?.value
            val pos = when (aksiyon) {
                "aç", "indir" -> 100
                "kapat", "kaldır" -> 0
                "yarıya kadar aç" -> 50
                else -> 0
            }
            val hedefTr = if (hedef == "sunroof") "Sunroof'u" else "Camları"
            val aksiyonTr = if (pos == 0) "kapatıyorum" else "açıyorum"
            return executeWithFirewall("set_window_position", "{\"target\": \"$hedef\", \"position\": $pos}", "$hedefTr $aksiyonTr.")
        }

        when {
            lowerText.contains("sohbet moduna geç") || lowerText.contains("sohbet modu") -> {
                GlobalState.currentMode.value = "CHAT"
                return CommandResult.Success("Sohbet moduna geçtim.")
            }
            lowerText.contains("asistan moduna dön") || lowerText.contains("asistan modu") -> {
                GlobalState.currentMode.value = "ASISTANT"
                return CommandResult.Success("Asistan moduna geçtim.")
            }
            lowerText.contains("izleme modu") || lowerText.contains("monitör modu") -> {
                GlobalState.currentMode.value = "MONITOR"
                return CommandResult.Success("İzleme modundayım.")
            }
        }

        return CommandResult.NotMatched
    }
}
