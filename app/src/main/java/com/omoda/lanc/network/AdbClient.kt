package com.omoda.lanc.network

import android.util.Log
import java.io.*
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * AdbClient - Gelişmiş ADB Socket İstemcisi
 * AAOS 10 ve Semidrive donanımlarında shell yetkisi ile komut çalıştırmayı sağlar.
 */
object AdbClient {
    private const val TAG = "AdbClient"
    private const val A_CNXN = 0x4e584e43
    private const val A_OPEN = 0x4e45504f
    private const val A_OKAY = 0x59414b4f
    private const val A_CLSE = 0x45534c43
    private const val A_WRTE = 0x45545257
    private const val A_AUTH = 0x48545541

    fun executeCommand(cmd: String, onLine: (String) -> Unit = {}) {
        if (com.omoda.lanc.AssistantApplication.isSimulationMode.value) {
            Log.d(TAG, "Simülasyon Modu: Komut yürütme atlandı -> $cmd")
            return
        }
        Thread {
            var socket: Socket? = null
            try {
                socket = Socket()
                // Local ADB portuna bağlanmayı dene (5555 varsayılandır)
                socket.connect(InetSocketAddress("127.0.0.1", 5555), 500)
                
                val out = socket.getOutputStream()
                val ins = socket.getInputStream()

                // 1. Handshake
                sendAdbPacket(out, A_CNXN, 0x01000000, 4096, "host::\u0000")
                val resp = readAdbPacket(ins)
                
                if (resp.cmd != A_CNXN) {
                    val cmdStr = when(resp.cmd) {
                        A_AUTH -> "A_AUTH (Yetkilendirme Gerekli)"
                        A_CLSE -> "A_CLSE (Bağlantı Kapalı)"
                        else -> "Bilinmeyen: ${resp.cmd.toString(16)}"
                    }
                    Log.w(TAG, "ADB El sıkışma başarısız. Yanıt: $cmdStr. Runtime fallback deneniyor...")
                    runtimeFallback(cmd, onLine)
                    return@Thread
                }

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
                }
            } catch (e: Exception) {
                Log.d(TAG, "Socket hatası: ${e.message}, Runtime deneniyor...")
                runtimeFallback(cmd, onLine)
            } finally {
                try { socket?.close() } catch (_: Exception) {}
            }
        }.start()
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
            Log.e(TAG, "Runtime Hatası: ${e.message}")
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
