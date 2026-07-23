package com.omoda.lanc.ui.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.theme.*

@Composable
fun OmodaBottomDock(
    currentTab: String,
    onTabSelected: (String) -> Unit,
    driverTemp: Float,
    onTempChange: (Float) -> Unit,
    modifier: Modifier = Modifier
) {
    Surface(
        color = OmodaSlateBg.copy(alpha = 0.95f),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = modifier
            .fillMaxWidth()
            .height(64.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 12.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            // Sol: Klima Kısayolu (- 21.5°C +)
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier
                    .background(Color.White.copy(0.06f), RoundedCornerShape(20.dp))
                    .padding(horizontal = 12.dp, vertical = 6.dp)
            ) {
                IconButton(
                    onClick = { onTempChange((driverTemp - 0.5f).coerceAtLeast(16f)) },
                    modifier = Modifier.size(32.dp)
                ) {
                    Text("-", color = OmodaCyanNeon, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                }

                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    modifier = Modifier.clickable { onTabSelected("climate") }
                ) {
                    Icon(
                        imageVector = Icons.Default.Refresh,
                        contentDescription = "Klima",
                        tint = OmodaCyanNeon,
                        modifier = Modifier.size(18.dp)
                    )
                    Spacer(Modifier.width(6.dp))
                    Text(
                        text = String.format("%.1f°C", driverTemp),
                        color = Color.White,
                        fontWeight = FontWeight.Bold,
                        fontSize = 16.sp
                    )
                }

                IconButton(
                    onClick = { onTempChange((driverTemp + 0.5f).coerceAtMost(30f)) },
                    modifier = Modifier.size(32.dp)
                ) {
                    Text("+", color = OmodaCyanNeon, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                }
            }

            // Orta: Ana Dokunmatik Navigasyon Butonları
            Row(
                horizontalArrangement = Arrangement.spacedBy(16.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                DockNavItem(
                    icon = Icons.Default.Home,
                    label = "Ana Sayfa",
                    isSelected = currentTab == "home",
                    onClick = { onTabSelected("home") }
                )

                DockNavItem(
                    icon = Icons.Default.Info,
                    label = "Gösterge",
                    isSelected = currentTab == "dashboard",
                    onClick = { onTabSelected("dashboard") }
                )

                DockNavItem(
                    icon = Icons.Default.PlayArrow,
                    label = "Medya",
                    isSelected = currentTab == "media",
                    onClick = { onTabSelected("media") }
                )

                DockNavItem(
                    icon = Icons.Default.Star,
                    label = "Ambiyans",
                    isSelected = currentTab == "ambient",
                    onClick = { onTabSelected("ambient") }
                )

                DockNavItem(
                    icon = Icons.Default.Build,
                    label = "Araç",
                    isSelected = currentTab == "vehicle_settings",
                    onClick = { onTabSelected("vehicle_settings") }
                )

                DockNavItem(
                    icon = Icons.Default.Menu,
                    label = "Uygulamalar",
                    isSelected = currentTab == "apps",
                    onClick = { onTabSelected("apps") }
                )
            }

            // Sağ: Ayarlar Butonu
            IconButton(
                onClick = { onTabSelected("settings") },
                modifier = Modifier
                    .size(44.dp)
                    .clip(CircleShape)
                    .background(if (currentTab == "settings") OmodaCyanNeon.copy(0.2f) else Color.White.copy(0.06f))
            ) {
                Icon(
                    imageVector = Icons.Default.Settings,
                    contentDescription = "Ayarlar",
                    tint = if (currentTab == "settings") OmodaCyanNeon else Color.White,
                    modifier = Modifier.size(24.dp)
                )
            }
        }
    }
}

@Composable
private fun DockNavItem(
    icon: ImageVector,
    label: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Box(
        modifier = Modifier
            .clip(RoundedCornerShape(16.dp))
            .background(if (isSelected) OmodaCyanNeon.copy(alpha = 0.2f) else Color.Transparent)
            .clickable { onClick() }
            .padding(horizontal = 14.dp, vertical = 8.dp),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Icon(
                imageVector = icon,
                contentDescription = label,
                tint = if (isSelected) OmodaCyanNeon else Color.White.copy(0.7f),
                modifier = Modifier.size(24.dp)
            )
        }
    }
}
