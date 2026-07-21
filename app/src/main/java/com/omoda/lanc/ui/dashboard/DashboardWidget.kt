package com.omoda.lanc.ui.dashboard

import androidx.compose.runtime.Composable

/**
 * Architecture 2.0: Temel Widget Arayüzü
 */
interface DashboardWidget {
    val id: String
    val minWidthDp: Int
    val minHeightDp: Int

    @Composable
    fun Content()
}
