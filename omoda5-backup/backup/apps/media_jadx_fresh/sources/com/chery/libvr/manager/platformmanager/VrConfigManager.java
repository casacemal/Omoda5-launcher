package com.chery.libvr.manager.platformmanager;

import android.content.Context;
import com.avn.tools.log.CarLog;
import com.chery.libvr.bean.InitListener;

/* loaded from: classes.dex */
public class VrConfigManager {
    private static volatile VrConfigManager mInstance;
    private final String TAG = CarLog.concatTag("VR", VrConfigManager.class);
    private boolean mIsInitSuccess;

    public static VrConfigManager getInstance() {
        if (mInstance == null) {
            synchronized (VrConfigManager.class) {
                if (mInstance == null) {
                    mInstance = new VrConfigManager();
                }
            }
        }
        return mInstance;
    }

    public void initVr(Context context, InitListener initListener) {
        VrRequestManager.getInstance().initVr(context, new InitListenerWrapper(initListener));
    }

    public void deInitVr() {
        VrRequestManager.getInstance().deInitVr();
    }

    public boolean isInitSuccess() {
        return this.mIsInitSuccess;
    }

    private class InitListenerWrapper implements InitListener {
        private InitListener mInitListener;

        public InitListenerWrapper(InitListener initListener) {
            this.mInitListener = initListener;
        }

        @Override // com.chery.libvr.bean.InitListener
        public void onConnectedToRemote() {
            VrConfigManager.this.mIsInitSuccess = true;
            InitListener initListener = this.mInitListener;
            if (initListener != null) {
                initListener.onConnectedToRemote();
            }
        }

        @Override // com.chery.libvr.bean.InitListener
        public void onDisconnectedToRemote() {
            VrConfigManager.this.mIsInitSuccess = false;
            InitListener initListener = this.mInitListener;
            if (initListener != null) {
                initListener.onDisconnectedToRemote();
            }
        }
    }
}
