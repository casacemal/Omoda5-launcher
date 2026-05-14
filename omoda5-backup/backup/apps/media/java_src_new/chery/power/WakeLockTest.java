package com.chery.power;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.chery.power.PowerWakeLock;

/* loaded from: classes.dex */
public class WakeLockTest {
    private static final String TAG = "WakeLockTest";
    private final Context mContext;
    private final int mFlag;
    private final Handler mHandler;
    private PowerWakeLock mPowerWakeLock;
    private PowerWakeLock.BindStatusListener mBindStatusListener = new PowerWakeLock.BindStatusListener() { // from class: com.chery.power.WakeLockTest.1
        @Override // com.chery.power.PowerWakeLock.BindStatusListener
        public void onBindServiceStatus(boolean z) {
            Log.i(WakeLockTest.TAG, "onBindServiceStatus: connect is " + z);
        }
    };
    private PowerWakeLock.ProxyWakeLockListener mProxyWakeLockListener = new PowerWakeLock.ProxyWakeLockListener() { // from class: com.chery.power.WakeLockTest.2
        @Override // com.chery.power.PowerWakeLock.ProxyWakeLockListener
        public void onWakeLockRelease(int r2) {
            Log.i(WakeLockTest.TAG, "onWakeLockRelease:" + r2);
        }
    };

    public WakeLockTest(Context context, int r3) {
        this.mContext = context;
        this.mFlag = r3;
        this.mHandler = new Handler(context.getMainLooper());
    }

    public void init() {
        if (this.mPowerWakeLock == null) {
            PowerWakeLock powerWakeLock = new PowerWakeLock(this.mContext, this.mFlag, "Test");
            this.mPowerWakeLock = powerWakeLock;
            powerWakeLock.init(this.mBindStatusListener);
            this.mPowerWakeLock.register(this.mProxyWakeLockListener);
        }
    }

    public void wakeLock() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null && powerWakeLock.isConnected()) {
            this.mPowerWakeLock.acquireWakeLock();
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void releaseLock() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null && powerWakeLock.isConnected()) {
            this.mPowerWakeLock.releaseWakeLock();
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void screenLock() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null && powerWakeLock.isConnected()) {
            this.mPowerWakeLock.screenLock();
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void screenUnlock() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null && powerWakeLock.isConnected()) {
            this.mPowerWakeLock.screenUnlock();
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void screenOn() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null && powerWakeLock.isConnected()) {
            this.mPowerWakeLock.screenOn();
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void screenOff() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null && powerWakeLock.isConnected()) {
            this.mPowerWakeLock.screenOff();
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void uninit() {
        PowerWakeLock powerWakeLock = this.mPowerWakeLock;
        if (powerWakeLock != null) {
            powerWakeLock.uninit();
            this.mPowerWakeLock = null;
        }
    }
}
