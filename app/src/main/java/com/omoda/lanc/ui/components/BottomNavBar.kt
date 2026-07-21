package com.omoda.lanc.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.theme.GlassBackground
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.theme.TextMuted

@Composable
fun BottomNavBar(
    driverTemp: Int,
    passengerTemp: Int, // Passenger temp not shown in current simple UI, but keeping for future
    onMenuClick: () -> Unit = {},
    onHomeClick: () -> Unit = {},
    onAppsClick: () -> Unit = {}
) {
    val scrollState = rememberScrollState()

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(56.dp)
            .background(Color.Black.copy(alpha = 0.8f))
            .horizontalScroll(scrollState)
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        // Left Side: Climate (Driver)
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text("♨\uFE0F", color = TextMuted, fontSize = 24.sp)
            Text("❄\uFE0F", color = TextMuted, fontSize = 24.sp)
            Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                Text("<", color = TextMuted, fontSize = 20.sp, modifier = Modifier.clickable { })
                Text("$driverTemp°", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold)
                Text(">", color = TextMuted, fontSize = 20.sp, modifier = Modifier.clickable { })
            }
            Text("♨\uFE0F", color = TextMuted, fontSize = 24.sp)
        }

        Spacer(Modifier.width(32.dp))

        // Center: App Icons
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(32.dp)
        ) {
            NavItem("≡", "Menu", onClick = onMenuClick)
            NavItem("\uD83D\uDDFD", "Direction") // Map icon roughly
            NavItem("⊞", "Apps", onClick = onAppsClick)
            NavItem("\uD83C\uDFE0", "Home", isSelected = true, onClick = onHomeClick)
            NavItem("\uD83D\uDCDE", "Calls")
            NavItem("\uD83C\uDFB5", "Media")
            NavItem("⚙\uFE0F", "Settings")
        }

        Spacer(Modifier.width(32.dp))

        // Right Side: Quick Toggles
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text("\uD83C\uDF2B\uFE0F", color = TextMuted, fontSize = 24.sp) // Fan
            Text("\uD83D\uDCA8", color = TextMuted, fontSize = 24.sp) // Wind
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text("\uD83D\uDD0A", color = TextMuted, fontSize = 24.sp)
                Spacer(Modifier.width(8.dp))
                Text("50%", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold)
            }
        }
    }
}

@Composable
private fun NavItem(icon: String, label: String, isSelected: Boolean = false, onClick: () -> Unit = {}) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier.clickable(onClick = onClick).padding(horizontal = 4.dp, vertical = 8.dp)
    ) {
        Text(icon, fontSize = 24.sp, color = if (isSelected) OmodaCyan else TextMuted)
        Spacer(Modifier.height(4.dp))
        Text(label, fontSize = 10.sp, color = if (isSelected) OmodaCyan else TextMuted, fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal)
    }
}
