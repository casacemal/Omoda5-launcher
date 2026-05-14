package android.hardware.automotive.vehicle.V2_0;

import com.chery.turbodog.TurboBroadcastValue;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VmsMessageType {
    public static final int AVAILABILITY_CHANGE = 9;
    public static final int AVAILABILITY_REQUEST = 6;
    public static final int AVAILABILITY_RESPONSE = 8;
    public static final int DATA = 12;
    public static final int LAST_VMS_MESSAGE_TYPE = 17;
    public static final int OFFERING = 5;
    public static final int PUBLISHER_ID_REQUEST = 13;
    public static final int PUBLISHER_ID_RESPONSE = 14;
    public static final int PUBLISHER_INFORMATION_REQUEST = 15;
    public static final int PUBLISHER_INFORMATION_RESPONSE = 16;
    public static final int START_SESSION = 17;
    public static final int SUBSCRIBE = 1;
    public static final int SUBSCRIBE_TO_PUBLISHER = 2;
    public static final int SUBSCRIPTIONS_CHANGE = 11;
    public static final int SUBSCRIPTIONS_REQUEST = 7;
    public static final int SUBSCRIPTIONS_RESPONSE = 10;
    public static final int UNSUBSCRIBE = 3;
    public static final int UNSUBSCRIBE_TO_PUBLISHER = 4;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "SUBSCRIBE";
        }
        if (r2 == 2) {
            return "SUBSCRIBE_TO_PUBLISHER";
        }
        if (r2 == 3) {
            return "UNSUBSCRIBE";
        }
        if (r2 == 4) {
            return "UNSUBSCRIBE_TO_PUBLISHER";
        }
        if (r2 == 5) {
            return "OFFERING";
        }
        if (r2 == 6) {
            return "AVAILABILITY_REQUEST";
        }
        if (r2 == 7) {
            return "SUBSCRIPTIONS_REQUEST";
        }
        if (r2 == 8) {
            return "AVAILABILITY_RESPONSE";
        }
        if (r2 == 9) {
            return "AVAILABILITY_CHANGE";
        }
        if (r2 == 10) {
            return "SUBSCRIPTIONS_RESPONSE";
        }
        if (r2 == 11) {
            return "SUBSCRIPTIONS_CHANGE";
        }
        if (r2 == 12) {
            return TurboBroadcastValue.DATA;
        }
        if (r2 == 13) {
            return "PUBLISHER_ID_REQUEST";
        }
        if (r2 == 14) {
            return "PUBLISHER_ID_RESPONSE";
        }
        if (r2 == 15) {
            return "PUBLISHER_INFORMATION_REQUEST";
        }
        if (r2 == 16) {
            return "PUBLISHER_INFORMATION_RESPONSE";
        }
        if (r2 == 17) {
            return "START_SESSION";
        }
        if (r2 == 17) {
            return "LAST_VMS_MESSAGE_TYPE";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r5) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r5 & 1) == 1) {
            arrayList.add("SUBSCRIBE");
        } else {
            r2 = 0;
        }
        if ((r5 & 2) == 2) {
            arrayList.add("SUBSCRIBE_TO_PUBLISHER");
            r2 |= 2;
        }
        if ((r5 & 3) == 3) {
            arrayList.add("UNSUBSCRIBE");
            r2 |= 3;
        }
        if ((r5 & 4) == 4) {
            arrayList.add("UNSUBSCRIBE_TO_PUBLISHER");
            r2 |= 4;
        }
        if ((r5 & 5) == 5) {
            arrayList.add("OFFERING");
            r2 |= 5;
        }
        if ((r5 & 6) == 6) {
            arrayList.add("AVAILABILITY_REQUEST");
            r2 |= 6;
        }
        if ((r5 & 7) == 7) {
            arrayList.add("SUBSCRIPTIONS_REQUEST");
            r2 |= 7;
        }
        if ((r5 & 8) == 8) {
            arrayList.add("AVAILABILITY_RESPONSE");
            r2 |= 8;
        }
        if ((r5 & 9) == 9) {
            arrayList.add("AVAILABILITY_CHANGE");
            r2 |= 9;
        }
        if ((r5 & 10) == 10) {
            arrayList.add("SUBSCRIPTIONS_RESPONSE");
            r2 |= 10;
        }
        if ((r5 & 11) == 11) {
            arrayList.add("SUBSCRIPTIONS_CHANGE");
            r2 |= 11;
        }
        if ((r5 & 12) == 12) {
            arrayList.add(TurboBroadcastValue.DATA);
            r2 |= 12;
        }
        if ((r5 & 13) == 13) {
            arrayList.add("PUBLISHER_ID_REQUEST");
            r2 |= 13;
        }
        if ((r5 & 14) == 14) {
            arrayList.add("PUBLISHER_ID_RESPONSE");
            r2 |= 14;
        }
        if ((r5 & 15) == 15) {
            arrayList.add("PUBLISHER_INFORMATION_REQUEST");
            r2 |= 15;
        }
        if ((r5 & 16) == 16) {
            arrayList.add("PUBLISHER_INFORMATION_RESPONSE");
            r2 |= 16;
        }
        int r1 = r5 & 17;
        if (r1 == 17) {
            arrayList.add("START_SESSION");
            r2 |= 17;
        }
        if (r1 == 17) {
            arrayList.add("LAST_VMS_MESSAGE_TYPE");
            r2 |= 17;
        }
        if (r5 != r2) {
            arrayList.add("0x" + Integer.toHexString(r5 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
