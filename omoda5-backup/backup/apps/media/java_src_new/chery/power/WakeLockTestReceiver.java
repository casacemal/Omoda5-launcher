package com.chery.power;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* loaded from: classes.dex */
public class WakeLockTestReceiver extends BroadcastReceiver {
    private static final String ACTION_WAKE_EVENT_TEST = "com.chery.power.test";
    public static final int EVENT_DIALOG_RELEASE = 12;
    public static final int EVENT_DIALOG_WAKE = 11;
    public static final int EVENT_INIT = 1;
    public static final int EVENT_LOCK_2_3 = 8;
    public static final int EVENT_REALSE = 3;
    public static final int EVENT_RELEASE_2 = 9;
    public static final int EVENT_RELEASE_3 = 10;
    public static final int EVENT_SCREEN_LOCK = 4;
    public static final int EVENT_SCREEN_OFF = 6;
    public static final int EVENT_SCREEN_ON = 7;
    public static final int EVENT_SCREEN_UNLOCK = 5;
    public static final int EVENT_UNINIT = 100;
    public static final int EVENT_WAKE = 2;
    private static final String EXTRA_WAKE_EVENT_ID = "EVENT_ID";
    private static final String TAG = "WakeLockTestReceiver";
    private final Context mContext;
    private final IntentFilter mIntentFilter = new IntentFilter();
    private final WakeLockTest mWakeLockTest;
    private final WakeLockTest mWakeLockTest2;
    private final WakeLockTest mWakeLockTest3;
    private final WakeLockTest mWakeLockTest4;

    public WakeLockTestReceiver(Context context) {
        this.mContext = context;
        this.mWakeLockTest = new WakeLockTest(context, 3);
        this.mWakeLockTest2 = new WakeLockTest(context, 3);
        this.mWakeLockTest3 = new WakeLockTest(context, 3);
        this.mWakeLockTest4 = new WakeLockTest(context, 2);
        this.mIntentFilter.addAction(ACTION_WAKE_EVENT_TEST);
    }

    public void register() {
        this.mContext.registerReceiver(this, this.mIntentFilter);
    }

    public void unregister() {
        this.mContext.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        handleEvent(intent.getIntExtra("EVENT_ID", -1));
    }

    private void handleEvent(int r2) {
        if (r2 != 100) {
            switch (r2) {
                case 1:
                    this.mWakeLockTest.init();
                    this.mWakeLockTest2.init();
                    this.mWakeLockTest3.init();
                    this.mWakeLockTest4.init();
                    break;
                case 2:
                    this.mWakeLockTest.wakeLock();
                    break;
                case 3:
                    this.mWakeLockTest.releaseLock();
                    break;
                case 4:
                    this.mWakeLockTest.screenLock();
                    break;
                case 5:
                    this.mWakeLockTest.screenUnlock();
                    break;
                case 6:
                    this.mWakeLockTest.screenOff();
                    break;
                case 7:
                    this.mWakeLockTest.screenOn();
                    break;
                case 8:
                    this.mWakeLockTest2.wakeLock();
                    this.mWakeLockTest3.wakeLock();
                    break;
                case 9:
                    this.mWakeLockTest2.releaseLock();
                    break;
                case 10:
                    this.mWakeLockTest3.releaseLock();
                    break;
                case 11:
                    this.mWakeLockTest4.screenOn();
                    this.mWakeLockTest4.wakeLock();
                    break;
                case 12:
                    this.mWakeLockTest4.releaseLock();
                    break;
            }
        }
        this.mWakeLockTest.uninit();
        this.mWakeLockTest2.uninit();
        this.mWakeLockTest3.uninit();
        this.mWakeLockTest4.uninit();
    }
}
