package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleGear {
    public static final int GEAR_1 = 16;
    public static final int GEAR_2 = 32;
    public static final int GEAR_3 = 64;
    public static final int GEAR_4 = 128;
    public static final int GEAR_5 = 256;
    public static final int GEAR_6 = 512;
    public static final int GEAR_7 = 1024;
    public static final int GEAR_8 = 2048;
    public static final int GEAR_9 = 4096;
    public static final int GEAR_DRIVE = 8;
    public static final int GEAR_NEUTRAL = 1;
    public static final int GEAR_PARK = 4;
    public static final int GEAR_REVERSE = 2;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "GEAR_NEUTRAL";
        }
        if (r2 == 2) {
            return "GEAR_REVERSE";
        }
        if (r2 == 4) {
            return "GEAR_PARK";
        }
        if (r2 == 8) {
            return "GEAR_DRIVE";
        }
        if (r2 == 16) {
            return "GEAR_1";
        }
        if (r2 == 32) {
            return "GEAR_2";
        }
        if (r2 == 64) {
            return "GEAR_3";
        }
        if (r2 == 128) {
            return "GEAR_4";
        }
        if (r2 == 256) {
            return "GEAR_5";
        }
        if (r2 == 512) {
            return "GEAR_6";
        }
        if (r2 == 1024) {
            return "GEAR_7";
        }
        if (r2 == 2048) {
            return "GEAR_8";
        }
        if (r2 == 4096) {
            return "GEAR_9";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("GEAR_NEUTRAL");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("GEAR_REVERSE");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("GEAR_PARK");
            r2 |= 4;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("GEAR_DRIVE");
            r2 |= 8;
        }
        if ((r4 & 16) == 16) {
            arrayList.add("GEAR_1");
            r2 |= 16;
        }
        if ((r4 & 32) == 32) {
            arrayList.add("GEAR_2");
            r2 |= 32;
        }
        if ((r4 & 64) == 64) {
            arrayList.add("GEAR_3");
            r2 |= 64;
        }
        if ((r4 & 128) == 128) {
            arrayList.add("GEAR_4");
            r2 |= 128;
        }
        if ((r4 & 256) == 256) {
            arrayList.add("GEAR_5");
            r2 |= 256;
        }
        if ((r4 & 512) == 512) {
            arrayList.add("GEAR_6");
            r2 |= 512;
        }
        if ((r4 & 1024) == 1024) {
            arrayList.add("GEAR_7");
            r2 |= 1024;
        }
        if ((r4 & 2048) == 2048) {
            arrayList.add("GEAR_8");
            r2 |= 2048;
        }
        if ((r4 & 4096) == 4096) {
            arrayList.add("GEAR_9");
            r2 |= 4096;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
