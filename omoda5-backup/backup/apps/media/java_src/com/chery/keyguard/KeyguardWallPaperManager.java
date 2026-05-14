package com.chery.keyguard;

import android.content.Context;
import android.provider.Settings;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;

/* loaded from: classes.dex */
public class KeyguardWallPaperManager {
    public static final int STANDBY_PIC_1 = 1;
    public static final int STANDBY_PIC_2 = 2;
    public static final int STANDBY_PIC_3 = 3;
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, KeyguardWallPaperManager.class);
    public static final String URL_KEYGUARD_WALLPAPER = "com.android.systemui.keyguard.wallpaper";
    public static final int WALLPAPER_DEFAULT = 3;
    private Context mCtx;

    public KeyguardWallPaperManager(Context context) {
        this.mCtx = context;
    }

    public int getWallpaper() {
        Context context = this.mCtx;
        int r0 = context != null ? Settings.System.getInt(context.getContentResolver(), URL_KEYGUARD_WALLPAPER, 3) : 3;
        PFLog.m29i(TAG, "getWallpaper: value " + r0);
        return r0;
    }

    public void setWallpaper(int r4) {
        PFLog.m29i(TAG, "setWallpaper: " + r4);
        Context context = this.mCtx;
        if (context != null) {
            Settings.System.putInt(context.getContentResolver(), URL_KEYGUARD_WALLPAPER, r4);
        }
    }
}
