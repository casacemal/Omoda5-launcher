package com.omoda.lanc.network

import android.os.Handler
import android.os.Looper
import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.EventBus
import com.omoda.lanc.core.Event
import java.io.*
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * AdbClient - Gelişmiş ADB Socket İstemcisi (Zorlayıcı Mod)
 * AAOS 10 ve Semidrive donanımlarında shell yetkisi ile komut çalıştırmayı sağlar.
 * Bağlantı koparsa onarmaya çalışır ve kullanıcıyı uyarır.
 */
object AdbClient {
    private const val TAG = "AdbClient"
    private const val A_CNXN = 0x4e584e43
    private const val A_OPEN = 0x4e45504f
    private const val A_OKAY = 0x59414b4f
    private const val A_CLSE = 0x45534c43
    private const val A_WRTE = 0x45545257
    private const val A_AUTH = 0x48545541

    private val mainHandler = Handler(Looper.getMainLooper())

    fun executeCommand(cmd: String, onLine: (String) -> Unit = {}) {
        // GÜVENLİK KATMANI: Hermes ve dış ajanların yetkisiz shell komutlarını önlemek için.
        if (!GlobalState.isSimulationMode.value && !GlobalState.isCarHardware) {
            Log.w(TAG, "ADB Shell Komutu Reddedildi: Sistem Güvenlik Kilidi Aktif! (cmd: $cmd)")
            return
        }
        
        Thread {
            var success = false
            var retryCount = 0
            val maxRetries = 3

            while (!success && retryCount < maxRetries) {
                try {
                    success = performAdbSocketCommand(cmd, onLine)
                    if (success) break
                } catch (e: Exception) {
                    retryCount++
                    Log.w(TAG, "ADB Denemesi $retryCount başarısız: ${e.message}")
                    if (retryCount < maxRetries) Thread.sleep(800)
                }
            }

            if (!success) {
                Log.e(TAG, "Tüm ADB socket denemeleri başarısız. Onarım deneniyor...")
                attemptAdbRepair()
                
                // Local ADB cannot be restarted without root, ignore silently.
                Log.w(TAG, "ADB Port 5555 kapalı ve açılamıyor (Root yok).")
                runtimeFallback(cmd, onLine)
            }
        }.start()
    }

    private fun performAdbSocketCommand(cmd: String, onLine: (String) -> Unit): Boolean {
        var socket: Socket? = null
        try {
            socket = Socket()
            socket.connect(InetSocketAddress("127.0.0.1", 5555), 1000)
            
            val out = socket.getOutputStream()
            val ins = socket.getInputStream()

            // 1. Handshake
            sendAdbPacket(out, A_CNXN, 0x01000000, 4096, "host::\u0000")
            val resp = readAdbPacket(ins)
            
            if (resp.cmd != A_CNXN) return false

            // 2. Shell aç
            val localId = 1
            sendAdbPacket(out, A_OPEN, localId, 0, "shell:$cmd\u0000")
            val openResp = readAdbPacket(ins)

            if (openResp.cmd == A_OKAY) {
                val remoteId = openResp.arg0
                while (true) {
                    val pkt = readAdbPacket(ins)
                    if (pkt.cmd == A_WRTE) {
                        sendAdbPacket(out, A_OKAY, localId, remoteId, null)
                        pkt.data?.let { onLine(String(it).trim()) }
                    } else if (pkt.cmd == A_CLSE) {
                        break
                    }
                }
                return true
            }
            return false
        } finally {
            try { socket?.close() } catch (_: Exception) {}
        }
    }

    private fun attemptAdbRepair() {
        try {
            // Portu zorla açmaya çalış (Eğer sistem izin verirse)
            Runtime.getRuntime().exec(arrayOf("sh", "-c", "setprop service.adb.tcp.port 5555; stop adbd; start adbd"))
        } catch (e: Exception) {
            Log.e(TAG, "Otomatik onarım başarısız: ${e.message}")
        }
    }

    private fun runtimeFallback(cmd: String, onLine: (String) -> Unit) {
        try {
            val proc = Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd))
            val reader = BufferedReader(InputStreamReader(proc.inputStream))
            var line: String?
            while (reader.readLine().also { line = it } != null) {
                line?.let { onLine(it) }
            }
            proc.waitFor()
        } catch (e: Exception) {
            Log.e(TAG, "Runtime Fallback Hatası: ${e.message}")
        }
    }

    private fun sendAdbPacket(out: OutputStream, cmd: Int, arg0: Int, arg1: Int, data: String?) {
        val payload = data?.toByteArray() ?: byteArrayOf()
        val length = payload.size
        val check = payload.fold(0) { acc, byte -> acc + (byte.toInt() and 0xFF) }
        val header = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN)
        header.putInt(cmd).putInt(arg0).putInt(arg1).putInt(length).putInt(check).putInt(cmd xor -0x1)
        out.write(header.array())
        if (payload.isNotEmpty()) out.write(payload)
        out.flush()
    }

    private fun readAdbPacket(ins: InputStream): AdbPacket {
        val headerBuf = ByteArray(24)
        var total = 0
        while (total < 24) {
            val count = ins.read(headerBuf, total, 24 - total)
            if (count < 0) throw IOException("EOF")
            total += count
        }
        val buffer = ByteBuffer.wrap(headerBuf).order(ByteOrder.LITTLE_ENDIAN)
        val cmd = buffer.getInt()
        val arg0 = buffer.getInt()
        val arg1 = buffer.getInt()
        val length = buffer.getInt()
        var data: ByteArray? = null
        if (length > 0) {
            data = ByteArray(length)
            var dTotal = 0
            while (dTotal < length) {
                val dCount = ins.read(data, dTotal, length - dTotal)
                if (dCount < 0) break
                dTotal += dCount
            }
        }
        return AdbPacket(cmd, arg0, arg1, data)
    }

    private data class AdbPacket(val cmd: Int, val arg0: Int, val arg1: Int, val data: ByteArray?)
}
