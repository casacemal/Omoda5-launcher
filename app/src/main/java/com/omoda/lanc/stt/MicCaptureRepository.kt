package com.omoda.lanc.stt

import android.content.Context
import android.media.MediaRecorder
import com.omoda.lanc.AssistantApplication

data class MicCaptureProfile(
    val key: String,
    val label: String,
    val audioSource: Int,
    val audioFocusGain: Int,
    val focusLabel: String,
    val captureLabel: String
)

class MicCaptureRepository(private val context: Context) {

    private val prefs = context.getSharedPreferences("mic_capture_repository", Context.MODE_PRIVATE)

    fun resolveProfile(): MicCaptureProfile {
        val selected = AssistantApplication.micSource.value
        val lastGood = prefs.getString(KEY_LAST_GOOD_PROFILE, null)

        val profile = when {
            selected == "VOICE_COMMUNICATION" -> communicationProfile()
            selected == "VOICE_RECOGNITION" -> recognitionProfile()
            lastGood == "VOICE_COMMUNICATION" -> communicationProfile()
            else -> recognitionProfile()
        }

        AssistantApplication.micCaptureProfile.value = profile.label
        AssistantApplication.micCaptureDetail.value = profile.captureLabel
        AssistantApplication.addLog("Mic profil seçildi: ${profile.label} / focus=${profile.focusLabel}")

        return profile
    }

    fun markLastGood(profile: MicCaptureProfile, success: Boolean) {
        if (success) {
            prefs.edit().putString(KEY_LAST_GOOD_PROFILE, profile.key).apply()
            AssistantApplication.addLog("Mic profil başarılı kaydedildi: ${profile.label}")
        }
    }

    fun describeLastGood(): String {
        return prefs.getString(KEY_LAST_GOOD_PROFILE, "unknown") ?: "unknown"
    }

    private fun communicationProfile(): MicCaptureProfile {
        return MicCaptureProfile(
            key = "VOICE_COMMUNICATION",
            label = "VOICE_COMMUNICATION",
            audioSource = MediaRecorder.AudioSource.VOICE_COMMUNICATION,
            audioFocusGain = android.media.AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE,
            focusLabel = "EXCLUSIVE",
            captureLabel = "VoIP tuned, AGC/AEC if device supports"
        )
    }

    private fun recognitionProfile(): MicCaptureProfile {
        return MicCaptureProfile(
            key = "VOICE_RECOGNITION",
            label = "VOICE_RECOGNITION",
            audioSource = MediaRecorder.AudioSource.VOICE_RECOGNITION,
            audioFocusGain = android.media.AudioManager.AUDIOFOCUS_GAIN_TRANSIENT,
            focusLabel = "TRANSIENT",
            captureLabel = "Speech tuned, lightweight capture"
        )
    }

    companion object {
        private const val KEY_LAST_GOOD_PROFILE = "last_good_profile"
    }
}
