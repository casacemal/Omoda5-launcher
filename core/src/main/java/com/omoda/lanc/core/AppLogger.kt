package com.omoda.lanc.core

interface AppLogger {
    fun addLog(log: String)
    fun addMqttLog(log: String)
}

object LoggerProvider {
    var logger: AppLogger? = null
    
    fun log(msg: String) = logger?.addLog(msg)
    fun mqttLog(msg: String) = logger?.addMqttLog(msg)
}
