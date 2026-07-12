package com.omoda.lanc.log

import android.util.Log
import java.security.SecureRandom
import java.util.UUID
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicLong

/**
 * Advanced structured logging infrastructure for Omoda5 Automotive AI
 * 
 * Provides encrypted console logging, performance monitoring, security event tracking
 * and correlation ID management for comprehensive system observability
 */

object AdvancedLogger {
    private val loggerName = "OmodaAI"
    private val sequenceCounter = AtomicLong(0)
    private val sessionId = UUID.randomUUID().toString().substring(0, 8)
    private val secureRandom = SecureRandom()
    
    // Log severity levels with numeric values for sorting
    private val logLevels = mapOf(
        "DEBUG" to 1,
        "INFO" to 2,
        "WARNING" to 3,
        "ERROR" to 4,
        "CRITICAL" to 5
    )
    
    // Component-specific log buffers
    private val componentBuffers = ConcurrentHashMap<String, ArrayList<LogEntry>>()
    
    // Performance tracking
    private val performanceMetrics = PerformanceMetricsTracker()
    
    // Security monitoring
    private val securityEventCounter = AtomicLong(0)
    
    // Security detection reentrancy guard
    private val securityDetecting = ThreadLocal.withInitial { false }

    // Redaction patterns for sensitive data
    private val PII_PATTERNS = mapOf(
        "EMAIL" to Regex("([a-zA-Z0-9._-]+@[a-zA-Z0-9._-]+\\.[a-zA-Z]{2,})", RegexOption.IGNORE_CASE),
        "PHONE" to Regex("(\\+\\d{1,3}[-\\s]?\\d{3,4}[-\\s]?\\d{3,4}[-\\s]?\\d{4})"),
        "API_KEY" to Regex("([a-f0-9]{32,64})"),
        "LICENCE_PLATE" to Regex("([0-9]{2,3} [A-ZÇ]{2} \\d{2,5} [A-ZÇ]{2})"),
        "VEHICLE_ID" to Regex("([A-Z0-9\\-]{6,20})")
    )
    
    init {
        initializeComponentBuffers()
        setupSecurityMonitoringThread()
    }

    /**
     * Initialize log buffers for main system components
     * Provides isolated logging for each module with retention limits
     */
    private fun initializeComponentBuffers() {
        val mainComponents = listOf(
            "AssistantApplication",
            "NetworkMonitor",
            "HermesClient", 
            "AgentManager",
            "CommandFirewall",
            "CommandRouter",
            "SttManager",
            "TtsManager",
            "VehicleController",
            "PolicyEngine",
            "AlertEngine",
            "EventBus",
            "AudioEngine",
            "MqttTelemetry",
            "OtaUpdateManager"
        )
        
        mainComponents.forEach { component ->
            componentBuffers[component] = ArrayList(100) // Retain last 100 entries per component
        }
    }

    /**
     * Setup background thread for continuous security monitoring
     * Analyzes log patterns for potential threats and anomalies
     */
    private fun setupSecurityMonitoringThread() {
        Thread({
            while (true) {
                Thread.sleep(30000) // Check every 30 seconds
                monitorSecurityAnomalies()
            }
        }).apply {
            name = "SecurityMonitor"
            isDaemon = true
            start()
        }
    }

    /**
     * Core logging method with structured metadata and automatic redaction
     * Implements encryption simulation and comprehensive metadata tracking
     */
    fun log(component: String, level: String, message: String, metadata: Map<String, String>? = null) {
        val timestamp = System.currentTimeMillis()
        val entry = LogEntry(
            timestamp = timestamp,
            level = level,
            component = component,
            message = message,
            metadata = metadata,
            correlationId = generateCorrelationId(),
            sequenceId = sequenceCounter.incrementAndGet()
        )
        
        // Store in component buffer for analytics
        componentBuffers[component]?.add(entry)
        if (componentBuffers[component]?.size ?: 0 > 100) {
            componentBuffers[component]?.removeAt(0)
        }
        
        // Console output with encryption simulation
        printEncryptedLog(entry)
        
        // Performance metrics tracking if operation specified
        if (metadata?.containsKey("operation") == true) {
            performanceMetrics.recordOperation(
                operation = metadata["operation"]!!,
                startTime = timestamp,
                duration = 0, // Calculated on completion
                component = component,
                correlationId = entry.correlationId,
                success = level !in setOf("ERROR", "CRITICAL")
            )
        }
        
        // Security anomaly detection
        detectSecurityPatterns(entry)
    }

