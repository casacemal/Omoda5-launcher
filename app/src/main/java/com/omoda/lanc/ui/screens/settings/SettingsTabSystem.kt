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
fun TabSistemEnhanced(isCompact: Boolean) {
    val context = LocalContext.current
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isLandscape = config.orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE
    val spacing = if (isCompact) (if(isLandscape) 8.dp else 12.dp) else 24.dp

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(spacing)) {
        if (isLandscape && isCompact) {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                EnhancedSettingCard(title = "VARSAYILAN LAUNCHER", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    com.omoda.lanc.ui.components.CarButton(onClick = { 
                        val cmds = listOf("pm disable-user --user 0 com.yfve.launcher", "cmd package set-home-activity com.omoda.lanc/.MainActivity", "am start -n com.chery.hvac/.view.activity.MainActivity")
                        cmds.forEach { exec(context, it) }
                    }, modifier = Modifier.fillMaxWidth().height(48.dp), colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFF3B14B)), text = "VARSAYILAN YAP")
                }
            }
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                EnhancedSettingCard(title = "PREMIUM ÖZELLİKLER", modifier = Modifier.weight(1.5f), isCompact = isCompact) {
                    val proactive by GlobalState.proactiveNotificationsEnabled.collectAsState()
                    val criticalOnly by GlobalState.criticalNotificationsOnly.collectAsState()
                    val waveform by GlobalState.waveformEnabled.collectAsState()
                    val gamification by GlobalState.gamificationEnabled.collectAsState()

                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                            SwitchOption(label = "Akıllı Bildirimler", checked = proactive, onChecked = { GlobalState.proactiveNotificationsEnabled.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                            SwitchOption(label = "Waveform", checked = waveform, onChecked = { GlobalState.waveformEnabled.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                        }
                        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                            SwitchOption(label = "Sadece Kritik Uyar.", checked = criticalOnly, onChecked = { GlobalState.criticalNotificationsOnly.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                            SwitchOption(label = "Sürüş Puanı", checked = gamification, onChecked = { GlobalState.gamificationEnabled.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                        }
                    }
                }
                EnhancedSettingCard(title = "ARAÇ ARAÇLARI", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                        com.omoda.lanc.ui.components.CarButton(onClick = { exec(context, "am start -n com.chery.hvac/.view.activity.MainActivity") }, modifier = Modifier.weight(1f).height(48.dp), text = "KLİMA")
                        com.omoda.lanc.ui.components.CarButton(onClick = { exec(context, "svc wifi disable; sleep 2; svc wifi enable") }, modifier = Modifier.weight(1f).height(48.dp), text = "WIFI")
                    }
                }
            }
        } else {
            EnhancedSettingCard(title = "VARSAYILAN LAUNCHER", isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    com.omoda.lanc.ui.components.CarButton(onClick = { 
                        val cmds = listOf("pm disable-user --user 0 com.yfve.launcher", "cmd package set-home-activity com.omoda.lanc/.MainActivity", "am start -n com.chery.hvac/.view.activity.MainActivity")
                        cmds.forEach { exec(context, it) }
                    }, modifier = Modifier.fillMaxWidth().height(if(isCompact) 48.dp else 64.dp), colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFF3B14B)), text = "VARSAYILAN YAP (ZORLA)")
                }
            }
            EnhancedSettingCard(title = "PREMIUM ÖZELLİKLER", isCompact = isCompact) {
                val proactive by GlobalState.proactiveNotificationsEnabled.collectAsState()
                val criticalOnly by GlobalState.criticalNotificationsOnly.collectAsState()
                val waveform by GlobalState.waveformEnabled.collectAsState()
                val gamification by GlobalState.gamificationEnabled.collectAsState()

                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    SwitchOption(label = "Akıllı Bildirimler (Dynamic Island)", checked = proactive, onChecked = { GlobalState.proactiveNotificationsEnabled.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                    if (proactive) {
                        SwitchOption(label = "Sadece Önemli Bildirimler", checked = criticalOnly, onChecked = { GlobalState.criticalNotificationsOnly.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                    }
                    SwitchOption(label = "Ses Dalgası Animasyonu", checked = waveform, onChecked = { GlobalState.waveformEnabled.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                    SwitchOption(label = "Sürüş Puanı (Gamification)", checked = gamification, onChecked = { GlobalState.gamificationEnabled.value = it; com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync() })
                }
            }
            EnhancedSettingCard(title = "ARAÇ ARAÇLARI", isCompact = isCompact) {
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    com.omoda.lanc.ui.components.CarButton(
                        onClick = { 
                            val cmds = listOf(
                                "pm enable com.chery.hvac", 
                                "am start -n com.chery.hvac/.view.activity.MainActivity",
                                "dumpsys car_service set-property-value 354419973 0 1"
                            )
                            cmds.forEach { exec(context, it) }
                        }, 
                        modifier = Modifier.weight(1f).height(if(isCompact) 48.dp else 64.dp),
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFE91E63)),
                        text = "KLİMA ONAR"
                    )
                    com.omoda.lanc.ui.components.CarButton(onClick = { exec(context, "svc wifi disable; sleep 2; svc wifi enable") }, modifier = Modifier.weight(1f).height(if(isCompact) 48.dp else 64.dp), text = "WIFI ONAR")
                }
            }
        }

        EnhancedSettingCard(title = "YEDEKLEME VE GERİ YÜKLEME", isCompact = isCompact) {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                com.omoda.lanc.ui.components.CarButton(
                    onClick = { 
                        val success = AssistantApplication.configManager.backupConfig()
                        android.widget.Toast.makeText(context, if(success) "Ayarlar Yedeklendi (SDCard/Omoda)" else "Yedekleme Başarısız", android.widget.Toast.LENGTH_SHORT).show()
                    }, 
                    modifier = Modifier.weight(1f).height(if(isCompact) 48.dp else 64.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF2196F3)),
                    text = "YEDEKLE"
                )
                
                com.omoda.lanc.ui.components.CarButton(
                    onClick = { 
                        val success = AssistantApplication.configManager.restoreConfig()
                        if (success) {
                            android.widget.Toast.makeText(context, "Ayarlar Geri Yüklendi!", android.widget.Toast.LENGTH_LONG).show()
                            // Uygulamayı yeniden başlatmaya zorlamak yerine config'i tekrar yükle
                            AssistantApplication.instance?.loadConfig()
                        } else {
                            android.widget.Toast.makeText(context, "Yedek Dosyası Bulunamadı", android.widget.Toast.LENGTH_SHORT).show()
                        }
                    }, 
                    modifier = Modifier.weight(1f).height(if(isCompact) 48.dp else 64.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFFF9800)),
                    text = "GERİ YÜKLE"
                )
            }
        }
    }
}

