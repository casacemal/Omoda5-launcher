package com.chery.media.model.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;

/* loaded from: classes.dex */
public class BootReceiver extends BroadcastReceiver {
    private static final String TAG = CarLog.concatTag("MEDIA", BootReceiver.class);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        PFLog.m25d(TAG, "onReceive " + intent);
        if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
            PFLog.m25d(TAG, "to start UsbScannerManagerService");
            Intent intent2 = new Intent();
            intent2.setComponent(new ComponentName("com.chery.media", "com.chery.media.model.service.UsbScannerManagerService"));
            context.startService(intent2);
        }
    }
}
