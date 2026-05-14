package com.chery.carplay;

import com.chery.libvr.bean.params.ParamsSource;
import com.chery.libvr.bean.params.ParamsType;

/* loaded from: classes.dex */
public class CPCommon {

    public static class Binder {
        public static final boolean CONNECT = true;
        public static final boolean DISCONNECT = false;
    }

    public static class CPSessionStatus {
        public static final int CONNECT = 0;
        public static final int DEFAULT = 1;
        public static final int DISCONNECT = 1;
    }

    public static class CPSessionUSB {
        public static final boolean USB = true;
        public static final boolean WIFI = false;
    }

    public static class ConnectType {
        public static final int BT_CLIENT = 2;
        public static final int BT_SERVER = 3;
        public static final int DEFAULT = 0;
        public static final int USB = 1;

        public static String toString(int r1) {
            return r1 == 0 ? "DEFAULT" : r1 == 1 ? ParamsSource.USB : r1 == 2 ? "BT_CLIENT" : r1 == 3 ? "BT_SERVER" : ParamsType.CallRecordType.OTHER;
        }
    }

    public static class DeviceAttached {
        public static final boolean CONNECTED = true;
        public static final boolean DISCONNECTED = false;
    }

    public static class Siri {
        public static final boolean OFF = false;

        /* renamed from: ON */
        public static final boolean f204ON = true;
    }

    public static class TelSts {
        public static final int ACTIVE = 4;
        public static final int CONNECTING = 3;
        public static final int DISCONNECTED = 0;
        public static final int DISCONNECTING = 6;
        public static final int HELD = 5;
        public static final int RINGING = 2;
        public static final int SENDING = 1;
    }

    public static class URL {
        public static final String MAIN = "null";
        public static final String MAPS = "maps";
        public static final String TELEPHONE = "telephone";
    }
}
