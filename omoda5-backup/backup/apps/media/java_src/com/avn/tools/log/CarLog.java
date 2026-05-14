package com.avn.tools.log;

/* loaded from: classes.dex */
public class CarLog {
    private static final int MAX_TAG_LEN = 23;
    public static final String TAG_AM = "AM";
    public static final String TAG_AVM = "AVM";
    public static final String TAG_BT_MUSIC = "BTA";
    public static final String TAG_BT_PHONE = "BTP";
    public static final String TAG_BT_SETTING = "BTS";
    public static final String TAG_CAR = "CAR";
    public static final String TAG_COMMON = "COMMON";
    public static final String TAG_DAB = "DAB";
    public static final String TAG_DEF = "DEF";
    public static final String TAG_ENGINEERING = "ENG";
    public static final String TAG_HELP = "HELP";
    public static final String TAG_HVAC = "HVAC";
    public static final String TAG_ICM = "ICM";
    public static final String TAG_LAU = "LAU";
    public static final String TAG_MEDIA = "MEDIA";
    public static final String TAG_PICTURE = "PICTURE";
    public static final String TAG_SETTING = "SET";
    public static final String TAG_SYSTEMUI = "SYSUI";
    public static final String TAG_TOOLS = "TOOLS";
    public static final String TAG_TUNER = "TUNER";
    public static final String TAG_UPGRADE = "UPD";
    public static final String TAG_UPGRADE_SERVICE = "UPDS";
    public static final String TAG_VIDEO = "VIDEO";
    public static final String TAG_VR = "VR";

    public static String concatTag(String str, Class cls) {
        String str2 = str + "." + cls.getSimpleName();
        return str2.length() > 23 ? str2.substring(0, 23) : str2;
    }
}
