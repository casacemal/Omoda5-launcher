package android.hardware.automotive.vehicle.V2_0;

import com.chery.common.PageConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehiclePropertyAccess {
    public static final int NONE = 0;
    public static final int READ = 1;
    public static final int READ_WRITE = 3;
    public static final int WRITE = 2;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return PageConstants.ManualBook.PageId.LIST;
        }
        if (r2 == 1) {
            return "READ";
        }
        if (r2 == 2) {
            return "WRITE";
        }
        if (r2 == 3) {
            return "READ_WRITE";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PageConstants.ManualBook.PageId.LIST);
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("READ");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("WRITE");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("READ_WRITE");
            r2 |= 3;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
