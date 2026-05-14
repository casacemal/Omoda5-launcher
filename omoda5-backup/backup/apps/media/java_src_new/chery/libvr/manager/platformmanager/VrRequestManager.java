package com.chery.libvr.manager.platformmanager;

import android.content.Context;
import android.os.IBinder;
import com.chery.libvr.bean.InitListener;

/* loaded from: classes.dex */
public class VrRequestManager {
    protected static final String TAG = VrRequestManager.class.getSimpleName();
    private static volatile VrRequestManager mInstance;

    public static VrRequestManager getInstance() {
        if (mInstance == null) {
            synchronized (VrRequestManager.class) {
                if (mInstance == null) {
                    mInstance = new VrRequestManager();
                }
            }
        }
        return mInstance;
    }

    public void initVr(Context context, InitListener initListener) {
        VrPlatformService.getInstance().init(context, initListener);
    }

    public IBinder getService(int r1) {
        return VrPlatformService.getInstance().getPlatformService(r1);
    }

    public void deInitVr() {
        VrPlatformService.getInstance().disconnectPlatformService();
    }
}
