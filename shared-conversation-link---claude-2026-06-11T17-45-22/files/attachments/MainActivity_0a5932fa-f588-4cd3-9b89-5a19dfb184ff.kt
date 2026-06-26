package com.omoda5.demo

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat

class MainActivity : ComponentActivity() {
    private lateinit var settingsManager: SettingsManager

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        settingsManager = SettingsManager(this)

        // Arka plan servisini hemen başlat
        val serviceIntent = Intent(this, VoiceAssistantService::class.java)
        ContextCompat.startForegroundService(this, serviceIntent)

        setContent {
            MaterialTheme(colorScheme = darkColorScheme()) {
                Surface(modifier = Modifier.fillMaxSize(), color = Color(0xFF1E1E1E)) {
                    SettingsScreen()
                }
            }
        }
    }

    @Composable
    fun SettingsScreen() {
        var mode by remember { 
            mutableStateOf(if (settingsManager.sttEngine == "HERMES") "HERMES" else "LOKAL") 
        }

        Column(modifier = Modifier.fillMaxSize().padding(16.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            Spacer(modifier = Modifier.height(60.dp))
            Text("OMODA ASİSTAN", color = Color.White, fontSize = 28.sp, fontWeight = FontWeight.Bold)
            Spacer(modifier = Modifier.height(40.dp))

            Text("Çalışma Modu", color = Color.LightGray, fontSize = 20.sp)
            Spacer(modifier = Modifier.height(20.dp))
            
            Row(modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp), horizontalArrangement = Arrangement.SpaceEvenly) {
                Button(
                    onClick = { 
                        mode = "HERMES"
                        settingsManager.sttEngine = "HERMES"
                        settingsManager.ttsEngine = "EDGE"
                    },
                    colors = ButtonDefaults.buttonColors(containerColor = if (mode == "HERMES") Color(0xFF10B981) else Color.DarkGray),
                    modifier = Modifier.weight(1f).padding(end = 8.dp)
                ) { 
                    Text("HERMES (Online)") 
                }
                
                Button(
                    onClick = { 
                        mode = "LOKAL"
                        settingsManager.sttEngine = "VOSK"
                        settingsManager.ttsEngine = "LOCAL"
                    },
                    colors = ButtonDefaults.buttonColors(containerColor = if (mode == "LOKAL") Color(0xFF10B981) else Color.DarkGray),
                    modifier = Modifier.weight(1f).padding(start = 8.dp)
                ) { 
                    Text("LOKAL (Offline)") 
                }
            }
            
            Spacer(modifier = Modifier.height(20.dp))
            Text(
                text = if (mode == "HERMES") "Hermes Bulut AI ve Edge-TTS kullanılacak." else "İnternetsiz Vosk STT ve Cihaz TTS kullanılacak.",
                color = Color.Gray,
                fontSize = 14.sp
            )

            Spacer(modifier = Modifier.height(60.dp))
            
            Button(
                onClick = { finish() },
                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFE63946))
            ) {
                Text("Kapat ve Arka Planda Çalıştır")
            }
        }
    }
}
