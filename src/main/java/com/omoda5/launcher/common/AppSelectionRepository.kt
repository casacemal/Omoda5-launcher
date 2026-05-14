package com.omoda5.launcher.common

import com.omoda5.launcher.model.LauncherItem

class AppSelectionRepository {

    private var selectedLeft: LauncherItem? = null
    private var selectedRight: LauncherItem? = null

    fun setLeftApp(app: LauncherItem?) {
        selectedLeft = app
    }

    fun setRightApp(app: LauncherItem?) {
        selectedRight = app
    }

    fun getLeftApp(): LauncherItem? = selectedLeft

    fun getRightApp(): LauncherItem? = selectedRight

    fun clearSelections() {
        selectedLeft = null
        selectedRight = null
    }

    fun isAppSelected(app: LauncherItem): Boolean {
        return selectedLeft?.id == app.id || selectedRight?.id == app.id
    }

    fun getSelectedApps(): Pair<LauncherItem?, LauncherItem?> = Pair(selectedLeft, selectedRight)
}