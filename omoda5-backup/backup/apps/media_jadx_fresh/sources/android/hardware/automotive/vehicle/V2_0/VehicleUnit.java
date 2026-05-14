package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleUnit {
    public static final int AMPERE_HOURS = 100;
    public static final int BAR = 114;
    public static final int CELSIUS = 48;
    public static final int DEGREES = 128;
    public static final int FAHRENHEIT = 49;
    public static final int GALLON = 66;
    public static final int HERTZ = 3;
    public static final int IMPERIAL_GALLON = 67;
    public static final int KELVIN = 50;
    public static final int KILOMETER = 35;
    public static final int KILOMETERS_PER_HOUR = 145;
    public static final int KILOPASCAL = 112;
    public static final int KILOWATT_HOUR = 101;
    public static final int LITER = 65;
    public static final int METER = 33;
    public static final int METER_PER_SEC = 1;
    public static final int MILE = 36;
    public static final int MILES_PER_HOUR = 144;
    public static final int MILLIAMPERE = 97;
    public static final int MILLILITER = 64;
    public static final int MILLIMETER = 32;
    public static final int MILLIVOLT = 98;
    public static final int MILLIWATTS = 99;
    public static final int NANO_SECS = 80;
    public static final int PERCENTILE = 16;
    public static final int PSI = 113;
    public static final int RPM = 2;
    public static final int SECS = 83;
    public static final int SHOULD_NOT_USE = 0;
    public static final int US_GALLON = 66;
    public static final int WATT_HOUR = 96;
    public static final int YEAR = 89;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "SHOULD_NOT_USE";
        }
        if (r2 == 1) {
            return "METER_PER_SEC";
        }
        if (r2 == 2) {
            return "RPM";
        }
        if (r2 == 3) {
            return "HERTZ";
        }
        if (r2 == 16) {
            return "PERCENTILE";
        }
        if (r2 == 32) {
            return "MILLIMETER";
        }
        if (r2 == 33) {
            return "METER";
        }
        if (r2 == 35) {
            return "KILOMETER";
        }
        if (r2 == 36) {
            return "MILE";
        }
        if (r2 == 48) {
            return "CELSIUS";
        }
        if (r2 == 49) {
            return "FAHRENHEIT";
        }
        if (r2 == 50) {
            return "KELVIN";
        }
        if (r2 == 64) {
            return "MILLILITER";
        }
        if (r2 == 65) {
            return "LITER";
        }
        if (r2 == 66) {
            return "GALLON";
        }
        if (r2 == 66) {
            return "US_GALLON";
        }
        if (r2 == 67) {
            return "IMPERIAL_GALLON";
        }
        if (r2 == 80) {
            return "NANO_SECS";
        }
        if (r2 == 83) {
            return "SECS";
        }
        if (r2 == 89) {
            return "YEAR";
        }
        if (r2 == 96) {
            return "WATT_HOUR";
        }
        if (r2 == 97) {
            return "MILLIAMPERE";
        }
        if (r2 == 98) {
            return "MILLIVOLT";
        }
        if (r2 == 99) {
            return "MILLIWATTS";
        }
        if (r2 == 100) {
            return "AMPERE_HOURS";
        }
        if (r2 == 101) {
            return "KILOWATT_HOUR";
        }
        if (r2 == 112) {
            return "KILOPASCAL";
        }
        if (r2 == 113) {
            return "PSI";
        }
        if (r2 == 114) {
            return "BAR";
        }
        if (r2 == 128) {
            return "DEGREES";
        }
        if (r2 == 144) {
            return "MILES_PER_HOUR";
        }
        if (r2 == 145) {
            return "KILOMETERS_PER_HOUR";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("SHOULD_NOT_USE");
        int r2 = 1;
        if ((r5 & 1) == 1) {
            arrayList.add("METER_PER_SEC");
        } else {
            r2 = 0;
        }
        if ((r5 & 2) == 2) {
            arrayList.add("RPM");
            r2 |= 2;
        }
        if ((r5 & 3) == 3) {
            arrayList.add("HERTZ");
            r2 |= 3;
        }
        if ((r5 & 16) == 16) {
            arrayList.add("PERCENTILE");
            r2 |= 16;
        }
        if ((r5 & 32) == 32) {
            arrayList.add("MILLIMETER");
            r2 |= 32;
        }
        if ((r5 & 33) == 33) {
            arrayList.add("METER");
            r2 |= 33;
        }
        if ((r5 & 35) == 35) {
            arrayList.add("KILOMETER");
            r2 |= 35;
        }
        if ((r5 & 36) == 36) {
            arrayList.add("MILE");
            r2 |= 36;
        }
        if ((r5 & 48) == 48) {
            arrayList.add("CELSIUS");
            r2 |= 48;
        }
        if ((r5 & 49) == 49) {
            arrayList.add("FAHRENHEIT");
            r2 |= 49;
        }
        if ((r5 & 50) == 50) {
            arrayList.add("KELVIN");
            r2 |= 50;
        }
        if ((r5 & 64) == 64) {
            arrayList.add("MILLILITER");
            r2 |= 64;
        }
        if ((r5 & 65) == 65) {
            arrayList.add("LITER");
            r2 |= 65;
        }
        int r1 = r5 & 66;
        if (r1 == 66) {
            arrayList.add("GALLON");
            r2 |= 66;
        }
        if (r1 == 66) {
            arrayList.add("US_GALLON");
            r2 |= 66;
        }
        if ((r5 & 67) == 67) {
            arrayList.add("IMPERIAL_GALLON");
            r2 |= 67;
        }
        if ((r5 & 80) == 80) {
            arrayList.add("NANO_SECS");
            r2 |= 80;
        }
        if ((r5 & 83) == 83) {
            arrayList.add("SECS");
            r2 |= 83;
        }
        if ((r5 & 89) == 89) {
            arrayList.add("YEAR");
            r2 |= 89;
        }
        if ((r5 & 96) == 96) {
            arrayList.add("WATT_HOUR");
            r2 |= 96;
        }
        if ((r5 & 97) == 97) {
            arrayList.add("MILLIAMPERE");
            r2 |= 97;
        }
        if ((r5 & 98) == 98) {
            arrayList.add("MILLIVOLT");
            r2 |= 98;
        }
        if ((r5 & 99) == 99) {
            arrayList.add("MILLIWATTS");
            r2 |= 99;
        }
        if ((r5 & 100) == 100) {
            arrayList.add("AMPERE_HOURS");
            r2 |= 100;
        }
        if ((r5 & 101) == 101) {
            arrayList.add("KILOWATT_HOUR");
            r2 |= 101;
        }
        if ((r5 & 112) == 112) {
            arrayList.add("KILOPASCAL");
            r2 |= 112;
        }
        if ((r5 & 113) == 113) {
            arrayList.add("PSI");
            r2 |= 113;
        }
        if ((r5 & 114) == 114) {
            arrayList.add("BAR");
            r2 |= 114;
        }
        if ((r5 & 128) == 128) {
            arrayList.add("DEGREES");
            r2 |= 128;
        }
        if ((r5 & 144) == 144) {
            arrayList.add("MILES_PER_HOUR");
            r2 |= 144;
        }
        if ((r5 & 145) == 145) {
            arrayList.add("KILOMETERS_PER_HOUR");
            r2 |= 145;
        }
        if (r5 != r2) {
            arrayList.add("0x" + Integer.toHexString(r5 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
