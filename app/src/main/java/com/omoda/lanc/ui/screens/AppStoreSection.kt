package com.omoda.lanc.ui.screens

import android.widget.Toast
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.network.AppUpdate
import com.omoda.lanc.network.OtaUpdateManager
import kotlinx.coroutines.launch

@Composable
fun AppStoreSection() {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    val updateManager = remember { OtaUpdateManager(context) }
    
    var isChecking by remember { mutableStateOf(false) }
    var updatesList by remember { mutableStateOf<List<AppUpdate>>(emptyList()) }
    var storeAppsList by remember { mutableStateOf<List<AppUpdate>>(emptyList()) }
    var errorMessage by remember { mutableStateOf<String?>(null) }
    var downloadingApp by remember { mutableStateOf<String?>(null) }
    var downloadProgress by remember { mutableStateOf(0) }
    var downloadSpeed by remember { mutableStateOf(0.0) }

    fun loadUpdates() {
        isChecking = true
        errorMessage = null
        updateManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                isChecking = false
                updatesList = updates
                if (updates.isEmpty()) errorMessage = "Yeni sürüm bulunamadı."
            }
            override fun onError(error: String) {
                isChecking = false
                errorMessage = error
            }
        })
    }

    LaunchedEffect(Unit) {
        loadUpdates()
        updateManager.getStoreApps(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                storeAppsList = updates
            }
            override fun onError(error: String) {
                // Silently ignore store error for now
            }
        })
    }

    EnhancedSettingCard(title = "GÜNCELLEMELER VE MAĞAZA", modifier = Modifier.fillMaxSize()) {
        val scrollState = rememberScrollState()
        Column(
            modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Text("GitHub Sürümleri", color = Color.White, modifier = Modifier.weight(1f), fontSize = 16.sp, fontWeight = FontWeight.Bold)
                IconButton(onClick = { loadUpdates() }, enabled = !isChecking) {
                    if (isChecking) CircularProgressIndicator(modifier = Modifier.size(24.dp), color = Color(0xFF69E2D3))
                    else Icon(Icons.Default.Refresh, "Yenile", tint = Color(0xFF69E2D3))
                }
            }

            if (errorMessage != null) {
                Surface(
                    color = Color.Red.copy(alpha = 0.1f),
                    shape = RoundedCornerShape(12.dp),
                    border = BorderStroke(1.dp, Color.Red.copy(alpha = 0.3f)),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Column(modifier = Modifier.padding(16.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                        Text(errorMessage!!, color = Color.Red, textAlign = TextAlign.Center, fontWeight = FontWeight.Bold)
                        Spacer(Modifier.height(8.dp))
                        Button(onClick = { loadUpdates() }, colors = ButtonDefaults.buttonColors(containerColor = Color.Red)) {
                            Text("YENİDEN DENE")
                        }
                    }
                }
            }

            if (downloadingApp != null) {
                Column(modifier = Modifier.fillMaxWidth().background(Color.Black.copy(0.3f), RoundedCornerShape(12.dp)).padding(12.dp)) {
                    Text("İndiriliyor: $downloadingApp", color = Color(0xFF69E2D3), fontWeight = FontWeight.Bold)
                    LinearProgressIndicator(progress = { downloadProgress / 100f }, modifier = Modifier.fillMaxWidth().height(12.dp).padding(vertical = 8.dp), color = Color(0xFF69E2D3))
                    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text("%$downloadProgress", color = Color.White, fontSize = 12.sp)
                        Text(String.format("%.1f Mbps", downloadSpeed), color = Color.White, fontSize = 12.sp)
                    }
                }
            }

            updatesList.forEach { app ->
                UpdateItem(app, downloadingApp != null, updateManager) {
                    if (updateManager.isUpdateDownloaded(app)) {
                        updateManager.installPackage(java.io.File(context.getExternalFilesDir(null), app.name))
                    } else {
                        downloadingApp = app.name
                        updateManager.downloadUpdate(app, object : OtaUpdateManager.DownloadCallback {
                            override fun onProgress(p: Int, s: Double) { downloadProgress = p; downloadSpeed = s }
                            override fun onComplete(f: java.io.File?) { downloadingApp = null; f?.let { updateManager.installPackage(it) } }
                            override fun onError(e: String) { downloadingApp = null; Toast.makeText(context, e, Toast.LENGTH_LONG).show() }
                        })
                    }
                }
            }
        }
    }
}

@Composable
fun UpdateItem(app: AppUpdate, isDownloading: Boolean, manager: OtaUpdateManager, onClick: () -> Unit) {
    val isDownloaded = manager.isUpdateDownloaded(app)
    Card(colors = CardDefaults.cardColors(containerColor = Color.White.copy(0.05f)), modifier = Modifier.fillMaxWidth()) {
        Row(modifier = Modifier.padding(16.dp), verticalAlignment = Alignment.CenterVertically) {
            Column(modifier = Modifier.weight(1f)) {
                Text(app.name, color = Color.White, fontWeight = FontWeight.Bold)
                Text("v${app.version} • ${app.sizeBytes / 1024 / 1024} MB", color = Color.Gray, fontSize = 12.sp)
            }
            Button(
                onClick = onClick, 
                enabled = !isDownloading,
                colors = ButtonDefaults.buttonColors(containerColor = if(isDownloaded) Color(0xFF4CAF50) else Color(0xFF69E2D3))
            ) {
                Text(if(isDownloaded) "YÜKLE" else "İNDİR", color = Color.Black)
            }
        }
    }
}
