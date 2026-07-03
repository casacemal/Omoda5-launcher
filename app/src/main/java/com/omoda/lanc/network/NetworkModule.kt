package com.omoda.lanc.network

import android.util.Log
import okhttp3.Interceptor
import okhttp3.OkHttpClient
import okhttp3.Response
import okhttp3.logging.HttpLoggingInterceptor
import java.util.concurrent.TimeUnit

object NetworkModule {
    private const val TAG = "Hermes-Network"

    private val loggingInterceptor = HttpLoggingInterceptor { message ->
        Log.d(TAG, "API_LOG: $message")
    }.apply {
        level = HttpLoggingInterceptor.Level.HEADERS
    }

    val sseClient = OkHttpClient.Builder()
        .readTimeout(0, TimeUnit.MILLISECONDS)
        .connectTimeout(10, TimeUnit.SECONDS)
        .writeTimeout(10, TimeUnit.SECONDS)
        .retryOnConnectionFailure(true)
        .addInterceptor(loggingInterceptor)
        .build()

    val robustClient = OkHttpClient.Builder()
        .readTimeout(45, TimeUnit.SECONDS) 
        .connectTimeout(10, TimeUnit.SECONDS)
        .writeTimeout(45, TimeUnit.SECONDS)
        .retryOnConnectionFailure(true)
        .addInterceptor(loggingInterceptor)
        .addInterceptor(object : Interceptor {
            override fun intercept(chain: Interceptor.Chain): Response {
                val request = chain.request()
                var response: Response? = null
                var lastException: Exception? = null
                var tryCount = 0
                val maxLimit = 2 // Deneme sayısını 2'ye düşürdük (Hızlı hata için)

                while (tryCount < maxLimit) {
                    try {
                        response?.close()
                        if (tryCount > 0) {
                            Log.w(TAG, "Bağlantı hatası, tekrar deneniyor... Deneme: $tryCount")
                            Thread.sleep(500)
                        }
                        response = chain.proceed(request)
                        if (response.isSuccessful) break
                    } catch (e: Exception) {
                        lastException = e
                        // Eğer zaman aşımı ise ve ilk deneme ise bir kez daha dene
                        if (tryCount >= maxLimit - 1) throw e
                    }
                    tryCount++
                }

                return response ?: throw lastException ?: Exception("Ağ hatası: Sunucuya bağlanılamadı.")
            }
        })
        .build()
}
