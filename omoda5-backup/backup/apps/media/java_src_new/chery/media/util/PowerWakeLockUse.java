package com.chery.media.util;

import android.content.Context;
import com.chery.power.PowerWakeLock;

/* loaded from: classes.dex */
public class PowerWakeLockUse {
    private static PowerWakeLockUse instance;
    private Context context;
    private PowerWakeLock powerWakeLock;

    public static PowerWakeLockUse getInstance() {
        if (instance == null) {
            instance = new PowerWakeLockUse();
        }
        return instance;
    }

    public void init(Context context) {
        this.context = context;
        PowerWakeLock powerWakeLock = new PowerWakeLock(this.context, 3, null);
        this.powerWakeLock = powerWakeLock;
        powerWakeLock.init(null);
    }

    public PowerWakeLock getPowerWakeLock() {
        return this.powerWakeLock;
    }
}
