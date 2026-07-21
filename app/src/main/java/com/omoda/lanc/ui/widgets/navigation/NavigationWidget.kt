package com.omoda.lanc.ui.widgets.navigation

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.dashboard.DashboardWidget

class NavigationWidget(val provider: String = "yandex") : DashboardWidget {
    override val id: String = "nav_widget_$provider"
    override val minWidthDp: Int = 400
    override val minHeightDp: Int = 300

    @Composable
    override fun Content() {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(8.dp)
                .clip(RoundedCornerShape(24.dp))
                .background(Color.DarkGray.copy(alpha = 0.5f)),
            contentAlignment = Alignment.Center
        ) {
            // Gelecekte buraya Yandex Navi Split Screen veya WebView gelecek
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text("HARİTA: ${provider.uppercase()}", color = Color.White, fontSize = 20.sp)
                Text("Native Split View Hazırlanıyor...", color = Color.Gray, fontSize = 12.sp)
            }
        }
    }
}
