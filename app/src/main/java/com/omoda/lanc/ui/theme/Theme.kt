package com.omoda.lanc.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.ui.graphics.Color
import androidx.compose.runtime.Composable

private val AssistantDarkColors = darkColorScheme(
    primary = WarmPrimary,
    onPrimary = WarmOnPrimary,
    secondary = Color(0xFFF3B14B),
    onSecondary = Color(0xFF1A1204),
    tertiary = Color(0xFFFF6B6B),
    onTertiary = Color(0xFF210808),
    background = WarmBackground,
    onBackground = WarmOnSurface,
    surface = WarmSurface,
    onSurface = WarmOnSurface,
    surfaceVariant = WarmSurfaceVariant,
    onSurfaceVariant = WarmOnSurfaceVariant
)

@Composable
fun Omoda5NextGenTheme(content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = AssistantDarkColors, content = content)
}

@Composable
fun AppTheme(content: @Composable () -> Unit) {
    Omoda5NextGenTheme(content = content)
}

