package com.omoda.lanc.network

import android.content.Context
import android.util.Log
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.*
import java.io.File

/**
 * AdbConnectionMonitor - Harici ADB Bağlantı Takipçisi
 * 
 * Prensip: Android'de ADB bağlantıları 'shell' (UID: 2000) kullanıcısı olarak çalışır.
 * /proc/net/tcp ve /proc/net/tcp6 dosyalarını okuyarak, UID'si 2000 olan ve uzak adresi 
 * localhost (127.0.0.1 / 0100007F) olmayan aktif (st=01 ESTABLISHED) TCP bağlantılarını denetler.
 * 
 * Bu sayede asistanın kendi iç ADB köprüsü (localhost) dışındaki tüm harici (PC, Tailscale vb.)
 * ADB bağlantılarını 0% işlemci yüküyle anında tespit eder.
 */
class AdbConnectionMonitor(private val context: Context) {
    private val TAG = "AdbConnectionMonitor"
    private val scope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    private var monitorJob: Job? = null

    fun start() {
        monitorJob?.cancel()
        monitorJob = scope.launch {
            while (isActive) {
                try {
                    val hasRemoteAdb = checkActiveAdbConnections()
                    if (AssistantApplication.isRemoteAdbConnected.value != hasRemoteAdb) {
                        Log.w(TAG, "Uzak ADB Bağlantı Durumu Değişti: $hasRemoteAdb")
                        AssistantApplication.isRemoteAdbConnected.value = hasRemoteAdb
                    }
                } catch (e: Exception) {
                    Log.e(TAG, "Monitor hatası: ${e.message}")
                }
                delay(4000) // Her 4 saniyede bir kontrol et
            }
        }
    }

    fun stop() {
        monitorJob?.cancel()
    }

    private fun checkActiveAdbConnections(): Boolean {
        return parseTcpFile("/proc/net/tcp") || parseTcpFile("/proc/net/tcp6")
    }

    private fun parseTcpFile(filePath: String): Boolean {
        val file = File(filePath)
        if (!file.exists()) return false

        try {
            if (!file.canRead()) {
                // Sadece ilk hatada log bas veya sessizce geç. Android 10+ kısıtlaması.
                return false
            }
            file.bufferedReader().use { reader ->
                // İlk satır başlıktır, atla
                reader.readLine()
                
                var line: String? = reader.readLine()
                while (line != null) {
                    val tokens = line.trim().split(Regex("\\s+"))
                    if (tokens.size >= 10) {
                        val state = tokens[3] // Bağlantı durumu (01 = ESTABLISHED)
                        val remAddr = tokens[2] // Uzak adres ve port (örn: IP:PORT)
                        val uid = tokens[7] // UID (2000 = shell)

                        if (state == "01" && uid == "2000") {
                            // Uzak IP'yi ayıkla
                            val remoteIpHex = remAddr.substringBefore(":")
                            
                            // Localhost kontrolü (IPv4: 0100007F = 127.0.0.1, IPv6: 00000000000000000000000001000000 = ::1)
                            val isLocalhost = remoteIpHex == "0100007F" || 
                                              remoteIpHex == "00000000000000000000000001000000" ||
                                              remoteIpHex.all { it == '0' } // Dinleme veya boş IP

                            if (!isLocalhost) {
                                Log.d(TAG, "Harici ADB Bağlantısı Yakalandı: IP=$remoteIpHex, UID=$uid")
                                return true
                            }
                        }
                    }
                    line = reader.readLine()
                }
            }
        } catch (e: Exception) {
            // Android 10+ cihazlarda bu dosyalara erişim SELinux tarafından engellenmiştir.
            // Log kalabalığını önlemek için sadece Debug seviyesinde tutuyoruz.
            Log.d(TAG, "Dosya okuma kısıtlaması ($filePath): ${e.message}")
        }
        return false
    }
}
