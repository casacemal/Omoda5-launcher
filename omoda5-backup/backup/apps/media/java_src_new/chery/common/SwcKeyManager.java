package com.chery.common;

import android.content.Context;
import android.provider.Settings;

/* loaded from: classes.dex */
public class SwcKeyManager {
    public static final String STEERING_KEY_FUNCTION = "steering_key_function";

    public static class Key {
        public static final int KEY_AVM = 2;
        public static final int KEY_CUSTOM_PAGE = 8;
        public static final int KEY_DEFAULT = 0;
        public static final int KEY_DVR = 1;
        public static final int KEY_HUD = 3;
        public static final int KEY_NAVI = 9;
        public static final int KEY_NO_FUNCTION = 0;
        public static final int KEY_PHONE_CONNECT = 5;
        public static final int KEY_SYSTEM_SETTING = 7;
        public static final int KEY_VEHICLE_SETTING = 4;
    }

    public static int getKeyFunction(Context context) {
        return Settings.System.getInt(context.getContentResolver(), STEERING_KEY_FUNCTION, 0);
    }

    public static boolean setKeyFunction(Context context, int r2) {
        return Settings.System.putInt(context.getContentResolver(), STEERING_KEY_FUNCTION, r2);
    }
}
