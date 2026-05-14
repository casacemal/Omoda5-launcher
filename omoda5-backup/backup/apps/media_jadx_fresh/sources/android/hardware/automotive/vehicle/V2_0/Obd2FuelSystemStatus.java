package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Obd2FuelSystemStatus {
    public static final int CLOSED_LOOP = 2;
    public static final int CLOSED_LOOP_BUT_FEEDBACK_FAULT = 16;
    public static final int OPEN_ENGINE_LOAD_OR_DECELERATION = 4;
    public static final int OPEN_INSUFFICIENT_ENGINE_TEMPERATURE = 1;
    public static final int OPEN_SYSTEM_FAILURE = 8;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "OPEN_INSUFFICIENT_ENGINE_TEMPERATURE";
        }
        if (r2 == 2) {
            return "CLOSED_LOOP";
        }
        if (r2 == 4) {
            return "OPEN_ENGINE_LOAD_OR_DECELERATION";
        }
        if (r2 == 8) {
            return "OPEN_SYSTEM_FAILURE";
        }
        if (r2 == 16) {
            return "CLOSED_LOOP_BUT_FEEDBACK_FAULT";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("OPEN_INSUFFICIENT_ENGINE_TEMPERATURE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("CLOSED_LOOP");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("OPEN_ENGINE_LOAD_OR_DECELERATION");
            r2 |= 4;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("OPEN_SYSTEM_FAILURE");
            r2 |= 8;
        }
        if ((r4 & 16) == 16) {
            arrayList.add("CLOSED_LOOP_BUT_FEEDBACK_FAULT");
            r2 |= 16;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
