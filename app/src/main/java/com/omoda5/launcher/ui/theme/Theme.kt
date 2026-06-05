package com.omoda5.launcher.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable

private val OmodaColorScheme = darkColorScheme(
    primary = OmodaCyan,
    background = DeepBlack,
    surface = SurfaceGray,
    onPrimary = DeepBlack,
    onBackground = TextWhite,
    onSurface = TextWhite
)

@Composable
fun Omoda5NextGenTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = OmodaColorScheme,
        content = content
    )
}
