package android.hardware.automotive.YFvehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YFVehicleAreaCamrea {
    public static final int CAMERA_BACK = 3;
    public static final int CAMERA_BACK_WIDE = 4;
    public static final int CAMERA_FRONT = 0;
    public static final int CAMERA_FRONT_WIDE = 1;
    public static final int CAMERA_PANORAMIC = 2;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "CAMERA_FRONT";
        }
        if (r2 == 1) {
            return "CAMERA_FRONT_WIDE";
        }
        if (r2 == 2) {
            return "CAMERA_PANORAMIC";
        }
        if (r2 == 3) {
            return "CAMERA_BACK";
        }
        if (r2 == 4) {
            return "CAMERA_BACK_WIDE";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("CAMERA_FRONT");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("CAMERA_FRONT_WIDE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("CAMERA_PANORAMIC");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("CAMERA_BACK");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("CAMERA_BACK_WIDE");
            r2 |= 4;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
