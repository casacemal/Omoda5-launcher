package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class StatusCode {
    public static final int ACCESS_DENIED = 4;
    public static final int INTERNAL_ERROR = 5;
    public static final int INVALID_ARG = 2;
    public static final int NOT_AVAILABLE = 3;

    /* renamed from: OK */
    public static final int f3OK = 0;
    public static final int TRY_AGAIN = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "OK";
        }
        if (r2 == 1) {
            return "TRY_AGAIN";
        }
        if (r2 == 2) {
            return "INVALID_ARG";
        }
        if (r2 == 3) {
            return "NOT_AVAILABLE";
        }
        if (r2 == 4) {
            return "ACCESS_DENIED";
        }
        if (r2 == 5) {
            return "INTERNAL_ERROR";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("OK");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("TRY_AGAIN");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("INVALID_ARG");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("NOT_AVAILABLE");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("ACCESS_DENIED");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("INTERNAL_ERROR");
            r2 |= 5;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
