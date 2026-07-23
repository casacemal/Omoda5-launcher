package com.omoda.lanc.network

import android.util.Log
import okhttp3.Interceptor
import okhttp3.OkHttpClient
import okhttp3.Response
import okhttp3.logging.HttpLoggingInterceptor
import java.io.IOException
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

    private val retryInterceptor = Interceptor { chain ->
        var request = chain.request()
        var response: Response? = null
        var exception: IOException? = null
        var tryCount = 0
        val maxLimit = 3
        var backoffMs = 1000L

        while (tryCount < maxLimit && (response == null || !response.isSuccessful)) {
            try {
                if (tryCount > 0) {
                    Log.w(TAG, "Retrying request ${request.url} (Attempt ${tryCount + 1}/$maxLimit) after ${backoffMs}ms")
                    Thread.sleep(backoffMs)
                    backoffMs *= 2 // Exponential backoff
                }
                response?.close() // Close previous failed response if any
                response = chain.proceed(request)
            } catch (e: IOException) {
                exception = e
            } finally {
                tryCount++
            }
        }
        
        // If we tried and got a response, return it. Otherwise throw the last exception.
        response ?: throw exception ?: IOException("Unknown network error")
    }

    val baseClient = OkHttpClient.Builder()
        .readTimeout(30, TimeUnit.SECONDS)
        .connectTimeout(15, TimeUnit.SECONDS)
        .writeTimeout(15, TimeUnit.SECONDS)
        .addInterceptor(retryInterceptor)
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
        .addInterceptor(retryInterceptor)
        .addInterceptor(loggingInterceptor)
        .build()
}
