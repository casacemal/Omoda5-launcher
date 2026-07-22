package com.omoda.lanc.ui.screens.settings

import android.content.Context
import android.content.Intent
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.PermissionManager
import com.omoda.lanc.core.SystemTimeSync
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.core.dsl.Omoda5
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.components.StatusLed
import com.omoda.lanc.voice.ModelRepairManager
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*
import com.omoda.lanc.ui.screens.*

@Composable
fun TabAsistanEnhanced(
    isCompact: Boolean,
    sttMode: String,
    onSttModeChange: (String) -> Unit,
    ttsEngine: String,
    onTtsEngineChange: (String) -> Unit,
    micSource: String,
    onMicSourceChange: (String) -> Unit,
    useDecision: Boolean,
    onUseDecisionChange: (Boolean) -> Unit,
    isContinuous: Boolean,
    onIsContinuousChange: (Boolean) -> Unit,
    isWakeWord: Boolean,
    onIsWakeWordChange: (Boolean) -> Unit,
    snr: Float,
    onSnrChange: (Float) -> Unit,
    silence: Long,
    onSilenceChange: (Long) -> Unit,
    gain: Float,
    onGainChange: (Float) -> Unit,
    ttsRate: Float,
    onTtsRateChange: (Float) -> Unit,
    ttsPitch: Float,
    onTtsPitchChange: (Float) -> Unit
) {
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isPortrait = config.orientation == android.content.res.Configuration.ORIENTATION_PORTRAIT
    val spacing = if (isCompact) (if(isPortrait) 8.dp else 4.dp) else 16.dp
    val scope = rememberCoroutineScope()
    val context = LocalContext.current
    var repairStatus by remember { mutableStateOf<String?>(null) }

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(spacing)) {
        if (isPortrait) {
            EnhancedSettingCard(title = "SES TANIMA (STT)", isCompact = isCompact) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "BULUT", active = sttMode == "HERMES", onClick = { onSttModeChange("HERMES") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "SHERPA", active = sttMode == "SHERPA", onClick = { onSttModeChange("SHERPA") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "NATIVE", active = sttMode == "LOCAL", onClick = { onSttModeChange("LOCAL") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                }
            }
            EnhancedSettingCard(title = "SES SENTEZİ (TTS)", isCompact = isCompact) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "EDGE", active = ttsEngine == "EDGE", onClick = { onTtsEngineChange("EDGE") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "9ROUTER", active = ttsEngine == "9ROUTER", onClick = { onTtsEngineChange("9ROUTER") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "PIPER", active = ttsEngine == "SHERPA", onClick = { onTtsEngineChange("SHERPA") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "NATIVE", active = ttsEngine == "LOCAL", onClick = { onTtsEngineChange("LOCAL") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                }
            }
        } else {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(spacing)) {
                EnhancedSettingCard(title = "SES TANIMA (STT)", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        SettingsToggleButton(label = "BULUT", active = sttMode == "HERMES", onClick = { onSttModeChange("HERMES") }, isCompact = isCompact)
                        SettingsToggleButton(label = "SHERPA", active = sttMode == "SHERPA", onClick = { onSttModeChange("SHERPA") }, isCompact = isCompact)
                        SettingsToggleButton(label = "NATIVE", active = sttMode == "LOCAL", onClick = { onSttModeChange("LOCAL") }, isCompact = isCompact)
                    }
                }
                EnhancedSettingCard(title = "SES SENTEZİ (TTS)", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                        SettingsToggleButton(label = "EDGE", active = ttsEngine == "EDGE", onClick = { onTtsEngineChange("EDGE") }, isCompact = isCompact)
                        SettingsToggleButton(label = "9ROUTER", active = ttsEngine == "9ROUTER", onClick = { onTtsEngineChange("9ROUTER") }, isCompact = isCompact)
                        SettingsToggleButton(label = "PIPER", active = ttsEngine == "SHERPA", onClick = { onTtsEngineChange("SHERPA") }, isCompact = isCompact)
                        SettingsToggleButton(label = "NATIVE", active = ttsEngine == "LOCAL", onClick = { onTtsEngineChange("LOCAL") }, isCompact = isCompact)
                    }
                }
            }
        }
        
        EnhancedSettingCard(title = "MİKROFON HASSASİYETİ (VHAL)", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(if (isCompact) 8.dp else 16.dp)) {
                SliderWithLabel(label = "SNR Eşiği (Hassasiyet)", value = snr, range = 0.5f..4.0f, onValueChange = onSnrChange)
                SliderWithLabel(label = "PCM Kazanç (Gain)", value = gain, range = 1.0f..8.0f, onValueChange = onGainChange)
                SliderWithLabel(label = "Sessizlik Süresi (ms)", value = silence.toFloat(), range = 500f..5000f, steps = 9, onValueChange = { onSilenceChange(it.toLong()) })
            }
        }

        EnhancedSettingCard(title = "SES AYARLARI (EDGE TTS)", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(if (isCompact) 8.dp else 16.dp)) {
                SliderWithLabel(label = "Konuşma Hızı", value = ttsRate, range = 0.5f..2.0f, onValueChange = onTtsRateChange)
                SliderWithLabel(label = "Ses Tonu (Pitch)", value = ttsPitch, range = 0.5f..2.0f, onValueChange = onTtsPitchChange)
            }
        }
        
        EnhancedSettingCard(title = "DİYALOG AYARLARI", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(if (isCompact) 8.dp else 12.dp)) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                    SwitchOption(label = "Hey Omoda", checked = isWakeWord, onChecked = onIsWakeWordChange)
                    SwitchOption(label = "Kesintisiz", checked = isContinuous, onChecked = onIsContinuousChange)
                }

                com.omoda.lanc.ui.components.CarButton(
                    onClick = {
                        scope.launch {
                            ModelRepairManager.checkAndRepair(context) { status ->
                                repairStatus = status
                            }
                        }
                    },
                    modifier = Modifier.fillMaxWidth().height(if(isCompact) 48.dp else 64.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray),
                    text = repairStatus ?: "SES MODELLERİNİ ONAR"
                )

                if (repairStatus != null) {
                    Text(repairStatus!!, color = OmodaCyan, fontSize = 10.sp, textAlign = TextAlign.Center, modifier = Modifier.fillMaxWidth())
                }
                
                HorizontalDivider(color = Color.White.copy(alpha = 0.05f))
                Text("Mikrofon Kaynağı", color = Color.Gray, fontSize = 12.sp)
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    SettingsToggleButton(label = "STT", active = micSource == "VOICE_RECOGNITION", onClick = { onMicSourceChange("VOICE_RECOGNITION") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "VOIP", active = micSource == "VOICE_COMMUNICATION", onClick = { onMicSourceChange("VOICE_COMMUNICATION") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                    SettingsToggleButton(label = "MIC", active = micSource == "MIC", onClick = { onMicSourceChange("MIC") }, modifier = Modifier.weight(1f), isCompact = isCompact)
                }
            }
        }
    }
}

