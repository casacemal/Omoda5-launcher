package com.omoda5.launcher.ui

import androidx.lifecycle.ViewModel
import com.omoda5.launcher.common.AppSelectionRepository
import com.omoda5.launcher.common.SplitScreenManager
import com.omoda5.launcher.model.LauncherItem

class SplitScreenViewModel(
    private val splitScreenManager: SplitScreenManager,
    private val appSelectionRepository: AppSelectionRepository
) : ViewModel() {

    fun getSelectedApps(): Pair<String?, String?> {
        return splitScreenManager.getSelectedApps()
    }

    fun setSelectedApps(left: String?, right: String?) {
        splitScreenManager.setSelectedApps(left, right)
    }

    fun isSplitScreenActive(): Boolean {
        return splitScreenManager.isActive
    }

    fun setSplitScreenActive(active: Boolean) {
        splitScreenManager.isActive = active
    }

    fun toggleSplitScreen() {
        splitScreenManager.toggleActive()
    }

    // For temporary selection during selection mode
    fun setTempLeftApp(app: LauncherItem?) {
        appSelectionRepository.setLeftApp(app)
    }

    fun setTempRightApp(app: LauncherItem?) {
        appSelectionRepository.setRightApp(app)
    }

    fun getTempSelectedApps(): Pair<LauncherItem?, LauncherItem?> {
        return appSelectionRepository.getSelectedApps()
    }

    fun confirmSelections() {
        val (left, right) = appSelectionRepository.getSelectedApps()
        splitScreenManager.setSelectedApps(left?.id, right?.id)
        appSelectionRepository.clearSelections()
    }

    fun clearTempSelections() {
        appSelectionRepository.clearSelections()
    }
}