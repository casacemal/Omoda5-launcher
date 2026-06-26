package com.omoda.lanc.core

import android.content.Context
import android.util.Log

sealed class CommandResult {
    data class Success(val message: String) : CommandResult()
    data class Blocked(val reason: String) : CommandResult()
    object NotMatched : CommandResult()
}

/**
 * CommandRouter - PDF Plan v2.0
 * Ses metnini analiz ederek Yerel Komut (Araç/Sistem) veya AI olduğuna karar verir.
 * "Araç komutları LLM'ye bırakılmaz" prensibini uygular.
 */
class CommandRouter(
    private val context: Context,
    private val actionExecutor: ActionExecutor,
    private val ruleEngine: RuleEngine
) {
    // Niyetleri yakalayacak Regex kalıpları
    private val hvacTempPattern = Regex("klima(yı)?\\s*(?<derece>\\d+)\\s*derece")
    private val hvacStatePattern = Regex("klima(yı)?\\s*(?<durum>aç|kapat)")
    private val mediaPattern = Regex("(müzik|şarkı|medya)\\s*(?<aksiyon>geç|sonraki|durdur|oynat|başlat|duraklat)")
    private val volumePattern = Regex("ses(i)?\\s*(?<aksiyon>artır|yükselt|azalt|kıs|kapat|aç)")
    private val brightnessPattern = Regex("(ekran)?\\s*parlaklık\\s*(?<aksiyon>artır|yükselt|azalt|kıs)")

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
                if (!ruleEngine.isCommandAllowed("set_hvac_temp")) return CommandResult.Blocked("Sürüş güvenliği nedeniyle şu an yapılamaz.")
                val res = actionExecutor.execute("set_hvac_temp", "{\"temperature\": $derece}")
                return CommandResult.Success("Klimayı $derece dereceye ayarlıyorum.")
            }
        }

        // 2. Klima Açma/Kapatma
        hvacStatePattern.find(lowerText)?.let { match ->
            val durum = match.groups["durum"]?.value
            if (durum == "aç") {
                actionExecutor.execute("hvac_on", "{}")
                return CommandResult.Success("Klimayı açıyorum.")
            } else if (durum == "kapat") {
                actionExecutor.execute("hvac_off", "{}")
                return CommandResult.Success("Klimayı kapattım.")
            }
        }

        // 3. Medya Kontrolü
        mediaPattern.find(lowerText)?.let { match ->
            val aksiyon = match.groups["aksiyon"]?.value
            return when (aksiyon) {
                "geç", "sonraki" -> {
                    actionExecutor.execute("media_next", "{}")
                    CommandResult.Success("Sonraki parçaya geçiliyor.")
                }
                "durdur", "duraklat" -> {
                    actionExecutor.execute("media_play_pause", "{}")
                    CommandResult.Success("Medya durduruldu.")
                }
                "oynat", "başlat" -> {
                    actionExecutor.execute("media_play_pause", "{}")
                    CommandResult.Success("Medya başlatılıyor.")
                }
                else -> CommandResult.NotMatched
            }
        }

        // 4. Ses Kontrolü
        volumePattern.find(lowerText)?.let { match ->
            val aksiyon = match.groups["aksiyon"]?.value
            // Basit bir artırma azaltma simülasyonu (ADB keyevent 24/25)
            return when (aksiyon) {
                "artır", "yükselt" -> {
                    actionExecutor.execute("execute_adb", "{\"command\": \"input keyevent 24\"}")
                    CommandResult.Success("Ses artırılıyor.")
                }
                "azalt", "kıs" -> {
                    actionExecutor.execute("execute_adb", "{\"command\": \"input keyevent 25\"}")
                    CommandResult.Success("Ses azaltılıyor.")
                }
                "kapat" -> {
                    actionExecutor.execute("execute_adb", "{\"command\": \"input keyevent 164\"}") // Mute
                    CommandResult.Success("Ses kapatıldı.")
                }
                "aç" -> {
                    actionExecutor.execute("execute_adb", "{\"command\": \"input keyevent 164\"}") // Unmute
                    CommandResult.Success("Ses açıldı.")
                }
                else -> CommandResult.NotMatched
            }
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
