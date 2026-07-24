package com.omoda.aaos.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

// AAOS (Android Automotive OS) Color Palette Tokens
val AaosSurface = Color(0xFF0F172A)
val AaosSurfaceContainer = Color(0xFF1E293B)
val AaosSurfaceContainerHigh = Color(0xFF334155)
val AaosPrimaryCyan = Color(0xFF06B6D4)
val AaosOnSurface = Color(0xFFF8FAFC)
val AaosOnSurfaceVariant = Color(0xFF94A3B8)

// Apple CarPlay 2.0 Palette
val CarPlayBlue = Color(0xFF007AFF)
val CarPlayGreen = Color(0xFF34C759)
val CarPlayOrange = Color(0xFFFF9500)
val CarPlayPurple = Color(0xFFAF52DE)

// Tesla Minimal Dark Tokens
val TeslaDarkBackground = Color(0xFF090D16)
val TeslaCardBackground = Color(0xDA121826)
val TeslaBorder = Color(0x1AFFFFFF)

private val AaosDarkColorScheme = darkColorScheme(
    primary = AaosPrimaryCyan,
    onPrimary = Color(0xFF020617),
    surface = AaosSurface,
    onSurface = AaosOnSurface,
    surfaceContainer = AaosSurfaceContainer,
    surfaceContainerHigh = AaosSurfaceContainerHigh,
    onSurfaceVariant = AaosOnSurfaceVariant
)

@Composable
fun OmodaAAOSTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = AaosDarkColorScheme,
        content = content
    )
}
