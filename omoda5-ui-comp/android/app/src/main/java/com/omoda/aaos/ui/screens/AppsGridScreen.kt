package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*

data class AppItem(val name: String, val icon: ImageVector, val color: Color)

@Composable
fun AppsGridScreen() {
    val appsList = listOf(
        AppItem("Navigation", Icons.Default.Navigation, AaosPrimaryCyan),
        AppItem("CarPlay", Icons.Default.Smartphone, CarPlayBlue),
        AppItem("Climate", Icons.Default.AcUnit, AaosPrimaryCyan),
        AppItem("Vehicle", Icons.Default.DirectionsCar, Color(0xFF10B981)),
        AppItem("Music", Icons.Default.MusicNote, CarPlayPurple),
        AppItem("Radio", Icons.Default.Radio, CarPlayOrange),
        AppItem("Phone", Icons.Default.Phone, CarPlayGreen),
        AppItem("Settings", Icons.Default.Settings, AaosOnSurfaceVariant)
    )

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            text = "AUTOMOTIVE APPS",
            fontSize = 16.sp,
            fontWeight = FontWeight.Bold,
            color = Color.White,
            modifier = Modifier.padding(bottom = 16.dp)
        )

        LazyVerticalGrid(
            columns = GridCells.Fixed(4),
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            items(appsList) { app ->
                Box(
                    modifier = Modifier
                        .height(100.dp)
                        .clip(RoundedCornerShape(20.dp))
                        .background(AaosSurfaceContainer)
                        .padding(12.dp),
                    contentAlignment = Alignment.Center
                ) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Icon(
                            imageVector = app.icon,
                            contentDescription = app.name,
                            tint = app.color,
                            modifier = Modifier.size(32.dp)
                        )
                        Spacer(modifier = Modifier.height(6.dp))
                        Text(
                            text = app.name,
                            fontSize = 12.sp,
                            fontWeight = FontWeight.Medium,
                            color = Color.White
                        )
                    }
                }
            }
        }
    }
}
