package com.chery.libvr.manager.platformmanager;

import android.content.Context;
import android.content.Intent;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.libvr.bean.SysEventConstants;

/* loaded from: classes.dex */
public class SysEventManager {
    private static volatile SysEventManager mInstance;
    private final String TAG = CarLog.concatTag("VR", SysEventManager.class);

    public static SysEventManager getInstance() {
        if (mInstance == null) {
            synchronized (SysEventManager.class) {
                if (mInstance == null) {
                    mInstance = new SysEventManager();
                }
            }
        }
        return mInstance;
    }

    public void sentEvent(Context context, int r4) {
        PFLog.m25d(this.TAG, "sentEvent eventType = " + r4);
        Intent intent = new Intent();
        intent.setPackage("com.chery.cerence");
        intent.setAction(SysEventConstants.ACTION);
        intent.putExtra(SysEventConstants.KEY_EVENT, r4);
        context.sendBroadcast(intent);
    }
}
