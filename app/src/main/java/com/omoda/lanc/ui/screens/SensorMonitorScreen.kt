package com.omoda.lanc.ui.screens

import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.ui.theme.OmodaCyan
import kotlinx.coroutines.delay

@Composable
fun SensorMonitorScreen(onBack: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    var vehicleState by remember { mutableStateOf(VehicleController.getInstance(context).getVehicleState()) }
    var lastUpdate by remember { mutableLongStateOf(System.currentTimeMillis()) }
    val isSimMode by GlobalState.isSimulationMode.collectAsState()

    // 2 saniyede bir manuel yenileme (Dumpsys verileri için)
    LaunchedEffect(Unit) {
        while (true) {
            vehicleState = VehicleController.getInstance(context).getVehicleState()
            lastUpdate = System.currentTimeMillis()
            delay(2000)
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color(0xFF081012))
            .padding(16.dp)
    ) {
        // Üst Bar
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                IconButton(onClick = onBack) {
                    Icon(Icons.Default.ArrowBack, contentDescription = "Geri", tint = Color.White)
                }
                Spacer(Modifier.width(8.dp))
                Text(
                    "Omoda 5 Sensör İzleme",
                    color = Color.White,
                    fontSize = 20.sp,
                    fontWeight = FontWeight.Bold
                )
                
                if (isSimMode) {
                    Spacer(Modifier.width(12.dp))
                    Surface(
                        color = Color(0xFFE91E63).copy(alpha = 0.2f),
                        shape = RoundedCornerShape(4.dp),
                        border = androidx.compose.foundation.BorderStroke(1.dp, Color(0xFFE91E63).copy(alpha = 0.5f))
                    ) {
                        Text(
                            " SİMÜLASYON MODU ",
                            color = Color(0xFFE91E63),
                            fontSize = 10.sp,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.padding(vertical = 2.dp)
                        )
                    }
                }
            }
            
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(Icons.Default.Info, contentDescription = null, tint = OmodaCyan, modifier = Modifier.size(16.dp))
                Spacer(Modifier.width(4.dp))
                Text(
                    "Otomatik Yenileme: 2sn",
                    color = Color.Gray,
                    fontSize = 12.sp
                )
            }
        }

        Spacer(Modifier.height(16.dp))

        // Sensör Kartları
        val sensorItems = listOf(
            SensorItem("Hız", "${vehicleState.speed.toInt()} km/h", "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Devir", "${vehicleState.engineRpm.toInt()} RPM", "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Vites", vehicleState.gearString, "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Yakıt", "%${vehicleState.fuelLevel.toInt()}", "Enerji", Color(0xFFF3B14B)),
            SensorItem("Menzil", "${vehicleState.rangeKm.toInt()} km", "Enerji", Color(0xFFF3B14B)),
            SensorItem("Klima", if (vehicleState.isHvacOn) "AÇIK" else "KAPALI", "Konfor", Color(0xFF4CAF50)),
            SensorItem("Sıcaklık", "${vehicleState.acTemperatureDriver}°C", "Konfor", Color(0xFF4CAF50)),
            SensorItem("Fan", "${vehicleState.acFanSpeed}", "Konfor", Color(0xFF4CAF50)),
            SensorItem("Dış Isı", "${vehicleState.outsideTemperature}°C", "Ortam", Color(0xFF2196F3)),
            SensorItem("El Freni", if (vehicleState.parkingBrake) "ÇEKİLİ" else "İNMİŞ", "Güvenlik", Color(0xFFE57373)),
            SensorItem("Kilometre", "${vehicleState.odometer.toInt()} km", "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Kapılar", if (vehicleState.anyDoorOpen) "AÇIK!" else "KAPALI", "Güvenlik", Color(0xFFE57373))
        )

        LazyVerticalGrid(
            columns = GridCells.Adaptive(140.dp),
            contentPadding = PaddingValues(4.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            items(sensorItems) { item ->
                SensorCard(item)
            }
        }
        
        Spacer(modifier = Modifier.weight(1f))
        
        // Alt Butonlar (Basit ve Küçük)
        Row(
            modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            SmallActionButton("Klima Aç/Kapat", Color(0xFF4CAF50)) {
                exec(context, "am start -n com.yfve.hvac/com.yfve.hvac.MainActivity")
            }
            SmallActionButton("WIFI Onar", Color(0xFF2196F3)) {
                exec(context, "svc wifi disable; sleep 1; svc wifi enable")
            }
            SmallActionButton("Logları Temizle", Color.Gray) {
                exec(context, "logcat -c")
            }
        }
    }
}

private fun exec(context: android.content.Context, command: String) {
    val intent = Intent(context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
        action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
        putExtra("command", command)
    }
    ContextCompat.startForegroundService(context, intent)
}

data class SensorItem(val label: String, val value: String, val category: String, val color: Color)

@Composable
fun SensorCard(item: SensorItem) {
    Box(
        modifier = Modifier
            .clip(RoundedCornerShape(12.dp))
            .background(Color.White.copy(alpha = 0.05f))
            .border(1.dp, item.color.copy(alpha = 0.2f), RoundedCornerShape(12.dp))
            .padding(12.dp)
    ) {
        Column {
            Text(item.category.uppercase(), color = item.color, fontSize = 9.sp, fontWeight = FontWeight.Black)
            Text(item.label, color = Color.Gray, fontSize = 11.sp)
            Text(item.value, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.ExtraBold)
        }
    }
}

@Composable
fun RowScope.SmallActionButton(text: String, color: Color, onClick: () -> Unit) {
    Button(
        onClick = onClick,
        modifier = Modifier.weight(1f).height(36.dp),
        colors = ButtonDefaults.buttonColors(containerColor = color.copy(alpha = 0.2f)),
        contentPadding = PaddingValues(horizontal = 8.dp),
        shape = RoundedCornerShape(8.dp),
        border = androidx.compose.foundation.BorderStroke(1.dp, color.copy(alpha = 0.5f))
    ) {
        Text(text, color = Color.White, fontSize = 11.sp, fontWeight = FontWeight.Bold)
    }
}
