package com.omoda5.launcher.ui

import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.model.VehicleMetrics
import com.omoda5.launcher.ui.theme.DeepBlack
import com.omoda5.launcher.ui.theme.OmodaCyan
import com.omoda5.launcher.ui.theme.MatrixGreen

@Composable
fun DashboardScreen(metrics: VehicleMetrics) {
    val context = LocalContext.current
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(DeepBlack)
            .padding(start = 240.dp, end = 40.dp, top = 40.dp, bottom = 40.dp)
    ) {
        Column {
            Text(
                text = "OMODA 5 PERFORMANCE DASHBOARD",
                color = Color.White,
                fontSize = 24.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = 20.dp)
            )

            LazyVerticalGrid(
                columns = GridCells.Fixed(5),
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(15.dp),
                horizontalArrangement = Arrangement.spacedBy(15.dp),
                userScrollEnabled = false
            ) {
                item { DashCard("HIZ", "${metrics.speed.toInt()}", "km/h", MatrixGreen) }
                item { DashCard("DEVİR", "${metrics.rpm.toInt()}", "RPM", OmodaCyan) }
                item { DashCard("VİTES", metrics.gear, "", Color.Yellow) }
                item { DashCard("YAKIT", "%.1f".format(metrics.fuelLevel), "L", OmodaCyan) }
                item { DashCard("MENZİL", "${metrics.range}", "km", OmodaCyan) }
                
                item { DashCard("DIŞ ISI", "${metrics.exteriorTemp.toInt()}", "°C", Color.White) }
                item { DashCard("LASTİK", "%.1f".format(metrics.tpmsFL), "Bar", if(metrics.tpmsFL < 2.0f) Color.Red else MatrixGreen) }
                item { DashCard("MOD", when(metrics.driveMode) { 1->"ECO"; 3->"SPORT"; else->"NORMAL" }, "", OmodaCyan) }
                item { DashCard("KONTAK", metrics.ignitionStatus, "", if(metrics.ignitionStatus == "ON") MatrixGreen else Color.Gray) }
                item { DashCard("KAPILAR", if(metrics.doorFrontLeftOpen || metrics.doorFrontRightOpen || metrics.doorRearLeftOpen || metrics.doorRearRightOpen) "AÇIK" else "KAPALI", "", if(metrics.doorFrontLeftOpen) Color.Red else MatrixGreen) }
            }

            Button(
                onClick = { context.startActivity(Intent(context, DiagnosticLabActivity::class.java)) },
                modifier = Modifier.fillMaxWidth().height(70.dp).padding(top = 10.dp),
                colors = ButtonDefaults.buttonColors(containerColor = Color.Red),
                shape = RoundedCornerShape(10.dp)
            ) {
                Text("TEST EKRANINI (TUŞ/VHAL) AÇ", color = Color.White, fontSize = 22.sp, fontWeight = FontWeight.Bold)
            }
        }
    }
}

@Composable
fun DashCard(label: String, value: String, unit: String, accentColor: Color) {
    Surface(
        color = Color(0xFF1A1A1A),
        shape = RoundedCornerShape(16.dp),
        modifier = Modifier.height(140.dp)
    ) {
        Box(modifier = Modifier.fillMaxSize()) {
            // Accent gradient at bottom
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(4.dp)
                    .align(Alignment.BottomCenter)
                    .background(
                        Brush.horizontalGradient(listOf(accentColor.copy(0.2f), accentColor, accentColor.copy(0.2f)))
                    )
            )

            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(15.dp),
                verticalArrangement = Arrangement.SpaceBetween,
                horizontalAlignment = Alignment.Start
            ) {
                Text(label, color = Color.Gray, fontSize = 12.sp, fontWeight = FontWeight.Medium)
                
                Row(verticalAlignment = Alignment.Bottom) {
                    Text(
                        value,
                        color = accentColor,
                        fontSize = 32.sp,
                        fontWeight = FontWeight.Black
                    )
                    if (unit.isNotEmpty()) {
                        Text(
                            unit,
                            color = Color.Gray,
                            fontSize = 14.sp,
                            modifier = Modifier.padding(start = 4.dp, bottom = 6.dp)
                        )
                    }
                }
            }
        }
    }
}
