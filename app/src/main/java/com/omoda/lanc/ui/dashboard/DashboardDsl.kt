package com.omoda.lanc.ui.dashboard

import androidx.compose.runtime.Composable
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

/**
 * Architecture 2.0: UI Layout DSL
 * Dashboard düzenini tanımlar.
 */

@DslMarker
annotation class DashboardDslMarker

data class DashboardLayout(
    val id: String,
    val leftPanel: PanelDefinition,
    val rightPanel: PanelDefinition,
    val bottomDock: DockDefinition,
    val overlays: List<DashboardWidget> = emptyList()
)

data class PanelDefinition(
    val weight: Float,
    val widgets: List<DashboardWidget>
)

data class DockDefinition(
    val height: Dp = 80.dp,
    val apps: List<String> = emptyList()
)

@DashboardDslMarker
class DashboardBuilder(val id: String) {
    private var left: PanelDefinition = PanelDefinition(0.6f, emptyList())
    private var right: PanelDefinition = PanelDefinition(0.4f, emptyList())
    private var bottom: DockDefinition = DockDefinition()
    private val overlayList = mutableListOf<DashboardWidget>()

    fun left(weight: Float = 0.6f, block: PanelBuilder.() -> Unit) {
        left = PanelBuilder(weight).apply(block).build()
    }

    fun right(weight: Float = 0.4f, block: PanelBuilder.() -> Unit) {
        right = PanelBuilder(weight).apply(block).build()
    }

    fun bottom(height: Dp = 80.dp, block: DockBuilder.() -> Unit) {
        bottom = DockBuilder(height).apply(block).build()
    }

    fun overlays(block: OverlayBuilder.() -> Unit) {
        overlayList.addAll(OverlayBuilder().apply(block).widgets)
    }

    fun build() = DashboardLayout(id, left, right, bottom, overlayList)
}

@DashboardDslMarker
class OverlayBuilder {
    val widgets = mutableListOf<DashboardWidget>()
    fun widget(widget: DashboardWidget) {
        widgets.add(widget)
    }
}

@DashboardDslMarker
class PanelBuilder(val weight: Float) {
    private val widgets = mutableListOf<DashboardWidget>()

    fun widget(widget: DashboardWidget) {
        widgets.add(widget)
    }

    fun build() = PanelDefinition(weight, widgets)
}

@DashboardDslMarker
class DockBuilder(val height: Dp) {
    private val apps = mutableListOf<String>()

    fun app(pkg: String) {
        apps.add(pkg)
    }

    fun build() = DockDefinition(height, apps)
}

fun dashboard(id: String, block: DashboardBuilder.() -> Unit): DashboardLayout {
    return DashboardBuilder(id).apply(block).build()
}
