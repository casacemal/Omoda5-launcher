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

    val robustClient = OkHttpClient.Builder()
        .readTimeout(0, TimeUnit.MILLISECONDS) 
        .connectTimeout(30, TimeUnit.SECONDS)
        .retryOnConnectionFailure(true)
        .addInterceptor(loggingInterceptor)
        .addInterceptor(object : Interceptor {
            override fun intercept(chain: Interceptor.Chain): Response {
                val originalRequest = chain.request()
                
                // Idempotency-Key eklenmiş builder
                val builder = originalRequest.newBuilder()
                if (originalRequest.method == "POST" || originalRequest.method == "PUT") {
                    builder.addHeader("Idempotency-Key", "req-${System.currentTimeMillis()}")
                }
                val request = builder.build()

                var response: Response? = null
                var lastException: Exception? = null
                var tryCount = 0
                val maxLimit = 3

                while (tryCount < maxLimit && (response == null || !response.isSuccessful)) {
                    try {
                        response?.close()
                        if (tryCount > 0) {
                            Log.w(TAG, "Bağlantı hatası, tekrar deneniyor... Deneme: $tryCount")
                            Thread.sleep(2000)
                        }
                        response = chain.proceed(request)
                    } catch (e: Exception) {
                        lastException = e
                    }
                    tryCount++
                }

                return response ?: throw lastException ?: Exception("Ağ hatası: Tailscale veya Hermes Gateway bağlantısı kurulamadı.")
            }
        })
        .build()
}
