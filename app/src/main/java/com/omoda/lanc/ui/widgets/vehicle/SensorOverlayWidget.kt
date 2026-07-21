package com.omoda.lanc.ui.widgets.vehicle

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Divider
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.ui.theme.OmodaCyan

/**
 * Architecture 2.0: Canlı Sensör Paneli (Sol Overlay)
 */
class SensorOverlayWidget : DashboardWidget {
    override val id: String = "sensor_overlay"
    override val minWidthDp: Int = 140
    override val minHeightDp: Int = 300

    @Composable
    override fun Content() {
        val vhalState by GlobalState.vehicleDataValues.collectAsState()
        
        if (vhalState.isNotEmpty()) {
            val scrollState = rememberScrollState()
            Column(
                Modifier
                    .padding(start = 240.dp, top = 100.dp) // Sidebar safe area
                    .background(Color.Black.copy(0.7f), RoundedCornerShape(8.dp))
                    .padding(10.dp)
                    .width(minWidthDp.dp)
                    .heightIn(max = 400.dp)
                    .verticalScroll(scrollState),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text("SENSÖRLER", color = Color.Gray, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                Divider(color = Color.DarkGray, modifier = Modifier.padding(bottom = 4.dp))
                
                vhalState.entries.forEach { entry ->
                    val v = entry.value
                    val color = if (v.contains("AÇIK") || v.contains("ÇEKİLİ") || v == "ON" || v.contains("SPORT")) Color.Red else OmodaCyan
                    Row(horizontalArrangement = Arrangement.SpaceBetween, modifier = Modifier.fillMaxWidth()) {
                        Text(entry.key, color = Color.LightGray, fontSize = 9.sp)
                        Text(v, color = color, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }
        }
    }
}
