package com.omoda.lanc.core

interface AppLogger {
    fun addGeneralLog(level: LogLevel, message: String)
}

object LoggerProvider {
    var logger: AppLogger? = null
    
    // Uygulama içi log seviyesi filtresi
    var currentLogLevel: LogLevel = LogLevel.VERBOSE
    
    fun v(msg: String) { if (currentLogLevel <= LogLevel.VERBOSE) logger?.addGeneralLog(LogLevel.VERBOSE, msg) }
    fun d(msg: String) { if (currentLogLevel <= LogLevel.DEBUG) logger?.addGeneralLog(LogLevel.DEBUG, msg) }
    fun i(msg: String) { if (currentLogLevel <= LogLevel.INFO) logger?.addGeneralLog(LogLevel.INFO, msg) }
    fun w(msg: String) { if (currentLogLevel <= LogLevel.WARNING) logger?.addGeneralLog(LogLevel.WARNING, msg) }
    fun e(msg: String) { if (currentLogLevel <= LogLevel.ERROR) logger?.addGeneralLog(LogLevel.ERROR, msg) }
    
    // MQTT spesifik loglar (bağlantı durumları vs.)
    fun mqttLog(msg: String) { logger?.addGeneralLog(LogLevel.MQTT, msg) }
    
    // Eski sisteme uyumluluk için (kademeli refactor)
    fun log(msg: String) { i(msg) }
}
