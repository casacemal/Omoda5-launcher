package com.chery.window;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.chery.common.PackageConstants;
import com.chery.window.IUiVisibilityListener;
import com.chery.window.IWindowUiVisibility;

/* loaded from: classes.dex */
public class UiVisibility extends IUiVisibilityListener.Stub implements ServiceConnection, IBinder.DeathRecipient {
    public static final int FLAG_UI_CARPLAY = 32;
    public static final int FLAG_UI_DIALER = 16;
    public static final int FLAG_UI_HVAC = 8;
    public static final int FLAG_UI_NAVIGATION_BAR = 1;
    public static final int FLAG_UI_NO = 0;
    public static final int FLAG_UI_QUICK_SETTINGS = 4;
    public static final int FLAG_UI_STATUS_BAR = 2;
    public static final String TAG = "UiVisibility";
    public static final int UI_INVISIBLE = 0;
    public static final String UI_VISIBILITY_ACTION = "com.android.systemui.action.uivisibility";
    public static final int UI_VISIBLE_FULL = 2;
    public static final int UI_VISIBLE_MINI = 1;
    private BindStatusListener mBindStatusListener;
    private boolean mConnectionState = false;
    private Context mContext;
    private int mFlags;
    private final String mPackageName;
    private ProxyTargetUiVisibilityListener mProxyTargetUiVisibilityListener;
    private ProxyUiVisibilityListener mProxyUiVisibilityListener;
    private String mTag;
    private boolean mTargetUi;
    private IWindowUiVisibility mUiVisibilityApi;

    public interface BindStatusListener {
        void onBindServiceStatus(boolean z);
    }

    public interface ProxyTargetUiVisibilityListener {
        void onUiVisibilityChanged(int r1, int r2);
    }

    public interface ProxyUiVisibilityListener {
        void onUiVisibilityChanged(int r1, int r2);
    }

    public UiVisibility(Context context, int r2, String str, boolean z) {
        this.mContext = context;
        this.mFlags = r2;
        this.mTag = str;
        this.mPackageName = context.getPackageName();
        this.mTargetUi = z;
    }

    public void init(BindStatusListener bindStatusListener) {
        this.mBindStatusListener = bindStatusListener;
        bind();
    }

    public void registerUiVisibility(ProxyUiVisibilityListener proxyUiVisibilityListener) {
        this.mProxyUiVisibilityListener = proxyUiVisibilityListener;
    }

    public void registerTargetUiVisibility(ProxyTargetUiVisibilityListener proxyTargetUiVisibilityListener) {
        this.mProxyTargetUiVisibilityListener = proxyTargetUiVisibilityListener;
    }

    public boolean isConnected() {
        return this.mConnectionState;
    }

    public void uninit() {
        this.mBindStatusListener = null;
        this.mProxyUiVisibilityListener = null;
        this.mProxyTargetUiVisibilityListener = null;
        if (this.mTargetUi) {
            unregisterUiTargetListener();
        } else {
            unregisterUiListener();
        }
        unbind();
    }

    private void bind() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.android.systemui", PackageConstants.SYSUI.SERVICE_NAME_SYSTEMUI));
        intent.setAction(UI_VISIBILITY_ACTION);
        try {
            Log.d(TAG, "bind uivisibility service");
            this.mContext.bindService(intent, this, 1);
        } catch (SecurityException e) {
            Log.d(TAG, "SecurityException:" + e);
        }
    }

    private void unbind() {
        Log.i(TAG, "unbind");
        this.mContext.unbindService(this);
    }

    private void linkDeath() throws RemoteException {
        try {
            this.mUiVisibilityApi.asBinder().linkToDeath(this, 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void unlinkDeath() {
        this.mConnectionState = false;
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility != null) {
            iWindowUiVisibility.asBinder().unlinkToDeath(this, 0);
            this.mUiVisibilityApi = null;
        }
    }

    public int isUiVisibility(int r2) {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
            return 0;
        }
        try {
            return iWindowUiVisibility.isUiVisibility(r2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void setUiVisibility(int r3, int r4) {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
        } else {
            try {
                iWindowUiVisibility.setUiVisibility(r3, r4, this.mTag, this.mPackageName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void registerUiListener() {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
        } else {
            try {
                iWindowUiVisibility.registerUiListener(this, this.mFlags, this.mTag, this.mPackageName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void unregisterUiListener() {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
        } else {
            try {
                iWindowUiVisibility.unregisterUiListener(this, this.mFlags);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void setTargetUiVisibility(int r3, int r4) {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
        } else {
            try {
                iWindowUiVisibility.setTargetUiVisibility(r3, r4, this.mTag, this.mPackageName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void registerUiTargetListener() {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
        } else {
            try {
                iWindowUiVisibility.registerUiTarget(this, this.mFlags, this.mTag, this.mPackageName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void unregisterUiTargetListener() {
        IWindowUiVisibility iWindowUiVisibility = this.mUiVisibilityApi;
        if (iWindowUiVisibility == null) {
            Log.d(TAG, "mUiVisibilityApi is null");
            bind();
        } else {
            try {
                iWindowUiVisibility.unregisterUiTarget(this, this.mFlags);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) throws RemoteException {
        if (this.mUiVisibilityApi == null) {
            IWindowUiVisibility iWindowUiVisibilityAsInterface = iBinder != null ? IWindowUiVisibility.Stub.asInterface(iBinder) : null;
            this.mUiVisibilityApi = iWindowUiVisibilityAsInterface;
            if (iWindowUiVisibilityAsInterface == null) {
                Log.w(TAG, "mUiVisibilityApi failed to be created");
            } else {
                this.mConnectionState = true;
                linkDeath();
                if (this.mTargetUi) {
                    registerUiTargetListener();
                } else {
                    registerUiListener();
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

    @Override // com.chery.window.IUiVisibilityListener
    public void onUiVisibilityChanged(int r2, int r3) throws RemoteException {
        if (this.mTargetUi) {
            ProxyTargetUiVisibilityListener proxyTargetUiVisibilityListener = this.mProxyTargetUiVisibilityListener;
            if (proxyTargetUiVisibilityListener != null) {
                proxyTargetUiVisibilityListener.onUiVisibilityChanged(r2, r3);
                return;
            }
            return;
        }
        ProxyUiVisibilityListener proxyUiVisibilityListener = this.mProxyUiVisibilityListener;
        if (proxyUiVisibilityListener != null) {
            proxyUiVisibilityListener.onUiVisibilityChanged(r2, r3);
        }
    }
}
