package com.omoda5.launcher.ui

import android.content.Intent
import android.os.Bundle
import android.view.ViewGroup
import android.webkit.WebView
import android.webkit.WebViewClient
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color as ComposeColor
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.text.font.FontWeight
import com.omoda5.launcher.ui.theme.Omoda5NextGenTheme
import com.omoda5.launcher.ui.theme.DeepBlack
import com.omoda5.launcher.ui.theme.OmodaCyan

class MultiTaskActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        val mode = intent.getStringExtra("mode") ?: "premium"
        val targetPkg = intent.getStringExtra("target_package")

        when (mode) {
            "system" -> launchSystemSplit("com.chery.media")
            "musicolet" -> launchSystemSplit("in.krosbits.musicolet")
            "dynamic" -> targetPkg?.let { launchSystemSplit(it) }
            "premium" -> {
                setContent {
                    Omoda5NextGenTheme {
                        PremiumMultiTaskScreen()
                    }
                }
                return
            }
        }
        
        if (mode != "premium") finish()
    }

    private fun launchSystemSplit(leftPkg: String) {
        val mapsPkg = "com.google.android.apps.maps"
        
        // Semidrive X9 Split Screen Script
        // Amaca yönelik: Önce sol uygulamayı (Müzik vb) Stack 3'e, sonra sağ uygulamayı (Harita) Stack 4'e atar.
        val combinedCmd = """
            am force-stop $leftPkg;
            am force-stop $mapsPkg;
            sleep 0.3;
            am start -n $(cmd package resolve-activity --brief $leftPkg | tail -n 1) --windowingMode 3;
            sleep 0.8;
            am stack resize 3 235 0 1077 720;
            sleep 0.5;
            am start -n $(cmd package resolve-activity --brief $mapsPkg | tail -n 1) --windowingMode 4;
            sleep 0.8;
            am stack resize 4 1077 0 1920 720;
        """.trimIndent().replace("\n", " ")

        executeAdb(combinedCmd)
        Toast.makeText(this, "Multi-Task Hazırlanıyor...", Toast.LENGTH_SHORT).show()
    }

    private fun executeAdb(cmd: String) {
        val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
            action = "ACTION_EXECUTE_SHELL"
            putExtra("command", cmd)
        }
        startService(intent)
    }
}

@Composable
fun PremiumMultiTaskScreen() {
    Row(modifier = Modifier.fillMaxSize().padding(start = 235.dp)) {
        Column(
            modifier = Modifier.weight(0.45f).fillMaxHeight().background(ComposeColor(0xFF080808)).padding(40.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Text("ŞİMDİ ÇALIYOR", color = OmodaCyan, fontSize = 14.sp, fontWeight = FontWeight.Bold)
            Spacer(modifier = Modifier.height(20.dp))
            Text("Premium Medya", color = ComposeColor.White, fontSize = 32.sp, fontWeight = FontWeight.ExtraBold)
            Text("Kontrol Sizde", color = ComposeColor.Gray, fontSize = 18.sp)
            Spacer(modifier = Modifier.height(60.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text("⏮", color = ComposeColor.White, fontSize = 40.sp)
                Spacer(modifier = Modifier.width(40.dp))
                Surface(shape = androidx.compose.foundation.shape.CircleShape, color = OmodaCyan) {
                    Box(modifier = Modifier.size(100.dp), contentAlignment = Alignment.Center) {
                        Text("▶", color = DeepBlack, fontSize = 40.sp)
                    }
                }
                Spacer(modifier = Modifier.width(40.dp))
                Text("⏭", color = ComposeColor.White, fontSize = 40.sp)
            }
        }

        Box(modifier = Modifier.width(2.dp).fillMaxHeight().background(OmodaCyan.copy(alpha = 0.3f)))

        Box(modifier = Modifier.weight(0.55f).fillMaxHeight()) {
            AndroidView(factory = { context ->
                WebView(context).apply {
                    layoutParams = ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
                    webViewClient = WebViewClient()
                    settings.javaScriptEnabled = true
                    loadUrl("https://www.google.com/maps")
                }
            })
        }
    }
}
