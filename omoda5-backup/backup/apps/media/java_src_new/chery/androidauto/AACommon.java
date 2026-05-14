package com.chery.androidauto;

/* loaded from: classes.dex */
public class AACommon {

    public static class AASessionStatus {
        public static final int CONNECT = 1;
        public static final int DEFAULT = 0;
        public static final int DISCONNECT = 2;
    }

    public static class AASessionUSB {
        public static final boolean USB = true;
        public static final boolean WIFI = false;
    }

    public static class FocusMode {
        public static final int EXIT_SHORT = 3;
        public static final int NATIVE = 2;
        public static final int PROJECT = 1;
    }

    public static class HfpPrepareStatus {
        public static final int PREPARE_HFP_FAILURE = 3;
        public static final int PREPARE_HFP_READY_IDLE = 2;
        public static final int PREPARE_HFP_READY_PAIRED = 1;
    }

    public static class MediaSourceRequestType {
        public static final int MEDIA_SOURCE_AV_ALL = 3;
        public static final int MEDIA_SOURCE_ONLY_AUDIO = 1;
        public static final int MEDIA_SOURCE_ONLY_VIDEO = 2;
    }

    public static class URL {
        public static final String MAIN = "null";
        public static final String MAPS = "maps";
        public static final String TELEPHONE = "telephone";
    }

    public static class VRSessionStatus {
        public static final int END = 2;
        public static final int START = 1;
    }
}
