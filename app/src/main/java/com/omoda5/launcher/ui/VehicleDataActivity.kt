package com.omoda5.launcher.ui

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.common.VhalManager
import com.omoda5.launcher.model.VehicleMetrics
import com.omoda5.launcher.ui.theme.*
import com.omoda5.launcher.viewmodel.VehicleDataViewModel

class VehicleDataActivity : ComponentActivity() {
    private val viewModel: VehicleDataViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // VhalManager zaten MainActivity→SystemBridgeManager zinciriyle başlatılmış
        // Tekrar init() çağrılması gerekmez — isInitialized guard var
        setContent {
            Omoda5NextGenTheme {
                val metrics by viewModel.metrics.collectAsState()
                VehicleDataDashboard(metrics)
            }
        }
    }
}

@Composable
fun VehicleDataDashboard(metrics: VehicleMetrics) {
    Box(modifier = Modifier.fillMaxSize().background(Color.Black).padding(start = 240.dp, top = 20.dp, end = 20.dp)) {
        Column {
            Text("VHAL PRO HUB (v21.0.0)", color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold)
            Spacer(Modifier.height(10.dp))
            
            LazyVerticalGrid(
                columns = GridCells.Fixed(5),
                verticalArrangement = Arrangement.spacedBy(10.dp),
                horizontalArrangement = Arrangement.spacedBy(10.dp),
                modifier = Modifier.fillMaxSize()
            ) {
                item { DataCard("HIZ", "${metrics.speed.toInt()} km/h") }
                item { DataCard("DEVİR", "${metrics.rpm.toInt()} RPM") }
                item { DataCard("VİTES", metrics.gear) }
                item { DataCard("YAKIT", "%.1f L".format(metrics.fuelLevel)) }
                item { DataCard("MENZİL", "${metrics.range} km") }
                item { DataCard("DIŞ ISI", "${metrics.exteriorTemp} °C") }
                item { DataCard("FREN", if(metrics.handbrakeOn) "ÇEKİLİ" else "BIRAKILDI") }
                item { DataCard("KONTAK", metrics.ignitionStatus) }
                item { DataCard("SÜRÜŞ MODU", if(metrics.driveMode == 3) "SPORT" else "NORMAL") }
                item { DataCard("BAGAJ", if(metrics.trunkOpen) "AÇIK" else "KAPALI") }
            }
        }
    }
}

@Composable
fun DataCard(label: String, value: String) {
    Surface(
        modifier = Modifier.size(120.dp, 80.dp), 
        color = Color(0xFF1A1A1A), 
        shape = RoundedCornerShape(12.dp)
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) {
            Text(label, color = Color.Gray, fontSize = 10.sp)
            Text(
                value, 
                color = if(value.contains("AÇIK") || value.contains("ÇEKİLİ")) Color.Red else Color(0xFF00FF41), 
                fontSize = 14.sp, 
                fontWeight = FontWeight.Bold
            )
        }
    }
}
