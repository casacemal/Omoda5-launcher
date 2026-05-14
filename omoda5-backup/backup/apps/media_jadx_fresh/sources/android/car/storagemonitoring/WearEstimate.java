package android.car.storagemonitoring;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.JsonWriter;
import androidx.core.os.EnvironmentCompat;
import java.io.IOException;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

@SystemApi
/* loaded from: classes.dex */
public final class WearEstimate implements Parcelable {
    public static final int UNKNOWN = -1;
    public final int typeA;
    public final int typeB;
    public static final WearEstimate UNKNOWN_ESTIMATE = new WearEstimate(-1, -1);
    public static final Parcelable.Creator<WearEstimate> CREATOR = new Parcelable.Creator<WearEstimate>() { // from class: android.car.storagemonitoring.WearEstimate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WearEstimate createFromParcel(Parcel parcel) {
            return new WearEstimate(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public WearEstimate[] newArray(int r1) {
            return new WearEstimate[r1];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private static final int validateWearValue(int r2) {
        if (r2 == -1) {
            return r2;
        }
        if (r2 >= 0 && r2 <= 100) {
            return r2;
        }
        throw new IllegalArgumentException(r2 + " is not a valid wear estimate");
    }

    public WearEstimate(int r1, int r2) {
        this.typeA = validateWearValue(r1);
        this.typeB = validateWearValue(r2);
    }

    public WearEstimate(Parcel parcel) {
        this.typeA = validateWearValue(parcel.readInt());
        this.typeB = validateWearValue(parcel.readInt());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WearEstimate(android.util.JsonReader r7) throws java.io.IOException {
        /*
            r6 = this;
            r6.<init>()
            r7.beginObject()
            r0 = -1
            r1 = r0
            r2 = r1
        L9:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L48
            java.lang.String r3 = r7.nextName()
            int r4 = r3.hashCode()
            r5 = 1
            switch(r4) {
                case -1388170560: goto L26;
                case -1388170559: goto L1c;
                default: goto L1b;
            }
        L1b:
            goto L30
        L1c:
            java.lang.String r4 = "wearEstimateTypeB"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L30
            r3 = r5
            goto L31
        L26:
            java.lang.String r4 = "wearEstimateTypeA"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L30
            r3 = 0
            goto L31
        L30:
            r3 = r0
        L31:
            if (r3 == 0) goto L3f
            if (r3 == r5) goto L36
            goto L9
        L36:
            int r2 = r7.nextInt()
            int r2 = validateWearValue(r2)
            goto L9
        L3f:
            int r1 = r7.nextInt()
            int r1 = validateWearValue(r1)
            goto L9
        L48:
            r7.endObject()
            r6.typeA = r1
            r6.typeB = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.car.storagemonitoring.WearEstimate.<init>(android.util.JsonReader):void");
    }

    public WearEstimate(JSONObject jSONObject) throws JSONException {
        this.typeA = jSONObject.getInt("wearEstimateTypeA");
        this.typeB = jSONObject.getInt("wearEstimateTypeB");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.typeA);
        parcel.writeInt(this.typeB);
    }

    public void writeToJson(JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginObject();
        jsonWriter.name("wearEstimateTypeA").value(this.typeA);
        jsonWriter.name("wearEstimateTypeB").value(this.typeB);
        jsonWriter.endObject();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof WearEstimate)) {
            return false;
        }
        WearEstimate wearEstimate = (WearEstimate) obj;
        return wearEstimate.typeA == this.typeA && wearEstimate.typeB == this.typeB;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.typeA), Integer.valueOf(this.typeB));
    }

    private static final String wearValueToString(int r1) {
        if (r1 == -1) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        return r1 + "%";
    }

    public String toString() {
        return "type A: " + wearValueToString(this.typeA) + ", type B: " + wearValueToString(this.typeB);
    }
}
