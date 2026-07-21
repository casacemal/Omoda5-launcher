package com.omoda.lanc.ui.dashboard

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import android.content.Intent
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.ui.layout.LayoutEngine
import com.omoda.lanc.ui.widgets.apps.AppDockWidget

/**
 * Architecture 2.0: Dashboard Host
 * DSL ile tanımlanmış layout'u ekrana basar.
 */
@Composable
fun DashboardHost(layout: DashboardLayout, onNavigate: (String) -> Unit) {
    val context = LocalContext.current
    val leftWeight by GlobalState.dashboardLeftWeight.collectAsState()
    
    Box(Modifier.fillMaxSize()) {
        LayoutEngine.RenderDashboard(
            leftWeight = leftWeight,
            leftPanel = {
                layout.leftPanel.widgets.forEach { widget ->
                    widget.Content()
                }
            },
            rightPanel = {
                layout.rightPanel.widgets.forEach { widget ->
                    widget.Content()
                }
            },
            bottomDock = {
                AppDockWidget(apps = layout.bottomDock.apps, onAppClick = { pkg ->
                    when (pkg) {
                        "internal.home" -> onNavigate("home")
                        "internal.settings", "com.chery.settings" -> onNavigate("settings")
                        "internal.dashboard" -> onNavigate("dashboard")
                        "internal.sensors" -> onNavigate("sensors")
                        "internal.coolwalk" -> onNavigate("coolwalk")
                        "internal.sylvie" -> onNavigate("sylvie")
                        else -> {
                            val launchIntent = context.packageManager.getLaunchIntentForPackage(pkg)
                            if (launchIntent != null) {
                                context.startActivity(launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                            }
                        }
                    }
                })
            }
        )

        // Overlays Layer (Floating widgets)
        layout.overlays.forEach { overlay ->
            overlay.Content()
        }
    }
}
