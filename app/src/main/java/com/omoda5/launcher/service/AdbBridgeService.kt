package com.omoda5.launcher.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Intent
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda5.launcher.R
import java.io.*
import java.net.InetSocketAddress
import java.net.Socket
import java.nio.ByteBuffer
import java.nio.ByteOrder

class AdbBridgeService : Service() {

    private val TAG = "AdbBridgeService"
    private val ADB_PORT = 5555
    
    // Denenecek IP listesi (Emülatör ve Gerçek Cihaz uyumu için)
    private val potentialHosts = arrayOf("127.0.0.1", "10.0.2.15", "0.0.0.0")
    
    private val binder = LocalBinder()
    private var currentSocket: Socket? = null
    private var isCommandRunning = false

    inner class LocalBinder : Binder() {
        fun getService(): AdbBridgeService = this@AdbBridgeService
    }

    override fun onBind(intent: Intent?): IBinder = binder

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        startForeground(NOTIFICATION_ID, createNotification())
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID, "Omoda 5 Engine",
                NotificationManager.IMPORTANCE_LOW
            )
            val manager = getSystemService(NotificationManager::class.java)
            manager.createNotificationChannel(channel)
        }
    }

    private fun createNotification(): Notification {
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("Omoda 5 NextGen Engine")
            .setContentText("ADB Köprüsü Aktif")
            .setSmallIcon(R.mipmap.ic_launcher)
            .build()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent?.action == ACTION_EXECUTE_SHELL) {
            val command = intent.getStringExtra("command")
            if (command != null) {
                if (isCommandRunning) {
                    stopCurrentCommandInternal()
                    Thread.sleep(100)
                }
                executeAdbShellCommand(command)
            }
        }
        return START_STICKY
    }

    private fun stopCurrentCommandInternal() {
        isCommandRunning = false
        try {
            currentSocket?.close()
        } catch (e: Exception) {
            Log.e(TAG, "Error closing socket: ${e.message}")
        }
        currentSocket = null
    }

    private fun executeAdbShellCommand(command: String) {
        Thread {
            isCommandRunning = true
            var socket: Socket? = null
            
            try {
                Log.d(TAG, "CMD_RUN: $command")
                broadcastLog("CMD: $command")
                
                socket = Socket()
                var connected = false
                for (host in potentialHosts) {
                    try {
                        socket.connect(InetSocketAddress(host, ADB_PORT), 800)
                        connected = true
                        break 
                    } catch (e: Exception) { continue }
                }

                if (!connected) {
                    Log.e(TAG, "ADB Portu Kapalı! TCP 5555 aktif değil.")
                    broadcastLog("ERR: ADB Port 5555 Closed")
                    isCommandRunning = false
                    return@Thread
                }

                currentSocket = socket
                val input = socket.getInputStream()
                val output = socket.getOutputStream()

                // 1. CNXN
                sendAdbPacket(output, A_CNXN, 0x01000000, 4096, "host::\u0000")
                var response = readAdbPacket(input)
                
                if (response.command == A_AUTH) {
                    Log.e(TAG, "ADB Yetkilendirme Gerekli (RSA).")
                    broadcastLog("ERR: ADB Auth Required")
                    isCommandRunning = false
                    return@Thread
                }

                // 2. OPEN shell
                val localId = 1
                sendAdbPacket(output, A_OPEN, localId, 0, "shell:$command\u0000")
                response = readAdbPacket(input)

                if (response.command == A_OKAY) {
                    val remoteId = response.arg0
                    while (isCommandRunning && !socket.isClosed) {
                        try {
                            val pkt = readAdbPacket(input)
                            if (pkt.command == A_WRTE) {
                                val msg = String(pkt.data ?: byteArrayOf())
                                Log.d(TAG, "OUT: $msg")
                                broadcastLog("OUT: $msg")
                                sendAdbPacket(output, A_OKAY, localId, remoteId, null)
                            } else if (pkt.command == A_CLSE) {
                                break
                            }
                        } catch (e: Exception) { break }
                    }
                }
                Log.d(TAG, "CMD_FIN: $command")
                broadcastLog("FIN: $command")

            } catch (e: Exception) {
                Log.e(TAG, "ADB Socket Error: ${e.message}")
                broadcastLog("ERR: Socket ${e.message}")
            } finally {
                isCommandRunning = false
                try { socket?.close() } catch (e: Exception) {}
                if (currentSocket == socket) currentSocket = null
            }
        }.start()
    }

    private fun broadcastLog(msg: String) {
        val intent = Intent(ACTION_LOG_BROADCAST).apply {
            putExtra("log", msg)
            setPackage(packageName)
        }
        sendBroadcast(intent)
    }

    private val A_CNXN = 0x4e584e43
    private val A_OPEN = 0x4e45504f
    private val A_OKAY = 0x59414b4f
    private val A_CLSE = 0x45534c43
    private val A_WRTE = 0x45545257
    private val A_AUTH = 0x48545541

    private data class AdbPacket(val command: Int, val arg0: Int, val arg1: Int, val data: ByteArray?)

    private fun sendAdbPacket(out: OutputStream, cmd: Int, arg0: Int, arg1: Int, data: String?) {
        val payload = data?.toByteArray()
        val length = payload?.size ?: 0
        val check = payload?.fold(0) { acc, byte -> acc + (byte.toInt() and 0xFF) } ?: 0
        
        val header = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN)
        header.putInt(cmd)
        header.putInt(arg0)
        header.putInt(arg1)
        header.putInt(length)
        header.putInt(check)
        header.putInt(cmd xor -0x1)
        
        out.write(header.array())
        if (payload != null) out.write(payload)
        out.flush()
    }

    private fun readAdbPacket(ins: InputStream): AdbPacket {
        val headerBuf = ByteArray(24)
        readFully(ins, headerBuf)
        val buffer = ByteBuffer.wrap(headerBuf).order(ByteOrder.LITTLE_ENDIAN)
        
        val cmd = buffer.getInt()
        val arg0 = buffer.getInt()
        val arg1 = buffer.getInt()
        val length = buffer.getInt()
        val check = buffer.getInt()
        val magic = buffer.getInt()

        var data: ByteArray? = null
        if (length > 0) {
            data = ByteArray(length)
            readFully(ins, data)
        }
        return AdbPacket(cmd, arg0, arg1, data)
    }

    private fun readFully(ins: InputStream, buf: ByteArray) {
        var total = 0
        while (total < buf.size) {
            val count = ins.read(buf, total, buf.size - total)
            if (count < 0) throw IOException("EOF")
            total += count
        }
    }

    companion object {
        const val ACTION_EXECUTE_SHELL = "ACTION_EXECUTE_SHELL"
        const val ACTION_LOG_BROADCAST = "com.omoda5.launcher.LOG_BROADCAST"
        private const val CHANNEL_ID = "AdbServiceChannel"
        private const val NOTIFICATION_ID = 1
    }
}
