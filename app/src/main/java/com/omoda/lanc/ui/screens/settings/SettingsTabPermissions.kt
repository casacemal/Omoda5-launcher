package com.omoda.lanc.ui.screens.settings

import android.content.Context
import android.content.Intent
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
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
fun TabIzinler(isCompact: Boolean) {
    val context = LocalContext.current
    val permissions by PermissionManager.permissions.collectAsState()
    val rootedStatus by PermissionManager.isRooted.collectAsState()
    val scrollState = rememberScrollState()

    LaunchedEffect(Unit) {
        while(true) {
            PermissionManager.checkAll(context)
            delay(5000)
        }
    }

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState).padding(if(isCompact) 8.dp else 16.dp), verticalArrangement = Arrangement.spacedBy(16.dp)) {
        EnhancedSettingCard(title = "SİSTEM YETKİLERİ", isCompact = isCompact) {
            Column {
                permissions.forEach { status ->
                    PermissionItem(status = status, onFix = { PermissionManager.fixPermission(context, status) })
                }
            }
        }

        EnhancedSettingCard(title = "ADB & ROOT YÖNETİMİ", isCompact = isCompact) {
            Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                    Column {
                        Text("Root Durumu", color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                        Text(if(rootedStatus) "Cihaz Rootlu (UID 0)" else "Root Erişimi Yok", color = if(rootedStatus) Color.Green else Color.Gray, fontSize = 11.sp)
                    }
                    com.omoda.lanc.ui.components.CarButton(onClick = { PermissionManager.requestRoot(context) }, colors = ButtonDefaults.buttonColors(containerColor = if(rootedStatus) Color.Gray else OmodaCyan), text = if(rootedStatus) "AKTİF" else "ROOT DENE")
                }
                
                HorizontalDivider(color = Color.White.copy(alpha = 0.05f))
                
                Text("Hızlı ADB Komutları", color = Color(0xFF69E2D3), fontSize = 12.sp, fontWeight = FontWeight.Bold)
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    val adbCmds = listOf(
                        "TCP 5555" to "setprop service.adb.tcp.port 5555; stop adbd; start adbd",
                        "USB MOD" to "setprop service.adb.tcp.port -1; stop adbd; start adbd",
                        "LOG TEMİZLE" to "logcat -c"
                    )
                    adbCmds.forEach { (label, cmd) ->
                        com.omoda.lanc.ui.components.CarButton(
                            onClick = { 
                                android.widget.Toast.makeText(context, "$label komutu gönderildi", android.widget.Toast.LENGTH_SHORT).show()
                                val intent = Intent("com.omoda.lanc.ACTION_EXECUTE_SHELL").apply { 
                                    setPackage(context.packageName)
                                    putExtra("command", cmd) 
                                }
                                context.startForegroundService(intent)
                            },
                            text = label,
                            modifier = Modifier.weight(1f).height(64.dp), // Minimum touch target
                            colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray)
                        )
                    }
                }
            }
        }
    }
}

@Composable
fun StatusIndicator(label: String, active: Boolean, isHandheld: Boolean) {
    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(4.dp)) {
        Box(modifier = Modifier.size(if(isHandheld) 8.dp else 12.dp).clip(CircleShape).background(if (active) Color.Green else Color.Red))
        if(!isHandheld) Text(label, color = Color.White.copy(alpha = 0.7f), fontSize = 14.sp)
    }
}

@Composable
fun LargeTabButton(label: String, icon: androidx.compose.ui.graphics.vector.ImageVector, selected: Boolean, isCompact: Boolean = false, onClick: () -> Unit) {
    val interactionSource = remember { MutableInteractionSource() }
    val isFocused by interactionSource.collectIsFocusedAsState()

    val bgColor by animateColorAsState(
        if (isFocused) Color.White.copy(alpha = 0.2f)
        else if (selected) Color(0xFF69E2D3).copy(alpha = 0.25f) 
        else Color.White.copy(alpha = 0.05f)
    )
    val contentColor by animateColorAsState(if (selected) Color(0xFF69E2D3) else Color.White.copy(alpha = 0.6f))
    val borderColor by animateColorAsState(
        if (isFocused) Color.White 
        else if (selected) Color(0xFF69E2D3).copy(alpha = 0.6f) 
        else Color.Transparent
    )

    Surface(
        color = bgColor,
        shape = RoundedCornerShape(if(isCompact) 10.dp else 16.dp),
        border = BorderStroke(if (isFocused) 4.dp else 1.dp, borderColor),
        modifier = Modifier
            .fillMaxWidth()
            .height(if(isCompact) 48.dp else 64.dp)
            .clickable(
                interactionSource = interactionSource, 
                indication = androidx.compose.material.ripple.rememberRipple()
            ) { onClick() }
    ) {
        Row(
            modifier = Modifier.padding(horizontal = if(isCompact) 8.dp else 16.dp), 
            verticalAlignment = Alignment.CenterVertically, 
            horizontalArrangement = Arrangement.spacedBy(if(isCompact) 8.dp else 12.dp)
        ) {
            Icon(icon, contentDescription = null, tint = contentColor, modifier = Modifier.size(if(isCompact) 20.dp else 28.dp))
            Text(label, color = contentColor, fontSize = if(isCompact) 13.sp else 16.sp, fontWeight = if (selected) FontWeight.ExtraBold else FontWeight.Bold, maxLines = 1)
        }
    }
}

