package com.omoda.lanc.network

import android.util.Log
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * AdbClient - MASTER ROOT MODE
 * [MUTLAK KURAL]: Omoda 5 donanımında 5555 portu ve localhost socketleri KİLİTLİDİR.
 * Bu dosya sadece ve sadece root yetkisiyle doğrudan shell üzerinden çalışır.
 *
 * [FIX]: su binary tam path ile denenir, sh -c üzerinden komut gönderilir.
 * ponytail: su0 fallback eklenebilir, Magisk/SuperSU path'leri için.
 */
object AdbClient {
    private const val TAG = "AdbClient"

    // ponytail: su binary path'leri — cihaza göre sıralı
    private val SU_PATHS = arrayOf("/system/bin/su", "/system/xbin/su", "/sbin/su", "su")

    fun executeCommand(cmd: String, onLine: (String) -> Unit = {}) {
        Thread {
            var proc: Process? = null
            try {
                // ponytail: su 0 + sh -c ile tam komut çalıştır
                // su root -> su 0 düzelt (root syntax bu cihazda çalışmaz)
                // tek string -> sh -c ile split edilir
                var lastError: Exception? = null
                for (suPath in SU_PATHS) {
                    try {
                        proc = Runtime.getRuntime().exec(
                            arrayOf(suPath, "0", "sh", "-c", cmd)
                        )
                        val reader = BufferedReader(InputStreamReader(proc.inputStream))
                        var line: String?
                        while (reader.readLine().also { line = it } != null) {
                            line?.let { onLine(it) }
                        }

                        // stderr'den de oku (hata mesajları için)
                        val errReader = BufferedReader(InputStreamReader(proc.errorStream))
                        while (errReader.readLine() != null) { /* consume */ }

                        val exitCode = proc.waitFor()
                        if (exitCode == 0) return@Thread // başarılı
                        Log.w(TAG, "Komut hatası (Exit: $exitCode, su: $suPath): $cmd")
                    } catch (e: Exception) {
                        lastError = e
                        proc?.destroy()
                        proc = null
                        Log.d(TAG, "su denemesi başarısız ($suPath): ${e.message}")
                    }
                }
                // Hiçbir su path çalışmadı
                Log.e(TAG, "Tüm su path'leri başarısız: ${lastError?.message}")
            } catch (e: Exception) {
                Log.e(TAG, "ROOT EXEC HATASI: ${e.message}")
            } finally {
                proc?.destroy()
            }
        }.start()
    }
}
