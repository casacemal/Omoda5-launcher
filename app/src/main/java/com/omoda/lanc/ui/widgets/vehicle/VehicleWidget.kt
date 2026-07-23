package com.omoda.lanc.ui.widgets.vehicle

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.core.GlobalState

class VehicleWidget : DashboardWidget {
    override val id: String = "vehicle_widget"
    override val minWidthDp: Int = 300
    override val minHeightDp: Int = 200

    @Composable
    override fun Content() {
        val vehicleData by GlobalState.vehicleDataValues.collectAsState()
        val speed = vehicleData["11600207"] ?: vehicleData["HIZ"] ?: vehicleData["SPEED"] ?: vehicleData["Araç Hızı"] ?: "0.0 km/h"
        val gear = vehicleData["21402006"] ?: vehicleData["VİTES"] ?: vehicleData["GEAR"] ?: vehicleData["Vites"] ?: "P"

        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(minHeightDp.dp)
                .padding(8.dp)
                .clip(RoundedCornerShape(16.dp))
                .background(Color.Black.copy(alpha = 0.3f))
                .padding(16.dp)
        ) {
            Column(
                modifier = Modifier.fillMaxSize(),
                verticalArrangement = Arrangement.SpaceBetween,
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                Text("ARAÇ DURUMU", color = Color.White.copy(alpha = 0.5f), fontSize = 12.sp)
                
                Text(
                    text = speed,
                    color = Color(0xFF69E2D3),
                    fontSize = 42.sp,
                    fontWeight = FontWeight.Bold
                )
                
                Text(
                    text = "Vites: $gear",
                    color = Color.White,
                    fontSize = 20.sp
                )
            }
        }
    }
}
