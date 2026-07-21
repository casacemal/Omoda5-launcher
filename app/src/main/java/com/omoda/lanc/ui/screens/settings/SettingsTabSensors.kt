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
fun TabSensorler(isCompact: Boolean, pollingConfig: Map<String, Int>) {
    val tiers = listOf(2, 5, 10, 0)
    val tierLabels = mapOf(2 to "2s", 5 to "5s", 10 to "10s", 0 to "OFF")
    val scrollState = rememberScrollState()
    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState).padding(bottom = 80.dp)) {
        EnhancedSettingCard(title = "ARAÇ VERİ POLİTİKASI", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Omoda5.capabilities.forEach { (id, def) ->
                    val tier = pollingConfig[id] ?: def.pollingTier
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(def.label, color = Color.White, modifier = Modifier.weight(1f), fontSize = if(isCompact) 12.sp else 14.sp)
                        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                            tiers.forEach { t ->
                                val sel = tier == t
                                Box(modifier = Modifier.size(if(isCompact) 36.dp else 40.dp, if(isCompact) 26.dp else 30.dp).clip(RoundedCornerShape(4.dp)).background(if(sel) Color(0xFF69E2D3).copy(0.2f) else Color.Transparent).border(1.dp, if(sel) Color(0xFF69E2D3) else Color.White.copy(0.1f), RoundedCornerShape(4.dp)).clickable {
                                    val map = pollingConfig.toMutableMap(); map[id] = t; GlobalState.vehiclePollingConfig.value = map
                                }, contentAlignment = Alignment.Center) {
                                    Text(tierLabels[t]!!, color = if(sel) Color(0xFF69E2D3) else Color.Gray, fontSize = if(isCompact) 9.sp else 10.sp)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

