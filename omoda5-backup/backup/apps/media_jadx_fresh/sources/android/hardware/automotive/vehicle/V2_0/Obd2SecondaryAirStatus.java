package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Obd2SecondaryAirStatus {
    public static final int DOWNSTREAM_OF_CATALYCIC_CONVERTER = 2;
    public static final int FROM_OUTSIDE_OR_OFF = 4;
    public static final int PUMP_ON_FOR_DIAGNOSTICS = 8;
    public static final int UPSTREAM = 1;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "UPSTREAM";
        }
        if (r2 == 2) {
            return "DOWNSTREAM_OF_CATALYCIC_CONVERTER";
        }
        if (r2 == 4) {
            return "FROM_OUTSIDE_OR_OFF";
        }
        if (r2 == 8) {
            return "PUMP_ON_FOR_DIAGNOSTICS";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("UPSTREAM");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("DOWNSTREAM_OF_CATALYCIC_CONVERTER");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("FROM_OUTSIDE_OR_OFF");
            r2 |= 4;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("PUMP_ON_FOR_DIAGNOSTICS");
            r2 |= 8;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
