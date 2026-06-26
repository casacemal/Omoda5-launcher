package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.AssistantApplication
import java.io.InputStream
import java.io.OutputStream
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder

object AdbClient {
    private const val A_CNXN = 0x4e584e43
    private const val A_OPEN = 0x4e45504f
    private const val A_OKAY = 0x59414b4f
    private const val A_CLSE = 0x45534c43
    private const val A_WRTE = 0x45545257
    private const val A_AUTH = 0x48545541

    fun executeCommand(cmd: String, onLine: (String) -> Unit) {
        try {
            var socket: Socket? = null
            var connected = false
            val hosts = mutableListOf("127.0.0.1", "10.0.2.15")
            try {
                java.net.NetworkInterface.getNetworkInterfaces().toList().forEach { ni ->
                    ni.inetAddresses.toList().forEach { addr ->
                        if (!addr.isLoopbackAddress && addr is java.net.Inet4Address) {
                            hosts.add(addr.hostAddress ?: "")
                        }
                    }
                }
            } catch (e: Exception) { }

            for (h in hosts.filter { it.isNotEmpty() }) {
                try {
                    socket = Socket()
                    socket.connect(InetSocketAddress(h, 5555), 500)
                    connected = true
                    break
                } catch (e: Exception) {
                    socket?.close()
                    continue
                }
            }
            
            AssistantApplication.isAdbConnected.value = connected

            if (!connected) {
                // ADB kapalıysa direkt shell dene (bazı ünitelerde root veya yetkili shell vardır)
                try {
                    val proc = Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd))
                    proc.inputStream.bufferedReader().useLines { lines ->
                        lines.forEach { onLine(it) }
                    }
                    val exitCode = proc.waitFor()
                    if (exitCode == 0 || exitCode == 1) { // 1 can be returned by simple commands, it's alive
                        AssistantApplication.isAdbConnected.value = true
                    }
                } catch (e: Exception) {
                    AssistantApplication.isAdbConnected.value = false
                }
                return
            }

            val out = socket!!.getOutputStream()
            val ins = socket.getInputStream()

            sendAdbPacket(out, A_CNXN, 0x01000000, 4096, "host::\u0000")
            val resp = readAdbPacket(ins)
            
            if (resp.cmd != A_CNXN) {
                socket.close()
                return
            }

            val localId = (1..1000).random()
            sendAdbPacket(out, A_OPEN, localId, 0, "shell:$cmd\u0000")
            val openResp = readAdbPacket(ins)

            if (openResp.cmd == A_OKAY) {
                val remoteId = openResp.arg0
                val lineBuffer = StringBuilder()
                
                while (!socket.isClosed) {
                    val pkt = readAdbPacket(ins)
                    when (pkt.cmd) {
                        A_WRTE -> {
                            pkt.data?.let {
                                lineBuffer.append(String(it))
                                var newlineIdx = lineBuffer.indexOf("\n")
                                while (newlineIdx != -1) {
                                    val line = lineBuffer.substring(0, newlineIdx).trim()
                                    lineBuffer.delete(0, newlineIdx + 1)
                                    if (line.isNotEmpty()) onLine(line)
                                    newlineIdx = lineBuffer.indexOf("\n")
                                }
                            }
                            sendAdbPacket(out, A_OKAY, localId, remoteId, null)
                        }
                        A_CLSE -> break
                    }
                }
            }
            socket.close()
        } catch (e: Exception) {
            Log.e("AdbClient", "Command failed: ${e.message}")
        }
    }

    private fun sendAdbPacket(out: OutputStream, cmd: Int, arg0: Int, arg1: Int, data: String?) {
        val payload = data?.toByteArray() ?: byteArrayOf()
        val header = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN)
        header.putInt(cmd).putInt(arg0).putInt(arg1).putInt(payload.size)
        header.putInt(payload.fold(0) { acc, b -> acc + (b.toInt() and 0xFF) })
        header.putInt(cmd xor -0x1)
        out.write(header.array())
        if (payload.isNotEmpty()) out.write(payload)
        out.flush()
    }

    private fun readAdbPacket(ins: InputStream): AdbPacket {
        val headerBuf = ByteArray(24)
        var total = 0
        while (total < 24) {
            val count = ins.read(headerBuf, total, 24 - total)
            if (count < 0) throw java.io.IOException("EOF")
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
