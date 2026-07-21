package com.omoda.lanc.ui.dashboard

import com.omoda.lanc.ui.widgets.vehicle.VehicleWidget
import com.omoda.lanc.ui.widgets.vehicle.TirePressureWidget
import com.omoda.lanc.ui.widgets.navigation.NavigationWidget
import com.omoda.lanc.ui.widgets.media.MediaWidget
import com.omoda.lanc.ui.widgets.climate.ClimateWidget
import com.omoda.lanc.ui.widgets.vehicle.SensorOverlayWidget
import com.omoda.lanc.ui.widgets.assistant.VoicePanelWidget
import com.omoda.lanc.ui.widgets.assistant.HudWidget

/**
 * Architecture 2.0: Omoda 5 Dashboard Tanımı (MASTER SYNC)
 * En stabil ve en çok bilgi veren düzen.
 */
val OmodaPremiumDashboard = dashboard("omoda_5_premium") {
    left(weight = 0.6f) {
        widget(NavigationWidget(provider = "yandex"))
    }
    
    right(weight = 0.4f) {
        widget(MediaWidget())
        widget(VehicleWidget())
        widget(TirePressureWidget())
        widget(ClimateWidget())
    }
    
    bottom {
        app("com.chery.media")
        app("com.chery.dialer")
        app("internal.sensors")
        app("internal.settings")
    }

    overlays {
        widget(SensorOverlayWidget())
        widget(VoicePanelWidget())
        widget(HudWidget())
    }
}
