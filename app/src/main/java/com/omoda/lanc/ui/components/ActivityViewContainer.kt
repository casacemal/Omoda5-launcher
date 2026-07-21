package com.omoda.lanc.ui.components

import android.content.Intent
import androidx.compose.foundation.layout.Box
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier

/**
 * Deprecated — AAOS10 (API 29, SEMIDRIVE X9) does not have android.app.ActivityView (API 30+).
 * DashboardScreen uses native split-screen launch (FLAG_ACTIVITY_LAUNCH_ADJACENT) instead.
 */
@Composable
fun ActivityViewContainer(
    intent: Intent?,
    visible: Boolean,
    modifier: Modifier = Modifier
) {
    Box(modifier = modifier)
}
