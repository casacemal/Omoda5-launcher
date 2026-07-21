package com.omoda.lanc.ui.widgets.vehicle

import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.ui.theme.OmodaCyan

/**
 * Architecture 2.0: Lastik Basınç (TPMS) Widget
 */
class TirePressureWidget : DashboardWidget {
    override val id: String = "tpms_widget"
    override val minWidthDp: Int = 300
    override val minHeightDp: Int = 180

    @Composable
    override fun Content() {
        val data by GlobalState.vehicleDataValues.collectAsState()
        
        val fl = data["FL"] ?: "-- bar"
        val fr = data["FR"] ?: "-- bar"
        val rl = data["RL"] ?: "-- bar"
        val rr = data["RR"] ?: "-- bar"

        Box(
            modifier = Modifier
                .fillMaxWidth()
                .padding(8.dp)
                .clip(RoundedCornerShape(24.dp))
                .background(Color(0xFF16181A))
                .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(24.dp))
                .padding(16.dp)
        ) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text("LASTİK BASINÇLARI", color = Color.Gray, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                Spacer(Modifier.height(12.dp))
                
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceEvenly) {
                    TireItem("ÖN SOL", fl)
                    TireItem("ÖN SAĞ", fr)
                }
                Spacer(Modifier.height(16.dp))
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceEvenly) {
                    TireItem("ARKA SOL", rl)
                    TireItem("ARKA SAĞ", rr)
                }
            }
        }
    }

    @Composable
    private fun TireItem(label: String, value: String) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(label, color = Color.LightGray, fontSize = 9.sp)
            Text(value, color = OmodaCyan, fontSize = 16.sp, fontWeight = FontWeight.Bold)
        }
    }
}
