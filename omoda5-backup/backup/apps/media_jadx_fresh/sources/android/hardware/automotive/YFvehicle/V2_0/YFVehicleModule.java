package android.hardware.automotive.YFvehicle.V2_0;

import com.chery.common.PageConstants;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YFVehicleModule {
    public static final int AVM_EVENT = 49152;
    public static final int CONFIGURE = 24576;
    public static final int EOL = 20480;
    public static final int HVAC = 4096;
    public static final int NONE = 0;
    public static final int PMS = 28672;
    public static final int VEHICLE_CONDITION = 8192;
    public static final int VEHICLE_SETTINGS = 12288;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return PageConstants.ManualBook.PageId.LIST;
        }
        if (r2 == 4096) {
            return "HVAC";
        }
        if (r2 == 8192) {
            return "VEHICLE_CONDITION";
        }
        if (r2 == 12288) {
            return "VEHICLE_SETTINGS";
        }
        if (r2 == 20480) {
            return "EOL";
        }
        if (r2 == 24576) {
            return "CONFIGURE";
        }
        if (r2 == 28672) {
            return "PMS";
        }
        if (r2 == 49152) {
            return "AVM_EVENT";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PageConstants.ManualBook.PageId.LIST);
        int r2 = 4096;
        if ((r4 & 4096) == 4096) {
            arrayList.add("HVAC");
        } else {
            r2 = 0;
        }
        if ((r4 & 8192) == 8192) {
            arrayList.add("VEHICLE_CONDITION");
            r2 |= 8192;
        }
        if ((r4 & VEHICLE_SETTINGS) == 12288) {
            arrayList.add("VEHICLE_SETTINGS");
            r2 |= VEHICLE_SETTINGS;
        }
        if ((r4 & EOL) == 20480) {
            arrayList.add("EOL");
            r2 |= EOL;
        }
        if ((r4 & CONFIGURE) == 24576) {
            arrayList.add("CONFIGURE");
            r2 |= CONFIGURE;
        }
        if ((r4 & PMS) == 28672) {
            arrayList.add("PMS");
            r2 |= PMS;
        }
        if ((r4 & AVM_EVENT) == 49152) {
            arrayList.add("AVM_EVENT");
            r2 |= AVM_EVENT;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
