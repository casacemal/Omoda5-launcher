package com.omoda5.launcher.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.omoda5.launcher.common.VhalManager
import com.omoda5.launcher.model.VehicleMetrics
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

/**
 * v11.0.0 — VhalManager.rawVhalData'yı doğrudan dinler.
 * Tüm tip dönüşümleri güvenli as? ile yapılır.
 * Kapı değerleri VhalManager'da Boolean olarak set edilir.
 */
class VehicleDataViewModel : ViewModel() {
    private val _metrics = MutableStateFlow(VehicleMetrics())
    val metrics = _metrics.asStateFlow()

    init {
        viewModelScope.launch {
            // VhalManager.rawVhalData: doğrudan Any-tipli map
            // (SystemBridgeManager.rawVhalState hiç güncellenmiyordu)
            VhalManager.rawVhalData.collect { raw ->
                _metrics.value = VehicleMetrics(
                    speed   = raw["HIZ"] as? Float ?: 0f,        // zaten km/h (VhalManager'da ×3.6)
                    rpm     = raw["DEVİR"] as? Float ?: 0f,
                    gear    = raw["VİTES"] as? String ?: "P",
                    fuelLevel      = raw["YAKIT"] as? Float ?: 0f, // zaten litre
                    driveMode      = raw["SÜRÜŞ MODU"] as? Int ?: 2,
                    handbrakeOn    = raw["FREN"] as? Boolean ?: false,
                    exteriorTemp   = raw["DIŞ ISI"] as? Float ?: 0f,
                    range          = raw["MENZİL"] as? Int ?: 0,
                    ignitionStatus = raw["KONTAK"] as? String ?: "OFF",

                    // Kapılar — VhalManager Boolean set eder
                    doorFrontLeftOpen  = raw["SOL ÖN"]  as? Boolean ?: false,
                    doorFrontRightOpen = raw["SAĞ ÖN"]  as? Boolean ?: false,
                    doorRearLeftOpen   = raw["SOL ARKA"] as? Boolean ?: false,
                    doorRearRightOpen  = raw["SAĞ ARKA"] as? Boolean ?: false,
                    trunkOpen          = raw["BAGAJ"]    as? Boolean ?: false,

                    // TPMS (henüz VHAL'den gelmiyorsa varsayılan)
                    tpmsFL   = raw["TPMS_FL"]    as? Float ?: 0f,
                    tireTemp = raw["LASTİK_ISI"] as? Float ?: 0f,

                    // GPS (GMS yok — ileride OSMDroid ile doldurulacak)
                    latitude  = raw["ENLEM"]  as? Double ?: 0.0,
                    longitude = raw["BOYLAM"] as? Double ?: 0.0
                )
            }
        }
    }
}
