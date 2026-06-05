package com.omoda5.launcher.service

import android.app.*
import android.content.Intent
import android.os.*
import androidx.core.app.NotificationCompat
import com.omoda5.launcher.R
import com.omoda5.launcher.common.HudManager
import com.omoda5.launcher.common.LogManager
import java.io.*
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.LinkedBlockingQueue

/**
 * AdbBridgeService v8.9.7 - Ultimate Socket Engine
 * Restores all legacy features: Multi-IP scan, Real-time Stream, Stop mechanism.
 * Uses manual ADB Protocol implementation for API 29 stability.
 */
class AdbBridgeService : Service() {
    private val queue = LinkedBlockingQueue<String>()
    private var running = true
    private var currentSocket: Socket? = null
    private var isCommandRunning = false

    companion object {
        const val ACTION_EXECUTE_SHELL = "ACTION_EXECUTE_SHELL"
        const val ACTION_STOP_COMMAND = "ACTION_STOP_COMMAND"
        
        // ADB Protocol Constants
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
        startForeground(1, NotificationCompat.Builder(this, "adb")
            .setContentTitle("Omoda 5 ADB Master v8.9.7")
            .setContentText("Socket Engine Ready")
            .setSmallIcon(R.mipmap.ic_launcher).build())
    }

    override fun onStartCommand(i: Intent?, f: Int, s: Int): Int {
        when (i?.action) {
            ACTION_EXECUTE_SHELL -> i.getStringExtra("command")?.let { queue.put(it) } ?: startAutoInjection()
            ACTION_STOP_COMMAND -> stopCurrentCommand()
        }
        return START_STICKY
    }

    private fun startAutoInjection() {
        listOf("setprop service.adb.tcp.port 5555", "stop adbd", "start adbd").forEach { queue.put(it) }
    }

    private fun stopCurrentCommand() {
        isCommandRunning = false
        try { currentSocket?.close() } catch (e: Exception) {}
        LogManager.addLog("SYSTEM: Komut durduruldu.")
    }

    private fun commandProcessor() {
        while (running) {
            try {
                val cmd = queue.take()
                executeAdbSocket(cmd)
                
                // v9.4.2: Auto-reconnect for data streams
                if (cmd.contains("logcat")) {
                    Handler(Looper.getMainLooper()).postDelayed({
                        if (running && !isCommandRunning) {
                            LogManager.addLog("SYSTEM: Akış koptu, yeniden bağlanılıyor...")
                            HudManager.show("STREAM", "Bağlantı Koptu - Yenileniyor...")
                            queue.put(cmd)
                        }
                    }, 5000)
                }
            } catch (e: Exception) {
                LogManager.addLog("ERR: Queue error ${e.message}")
            }
        }
    }

    private fun executeAdbSocket(cmd: String) {
        isCommandRunning = true
        LogManager.logCommand(cmd) // v9.5.0: Save to 5MB history log
        var socket: Socket? = null
        val hosts = arrayOf("127.0.0.1", "10.0.2.15", "0.0.0.0")

        try {
            if (cmd == "su -c id") {
                LogManager.addLog("ADB_REQ: Root Testi Başlatılıyor...")
                HudManager.show("ROOT", "Yetki Kontrol Ediliyor...")
            } else {
                LogManager.addLog("ADB_REQ: $cmd")
            }

            socket = Socket()
            var connected = false
            for (h in hosts) {
                try {
                    // v10.1.1: Increased timeout to 3000ms to reduce CPU/Retry spam
                    socket.connect(InetSocketAddress(h, 5555), 3000)
                    connected = true
                    break
                } catch (e: Exception) { continue }
            }

            if (!connected) {
                LogManager.addLog("ADB_ERR: Port 5555 Kapalı. Fallback tetikleniyor...")
                Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd)).waitFor()
                return
            }

            currentSocket = socket
            val out = socket.getOutputStream()
            val ins = socket.getInputStream()

            // 1. CNXN
            sendAdbPacket(out, A_CNXN, 0x01000000, 4096, "host::\u0000")
            val resp = readAdbPacket(ins)
            if (resp.cmd == A_AUTH) { LogManager.addLog("ADB_AUTH: RSA Yetkisi Gerekli."); return }
            if (resp.cmd != A_CNXN) throw Exception("Connect Failed")

            // 2. OPEN shell
            val localId = 1
            sendAdbPacket(out, A_OPEN, localId, 0, "shell:$cmd\u0000")
            val openResp = readAdbPacket(ins)

            if (openResp.cmd == A_OKAY) {
                val remoteId = openResp.arg0
                LogManager.addLog("ADB_STR: Akış Başladı.")
                if (cmd != "su -c id") {
                    if (cmd.contains("logcat")) {
                        HudManager.show("STREAM", "Veri Akışı Aktif ✅")
                    } else {
                        HudManager.show("ADB", "Komut İşleniyor...")
                    }
                }
                
                val lineBuffer = StringBuilder()
                
                while (isCommandRunning && !socket.isClosed) {
                    try {
                        val pkt = readAdbPacket(ins)
                        when (pkt.cmd) {
                            A_WRTE -> {
                                pkt.data?.let { 
                                    val outChunk = String(it)
                                    lineBuffer.append(outChunk)
                                    
                                    // Process lines
                                    var newlineIdx = lineBuffer.indexOf("\n")
                                    while (newlineIdx != -1) {
                                        val line = lineBuffer.substring(0, newlineIdx).trim()
                                        val remaining = lineBuffer.substring(newlineIdx + 1)
                                        lineBuffer.setLength(0)
                                        lineBuffer.append(remaining)
                                        
                                        if (line.isNotEmpty()) {
                                            LogManager.addLog(line)
                                            
                                            // Vehicle Data & Global Broadcast Integration
                                            val broadcastIntent = Intent("com.omoda5.launcher.LOG_BROADCAST")
                                            broadcastIntent.putExtra("log", line)
                                            broadcastIntent.setPackage(packageName)
                                            sendBroadcast(broadcastIntent)
                                        }
                                        newlineIdx = lineBuffer.indexOf("\n")
                                    }

                                    if (cmd == "su -c id" && outChunk.contains("uid=0")) {
                                        HudManager.show("ROOT", "BAŞARILI: UID 0 Aktif!")
                                    }
                                }
                                sendAdbPacket(out, A_OKAY, localId, remoteId, null)
                            }
                            A_CLSE -> break
                        }
                    } catch (e: Exception) { break }
                }
            }
            LogManager.addLog("ADB_FIN: OK")

        } catch (e: Exception) {
            LogManager.addLog("ADB_ERR: ${e.message}")
            if (cmd == "su -c id") HudManager.show("ROOT", "BAŞARISIZ: Root yok.")
        } finally {
            isCommandRunning = false
            try { socket?.close() } catch (e: Exception) {}
            if (currentSocket == socket) currentSocket = null
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

    override fun onDestroy() { running = false; stopCurrentCommand(); super.onDestroy() }
}