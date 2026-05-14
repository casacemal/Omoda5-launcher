package android.hardware.automotive.vehicle.V2_0;

import com.chery.common.PageConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleTurnSignal {
    public static final int LEFT = 2;
    public static final int NONE = 0;
    public static final int RIGHT = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return PageConstants.ManualBook.PageId.LIST;
        }
        if (r2 == 1) {
            return "RIGHT";
        }
        if (r2 == 2) {
            return "LEFT";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PageConstants.ManualBook.PageId.LIST);
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("RIGHT");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("LEFT");
            r2 |= 2;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
