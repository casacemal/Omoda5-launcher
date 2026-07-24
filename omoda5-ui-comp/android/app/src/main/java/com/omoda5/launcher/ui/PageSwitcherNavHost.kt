package com.omoda5.launcher.ui

import androidx.compose.animation.Crossfade
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Surface
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import com.omoda5.launcher.ui.pages.*

/**
 * Android Automotive OS PageSwitcherNavHost
 * Mevcut Ana Sayfa mimarisini varsayılan (Index 0) olarak koruyarak,
 * 5 yeni Jetpack Compose konsept sayfasını akıcı animasyonlar ile bağlar.
 */
@Composable
fun PageSwitcherNavHost(
    initialPageIndex: Int = 0
) {
    var currentPageIndex by remember { mutableStateOf(initialPageIndex) }

    OmodaAutomotiveTheme {
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = CyberDarkBg
        ) {
            Crossfade(
                targetState = currentPageIndex,
                animationSpec = tween(durationMillis = 400),
                label = "AAOSPageTransition"
            ) { pageIndex ->
                when (pageIndex) {
                    0 -> {
                        // Index 0: Default Omoda 5 Main Home Launcher
                        AndroidAutoStylePage(onNavigateToPage = { currentPageIndex = it })
                    }
                    1 -> {
                        // Index 1: Android Auto Konsept Sayfası (Modern & Sleek)
                        AndroidAutoStylePage(onNavigateToPage = { currentPageIndex = it })
                    }
                    2 -> {
                        // Index 2: Apple CarPlay Konsept Sayfası (Split-Screen & Fluid)
                        CarPlayStylePage(onNavigateToPage = { currentPageIndex = it })
                    }
                    3 -> {
                        // Index 3: Cyber-HUD & Telemetry Minimalist
                        CyberHudPage(onNavigateToPage = { currentPageIndex = it })
                    }
                    4 -> {
                        // Index 4: Ambient Executive Lounge
                        AmbientLoungePage(onNavigateToPage = { currentPageIndex = it })
                    }
                    5 -> {
                        // Index 5: Modular Spatial Widget Canvas (Bento-Box Grid)
                        BentoCanvasPage(onNavigateToPage = { currentPageIndex = it })
                    }
                    else -> {
                        AndroidAutoStylePage(onNavigateToPage = { currentPageIndex = it })
                    }
                }
            }
        }
    }
}
