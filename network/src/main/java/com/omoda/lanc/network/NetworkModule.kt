package com.omoda.lanc.network

import android.util.Log
import okhttp3.OkHttpClient
import okhttp3.logging.HttpLoggingInterceptor
import java.util.concurrent.TimeUnit

object NetworkModule {
    private const val TAG = "Hermes-Network"

    private val loggingInterceptor = HttpLoggingInterceptor { message ->
        if (!message.contains("Authorization", ignoreCase = true)) {
            Log.d(TAG, "API_LOG: $message")
        }
    }.apply {
        // Defaulting to HEADERS for now as we are usually in debug phase.
        level = HttpLoggingInterceptor.Level.HEADERS
    }

    val baseClient = OkHttpClient.Builder()
        .readTimeout(30, TimeUnit.SECONDS)
        .connectTimeout(15, TimeUnit.SECONDS)
        .writeTimeout(15, TimeUnit.SECONDS)
        .addInterceptor(loggingInterceptor)
        .build()

    val sseClient = OkHttpClient.Builder()
        .readTimeout(5, TimeUnit.MINUTES) // SSE-1 Fix: Avoid infinite wait
        .connectTimeout(30, TimeUnit.SECONDS)
        .writeTimeout(30, TimeUnit.SECONDS)
        .retryOnConnectionFailure(true)
        .addInterceptor(loggingInterceptor)
        .build()

    val robustClient = OkHttpClient.Builder()
        .readTimeout(45, TimeUnit.SECONDS) 
        .connectTimeout(15, TimeUnit.SECONDS)
        .writeTimeout(45, TimeUnit.SECONDS)
        .retryOnConnectionFailure(true)
        .addInterceptor(loggingInterceptor)
        .build()
}
