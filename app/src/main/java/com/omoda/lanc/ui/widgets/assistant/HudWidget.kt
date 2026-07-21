package com.omoda.lanc.ui.widgets.assistant

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
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
 * Zenginleştirilmiş Akıllı HUD (Architecture 2.0 Shadow)
 * Görev: NET, MQTT, BRIDGE ve Workflow durumlarını canlı gösterir.
 */
class HudWidget : DashboardWidget {
    override val id: String = "hud_widget"
    override val minWidthDp: Int = 340
    override val minHeightDp: Int = 150

    @Composable
    override fun Content() {
        val lastAIResponse by GlobalState.assistantResponse.collectAsState()
        val recognizedText by GlobalState.recognizedText.collectAsState()
        val status by GlobalState.status.collectAsState()
        val workflowState by GlobalState.workflowState.collectAsState()
        
        val hasNet by GlobalState.hasInternetConnection.collectAsState()
        val isMqtt by GlobalState.isMqttConnected.collectAsState()
        val isBridge by GlobalState.isRemoteAdbConnected.collectAsState()

        Box(
            Modifier
                .padding(end = 20.dp, bottom = 120.dp)
                .width(minWidthDp.dp)
                .clip(RoundedCornerShape(topStart = 20.dp, bottomStart = 20.dp))
                .background(Color.Black.copy(0.85f))
                .border(1.dp, OmodaCyan.copy(0.4f), RoundedCornerShape(topStart = 20.dp, bottomStart = 20.dp))
                .padding(16.dp)
        ) {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                // Durum Barı
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text("AI", color = Color.Black, fontSize = 10.sp, fontWeight = FontWeight.Bold, 
                            modifier = Modifier.background(OmodaCyan, RoundedCornerShape(4.dp)).padding(horizontal = 6.dp))
                        
                        StatusLed("NET", hasNet)
                        StatusLed("MQTT", isMqtt)
                        StatusLed("BRIDGE", isBridge)
                    }
                    
                    Text(
                        text = workflowState, 
                        color = when(workflowState) {
                            "LISTENING" -> Color.Red
                            "THINKING" -> Color.Yellow
                            "TALKING" -> OmodaCyan
                            else -> Color.Gray
                        },
                        fontSize = 10.sp,
                        fontWeight = FontWeight.ExtraBold
                    )
                }

                if (recognizedText.isNotBlank()) {
                    Text(text = recognizedText, color = Color.LightGray, fontSize = 13.sp, maxLines = 1)
                }

                if (lastAIResponse.isNotBlank()) {
                    Text(text = lastAIResponse, color = OmodaCyan, fontSize = 15.sp, fontWeight = FontWeight.Bold)
                } else {
                    Text(text = status, color = Color.White.copy(alpha = 0.7f), fontSize = 13.sp)
                }
            }
        }
    }

    @Composable
    private fun StatusLed(label: String, active: Boolean) {
        Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(3.dp)) {
            Box(modifier = Modifier.size(6.dp).clip(CircleShape).background(if (active) Color.Green else Color.Red))
            Text(label, color = Color.White.copy(0.5f), fontSize = 8.sp, fontWeight = FontWeight.Bold)
        }
    }
}
