package com.omoda5.launcher.service
import android.content.*
import android.util.Log
class BootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (intent.action == Intent.ACTION_BOOT_COMPLETED || intent.action == "android.intent.action.QUICKBOOT_POWERON") {
            val serviceIntent = Intent(context, AdbBridgeService::class.java).apply { action = AdbBridgeService.ACTION_EXECUTE_SHELL }
            context.startForegroundService(serviceIntent)
        }
    }
}
