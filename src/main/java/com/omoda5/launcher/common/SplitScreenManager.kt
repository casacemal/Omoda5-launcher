package com.omoda5.launcher.common

class SplitScreenManager(private val prefs: PreferencesManager) {

    var leftAppPackage: String?
        get() = prefs.splitLeftApp
        set(value) { prefs.splitLeftApp = value }

    var rightAppPackage: String?
        get() = prefs.splitRightApp
        set(value) { prefs.splitRightApp = value }

    var isActive: Boolean
        get() = prefs.isSplitActive
        set(value) { prefs.isSplitActive = value }

    var defaultLeftAppPackage: String?
        get() = prefs.splitDefaultLeftApp
        set(value) { prefs.splitDefaultLeftApp = value }

    var defaultRightAppPackage: String?
        get() = prefs.splitDefaultRightApp
        set(value) { prefs.splitDefaultRightApp = value }

    fun setSelectedApps(left: String?, right: String?) {
        leftAppPackage = left
        rightAppPackage = right
        if (!left.isNullOrBlank()) {
            prefs.splitLeftHistory = prefs.splitLeftHistory.toMutableSet().also { it.add(left) }
        }
        if (!right.isNullOrBlank()) {
            prefs.splitRightHistory = prefs.splitRightHistory.toMutableSet().also { it.add(right) }
        }
    }

    fun getSelectedApps(): Pair<String?, String?> = Pair(leftAppPackage, rightAppPackage)

    fun clearSelections() {
        leftAppPackage = null
        rightAppPackage = null
    }

    fun getLeftHistory(): List<String> = prefs.splitLeftHistory.toList()

    fun getRightHistory(): List<String> = prefs.splitRightHistory.toList()

    fun addToLeftHistory(packageName: String) {
        prefs.splitLeftHistory = prefs.splitLeftHistory.toMutableSet().also { it.add(packageName) }
    }

    fun addToRightHistory(packageName: String) {
        prefs.splitRightHistory = prefs.splitRightHistory.toMutableSet().also { it.add(packageName) }
    }

    fun removeFromLeftHistory(packageName: String) {
        prefs.splitLeftHistory = prefs.splitLeftHistory.toMutableSet().also { it.remove(packageName) }
        if (leftAppPackage == packageName) leftAppPackage = null
    }

    fun removeFromRightHistory(packageName: String) {
        prefs.splitRightHistory = prefs.splitRightHistory.toMutableSet().also { it.remove(packageName) }
        if (rightAppPackage == packageName) rightAppPackage = null
    }

    fun toggleActive() {
        isActive = !isActive
    }
}
