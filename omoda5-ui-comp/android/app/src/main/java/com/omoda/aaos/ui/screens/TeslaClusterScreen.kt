package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Remove
import androidx.compose.material.icons.filled.Speed
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*

@Composable
fun TeslaClusterScreen(
    speedKmh: Int,
    onSpeedChange: (Int) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        Text(
            text = "TESLA MINIMALIST CLUSTER & ADAS",
            fontSize = 16.sp,
            fontWeight = FontWeight.Bold,
            color = AaosPrimaryCyan
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Left Speedometer Tile
            Box(
                modifier = Modifier
                    .weight(1f)
                    .height(200.dp)
                    .clip(RoundedCornerShape(24.dp))
                    .background(TeslaCardBackground)
                    .padding(20.dp),
                contentAlignment = Alignment.Center
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(text = "SPEED", fontSize = 12.sp, color = AaosOnSurfaceVariant)
                    Text(
                        text = "$speedKmh",
                        fontSize = 64.sp,
                        fontWeight = FontWeight.Black,
                        color = Color.White
                    )
                    Text(text = "KM/H", fontSize = 14.sp, fontWeight = FontWeight.Bold, color = AaosPrimaryCyan)
                }
            }

            // Center Tesla Road Visualizer Tile
            Box(
                modifier = Modifier
                    .weight(1.5f)
                    .height(200.dp)
                    .clip(RoundedCornerShape(24.dp))
                    .background(TeslaCardBackground)
                    .padding(16.dp),
                contentAlignment = Alignment.Center
            ) {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Icon(
                        imageVector = Icons.Default.Speed,
                        contentDescription = null,
                        tint = AaosPrimaryCyan,
                        modifier = Modifier.size(36.dp)
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = "AUTOPILOT / FSD ACTIVE",
                        fontSize = 12.sp,
                        fontWeight = FontWeight.Bold,
                        color = Color.White
                    )
                    Text(
                        text = "Keeping distance 32m • Lane Assist",
                        fontSize = 11.sp,
                        color = AaosOnSurfaceVariant
                    )
                }
            }
        }

        // Speed Simulator Buttons (AAOS Touch Target 48dp+)
        Row(
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Button(
                onClick = { onSpeedChange((speedKmh - 5).coerceAtLeast(0)) },
                colors = ButtonDefaults.buttonColors(containerColor = AaosSurfaceContainerHigh),
                modifier = Modifier.height(52.dp)
            ) {
                Icon(imageVector = Icons.Default.Remove, contentDescription = "Brake")
                Spacer(modifier = Modifier.width(8.dp))
                Text("BRAKE (-5)")
            }

            Button(
                onClick = { onSpeedChange(speedKmh + 5) },
                colors = ButtonDefaults.buttonColors(containerColor = AaosPrimaryCyan),
                modifier = Modifier.height(52.dp)
            ) {
                Icon(imageVector = Icons.Default.Add, contentDescription = "Gas", tint = Color.Black)
                Spacer(modifier = Modifier.width(8.dp))
                Text("GAS (+5)", color = Color.Black, fontWeight = FontWeight.Bold)
            }
        }
    }
}
