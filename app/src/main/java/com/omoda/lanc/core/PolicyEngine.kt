package com.omoda.lanc.core

import android.util.Log
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.model.VehicleState
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

/**
 * Faz 5: Policy Engine
 * Güvenlik ve kural motoru. 
 * Hız > 0 ise kritik ayarların değiştirilmesini engeller ve asistanı kısıtlı moda sokar.
 */
class PolicyEngine {
    private val TAG = "Omoda-Policy"
    
    private val _isRestrictedMode = MutableStateFlow(false)
    val isRestrictedMode: StateFlow<Boolean> = _isRestrictedMode

    fun updateState(state: VehicleState) {
        val speed = state.speed
        val wasRestricted = _isRestrictedMode.value
        
        // Hız 5 km/h üzerindeyse kısıtlı modu aktif et
        _isRestrictedMode.value = speed > 5.0f

        if (wasRestricted != _isRestrictedMode.value) {
            Log.d(TAG, "Kısıtlı Mod Değişti: ${_isRestrictedMode.value} (Hız: $speed)")
            if (_isRestrictedMode.value) {
                AssistantApplication.addLog("GÜVENLİK: Hareket algılandı, kısıtlı mod aktif.")
            } else {
                AssistantApplication.addLog("GÜVENLİK: Araç durdu, kısıtlamalar kaldırıldı.")
            }
        }
    }

    /**
     * Bir aksiyonun yürütülüp yürütülemeyeceğini kontrol eder.
     */
    fun canExecuteAction(actionName: String): Boolean {
        if (!_isRestrictedMode.value) return true

        // Kısıtlı modda yasaklanan aksiyonlar
        val restrictedActions = listOf("open_settings", "advanced_config", "system_update")
        
        if (restrictedActions.contains(actionName)) {
            Log.w(TAG, "Aksiyon Engellendi (Hareket Halinde): $actionName")
            return false
        }

        return true
    }
}
