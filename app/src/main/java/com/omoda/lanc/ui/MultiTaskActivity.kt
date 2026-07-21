package com.omoda.lanc.ui

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.service.AdbBridgeService

class MultiTaskActivity : ComponentActivity() {
    
    // Varsayılan Harita (Yandex veya Google)
    private var mapPackage = "ru.yandex.yandexnavi"
    private val launcherPackage = "com.omoda.lanc"

    // Semidrive Stack ID'leri (3=Freeform/Left, 4=Right)
    private val STACK_LEFT = 3
    private val STACK_RIGHT = 4

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        val target = intent.getStringExtra("target_package")
        if (target != null) {
            mapPackage = target
        }

        // Compose UI (Sadece bilgi ve kapatma butonu)
        setContent {
            Box(Modifier.fillMaxSize().background(Color.Transparent)) {
                Row(
                    Modifier
                        .align(Alignment.TopCenter)
                        .padding(top = 16.dp)
                        .background(Color.Black.copy(0.75f), RoundedCornerShape(20.dp))
                        .padding(horizontal = 24.dp, vertical = 12.dp),
                    horizontalArrangement = Arrangement.spacedBy(16.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        "SPLIT ENGINE (Native)",
                        color = Color(0xFF673AB7),
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Text(
                        "🗺 ${mapPackage.substringAfterLast(".")}",
                        color = Color.White,
                        fontSize = 14.sp
                    )
                    Text(
                        "✕ KAPAT",
                        modifier = Modifier.clickable { finish() },
                        color = Color(0xFFFF4444),
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Bold
                    )
                }
            }
        }

        runStackResizeEngine()
    }

    private fun runStackResizeEngine() {
        AssistantApplication.addLogStatic("MULTITASK: am stack resize motoru baslatiliyor... Sol: $launcherPackage, Sag: $mapPackage")

        val splitX = 1077 // 1920'nin ~%56'sı

        // SADECE Haritayı kapat (temiz başlasın diye), Launcher'i kapatırsak kendi kendini öldürür!
        sh("am force-stop $mapPackage")

        // Haritayı başlat
        delay(500) { 
            try {
                val mapIntent = packageManager.getLaunchIntentForPackage(mapPackage)
                if (mapIntent != null) {
                    mapIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT or Intent.FLAG_ACTIVITY_MULTIPLE_TASK)
                    startActivity(mapIntent)
                } else {
                    sh("am start -n $mapPackage")
                }
            } catch (e: Exception) {
                sh("am start -n $mapPackage")
            }
        }

        // Stack'leri boyutlandır (Semidrive Native Split)
        delay(2500) {
            // Stack ID'lerin 3 ve 4 olduğunu varsayıyoruz (Omoda/Semidrive spesifik)
            sh("am stack resize $STACK_LEFT 235 0 $splitX 720")
            sh("am stack resize $STACK_RIGHT $splitX 0 1920 720")
            AssistantApplication.addLogStatic("MULTITASK: Stack resize komutlari gönderildi.")
        }
    }

    private fun sh(cmd: String) {
        if (cmd.isEmpty()) return
        try {
            startService(Intent(this, AdbBridgeService::class.java).apply {
                action = AdbBridgeService.ACTION_EXECUTE_SHELL
                putExtra("command", cmd)
            })
        } catch (e: Exception) {
            AssistantApplication.addLogStatic("MT_ERR: $cmd -> ${e.message}")
        }
    }

    private fun delay(ms: Long, block: () -> Unit) {
        Handler(Looper.getMainLooper()).postDelayed(block, ms)
    }
}
