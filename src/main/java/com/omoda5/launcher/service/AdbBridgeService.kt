package com.omoda5.launcher.service

import android.app.Service
import android.content.Intent
import android.os.Binder
import android.os.IBinder
import android.util.Log
import com.omoda5.launcher.common.PreferencesManager
import java.io.*
import java.net.ServerSocket
import java.net.Socket
import java.security.MessageDigest
import java.security.SecureRandom
import java.util.concurrent.ConcurrentHashMap

class AdbBridgeService : Service() {

    private val TAG = "AdbBridgeService"
    private val ADB_PORT = 5555
    private var serverSocket: ServerSocket? = null
    private var isRunning = false
    private lateinit var prefs: PreferencesManager
    private val activeConnections = ConcurrentHashMap<String, Socket>()

    private val binder = LocalBinder()

    inner class LocalBinder : Binder() {
        fun getService(): AdbBridgeService = this@AdbBridgeService
    }

    override fun onBind(intent: Intent): IBinder = binder

    override fun onCreate() {
        super.onCreate()
        prefs = PreferencesManager(this)
        if (prefs.isAdbEnabled) {
            startServer()
        }
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_START_ADB -> startServer()
            ACTION_STOP_ADB -> stopServer()
            ACTION_UPDATE_CONFIG -> updateConfiguration()
        }
        return START_STICKY
    }

    private fun startServer() {
        if (isRunning) return

        Thread {
            try {
                serverSocket = ServerSocket(ADB_PORT)
                isRunning = true
                Log.d(TAG, "ADB Bridge started on port $ADB_PORT")

                while (isRunning) {
                    val socket = serverSocket?.accept()
                    socket?.let { handleAdbConnection(it) }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Server error: ${e.message}")
                isRunning = false
            }
        }.start()

        prefs.isAdbEnabled = true
    }

    private fun stopServer() {
        isRunning = false
        serverSocket?.close()
        activeConnections.values.forEach { it.close() }
        activeConnections.clear()
        prefs.isAdbEnabled = false
        Log.d(TAG, "ADB Bridge stopped")
    }

    private fun updateConfiguration() {
        // Reload configuration from preferences
        if (isRunning && !prefs.isAdbEnabled) {
            stopServer()
        } else if (!isRunning && prefs.isAdbEnabled) {
            startServer()
        }
    }

    private fun handleAdbConnection(socket: Socket) {
        val clientId = "${socket.inetAddress.hostAddress}:${socket.port}"
        activeConnections[clientId] = socket

        Thread {
            try {
                val inputStream = DataInputStream(socket.getInputStream())
                val outputStream = DataOutputStream(socket.getOutputStream())

                // ADB protocol handshake
                if (performAdbHandshake(inputStream, outputStream)) {
                    // Connection established, handle ADB commands
                    handleAdbProtocol(socket, inputStream, outputStream)
                }

            } catch (e: Exception) {
                Log.w(TAG, "Client $clientId disconnected: ${e.message}")
            } finally {
                activeConnections.remove(clientId)
                socket.close()
            }
        }.start()
    }

    private fun performAdbHandshake(input: DataInputStream, output: DataOutputStream): Boolean {
        try {
            // Read ADB protocol version
            val version = input.readInt()
            Log.d(TAG, "ADB protocol version: $version")

            // Send OKAY response
            output.writeBytes("OKAY")
            output.flush()

            return true
        } catch (e: Exception) {
            Log.e(TAG, "Handshake failed: ${e.message}")
            return false
        }
    }

    private fun handleAdbProtocol(socket: Socket, input: DataInputStream, output: DataOutputStream) {
        try {
            while (isRunning && !socket.isClosed) {
                // Read ADB command
                val command = ByteArray(4)
                input.readFully(command)

                val commandStr = String(command)
                Log.d(TAG, "Received ADB command: $commandStr")

                when (commandStr) {
                    "HOST" -> handleHostCommand(input, output)
                    "CNXN" -> handleConnectionCommand(input, output)
                    "OPEN" -> handleOpenCommand(input, output)
                    "CLSE" -> handleCloseCommand(input, output)
                    else -> {
                        // Send FAIL response for unknown commands
                        output.writeBytes("FAIL")
                        output.flush()
                    }
                }
            }
        } catch (e: Exception) {
            Log.w(TAG, "Protocol error: ${e.message}")
        }
    }

    private fun handleHostCommand(input: DataInputStream, output: DataOutputStream) {
        // Handle host commands like version, devices, etc.
        output.writeBytes("OKAY")
        output.flush()
    }

    private fun handleConnectionCommand(input: DataInputStream, output: DataOutputStream) {
        // Handle device connection
        output.writeBytes("OKAY")
        output.flush()
    }

    private fun handleOpenCommand(input: DataInputStream, output: DataOutputStream) {
        // Handle opening channels (shell, file transfer, etc.)
        val destination = readString(input)
        Log.d(TAG, "Opening channel to: $destination")

        when {
            destination.startsWith("shell:") -> handleShellCommand(destination.substring(6), input, output)
            destination.startsWith("sync:") -> handleSyncCommand(input, output)
            else -> {
                output.writeBytes("FAIL")
                output.flush()
            }
        }
    }

    private fun handleCloseCommand(input: DataInputStream, output: DataOutputStream) {
        output.writeBytes("OKAY")
        output.flush()
    }

    private fun handleShellCommand(command: String, input: DataInputStream, output: DataOutputStream) {
        try {
            val process = Runtime.getRuntime().exec(arrayOf("/system/bin/sh", "-c", command))
            val reader = BufferedReader(InputStreamReader(process.inputStream))
            val errorReader = BufferedReader(InputStreamReader(process.errorStream))

            // Send output back
            reader.forEachLine { line ->
                output.writeBytes("OKAY")
                output.writeBytes(line + "\n")
                output.flush()
            }

            process.waitFor()
            output.writeBytes("OKAY")
            output.flush()

        } catch (e: Exception) {
            Log.e(TAG, "Shell command error: ${e.message}")
            output.writeBytes("FAIL")
            output.flush()
        }
    }

    private fun handleSyncCommand(input: DataInputStream, output: DataOutputStream) {
        // Basic file sync implementation
        output.writeBytes("OKAY")
        output.flush()
    }

    private fun readString(input: DataInputStream): String {
        val length = input.readInt()
        val bytes = ByteArray(length)
        input.readFully(bytes)
        return String(bytes)
    }

    override fun onDestroy() {
        stopServer()
        super.onDestroy()
    }

    companion object {
        const val ACTION_START_ADB = "com.omoda5.launcher.action.START_ADB"
        const val ACTION_STOP_ADB = "com.omoda5.launcher.action.STOP_ADB"
        const val ACTION_UPDATE_CONFIG = "com.omoda5.launcher.action.UPDATE_CONFIG"
    }
}