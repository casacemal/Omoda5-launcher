package com.omoda.lanc.ui.screens.settings

import android.content.Context
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.LogLevel
import com.omoda.lanc.core.LoggerProvider
import com.omoda.lanc.network.AdbClient
import kotlinx.coroutines.launch
import com.omoda.lanc.ui.screens.EnhancedSettingCard

@Composable
fun TabGeneralLogs(isCompact: Boolean) {
    val logs by GlobalState.generalLogs.collectAsState()
    var selectedLevel by remember { mutableStateOf<LogLevel?>(null) }
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()

    val filteredLogs = if (selectedLevel == null) logs else logs.filter { it.level == selectedLevel }

    EnhancedSettingCard(title = "GENEL LOGLAR", modifier = Modifier.fillMaxSize(), isCompact = isCompact) {
        Column(modifier = Modifier.fillMaxSize()) {
            
            // Filtre Çubuğu
            LazyRow(
                modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                item {
                    FilterChip(
                        selected = selectedLevel == null,
                        onClick = { selectedLevel = null },
                        label = { Text("Tümü", color = if (selectedLevel == null) Color.Black else Color.White) },
                        colors = FilterChipDefaults.filterChipColors(selectedContainerColor = Color(0xFF69E2D3))
                    )
                }
                items(LogLevel.values()) { level ->
                    FilterChip(
                        selected = selectedLevel == level,
                        onClick = { selectedLevel = level },
                        label = { Text(level.name, color = if (selectedLevel == level) Color.Black else Color.White) },
                        colors = FilterChipDefaults.filterChipColors(selectedContainerColor = Color(0xFF69E2D3))
                    )
                }
            }

            // Log Listesi
            Box(modifier = Modifier.weight(1f).fillMaxWidth().clip(RoundedCornerShape(8.dp)).background(Color.Black.copy(0.3f)).padding(8.dp)) {
                LazyColumn(modifier = Modifier.fillMaxSize()) {
                    items(filteredLogs) { log -> 
                        val color = when (log.level) {
                            LogLevel.ERROR -> Color(0xFFFF5252)
                            LogLevel.WARNING -> Color(0xFFFFD740)
                            LogLevel.INFO -> Color.White
                            LogLevel.DEBUG -> Color.Gray
                            LogLevel.MQTT -> Color(0xFF69E2D3)
                            LogLevel.VERBOSE -> Color.DarkGray
                        }
                        Text("[${log.level}] ${log.message}", color = color, fontSize = if(isCompact) 9.sp else 10.sp, fontFamily = FontFamily.Monospace) 
                    }
                }
            }

            // Hızlı ADB İşlemleri
            Spacer(modifier = Modifier.height(16.dp))
            Text("HIZLI ADB İŞLEMLERİ", color = Color(0xFF69E2D3), fontWeight = FontWeight.Bold, fontSize = 12.sp)
            Spacer(modifier = Modifier.height(8.dp))
            
            LazyRow(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                item {
                    Button(onClick = {
                        coroutineScope.launch {
                            AdbClient.executeCommand("su 0 id")
                            LoggerProvider.i("ADB: Root denemesi yapıldı (Sonuç arka planda dönecek)")
                        }
                    }, colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray)) { Text("Root Check") }
                }
                item {
                    Button(onClick = {
                        coroutineScope.launch {
                            AdbClient.executeCommand("svc wifi disable | sleep 2 | svc wifi enable")
                            LoggerProvider.w("ADB: Wi-Fi onarma komutu gönderildi.")
                        }
                    }, colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFFF5252))) { Text("Wi-Fi Onar") }
                }
                item {
                    Button(onClick = {
                        coroutineScope.launch {
                            AdbClient.executeCommand("setprop service.adb.tcp.port 5555 | stop adbd | start adbd")
                            LoggerProvider.i("ADB: Wi-Fi üzerinden ADB (Port 5555) aktif edildi.")
                        }
                    }, colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray)) { Text("ADB 5555") }
                }
                item {
                    Button(onClick = {
                        coroutineScope.launch {
                            AdbClient.executeCommand("logcat -d")
                            LoggerProvider.i("ADB: Logcat talep edildi (Cihaz dökümü MQTT'den gönderilecek)")
                        }
                    }, colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray)) { Text("Dump Logcat") }
                }
            }
        }
    }
}


