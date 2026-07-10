package com.omoda.lanc.vehicle

import android.content.Context
import com.omoda.lanc.model.VehicleState

/**
 * VehicleProvider - Akıllı Dumpsys Yönetimi
 * Verileri toplu halde günceller ve talep edildiğinde son veriyi döner.
 */
class VehicleProvider(context: Context) {
    private val dumpsysSource = DumpsysSource()

    /**
     * Belirli ID'leri toplu halde günceller.
     */
    fun refreshSelected(ids: List<String>): VehicleState {
        return dumpsysSource.refreshSelected(ids)
    }

    fun getSpeed(): Float {
        return dumpsysSource.getSpeed() ?: 0f
    }

    fun getGear(): Int {
        return dumpsysSource.getGear() ?: 0
    }

    fun isEngineRunning(): Boolean {
        // DumpsysSource içindeki hiyerarşiden çek
        return dumpsysSource.refreshSelected(emptyList()).isEngineRunning
    }

    fun getFuelLevel(): Float {
        return dumpsysSource.getFuelLevel() ?: 0f
    }

    fun isAnyDoorOpen(): Boolean {
        return dumpsysSource.isAnyDoorOpen() ?: false
    }
}
