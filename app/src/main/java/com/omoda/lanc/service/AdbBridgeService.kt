package com.omoda.lanc.service

import android.app.*
import android.content.Intent
import android.os.*
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda.lanc.R
import java.io.*
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.LinkedBlockingQueue

class AdbBridgeService : Service() {
    private val queue = LinkedBlockingQueue<String>()
    private var running = true
    private var currentSocket: Socket? = null
    private var isCommandRunning = false

    companion object {
        const val ACTION_EXECUTE_SHELL = "ACTION_EXECUTE_SHELL"
        
        private const val A_CNXN = 0x4e584e43
        private const val A_OPEN = 0x4e45504f
        private const val A_OKAY = 0x59414b4f
        private const val A_CLSE = 0x45534c43
        private const val A_WRTE = 0x45545257
        private const val A_AUTH = 0x48545541
    }

    override fun onBind(i: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        setupNotification()
        Thread { commandProcessor() }.start()
    }

    private fun setupNotification() {
        if (Build.VERSION.SDK_INT >= 26) {
            val chan = NotificationChannel("adb", "Omoda Engine", NotificationManager.IMPORTANCE_LOW)
            (getSystemService(NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(chan)
        }
        startForeground(99, NotificationCompat.Builder(this, "adb")
            .setContentTitle("Omoda 5 ADB Bridge")
            .setContentText("Permission Engine Active")
            .setSmallIcon(R.mipmap.ic_launcher).build())
    }

    override fun onStartCommand(i: Intent?, f: Int, s: Int): Int {
        if (i?.action == ACTION_EXECUTE_SHELL) {
            i.getStringExtra("command")?.let { queue.put(it) }
        }
        return START_STICKY
    }

    private fun commandProcessor() {
        while (running) {
            try {
                val cmd = queue.take()
                executeAdbSocket(cmd)
            } catch (e: Exception) {
                Log.e("AdbBridge", "Queue error ${e.message}")
            }
        }
    }

    private fun executeAdbSocket(cmd: String) {
        isCommandRunning = true
        var socket: Socket? = null
        val hosts = arrayOf("127.0.0.1", "10.0.2.15")

        try {
            socket = Socket()
            var connected = false
            for (h in hosts) {
                try {
                    socket.connect(InetSocketAddress(h, 5555), 1000)
                    connected = true
                    break
                } catch (e: Exception) { continue }
            }

            if (!connected) {
                Log.w("AdbBridge", "Port 5555 closed, trying Runtime exec fallback for: $cmd")
                Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd)).waitFor()
                return
            }

            currentSocket = socket
            val out = socket.getOutputStream()
            val ins = socket.getInputStream()

            // ADB Handshake
            sendAdbPacket(out, A_CNXN, 0x01000000, 4096, "host::\u0000")
            val resp = readAdbPacket(ins)
            if (resp.cmd == A_AUTH || resp.cmd != A_CNXN) {
                Log.e("AdbBridge", "ADB Handshake failed or Auth required")
                return
            }

            // Open shell
            val localId = 1
            sendAdbPacket(out, A_OPEN, localId, 0, "shell:$cmd\u0000")
            val openResp = readAdbPacket(ins)

            if (openResp.cmd == A_OKAY) {
                val remoteId = openResp.arg0
                while (isCommandRunning && !socket.isClosed) {
                    try {
                        val pkt = readAdbPacket(ins)
                        if (pkt.cmd == A_WRTE) {
                            sendAdbPacket(out, A_OKAY, localId, remoteId, null)
                        } else if (pkt.cmd == A_CLSE) {
                            break
                        }
                    } catch (e: Exception) { break }
                }
            }
        } catch (e: Exception) {
            Log.e("AdbBridge", "ADB Socket Error: ${e.message}")
        } finally {
            isCommandRunning = false
            try { socket?.close() } catch (e: Exception) {}
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

    override fun onDestroy() { running = false; super.onDestroy() }
}
