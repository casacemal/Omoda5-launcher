package com.chery.caradapter.carapi.constants;

import com.avn.tools.log.CarLog;
import com.chery.libvr.bean.params.ParamsSource;

/* loaded from: classes.dex */
public class CarIpcDisplay {
    public static final int LEN_50 = 50;

    public static class AMRadioFrequanceValue {
        public static final int DEFAULT = 530;
        public static final int NOT_ACTIVE = 0;
    }

    public static class FMRadioFrequanceValue {
        public static final float DEFAULT = 87.5f;
        public static final int NOT_ACTIVE = 0;
    }

    public static class Mode {
        public static final int DEFAULT = 2;
        public static final int OFF = 2;

        /* renamed from: ON */
        public static final int f199ON = 1;

        public static String toString(int r2) {
            return r2 != 1 ? "OFF" : "ON";
        }
    }

    public static class RRMOnSts {
        public static final int OFF = 0;

        /* renamed from: ON */
        public static final int f200ON = 1;
    }

    public static class RadioFrequanceMode {
        public static final int AM_MODE = 2;
        public static final int DEFAULT = 1;
        public static final int FM_MODE = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 3;
    }

    public static class RadioReSearchSts {
        public static final int AST = 2;
        public static final int DEFAULT = 1;
        public static final int NORMAL = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 3;
    }

    public static class Request {
        public static final int CALLER_INFO_REQUEST = 114;
        public static final int CALLER_NAME_REQUEST = 113;
        public static final int CALLER_NUMBER_REQUEST = 112;
        public static final int CLEAR_DISPLAY_INFO_REQUEST = 3;
        public static final int ICM_CONNECT_RESPONSE = 2;
        public static final int MUSIC_TAG_REQUEST = 80;
        public static final int NAVI_INFO_REQUEST = 49;
        public static final int NEXT_STREET_NAME_REQUEST = 48;
        public static final int SINGER_NAME_REQUEST = 81;
    }

    public static class SourceStationMode {
        public static final int BLUETOOTH = 5;
        public static final int DEFAULT = 1;
        public static final int IPOD = 6;
        public static final int LOCAL_STORAGE = 7;
        public static final int NOT_ACTIVE = 0;
        public static final int ONLINE_MUSIC = 3;
        public static final int ONLINE_RADIO = 4;
        public static final int TUNER = 1;
        public static final int USB = 2;

        public static String toString(int r1) {
            switch (r1) {
                case 0:
                default:
                    return "NOT_ACTIVE";
                case 1:
                    return CarLog.TAG_TUNER;
                case 2:
                    return ParamsSource.USB;
                case 3:
                    return "ONLINE_MUSIC";
                case 4:
                    return "ONLINE_RADIO";
                case 5:
                    return "BLUETOOTH";
                case 6:
                    return "IPOD";
                case 7:
                    return "LOCAL_STORAGE";
            }
        }
    }
}
