package com.omoda.lanc.core

import kotlinx.coroutines.flow.MutableSharedFlow
import kotlinx.coroutines.flow.asSharedFlow
import android.util.Log

object EventBus {
    // [FIX-01] Buffer kapasitesi 64'ten 256'ya çıkarıldı.
    // Tier-2 polling (18 prop) + GPS + HardKey + Alert eş zamanlı tetiklendiğinde
    // 64'lük buffer taşabiliyordu → kritik olaylar sessizce kayboluyordu.
    private val _events = MutableSharedFlow<Event>(extraBufferCapacity = 256)
    val events = _events.asSharedFlow()

    /**
     * Kritik olaylar (Alert, HardKey, VehicleStateUpdated) için suspend emit.
     * Buffer doluysa caller'ı askıya alır, olay KESİNLİKLE kaybedilmez.
     */
    suspend fun emit(event: Event) {
        _events.emit(event)
    }

    /**
     * Düşük öncelikli UI olayları için non-blocking tryEmit.
     * [FIX-02] Buffer doluysa log basılıyor — sessiz kayıp engelleniyor.
     */
    fun tryEmit(event: Event): Boolean {
        val result = _events.tryEmit(event)
        if (!result) {
            // [FIX-02] Kaybedilen olay loglanıyor — sessiz olay kaybı önleniyor
            Log.w("EventBus", "⚠️ Buffer dolu, olay kaybedildi: ${event::class.simpleName}")
        }
        return result
    }
}
