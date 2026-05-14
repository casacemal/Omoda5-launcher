package com.chery.power;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.chery.common.PackageConstants;
import com.chery.power.IPowerWakeLock;
import com.chery.power.IWakeLockListener;

/* loaded from: classes.dex */
public class PowerWakeLock extends IWakeLockListener.Stub implements ServiceConnection, IBinder.DeathRecipient {
    public static final int FLAG_RELEASE_AFTER_WAKE_KEYGUARD = 2;
    public static final int FLAG_RELEASE_AFTER_WAKE_SCREEN_OFF = 1;
    public static final int FLAG_RELEASE_AFTER_WAKE_SCREEN_OFF_KEYGUARD = 3;
    public static final int FLAG_WAKE_KEYGUARD = 32;
    public static final int FLAG_WAKE_NO = 0;
    public static final int FLAG_WAKE_SCREEN_OFF = 16;
    public static final String TAG = "PowerWakeLock";
    public static final String WAKE_LOCK_ACTION = "com.android.systemui.action.wakelock";
    public static final String WAKE_LOCK_PKG = "com.android.systemui";
    private BindStatusListener mBindStatusListener;
    private boolean mConnectionState = false;
    private Context mContext;
    private int mFlags;
    private final String mPackageName;
    private IPowerWakeLock mPowerApi;
    private ProxyWakeLockListener mProxyWakeLockListener;
    private String mTag;

    public interface BindStatusListener {
        void onBindServiceStatus(boolean z);
    }

    public interface ProxyWakeLockListener {
        void onWakeLockRelease(int r1);
    }

    public PowerWakeLock(Context context, int r2, String str) {
        this.mContext = context;
        this.mFlags = r2;
        this.mTag = str;
        this.mPackageName = context.getPackageName();
    }

    public void init(BindStatusListener bindStatusListener) {
        this.mBindStatusListener = bindStatusListener;
        bind();
    }

    public void register(ProxyWakeLockListener proxyWakeLockListener) {
        this.mProxyWakeLockListener = proxyWakeLockListener;
    }

    public void screenUnlock() {
        acquire(32);
    }

    public void screenLock() {
        release(32);
    }

    public boolean isScreenLock() {
        return hasWakeLock(32);
    }

    public void screenOn() {
        acquire(16);
    }

    public void screenOff() {
        release(16);
    }

    public boolean checkScreenOff() {
        return hasWakeLock(16);
    }

    public void acquireWakeLock() {
        acquire(this.mFlags);
    }

    public void releaseWakeLock() {
        release(this.mFlags);
    }

    public boolean isConnected() {
        return this.mConnectionState;
    }

    public void uninit() {
        this.mBindStatusListener = null;
        this.mProxyWakeLockListener = null;
        unbind();
    }

    private void bind() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.android.systemui", PackageConstants.SYSUI.SERVICE_NAME_KEYGUARD_VIEWER));
        intent.setAction(WAKE_LOCK_ACTION);
        try {
            Log.d(TAG, "bind wakelock service");
            this.mContext.bindService(intent, this, 1);
        } catch (SecurityException e) {
            Log.d(TAG, "SecurityException:" + e);
        }
    }

    private void unbind() {
        Log.i(TAG, "unbind");
        this.mContext.unbindService(this);
    }

    private void unlinkDeath() {
        this.mConnectionState = false;
        IPowerWakeLock iPowerWakeLock = this.mPowerApi;
        if (iPowerWakeLock != null) {
            iPowerWakeLock.asBinder().unlinkToDeath(this, 0);
            this.mPowerApi = null;
        }
    }

    private boolean hasWakeLock(int r2) {
        IPowerWakeLock iPowerWakeLock = this.mPowerApi;
        if (iPowerWakeLock == null) {
            Log.d(TAG, "mPowerApi is null");
            bind();
            return false;
        }
        try {
            return iPowerWakeLock.hasWakeLock(r2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    private void acquire(int r4) {
        IPowerWakeLock iPowerWakeLock = this.mPowerApi;
        if (iPowerWakeLock == null) {
            Log.d(TAG, "mPowerApi is null");
            bind();
        } else {
            try {
                iPowerWakeLock.acquireWakeLock(this, r4, this.mTag, this.mPackageName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void release(int r2) {
        IPowerWakeLock iPowerWakeLock = this.mPowerApi;
        if (iPowerWakeLock == null) {
            Log.d(TAG, "mPowerApi is null");
            bind();
        } else {
            try {
                iPowerWakeLock.releaseWakeLock(this, r2);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        if (this.mPowerApi == null) {
            IPowerWakeLock iPowerWakeLockAsInterface = iBinder != null ? IPowerWakeLock.Stub.asInterface(iBinder) : null;
            this.mPowerApi = iPowerWakeLockAsInterface;
            if (iPowerWakeLockAsInterface == null) {
                Log.w(TAG, "Wake lock failed to be created");
            } else {
                this.mConnectionState = true;
                try {
                    iPowerWakeLockAsInterface.asBinder().linkToDeath(this, 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
        BindStatusListener bindStatusListener = this.mBindStatusListener;
        if (bindStatusListener != null) {
            bindStatusListener.onBindServiceStatus(true);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        unlinkDeath();
        BindStatusListener bindStatusListener = this.mBindStatusListener;
        if (bindStatusListener != null) {
            bindStatusListener.onBindServiceStatus(false);
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        unlinkDeath();
        bind();
    }

    @Override // com.chery.power.IWakeLockListener
    public void onWakeLockRelease(int r1) throws RemoteException {
        ProxyWakeLockListener proxyWakeLockListener = this.mProxyWakeLockListener;
        if (proxyWakeLockListener != null) {
            proxyWakeLockListener.onWakeLockRelease(r1);
        }
    }
}
