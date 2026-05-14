package com.chery.window;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.chery.window.UiVisibility;

/* loaded from: classes.dex */
public class UiVisibilityTest {
    private static final String TAG = "UiVisibilityTest";
    private final Context mContext;
    private final int mFlag;
    private final Handler mHandler;
    private final String mTag;
    private final boolean mTarget;
    private UiVisibility mUiVisibility;
    private UiVisibility.BindStatusListener mBindStatusListener = new UiVisibility.BindStatusListener() { // from class: com.chery.window.UiVisibilityTest.1
        @Override // com.chery.window.UiVisibility.BindStatusListener
        public void onBindServiceStatus(boolean z) {
            Log.i(UiVisibilityTest.TAG, "onBindServiceStatus: connect is " + z);
        }
    };
    private UiVisibility.ProxyUiVisibilityListener mProxyUiVisibilityListener = new UiVisibility.ProxyUiVisibilityListener() { // from class: com.chery.window.UiVisibilityTest.2
        @Override // com.chery.window.UiVisibility.ProxyUiVisibilityListener
        public void onUiVisibilityChanged(int r2, int r3) {
            Log.i(UiVisibilityTest.TAG, "onUiVisibilityChanged:" + r2 + ",visibility:" + r3);
        }
    };
    private UiVisibility.ProxyTargetUiVisibilityListener mProxyTargetUiVisibilityListener = new UiVisibility.ProxyTargetUiVisibilityListener() { // from class: com.chery.window.UiVisibilityTest.3
        @Override // com.chery.window.UiVisibility.ProxyTargetUiVisibilityListener
        public void onUiVisibilityChanged(int r2, int r3) {
            Log.i(UiVisibilityTest.TAG, "onTargetUiVisibilityChanged:" + r2 + ",visibility:" + r3);
        }
    };

    public UiVisibilityTest(Context context, int r3, String str, boolean z) {
        this.mContext = context;
        this.mFlag = r3;
        this.mTag = str;
        this.mTarget = z;
        this.mHandler = new Handler(context.getMainLooper());
    }

    public void init() {
        if (this.mUiVisibility == null) {
            UiVisibility uiVisibility = new UiVisibility(this.mContext, this.mFlag, this.mTag, this.mTarget);
            this.mUiVisibility = uiVisibility;
            uiVisibility.init(this.mBindStatusListener);
            this.mUiVisibility.registerUiVisibility(this.mProxyUiVisibilityListener);
            this.mUiVisibility.registerTargetUiVisibility(this.mProxyTargetUiVisibilityListener);
        }
    }

    public void setUiVisibility(int r2, int r3) {
        UiVisibility uiVisibility = this.mUiVisibility;
        if (uiVisibility != null && uiVisibility.isConnected()) {
            this.mUiVisibility.setUiVisibility(r2, r3);
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public void setTargetUiVisibility(int r2, int r3) {
        UiVisibility uiVisibility = this.mUiVisibility;
        if (uiVisibility != null && uiVisibility.isConnected()) {
            this.mUiVisibility.setTargetUiVisibility(r2, r3);
        } else {
            Log.i(TAG, "it not connect.");
        }
    }

    public int isUiVisibility(int r2) {
        UiVisibility uiVisibility = this.mUiVisibility;
        if (uiVisibility != null && uiVisibility.isConnected()) {
            return this.mUiVisibility.isUiVisibility(r2);
        }
        Log.i(TAG, "it not connect.");
        return 0;
    }

    public void uninit() {
        UiVisibility uiVisibility = this.mUiVisibility;
        if (uiVisibility != null) {
            uiVisibility.uninit();
            this.mUiVisibility = null;
        }
    }
}
