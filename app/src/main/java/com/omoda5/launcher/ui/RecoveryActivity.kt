package com.omoda5.launcher.ui

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.theme.*
import java.io.File

/**
 * v9.5.0 RECOVERY SYSTEM
 * Allows rollback to previous stable versions if launcher crashes.
 */
class RecoveryActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { Omoda5NextGenTheme { RecoveryScreen() } }
    }

    @Composable
    fun RecoveryScreen() {
        val apks = remember { getLocalApks() }
        
        Column(Modifier.fillMaxSize().background(DeepBlack).padding(20.dp), horizontalAlignment = Alignment.CenterHorizontally) {
            Text("KURTARMA MODU (RECOVERY)", color = Color.Red, fontSize = 32.sp, fontWeight = FontWeight.ExtraBold)
            Text("Launcher ardarda çöktüğü için bu moda girildi.", color = Color.White, fontSize = 18.sp)
            
            Spacer(Modifier.height(30.dp))
            
            Card(Modifier.fillMaxWidth().weight(1f), colors = CardDefaults.cardColors(containerColor = Color.White.copy(0.05f))) {
                LazyColumn(Modifier.padding(10.dp)) {
                    item { Text("STABİL PAKET SEÇİN:", color = OmodaCyan, fontWeight = FontWeight.Bold) }
                    items(apks) { file ->
                        ApkItem(file)
                    }
                }
            }

            Spacer(Modifier.height(20.dp))
            Button(
                onClick = { android.os.Process.killProcess(android.os.Process.myPid()) },
                modifier = Modifier.fillMaxWidth().height(60.dp),
                colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray)
            ) {
                Text("SİSTEMİ YENİDEN BAŞLAT", color = Color.White)
            }
        }
    }

    @Composable
    fun ApkItem(file: File) {
        Row(Modifier.fillMaxWidth().padding(vertical = 5.dp).background(Color.White.copy(0.03f), RoundedCornerShape(8.dp)).padding(15.dp), verticalAlignment = Alignment.CenterVertically) {
            Column(Modifier.weight(1f)) {
                Text(file.name, color = Color.White, fontSize = 16.sp)
                Text("${file.length() / 1024 / 1024} MB", color = Color.Gray, fontSize = 12.sp)
            }
            Button(onClick = { installManual(file) }, colors = ButtonDefaults.buttonColors(containerColor = MatrixGreen)) {
                Text("YÜKLE", color = Color.Black)
            }
        }
    }

    private fun getLocalApks(): List<File> {
        val downloadDir = File("/storage/emulated/0/Download")
        val internalDir = getExternalFilesDir(null)
        val list = mutableListOf<File>()
        downloadDir.listFiles()?.filter { it.name.endsWith(".apk") }?.let { list.addAll(it) }
        internalDir?.listFiles()?.filter { it.name.endsWith(".apk") }?.let { list.addAll(it) }
        return list.sortedByDescending { it.lastModified() }
    }

    private fun installManual(file: File) {
        val cmd = "pm install -r -d -g ${file.absolutePath}"
        startService(Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
            action = "ACTION_EXECUTE_SHELL"
            putExtra("command", cmd)
        })
    }
}
