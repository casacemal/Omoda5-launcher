package com.omoda.lanc.core

import android.util.Log
import com.omoda.lanc.model.VehicleState
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.collectLatest

/**
 * Driving Analysis Engine - Faz 9
 * Sürüş verilerini takip eder, analiz eder ve sürüş sonunda özet çıkarır.
 */
class DrivingAnalysisEngine(private val scope: CoroutineScope) {
    private val TAG = "DrivingAnalysis"

    private var startTime: Long = 0
    private var isTripActive = false
    
    private var totalDistance = 0f
    private var speedSum = 0f
    private var dataPoints = 0
    private var lastSpeed = 0f
    private var hardBrakeCount = 0

    init {
        scope.launch {
            EventBus.events.collectLatest { event ->
                if (event is Event.VehicleEvent.StateUpdated) {
                    processState(event.state)
                }
            }
        }
    }

    private fun processState(state: VehicleState) {
        val speed = state.speed
        val gear = state.gearString

        // Sürüş Başlangıcı Tespiti (Vites D ve Hız > 0)
        if (!isTripActive && gear == "D" && speed > 2f) {
            startTrip()
        }

        if (isTripActive) {
            // Veri Toplama
            speedSum += speed
            dataPoints++
            
            // Sert Fren Tespiti (Basit ivme hesabı: 1 sn'de > 15 km/h düşüş)
            if (lastSpeed - speed > 15f) {
                hardBrakeCount++
                Log.w(TAG, "Sert Fren Tespit Edildi!")
                GlobalState.ecoScore.value = (GlobalState.ecoScore.value - 3).coerceAtLeast(0)
            }
            
            // Ani Hızlanma Tespiti (1 sn'de > 15 km/h artış)
            if (speed - lastSpeed > 15f) {
                Log.w(TAG, "Ani Hızlanma Tespit Edildi!")
                GlobalState.ecoScore.value = (GlobalState.ecoScore.value - 2).coerceAtLeast(0)
            }

            // Sürüş Bitişi Tespiti (Vites P ve Hız 0)
            if (gear == "P" && speed == 0f) {
                endTrip()
            }
        }
        
        lastSpeed = speed
    }

    private fun startTrip() {
        Log.i(TAG, "Sürüş Başladı")
        startTime = System.currentTimeMillis()
        isTripActive = true
        totalDistance = 0f
        speedSum = 0f
        dataPoints = 0
        hardBrakeCount = 0
        GlobalState.ecoScore.value = 100 // Sürüş puanını sıfırla
        
        EventBus.tryEmit(Event.AnalysisEvent.TripStarted(startTime))
    }

    private fun endTrip() {
        if (!isTripActive) return
        Log.i(TAG, "Sürüş Bitti, Özet Hazırlanıyor...")
        isTripActive = false
        
        val endTime = System.currentTimeMillis()
        val durationMs = endTime - startTime
        val durationMin = (durationMs / (1000 * 60)).toInt()
        
        val avgSpeed = if (dataPoints > 0) speedSum / dataPoints else 0f
        val distanceKm = (avgSpeed * (durationMs / 3600000f))
        
        // Puanlama (100 üzerinden)
        var score = 100
        score -= (hardBrakeCount * 5)
        if (score < 0) score = 0

        val summary = DrivingSummary(
            durationMin = durationMin,
            distanceKm = distanceKm,
            avgSpeed = avgSpeed,
            hardBrakeCount = hardBrakeCount,
            score = score
        )

        EventBus.tryEmit(Event.AnalysisEvent.TripEnded(summary))
        
        // Asistana anons ettir
        val message = "Sürüş tamamlandı. ${durationMin} dakikada yaklaşık ${String.format("%.1f", distanceKm)} kilometre yol katettiniz. Sürüş puanınız: 100 üzerinden ${score}."
        EventBus.tryEmit(Event.AlertEvent.Triggered(Alert(
            priority = AlertPriority.INFORMATIONAL,
            message = message
        )))
    }
}