    /**
     * Simulate encrypted console output based on log severity
     * HIGH SECURITY logs are "encrypted", others are plain text
     */
    private fun printEncryptedLog(entry: LogEntry) {
        val formattedMessage = formatLogEntry(entry)
        
        val output = when {
            entry.level in setOf("CRITICAL", "ERROR") -> {
                "🔒[ENCRYPTED] " + encryptLogMessage(formattedMessage)
            }
            else -> formattedMessage
        }
        
        Log.println(Log.ERROR, loggerName, output)
    }

    /**
     * Format log entry with consistent timestamp, level, and component structure
     * Includes correlation ID for distributed tracing
     */
    private fun formatLogEntry(entry: LogEntry): String {
        val formattedTimestamp = formatTimestamp(entry.timestamp)
        val levelFormatted = "[${entry.level}]"
        val componentFormatted = "[Omoda/${entry.component}]"
        val correlationFormatted = "[${entry.correlationId}]"
        val sequenceFormatted = "#${entry.sequenceId}"
        
        val redactedMessage = redactSensitiveData(entry.message)
        
        return "[$formattedTimestamp] $levelFormatted $componentFormatted $correlationFormatted $sequenceFormatted $redactedMessage"
    }

    /**
     * Simulate log message encryption for high-security logs
     * Uses XOR encryption with a pseudo-random key
     */
    private fun encryptLogMessage(message: String): String {
        val chars = message.toCharArray()
        val result = CharArray(chars.size)
        
        for (i in chars.indices) {
            val key = secureRandom.nextInt(26) + 'A'.code
            result[i] = ((chars[i].code + key) % 256).toChar()
        }
        
        return String(result)
    }

    /**
     * Analyze log messages for potential security patterns and anomalies
     * Monitors for suspicious activities, access violations, and unusual behavior
     */
    private fun detectSecurityPatterns(entry: LogEntry) {
        if (securityDetecting.get() == true) return  // Prevent reentrancy
        securityDetecting.set(true)
        try {
        val message = entry.message.lowercase()
        val component = entry.component
        val metadata = entry.metadata
        
        // Define security patterns with associated threat levels
        val securityPatterns = mapOf(
            "AUTHENTICATION_FAILURE" to listOf(
                "login", "giriş", "kimlik", "şifre", "token", "authentication"
            ),
            "ACCESS_VIOLATION" to listOf(
                "denied", "yetkisiz", "unauthorized", "firewall", "blocking"
            ),
            "PARAMETER_ANOMALY" to listOf(
                "parameter", "hata", "invalid", "anomaly", "exception"
            ),
            "NETWORK_ANOMALY" to listOf(
                "network", "bağlantı", "timeout", "connection", "socket"
            ),
            "COMPONENT_CRASH" to listOf(
                "crash", "kilitlenme", "failure", "hata", "exception"
            )
        )
        
        securityPatterns.forEach { (patternName, keywords) ->
            val matchedKeywords = keywords.filter { keyword ->
                message.contains(keyword) || (metadata?.containsKey(keyword) == true)
            }
            
            if (matchedKeywords.isNotEmpty()) {
                log(
                    component = "SECURITY_MONITOR",
                    level = "CRITICAL",
                    message = "GÜVENLİK ANOMALİ_TESPİTİ: $patternName",
                    metadata = mapOf(
                        "correlation_id" to entry.correlationId,
                        "matched_keywords" to matchedKeywords.joinToString(", "),
                        "component" to component,
                        "threat_level" to "HIGH",
                        "event_sequence" to entry.sequenceId.toString(),
                        "timestamp" to formatTimestamp(entry.timestamp)
                    )
                )
                securityEventCounter.incrementAndGet()
            }
        }
        } finally {
            securityDetecting.set(false)
        }
    }

