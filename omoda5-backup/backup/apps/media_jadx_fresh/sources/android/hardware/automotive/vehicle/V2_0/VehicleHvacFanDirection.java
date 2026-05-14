package android.hardware.automotive.vehicle.V2_0;

import com.chery.libvr.bean.params.ParamsType;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleHvacFanDirection {
    public static final int DEFROST = 4;
    public static final int FACE = 1;
    public static final int FLOOR = 2;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return ParamsType.AcWindDirection.FACE;
        }
        if (r2 == 2) {
            return "FLOOR";
        }
        if (r2 == 4) {
            return ParamsType.AcCheckState.DEFROST;
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add(ParamsType.AcWindDirection.FACE);
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("FLOOR");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add(ParamsType.AcCheckState.DEFROST);
            r2 |= 4;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
