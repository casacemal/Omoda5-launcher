package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleArea {
    public static final int DOOR = 100663296;
    public static final int GLOBAL = 16777216;
    public static final int MASK = 251658240;
    public static final int MIRROR = 67108864;
    public static final int SEAT = 83886080;
    public static final int WHEEL = 117440512;
    public static final int WINDOW = 50331648;
    public static final int YFVehicleAreaTire = 134217728;

    public static final String toString(int r2) {
        if (r2 == 16777216) {
            return "GLOBAL";
        }
        if (r2 == 50331648) {
            return "WINDOW";
        }
        if (r2 == 67108864) {
            return "MIRROR";
        }
        if (r2 == 83886080) {
            return "SEAT";
        }
        if (r2 == 100663296) {
            return "DOOR";
        }
        if (r2 == 117440512) {
            return "WHEEL";
        }
        if (r2 == 134217728) {
            return "YFVehicleAreaTire";
        }
        if (r2 == 251658240) {
            return "MASK";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r1 = 16777216;
        if ((r4 & 16777216) == 16777216) {
            arrayList.add("GLOBAL");
        } else {
            r1 = 0;
        }
        if ((r4 & WINDOW) == 50331648) {
            arrayList.add("WINDOW");
            r1 |= WINDOW;
        }
        if ((r4 & MIRROR) == 67108864) {
            arrayList.add("MIRROR");
            r1 |= MIRROR;
        }
        if ((r4 & SEAT) == 83886080) {
            arrayList.add("SEAT");
            r1 |= SEAT;
        }
        if ((r4 & DOOR) == 100663296) {
            arrayList.add("DOOR");
            r1 |= DOOR;
        }
        if ((r4 & WHEEL) == 117440512) {
            arrayList.add("WHEEL");
            r1 |= WHEEL;
        }
        if ((r4 & YFVehicleAreaTire) == 134217728) {
            arrayList.add("YFVehicleAreaTire");
            r1 |= YFVehicleAreaTire;
        }
        if ((r4 & MASK) == 251658240) {
            arrayList.add("MASK");
            r1 |= MASK;
        }
        if (r4 != r1) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r1)));
        }
        return String.join(" | ", arrayList);
    }
}
