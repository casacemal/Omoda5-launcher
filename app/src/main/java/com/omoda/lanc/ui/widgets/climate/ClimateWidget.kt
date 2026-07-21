package com.omoda.lanc.ui.widgets.climate

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.core.GlobalState

class ClimateWidget : DashboardWidget {
    override val id: String = "climate_widget"
    override val minWidthDp: Int = 300
    override val minHeightDp: Int = 120

    @Composable
    override fun Content() {
        val vehicleData by GlobalState.vehicleDataValues.collectAsState()
        val temp = vehicleData["21401008"] ?: "22.0°C"

        Row(
            modifier = Modifier
                .fillMaxWidth()
                .height(minHeightDp.dp)
                .padding(8.dp)
                .clip(RoundedCornerShape(16.dp))
                .background(Color.White.copy(alpha = 0.05f))
                .padding(horizontal = 24.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column {
                Text("KLİMA", color = Color.White.copy(alpha = 0.5f), fontSize = 10.sp)
                Text(temp, color = Color.White, fontSize = 28.sp, fontWeight = FontWeight.Bold)
            }

            Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                // Basit Sıcaklık Artırıcı Buton (Demo)
                Box(
                    modifier = Modifier.size(48.dp).clip(CircleShape).background(Color.White.copy(alpha = 0.1f)).clickable { },
                    contentAlignment = Alignment.Center
                ) {
                    Icon(Icons.Default.Add, contentDescription = null, tint = Color.White)
                }
            }
        }
    }
}
