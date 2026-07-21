package com.omoda.lanc.ui.widgets.assistant

import android.content.Intent
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.ui.theme.OmodaCyan

/**
 * Architecture 2.0: Ses Tetikleyici Paneli (Sağ Overlay)
 */
class VoicePanelWidget : DashboardWidget {
    override val id: String = "voice_panel"
    override val minWidthDp: Int = 60
    override val minHeightDp: Int = 300

    @Composable
    override fun Content() {
        val context = LocalContext.current
        
        Box(modifier = Modifier.fillMaxSize()) {
            Column(
                Modifier
                    .align(Alignment.CenterEnd)
                    .padding(end = 120.dp)
                    .width(minWidthDp.dp),
                verticalArrangement = Arrangement.spacedBy(10.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                VoiceTriggerButton("MIC", Color(0xFF00FF41)) { 
                    context.sendBroadcast(Intent("com.omoda.assistant.START_LISTENING"))
                }
                
                VoiceTriggerButton("CHAT", OmodaCyan) { 
                    GlobalState.currentMode.value = if (GlobalState.currentMode.value == "CHAT") "ASISTANT" else "CHAT"
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }
                
                VoiceTriggerButton("VHAL", Color.Magenta) { 
                    GlobalState.isSimulationMode.value = !GlobalState.isSimulationMode.value
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }
                
                VoiceTriggerButton("TEMA", Color(0xFFFF9800)) { 
                    GlobalState.wallpaperIdx.value++
                    com.omoda.lanc.AssistantApplication.configManager.saveConfigAndSync()
                }
            }
        }
    }

    @Composable
    private fun VoiceTriggerButton(label: String, color: Color, onClick: () -> Unit) {
        Surface(
            modifier = Modifier
                .size(50.dp)
                .clickable { onClick() },
            shape = RoundedCornerShape(25.dp),
            color = Color.Black.copy(0.6f),
            border = BorderStroke(1.dp, color.copy(0.4f))
        ) {
            Box(contentAlignment = Alignment.Center) {
                Text(label, color = color, fontSize = 10.sp, fontWeight = FontWeight.Bold)
            }
        }
    }
}
