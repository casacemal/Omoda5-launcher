package com.chery.common;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;
import com.chery.common.PackageConstants;

/* loaded from: classes.dex */
public class BroadcastsManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, BroadcastsManager.class);
    private final Context mContext;

    public BroadcastsManager(Context context) {
        this.mContext = context;
    }

    public void onBacklightChanged() {
        PFLog.m29i(TAG, "sendBroadCast: onBacklightChanged");
        Intent intent = new Intent();
        intent.setAction(PackageConstants.SYSUI.ACTION_BACKLIGHT_STATE_CHANGED);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }
}
