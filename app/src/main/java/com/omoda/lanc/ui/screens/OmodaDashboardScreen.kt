package com.omoda.lanc.ui.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.ui.theme.*

@Composable
fun OmodaDashboardScreen(
    vehicleState: VehicleState,
    modifier: Modifier = Modifier
) {
    BoxWithConstraints(modifier = modifier.fillMaxSize().background(OmodaSlateBg).padding(16.dp)) {
        val isWide = maxWidth > 800.dp
        val scrollState = rememberScrollState()

        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Üst Satır: Hız, Devir, Vites Göstergeleri
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Hız Kartı
                DashboardGaugeCard(
                    title = "HIZ",
                    value = formatSensorValue(vehicleState.speed, "km/h"),
                    unit = "km/h",
                    icon = Icons.Default.Info,
                    accentColor = OmodaCyanNeon,
                    modifier = Modifier.weight(1f)
                )

                // Vites Kartı
                DashboardGaugeCard(
                    title = "VİTES",
                    value = vehicleState.gearString.ifBlank { "P" },
                    unit = "MOD",
                    icon = Icons.Default.Check,
                    accentColor = GlowYellow,
                    modifier = Modifier.weight(0.8f)
                )

                // Devir (RPM) Kartı
                DashboardGaugeCard(
                    title = "DEVİR",
                    value = formatSensorValue(vehicleState.rpm, "RPM"),
                    unit = "RPM",
                    icon = Icons.Default.Refresh,
                    accentColor = GlowGreen,
                    modifier = Modifier.weight(1f)
                )
            }

            // Orta Satır: Telemetri Detayları (Hararet, Yağ, Yakıt/Batarya)
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                TelemetryDetailCard(
                    title = "Motor Harareti",
                    value = formatSensorValue(vehicleState.coolantTemp, "°C"),
                    icon = Icons.Default.Info,
                    modifier = Modifier.weight(1f)
                )

                TelemetryDetailCard(
                    title = "Yağ Sıcaklığı",
                    value = formatSensorValue(vehicleState.oilTemp, "°C"),
                    icon = Icons.Default.Build,
                    modifier = Modifier.weight(1f)
                )

                TelemetryDetailCard(
                    title = "Kalan Menzil",
                    value = formatSensorValue(vehicleState.range, "km"),
                    icon = Icons.Default.Star,
                    modifier = Modifier.weight(1f)
                )
            }

            // Alt Satır: TPMS Lastik Basınçları Paneli
            Surface(
                color = OmodaCardSurface,
                shape = RoundedCornerShape(20.dp),
                border = BorderStroke(1.dp, OmodaGlassCardBorder),
                modifier = Modifier.fillMaxWidth()
            ) {
                Column(modifier = Modifier.padding(20.dp)) {
                    Row(
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Icon(Icons.Default.Build, "TPMS", tint = OmodaCyanNeon)
                        Text("TPMS LASTİK BASINÇLARI", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 18.sp)
                    }

                    Spacer(Modifier.height(16.dp))

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        TirePressureItem("Ön Sol", vehicleState.tpmsFrontLeft, Modifier.weight(1f))
                        TirePressureItem("Ön Sağ", vehicleState.tpmsFrontRight, Modifier.weight(1f))
                        TirePressureItem("Arka Sol", vehicleState.tpmsRearLeft, Modifier.weight(1f))
                        TirePressureItem("Arka Sağ", vehicleState.tpmsRearRight, Modifier.weight(1f))
                    }
                }
            }
        }
    }
}

/**
 * Sensör verisi null, boş veya geçersiz olduğunda çökme yerine "Bulunamadı" yansıtan fail-safe metod
 */
private fun formatSensorValue(valObj: Any?, unitSuffix: String = ""): String {
    if (valObj == null) return "Bulunamadı"
    val str = valObj.toString().trim()
    if (str.isEmpty() || str == "null" || str == "-1" || str == "0x0") return "Bulunamadı"
    return if (unitSuffix.isNotEmpty() && !str.contains(unitSuffix)) "$str $unitSuffix" else str
}

@Composable
private fun DashboardGaugeCard(
    title: String,
    value: String,
    unit: String,
    icon: ImageVector,
    accentColor: Color,
    modifier: Modifier = Modifier
) {
    Surface(
        color = OmodaCardSurface,
        shape = RoundedCornerShape(20.dp),
        border = BorderStroke(1.dp, accentColor.copy(alpha = 0.4f)),
        modifier = modifier
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Icon(icon, title, tint = accentColor, modifier = Modifier.size(20.dp))
                Text(title, color = Color.Gray, fontSize = 14.sp, fontWeight = FontWeight.Bold)
            }

            Spacer(Modifier.height(8.dp))

            Text(
                text = value,
                color = if (value == "Bulunamadı") Color.Gray else Color.White,
                fontSize = if (value == "Bulunamadı") 20.sp else 36.sp,
                fontWeight = FontWeight.ExtraBold
            )
        }
    }
}

@Composable
private fun TelemetryDetailCard(
    title: String,
    value: String,
    icon: ImageVector,
    modifier: Modifier = Modifier
) {
    Surface(
        color = OmodaGlassCardBg,
        shape = RoundedCornerShape(16.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = modifier
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Icon(icon, title, tint = OmodaCyanNeon, modifier = Modifier.size(24.dp))
            Column {
                Text(title, color = Color.Gray, fontSize = 13.sp)
                Text(value, color = Color.White, fontWeight = FontWeight.Bold, fontSize = 16.sp)
            }
        }
    }
}

@Composable
private fun TirePressureItem(title: String, rawVal: Any?, modifier: Modifier = Modifier) {
    val displayVal = formatSensorValue(rawVal, "PSI")
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(title, color = Color.Gray, fontSize = 13.sp)
        Spacer(Modifier.height(4.dp))
        Text(
            text = displayVal,
            color = if (displayVal == "Bulunamadı") Color.Gray else OmodaCyanNeon,
            fontWeight = FontWeight.Bold,
            fontSize = 16.sp
        )
    }
}
