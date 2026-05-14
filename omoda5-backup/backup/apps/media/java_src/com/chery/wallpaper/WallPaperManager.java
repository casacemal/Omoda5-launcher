package com.chery.wallpaper;

import android.content.Context;
import android.provider.Settings;
import com.avn.tools.log.CarLog;
import com.avn.tools.log.PFLog;

/* loaded from: classes.dex */
public class WallPaperManager {
    private static final String TAG = CarLog.concatTag(CarLog.TAG_DEF, WallPaperManager.class);
    public static final String URL_WALLPAPER = "com.chery.launcher.wallpaper";
    public static final int WALLPAPER_BG_1 = 1;
    public static final int WALLPAPER_BG_2 = 2;
    public static final int WALLPAPER_DEFAULT = 1;
    private Context mCtx;

    public WallPaperManager(Context context) {
        this.mCtx = context;
    }

    public int getWallpaper() {
        Context context = this.mCtx;
        int r0 = context != null ? Settings.System.getInt(context.getContentResolver(), URL_WALLPAPER, 1) : 1;
        PFLog.m29i(TAG, "getWallpaper: value " + r0);
        return r0;
    }

    public void setWallpaper(int r4) {
        PFLog.m29i(TAG, "setWallpaper: " + r4);
        Context context = this.mCtx;
        if (context != null) {
            Settings.System.putInt(context.getContentResolver(), URL_WALLPAPER, r4);
        }
    }
}
