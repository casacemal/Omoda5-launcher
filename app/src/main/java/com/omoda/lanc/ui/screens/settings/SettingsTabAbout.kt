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
fun TabHakkinda(isCompact: Boolean, vehicleId: String, serverIp: String) {
    EnhancedSettingCard(title = "SİSTEM BİLGİSİ", isCompact = isCompact) {
        Column(verticalArrangement = Arrangement.spacedBy(if(isCompact) 4.dp else 8.dp)) {
            InfoRow("Uygulama Adı", "Omoda5 Akıllı Asistan")
            InfoRow("Geliştirici", "CasaCemal (Cemal Colak)")
            InfoRow("Versiyon", "${com.omoda.lanc.BuildConfig.VERSION_NAME} (Build ${com.omoda.lanc.BuildConfig.VERSION_NAME})")
            InfoRow("Sistem Yapısı", "Reactive EventBus & Architecture 2.0")
            InfoRow("Build Tarihi", com.omoda.lanc.BuildConfig.BUILD_DATE)
            InfoRow("ID", vehicleId)
            InfoRow("Server", serverIp)
            InfoRow("Hardware", android.os.Build.MODEL)
        }
    }
}

@Composable
fun InfoRow(label: String, value: String) {
    Row {
        Text(label, color = Color.Gray, modifier = Modifier.weight(1f))
        Text(value, color = Color.White, fontWeight = FontWeight.Bold)
    }
}

@Composable
fun SliderWithLabel(label: String, value: Float, range: ClosedFloatingPointRange<Float>, steps: Int = 0, onValueChange: (Float) -> Unit) {
    Column {
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
            Text(label, color = Color.White, fontSize = 14.sp)
            Text("%.1f".format(value), color = Color(0xFF69E2D3), fontWeight = FontWeight.Bold)
        }
        Slider(value = value, onValueChange = onValueChange, valueRange = range, steps = steps, colors = SliderDefaults.colors(thumbColor = Color(0xFF69E2D3), activeTrackColor = Color(0xFF69E2D3)))
    }
}

@Composable
fun SwitchOption(label: String, checked: Boolean, onChecked: (Boolean) -> Unit) {
    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Text(label, color = Color.White, fontSize = 14.sp)
        Switch(checked = checked, onCheckedChange = onChecked, colors = SwitchDefaults.colors(checkedThumbColor = Color(0xFF69E2D3)))
    }
}

@Composable
fun SafetyLockScreen() {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.spacedBy(16.dp)) {
            Icon(Icons.Default.Warning, contentDescription = null, tint = Color.Red, modifier = Modifier.size(80.dp))
            Text("SÜRÜŞ SIRASINDA KISITLI", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Black)
            Text("Güvenliğiniz için araç hareket halindeyken\nbu ayarlar değiştirilemez.", color = Color.Gray, textAlign = TextAlign.Center, fontSize = 16.sp)
        }
    }
}

fun exec(context: Context, command: String) {
    val intent = Intent(context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
        action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
        putExtra("command", command)
    }
    ContextCompat.startForegroundService(context, intent)
}
