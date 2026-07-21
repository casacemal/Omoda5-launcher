package com.omoda.lanc.network

import android.util.Log
import com.google.gson.annotations.SerializedName
import com.omoda.lanc.core.GlobalState
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import okhttp3.OkHttpClient
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.GET
import retrofit2.http.Query

data class OpenMeteoResponse(
    @SerializedName("current_weather") val currentWeather: CurrentWeather?
)

data class CurrentWeather(
    @SerializedName("temperature")  val temperature: Double,
    @SerializedName("windspeed")    val windspeed: Double,
    @SerializedName("weathercode")  val weathercode: Int,
    @SerializedName("is_day")       val isDay: Int
)

data class WeatherState(
    val temperature: Int,
    val weatherCode: Int,
    val isDay: Boolean
) {
    val conditionIcon: String get() = wmoCodeToEmoji(weatherCode, isDay)
    val conditionLabel: String get() = wmoCodeToLabel(weatherCode)

    private fun wmoCodeToEmoji(code: Int, isDay: Boolean): String = when (code) {
        0 -> if (isDay) "☀️" else "🌙"
        1, 2 -> if (isDay) "⛅" else "🌤"
        3 -> "☁️"
        45, 48 -> "🌫️"
        51, 53, 55, 61, 63, 65, 80, 81, 82 -> "🌧️"
        71, 73, 75 -> "❄️"
        95, 96, 99 -> "⛈️"
        else -> "🌡️"
    }

    private fun wmoCodeToLabel(code: Int): String = when (code) {
        0 -> "Açık"
        1, 2, 3 -> "Bulutlu"
        45, 48 -> "Sisli"
        51, 53, 55 -> "Çiseleme"
        61, 63, 65 -> "Yağmurlu"
        71, 73, 75 -> "Karlı"
        80, 81, 82 -> "Sağanak"
        95 -> "Fırtına"
        96, 99 -> "Dolu"
        else -> "Bilinmiyor"
    }
}

interface WeatherApiService {
    @GET("v1/forecast")
    suspend fun getForecast(
        @Query("latitude")         latitude: Double,
        @Query("longitude")        longitude: Double,
        @Query("current_weather")  currentWeather: Boolean = true
    ): OpenMeteoResponse
}

object WeatherManager {
    private const val TAG = "WeatherManager"
    private val _weatherState = MutableStateFlow<WeatherState?>(null)
    val weatherState = _weatherState.asStateFlow()

    private val service = Retrofit.Builder()
        .baseUrl("https://api.open-meteo.com/")
        .addConverterFactory(GsonConverterFactory.create())
        .build()
        .create(WeatherApiService::class.java)

    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())

    fun startPolling() {
        scope.launch {
            while (true) {
                updateWeather()
                delay(15 * 60 * 1000) // 15 dakikada bir güncelle
            }
        }
    }

    private suspend fun updateWeather() {
        try {
            // Varsayılan Ankara koordinatları (İleride GPS'ten alınabilir)
            val response = service.getForecast(39.9334, 32.8597)
            response.currentWeather?.let {
                _weatherState.value = WeatherState(
                    temperature = it.temperature.toInt(),
                    weatherCode = it.weathercode,
                    isDay = it.isDay == 1
                )
                Log.i(TAG, "Hava durumu güncellendi: ${it.temperature}°C")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Hava durumu alınamadı: ${e.message}")
        }
    }
}