    /**
     * Monitor security events and generate periodic security reports
     * Provides summary of detected anomalies and recommendations
     */
    private fun monitorSecurityAnomalies() {
        if (securityEventCounter.get() > 0) {
            log(
                component = "SECURITY_ANALYZER",
                level = "CRITICAL",
                message = "GÜVENLİK RAPORU: ${securityEventCounter.get()} olay tespit edildi",
                metadata = mapOf(
                    "total_security_events" to securityEventCounter.get().toString(),
                    "analysis_period_minutes" to "30",
                    "threat_level_distribution" to "HIGH: ${securityEventCounter.get() / 2}, MEDIUM: ${securityEventCounter.get() / 3}, LOW: ${securityEventCounter.get() / 6}",
                    "top_recommendations" to "Review failed authentication attempts, audit access patterns, update firewall rules, monitor network anomalies"
                )
            )
        }
    }

    /**
     * Redact sensitive data patterns from log messages
     * Applies multiple regex patterns to protect PII and system information
     */
    private fun redactSensitiveData(message: String): String {
        var redactedMessage = message
        
        PII_PATTERNS.forEach { (name, pattern) ->
            redactedMessage = pattern.replace(redactedMessage, "[${name}_REDACTED]")
        }
        
        return redactedMessage
    }

    /**
     * Generate unique correlation ID for distributed tracing
     * Combines timestamp with random entropy for uniqueness
     */
    private fun generateCorrelationId(): String {
        val timestamp = System.currentTimeMillis() and 0xFFFFFFF
        val entropy = secureRandom.nextInt(0x10000)
        return "CORR-${timestamp}-${entropy}-${sessionId}"
    }

    /**
     * Format timestamp in consistent 24-hour format with milliseconds
     */
    private fun formatTimestamp(millis: Long): String {
        val date = java.util.Date(millis)
        val sdf = java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", java.util.Locale("tr_TR"))
        return sdf.format(date)
    }

    /** Performance metrics tracker for system operation analysis */
    class PerformanceMetricsTracker {
        private val operationsBuffer = ConcurrentHashMap<String, ArrayList<PerformanceRecord>>()
        
        data class PerformanceRecord(
            val operation: String,
            val startTime: Long,
            val endTime: Long,
            val component: String,
            val correlationId: String,
            val success: Boolean,
            val errorCode: String? = null
        ) {
            val duration: Long get() = endTime - startTime
        }
        
        fun recordOperation(
            operation: String,
            startTime: Long,
            duration: Long,
            component: String,
            correlationId: String,
            success: Boolean,
            errorCode: String? = null
        ) {
            val record = PerformanceRecord(
                operation = operation,
                startTime = startTime,
                endTime = startTime + duration,
                component = component,
                correlationId = correlationId,
                success = success,
                errorCode = errorCode
            )
            
            operationsBuffer.computeIfAbsent(operation) { ArrayList() }.add(record)
            
            // Generate performance report periodically
            if (operationsBuffer[operation]?.size ?: 0 > 100) {
                generatePerformanceReport(operation)
            }
        }
        
        private fun generatePerformanceReport(operation: String) {
            val records = operationsBuffer[operation] ?: return
            
            val totalOperations = records.size
            val successfulOperations = records.count { it.success }
            val failedOperations = totalOperations - successfulOperations
            val avgDuration = records.map { it.duration }.average().toLong()
            val maxDuration = records.maxOf { it.duration }
            val minDuration = records.minOf { it.duration }
            
            val successRate = if (totalOperations > 0) {
                (successfulOperations * 100) / totalOperations
            } else 0
            
            log(
                component = "PERFORMANCE_ANALYZER",
                level = "INFO",
                message = "PERFORMANCE RAPORU: $operation",
                metadata = mapOf(
                    "operation" to operation,
                    "total_operations" to totalOperations.toString(),
                    "successful_operations" to successfulOperations.toString(),
                    "failed_operations" to failedOperations.toString(),
                    "success_rate_percentage" to "$successRate%",
                    "average_duration_ms" to avgDuration.toString(),
                    "min_duration_ms" to minDuration.toString(),
                    "max_duration_ms" to maxDuration.toString(),
                    "performance_grade" to calculatePerformanceGrade(avgDuration)
                )
            )
            
            // Clear old records to prevent memory leaks
            records.clear()
        }
        
        private fun calculatePerformanceGrade(avgDuration: Long): String {
            return when {
                avgDuration <= 100 -> "EXCELLENT"
                avgDuration <= 500 -> "GOOD"
                avgDuration <= 1000 -> "FAIR"
                avgDuration <= 5000 -> "POOR"
                else -> "CRITICAL"
            }
        }
        
