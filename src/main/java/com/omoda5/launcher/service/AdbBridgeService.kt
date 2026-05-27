package com.omoda5.launcher.service

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Binder
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import com.omoda5.launcher.common.PreferencesManager
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
    
    private lateinit var prefs: PreferencesManager
    private val binder = LocalBinder()
    
    private var currentSocket: Socket? = null
    private var isCommandRunning = false

    inner class LocalBinder : Binder() {
        fun getService(): AdbBridgeService = this@AdbBridgeService
    }

    override fun onBind(intent: Intent): IBinder = binder

    override fun onCreate() {
        super.onCreate()
        prefs = PreferencesManager(this)
        createNotificationChannel()
        startForeground(NOTIFICATION_ID, createNotification())
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                CHANNEL_ID, "ADB Bridge",
                NotificationManager.IMPORTANCE_LOW
            )
            getSystemService(NotificationManager::class.java).createNotificationChannel(channel)
        }
    }

    private fun createNotification(): Notification {
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("ADB Bridge Aktif")
            .setContentText("Sistem komutları için yerel köprü hazır")
            .setSmallIcon(android.R.drawable.stat_notify_sync)
            .build()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_EXECUTE_SHELL -> {
                val command = intent.getStringExtra("command")
                if (command != null) {
                    // Eğer çalışan komut varsa durdur ve yenisini başlat
                    if (isCommandRunning) {
                        stopCurrentCommandInternal()
                        // Soketin kapanması için kısa bir süre bekle
                        Thread.sleep(200)
                    }
                    executeAdbShellCommand(command)
                }
            }
            ACTION_STOP_COMMAND -> {
                stopCurrentCommand()
            }
        }
        return START_STICKY
    }

    private fun stopCurrentCommand() {
        stopCurrentCommandInternal()
        broadcastStatus("CMD_FIN: Komut durduruldu.")
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
            var connectedHost = ""
            
            try {
                broadcastStatus("CMD_RUN: $command")
                
                // Uygun IP adresini bulmaya çalış
                socket = Socket()
                for (host in potentialHosts) {
                    try {
                        socket.connect(InetSocketAddress(host, ADB_PORT), 500) // 500ms hızlı deneme
                        connectedHost = host
                        break 
                    } catch (e: Exception) { continue }
                }

                if (!socket.isConnected) {
                    broadcastStatus("CMD_ERR: ADB Portu Kapalı! (PC'den 'adb tcpip 5555' yapın)")
                    isCommandRunning = false
                    return@Thread
                }

                currentSocket = socket
                Log.d(TAG, "Connected to ADB on $connectedHost")
                val input = socket.getInputStream()
                val output = socket.getOutputStream()

                // 1. CNXN (Connect)
                sendAdbPacket(output, A_CNXN, 0x01000000, 4096, "host::\u0000")
                var response = readAdbPacket(input)
                
                if (response.command == A_AUTH) {
                    broadcastStatus("CMD_ERR: ADB Yetkilendirme Gerekli (RSA).")
                    isCommandRunning = false
                    return@Thread
                }

                if (response.command != A_CNXN) {
                    broadcastStatus("CMD_ERR: ADB Bağlantı Reddedildi.")
                    isCommandRunning = false
                    return@Thread
                }

                // 2. OPEN shell
                val localId = 1
                sendAdbPacket(output, A_OPEN, localId, 0, "shell:$command\u0000")
                response = readAdbPacket(input)

                if (response.command == A_OKAY) {
                    val remoteId = response.arg0
                    broadcastStatus("CMD_STR: Akış Başladı...")
                    
                    val buffer = StringBuilder()
                    while (isCommandRunning && !socket.isClosed) {
                        try {
                            val pkt = readAdbPacket(input)
                            if (pkt.command == A_WRTE) {
                                val msg = String(pkt.data!!)
                                broadcastStatus("CMD_OUT: $msg")
                                sendAdbPacket(output, A_OKAY, localId, remoteId, null)
                            } else if (pkt.command == A_CLSE) {
                                break
                            }
                        } catch (e: Exception) {
                            break
                        }
                    }
                }
                
                broadcastStatus("CMD_FIN: Komut bitti.")

            } catch (e: Exception) {
                Log.e(TAG, "ADB Socket Error: ${e.message}")
                if (isCommandRunning) broadcastStatus("CMD_ERR: ADB Hatası: ${e.message}")
            } finally {
                isCommandRunning = false
                try { socket?.close() } catch (e: Exception) {}
                if (currentSocket == socket) currentSocket = null
            }
        }.start()
    }

    // ADB Protocol Constants
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

    private fun broadcastStatus(message: String) {
        val intent = Intent(ACTION_ADB_STATUS_UPDATE).apply {
            putExtra("message", message)
            setPackage(packageName)
        }
        sendBroadcast(intent)
    }

    companion object {
        const val ACTION_EXECUTE_SHELL = "com.omoda5.launcher.action.EXECUTE_SHELL"
        const val ACTION_STOP_COMMAND = "com.omoda5.launcher.action.STOP_COMMAND"
        const val ACTION_ADB_STATUS_UPDATE = "com.omoda5.launcher.action.ADB_STATUS_UPDATE"
        private const val CHANNEL_ID = "adb_bridge_channel"
        private const val NOTIFICATION_ID = 1001
    }
}