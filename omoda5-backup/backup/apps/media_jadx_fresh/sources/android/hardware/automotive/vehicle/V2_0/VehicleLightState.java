package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleLightState {
    public static final int DAYTIME_RUNNING = 2;
    public static final int OFF = 0;

    /* renamed from: ON */
    public static final int f7ON = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "OFF";
        }
        if (r2 == 1) {
            return "ON";
        }
        if (r2 == 2) {
            return "DAYTIME_RUNNING";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("OFF");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("ON");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("DAYTIME_RUNNING");
            r2 |= 2;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
