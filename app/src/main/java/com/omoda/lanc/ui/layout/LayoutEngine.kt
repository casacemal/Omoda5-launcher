package com.omoda.lanc.ui.layout

import androidx.compose.foundation.layout.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.omoda.lanc.core.GlobalState

/**
 * Architecture 2.0: Panel tabanlı Layout Engine prototipi
 */
object LayoutEngine {

    @Composable
    fun RenderDashboard(
        leftWeight: Float = 0.6f,
        leftPanel: @Composable ColumnScope.() -> Unit,
        rightPanel: @Composable ColumnScope.() -> Unit,
        bottomDock: @Composable () -> Unit
    ) {
        // Sidebar boşluğu: araç donanımında sidebar görünürse 235dp, yoksa veya
        // handheld modda 0dp. GlobalState üzerinden reaktif takip edilir.
        val sidebarPad by GlobalState.sidebarWidth.collectAsState()
        Column(Modifier.fillMaxSize().padding(start = sidebarPad.dp)) {
            Row(Modifier.weight(1f)) {
                // Sol Panel (Navigasyon vb.)
                Column(
                    modifier = Modifier.weight(leftWeight).fillMaxHeight(),
                    content = leftPanel
                )
                
                // Sağ Panel (Medya, Araç vb.)
                Column(
                    modifier = Modifier.weight(1f - leftWeight).fillMaxHeight(),
                    content = rightPanel
                )
            }
            
            // Alt Dock (Kısayollar)
            Box(modifier = Modifier.fillMaxWidth().height(80.dp)) {
                bottomDock()
            }
        }
    }
}
