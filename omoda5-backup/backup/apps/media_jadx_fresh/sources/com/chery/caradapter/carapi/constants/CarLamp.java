package com.chery.caradapter.carapi.constants;

/* loaded from: classes.dex */
public class CarLamp {

    public static class DRLModeSts {
        public static final int CLOSE_DRL_MODE = 0;
        public static final int OPEN_DRL_MODE = 1;
    }

    public static class DRLModeStsSet {
        public static final int CLOSE_DRL_MODE = 2;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 3;
        public static final int OPEN_DRL_MODE = 1;
    }

    public static class HMAOnOffSts {
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 3;
        public static final int OFF = 2;

        /* renamed from: ON */
        public static final int f201ON = 1;
    }

    public static class HMASwtSet {
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 3;
        public static final int OFF = 2;

        /* renamed from: ON */
        public static final int f202ON = 1;
    }

    public static class HeadlampDelayLightSts {
        public static final int DELAY_MODE = 1;
        public static final int NOT_DELAY_MODE = 0;
    }

    public static class HeadlampDelayLightStsSet {
        public static final int DELAY_MODE = 1;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_DELAY_MODE = 2;
        public static final int NOT_USED = 3;
    }

    public static class HeadlampHeightSts {
        public static final int LEVEL_0 = 0;
        public static final int LEVEL_1 = 1;
        public static final int LEVEL_2 = 2;
        public static final int LEVEL_3 = 3;
        public static final int NOT_USED = 7;
    }

    public static class HeadlampHeightStsSet {
        public static final int LEVEL_0 = 1;
        public static final int LEVEL_1 = 2;
        public static final int LEVEL_2 = 3;
        public static final int LEVEL_3 = 4;
        public static final int NOT_ACTIVE = 0;
        public static final int NOT_USED = 7;
    }
}
