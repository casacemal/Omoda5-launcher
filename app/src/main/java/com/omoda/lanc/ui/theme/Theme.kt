package com.omoda.lanc.ui.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.ui.graphics.Color
import androidx.compose.runtime.Composable

private val AssistantDarkColors = darkColorScheme(
    primary = Color(0xFF69E2D3),
    onPrimary = Color(0xFF04110F),
    secondary = Color(0xFFF3B14B),
    onSecondary = Color(0xFF1A1204),
    tertiary = Color(0xFFFF6B6B),
    onTertiary = Color(0xFF210808),
    background = Color(0xFF081012),
    onBackground = Color(0xFFF1F5F4),
    surface = Color(0xFF111A1D),
    onSurface = Color(0xFFF1F5F4),
    surfaceVariant = Color(0xFF1A2529),
    onSurfaceVariant = Color(0xFFC5D0D0)
)

@Composable
fun Omoda5NextGenTheme(content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = AssistantDarkColors, content = content)
}

@Composable
fun AppTheme(content: @Composable () -> Unit) {
    Omoda5NextGenTheme(content = content)
}

