package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleApPowerStateConfigFlag {
    public static final int CONFIG_SUPPORT_TIMER_POWER_ON_FLAG = 2;
    public static final int ENABLE_DEEP_SLEEP_FLAG = 1;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "ENABLE_DEEP_SLEEP_FLAG";
        }
        if (r2 == 2) {
            return "CONFIG_SUPPORT_TIMER_POWER_ON_FLAG";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("ENABLE_DEEP_SLEEP_FLAG");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("CONFIG_SUPPORT_TIMER_POWER_ON_FLAG");
            r2 |= 2;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
