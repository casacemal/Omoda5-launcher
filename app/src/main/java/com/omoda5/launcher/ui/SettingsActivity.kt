package com.omoda5.launcher.ui

import android.os.Bundle
import android.content.Intent
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.ui.theme.Omoda5NextGenTheme
import com.omoda5.launcher.ui.theme.DeepBlack
import com.omoda5.launcher.ui.theme.OmodaCyan
import com.omoda5.launcher.ui.theme.MatrixGreen

class SettingsActivity : ComponentActivity() {
    private lateinit var prefs: PreferencesManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        prefs = PreferencesManager(this)
        
        setContent {
            Omoda5NextGenTheme {
                SettingsScreen(
                    prefs = prefs,
                    onAction = { cmd -> executeAdb(cmd) },
                    onNavigateToVehicleData = { startActivity(Intent(this, VehicleDataActivity::class.java)) },
                    onApplyOverscan = { left, right -> applyOverscan(left, right) }
                )
            }
        }
    }

    private fun applyOverscan(leftHidden: Boolean, rightHidden: Boolean) {
        val leftVal = if (rightHidden) -235 else 0
        val rightVal = if (leftHidden) -70 else 0
        executeAdb("wm overscan $leftVal,0,$rightVal,0")
    }

    private fun executeAdb(command: String) {
        val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
            action = "ACTION_EXECUTE_SHELL"
            putExtra("command", command)
        }
        startService(intent)
    }
}

@Composable
fun SettingsScreen(
    prefs: PreferencesManager,
    onAction: (String) -> Unit, 
    onNavigateToVehicleData: () -> Unit,
    onApplyOverscan: (Boolean, Boolean) -> Unit
) {
    val logs = remember { mutableStateListOf("[00:00:01] System Boot Initialized", "[00:00:02] AdbBridge Active") }
    val context = androidx.compose.ui.platform.LocalContext.current

    DisposableEffect(Unit) {
        val receiver = object : android.content.BroadcastReceiver() {
            override fun onReceive(context: android.content.Context?, intent: android.content.Intent?) {
                val log = intent?.getStringExtra("log")
                if (log != null) {
                    logs.add(0, "[${java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault()).format(java.util.Date())}] $log")
                    if (logs.size > 50) logs.removeAt(logs.size - 1)
                }
            }
        }
        context.registerReceiver(receiver, android.content.IntentFilter("com.omoda5.launcher.LOG_BROADCAST"))
        onDispose { context.unregisterReceiver(receiver) }
    }
    
    var leftBarHidden by remember { mutableStateOf(prefs.isLeftBarHidden) }
    var rightBarHidden by remember { mutableStateOf(prefs.isRightBarHidden) }

    Row(modifier = Modifier.fillMaxSize().background(DeepBlack).padding(start = 235.dp)) {
        Column(
            modifier = Modifier.weight(0.75f).fillMaxHeight().padding(20.dp),
            verticalArrangement = Arrangement.spacedBy(15.dp)
        ) {
            Text("SİSTEM KONTROL PANELİ", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
            HorizontalDivider(color = OmodaCyan.copy(alpha = 0.3f), thickness = 1.dp)

            Text("EKRAN VE KLİMA KONTROLLERİ", color = OmodaCyan, fontSize = 14.sp, fontWeight = FontWeight.SemiBold)
            
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                SettingsButton("KLİMAYI AÇ", modifier = Modifier.weight(1f), color = OmodaCyan) { 
                    onAction("monkey -p com.chery.hvac -c android.intent.category.LAUNCHER 1")
                }
                SettingsButton("KLİMAYI KİLİTLE", modifier = Modifier.weight(1f), color = Color.Red.copy(alpha = 0.7f)) { 
                    onAction("am force-stop com.chery.hvac")
                }
            }

            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                SettingsButton(
                    if (leftBarHidden) "SAĞ KÜÇÜK BARI AÇ" else "SAĞ KÜÇÜK BARI GİZLE", 
                    modifier = Modifier.weight(1f),
                    color = if (leftBarHidden) OmodaCyan.copy(alpha = 0.5f) else Color(0xFF1A1A1A)
                ) { 
                    leftBarHidden = !leftBarHidden
                    prefs.isLeftBarHidden = leftBarHidden
                    onApplyOverscan(leftBarHidden, rightBarHidden)
                }
                
                SettingsButton(
                    if (rightBarHidden) "SOL BÜYÜK BARI AÇ" else "SOL BÜYÜK BARI GİZLE", 
                    modifier = Modifier.weight(1f),
                    color = if (rightBarHidden) OmodaCyan.copy(alpha = 0.5f) else Color(0xFF1A1A1A)
                ) { 
                    rightBarHidden = !rightBarHidden
                    prefs.isRightBarHidden = rightBarHidden
                    onApplyOverscan(leftBarHidden, rightBarHidden)
                }
            }

            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                SettingsButton("TÜMÜNÜ SIFIRLA", modifier = Modifier.weight(1f), color = Color(0xFF444444)) { 
                    leftBarHidden = false
                    rightBarHidden = false
                    prefs.isLeftBarHidden = false
                    prefs.isRightBarHidden = false
                    onApplyOverscan(false, false)
                }
                SettingsButton("ARAÇ VERİLERİ", modifier = Modifier.weight(1f), color = OmodaCyan) { onNavigateToVehicleData() }
            }

            Spacer(modifier = Modifier.height(10.dp))
            Text("SİSTEM SERVİSLERİ", color = OmodaCyan, fontSize = 14.sp, fontWeight = FontWeight.SemiBold)

            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(10.dp)) {
                SettingsButton("ADB TCP 5555", modifier = Modifier.weight(1f)) { onAction("setprop service.adb.tcp.port 5555 && stop adbd && start adbd") }
                SettingsButton("GİTHUB GÜNCELLE", modifier = Modifier.weight(1f), color = Color(0xFF2EA44F)) { onAction("am start -a android.intent.action.VIEW -d https://github.com/casacemal/Omoda5-launcher/releases") }
            }

            Spacer(modifier = Modifier.weight(1f))
            Text("Sürüm: v7.0.2-NextGen-Pro | API 29", color = Color.Gray, fontSize = 12.sp)
        }

        Column(
            modifier = Modifier.weight(0.25f).fillMaxHeight().background(Color.Black).border(1.dp, MatrixGreen.copy(alpha = 0.2f)).padding(10.dp)
        ) {
            Text("LIVE_LOGS", color = MatrixGreen, fontSize = 10.sp, fontWeight = FontWeight.Bold)
            Spacer(modifier = Modifier.height(10.dp))
            LazyColumn(modifier = Modifier.fillMaxSize()) {
                items(logs) { log ->
                    Text(text = log, color = MatrixGreen, fontSize = 11.sp, fontFamily = FontFamily.Monospace, lineHeight = 14.sp)
                }
            }
        }
    }
}

@Composable
fun SettingsButton(text: String, modifier: Modifier = Modifier, color: Color = Color(0xFF1A1A1A), onClick: () -> Unit) {
    Button(
        onClick = onClick,
        modifier = modifier.height(70.dp),
        colors = ButtonDefaults.buttonColors(containerColor = color),
        shape = RoundedCornerShape(10.dp)
    ) {
        Text(text, color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold, textAlign = androidx.compose.ui.text.style.TextAlign.Center)
    }
}
