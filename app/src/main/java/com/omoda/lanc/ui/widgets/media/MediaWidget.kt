package com.omoda.lanc.ui.widgets.media

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
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.media.MediaBridge

class MediaWidget : DashboardWidget {
    override val id: String = "media_widget"
    override val minWidthDp: Int = 300
    override val minHeightDp: Int = 150

    @Composable
    override fun Content() {
        val mediaState by MediaBridge.mediaState.collectAsState()

        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(minHeightDp.dp)
                .padding(8.dp)
                .clip(RoundedCornerShape(16.dp))
                .background(Color.White.copy(alpha = 0.1f))
                .padding(16.dp),
            contentAlignment = Alignment.Center
        ) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text(
                    text = mediaState.title.ifBlank { "Müzik Çalmıyor" },
                    color = Color.White,
                    fontSize = 18.sp
                )
                Text(
                    text = mediaState.artist,
                    color = Color.Gray,
                    fontSize = 14.sp
                )
            }
        }
    }
}
