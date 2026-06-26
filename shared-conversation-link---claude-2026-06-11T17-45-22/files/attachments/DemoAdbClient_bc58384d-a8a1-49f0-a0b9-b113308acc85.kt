package com.omoda5.demo

import android.util.Log
import java.io.InputStream
import java.io.OutputStream
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder

object DemoAdbClient {
    private const val A_CNXN = 0x4e584e43
    private const val A_OPEN = 0x4e45504f
    private const val A_OKAY = 0x59414b4f
    private const val A_CLSE = 0x45534c43
    private const val A_WRTE = 0x45545257
    private const val A_AUTH = 0x48545541

    fun executeCommandSync(cmd: String, onLine: (String) -> Unit) {
        try {
            var socket: Socket? = null
            var connected = false
            val hosts = arrayOf("127.0.0.1", "10.0.2.15", "0.0.0.0")

            for (h in hosts) {
                try {
                    socket = Socket()
                    socket.connect(InetSocketAddress(h, 5555), 1000)
                    connected = true
                    Log.d("DemoAdb", "Connected to ADB on $h")
                    break
                } catch (e: Exception) { 
                    socket?.close()
                    continue 
                }
            }

            if (!connected) {
                onLine("0x11600207 value: [ADB_CLOSED_FALLING_BACK]")
                val proc = Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd))
                val reader = proc.inputStream.bufferedReader()
                var line: String?
                while (reader.readLine().also { line = it } != null) {
                    onLine(line!!)
                }
                proc.waitFor()
                return
            }

            val out = socket!!.getOutputStream()
            val ins = socket.getInputStream()

            sendAdbPacket(out, A_CNXN, 0x01000000, 4096, "host::\u0000")
            val resp = readAdbPacket(ins)
            if (resp.cmd == A_AUTH) { 
                onLine("0x11600207 value: [ADB_RSA_AUTH_REQUIRED]")
                return 
            }
            if (resp.cmd != A_CNXN) {
                onLine("0x11600207 value: [ADB_CNXN_FAILED]")
                throw Exception("Connect Failed")
            }

            val localId = 1
            sendAdbPacket(out, A_OPEN, localId, 0, "shell:$cmd\u0000")
            val openResp = readAdbPacket(ins)

            if (openResp.cmd == A_OKAY) {
                val remoteId = openResp.arg0
                val lineBuffer = java.lang.StringBuilder()
                
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
                                    if (line.isNotEmpty()) {
                                        onLine(line)
                                    }
                                    newlineIdx = lineBuffer.indexOf("\n")
                                }
                            }
                            sendAdbPacket(out, A_OKAY, localId, remoteId, null)
                        }
                        A_CLSE -> break
                    }
                }
                if (lineBuffer.isNotEmpty()) {
                    onLine(lineBuffer.toString().trim())
                }
            }
            socket.close()
        } catch (e: Exception) {
            onLine("0x11600207 value: [ERROR_${e.message?.replace(" ", "_")}]")
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
