package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleAreaWindow {
    public static final int FRONT_WINDSHIELD = 1;
    public static final int REAR_WINDSHIELD = 2;
    public static final int ROOF_TOP_1 = 65536;
    public static final int ROOF_TOP_2 = 131072;
    public static final int ROW_1_LEFT = 16;
    public static final int ROW_1_RIGHT = 64;
    public static final int ROW_2_LEFT = 256;
    public static final int ROW_2_RIGHT = 1024;
    public static final int ROW_3_LEFT = 4096;
    public static final int ROW_3_RIGHT = 16384;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "FRONT_WINDSHIELD";
        }
        if (r2 == 2) {
            return "REAR_WINDSHIELD";
        }
        if (r2 == 16) {
            return "ROW_1_LEFT";
        }
        if (r2 == 64) {
            return "ROW_1_RIGHT";
        }
        if (r2 == 256) {
            return "ROW_2_LEFT";
        }
        if (r2 == 1024) {
            return "ROW_2_RIGHT";
        }
        if (r2 == 4096) {
            return "ROW_3_LEFT";
        }
        if (r2 == 16384) {
            return "ROW_3_RIGHT";
        }
        if (r2 == 65536) {
            return "ROOF_TOP_1";
        }
        if (r2 == 131072) {
            return "ROOF_TOP_2";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("FRONT_WINDSHIELD");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("REAR_WINDSHIELD");
            r2 |= 2;
        }
        if ((r4 & 16) == 16) {
            arrayList.add("ROW_1_LEFT");
            r2 |= 16;
        }
        if ((r4 & 64) == 64) {
            arrayList.add("ROW_1_RIGHT");
            r2 |= 64;
        }
        if ((r4 & 256) == 256) {
            arrayList.add("ROW_2_LEFT");
            r2 |= 256;
        }
        if ((r4 & 1024) == 1024) {
            arrayList.add("ROW_2_RIGHT");
            r2 |= 1024;
        }
        if ((r4 & 4096) == 4096) {
            arrayList.add("ROW_3_LEFT");
            r2 |= 4096;
        }
        if ((r4 & 16384) == 16384) {
            arrayList.add("ROW_3_RIGHT");
            r2 |= 16384;
        }
        if ((r4 & 65536) == 65536) {
            arrayList.add("ROOF_TOP_1");
            r2 |= 65536;
        }
        if ((r4 & 131072) == 131072) {
            arrayList.add("ROOF_TOP_2");
            r2 |= 131072;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