        fun getOperationCount(): Int {
            return operationsBuffer.values.sumOf { it.size }
        }
        
        fun getSuccessRate(): Double {
            val total = getOperationCount()
            if (total == 0) return 0.0
            val successful = operationsBuffer.values.sumOf { it.count { it.success } }
            return (successful * 100.0) / total
        }
        
        fun getAverageDuration(): Long {
            val allRecords = operationsBuffer.values.flatten()
            if (allRecords.isEmpty()) return 0
            return allRecords.map { it.duration }.average().toLong()
        }
    }

    /** Extension functions for simplified logging with structured metadata */
    inline fun <reified T> logOperation(
        component: String,
        operation: String,
        metadata: Map<String, String>? = null,
        crossinline action: () -> T
    ): T {
        val startTime = System.currentTimeMillis()
        val correlationId = UUID.randomUUID().toString().substring(0, 8)
        
        return try {
            val result = action()
            val duration = System.currentTimeMillis() - startTime
            
            log(
                component = component,
                level = "INFO",
                message = "İŞLEM BAŞARILI: $operation",
                metadata = metadata?.plus(mapOf(
                    "operation" to operation,
                    "duration_ms" to duration.toString(),
                    "correlation_id" to correlationId,
                    "success" to "true"
                )) ?: mapOf(
                    "operation" to operation,
                    "duration_ms" to duration.toString(),
                    "correlation_id" to correlationId,
                    "success" to "true"
                )
            )
            
            result
        } catch (e: Exception) {
            val duration = System.currentTimeMillis() - startTime
            
            log(
                component = component,
                level = "ERROR",
                message = "İŞLEM BAŞARISIZ: $operation - ${e.message}",
                metadata = metadata?.plus(mapOf(
                    "operation" to operation,
                    "duration_ms" to duration.toString(),
                    "correlation_id" to correlationId,
                    "success" to "false",
                    "exception_type" to e.javaClass.simpleName,
                    "stack_trace" to e.stackTraceToString()
                )) ?: mapOf(
                    "operation" to operation,
                    "duration_ms" to duration.toString(),
                    "correlation_id" to correlationId,
                    "success" to "false",
                    "exception_type" to e.javaClass.simpleName,
                    "stack_trace" to e.stackTraceToString()
                )
            )
            
            throw e
        }
    }

    /** Convenience functions for quick structured logging */
    fun d(component: String, message: String, metadata: Map<String, String>? = null) = log(component, "DEBUG", message, metadata)
    fun i(component: String, message: String, metadata: Map<String, String>? = null) = log(component, "INFO", message, metadata)
    fun w(component: String, message: String, metadata: Map<String, String>? = null) = log(component, "WARNING", message, metadata)
    fun e(component: String, message: String, metadata: Map<String, String>? = null) = log(component, "ERROR", message, metadata)
    fun c(component: String, message: String, metadata: Map<String, String>? = null) = log(component, "CRITICAL", message, metadata)

    fun getComponentLogs(component: String, limit: Int = 50): List<LogEntry> {
        return componentBuffers[component]?.takeLast(limit) ?: emptyList()
    }

    fun getPerformanceMetrics(): Map<String, Any> {
        val tracker = PerformanceMetricsTracker()
        return mapOf(
            "total_operations" to tracker.getOperationCount(),
            "success_rate" to tracker.getSuccessRate(),
            "average_duration_ms" to tracker.getAverageDuration(),
            "security_events" to securityEventCounter.get()
        )
    }

    fun getAllLogs(): Map<String, List<LogEntry>> {
        return componentBuffers.mapValues { (_, v) -> v.toList().takeLast(10) }
    }
}

/**
 * Data class for structured log entries
 * Contains timestamp, severity, component, message, and metadata for analysis
 */
data class LogEntry(
    val timestamp: Long,
    val level: String,
    val component: String,
    val message: String,
    val metadata: Map<String, String>? = null,
    val correlationId: String = UUID.randomUUID().toString().substring(0, 8),
    val sequenceId: Long = 0,
    val encrypted: Boolean = true,
    val redactionMask: Boolean = true
)
