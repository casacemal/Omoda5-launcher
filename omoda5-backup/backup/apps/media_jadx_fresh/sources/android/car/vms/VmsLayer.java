package android.car.vms;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;

@SystemApi
/* loaded from: classes.dex */
public final class VmsLayer implements Parcelable {
    public static final Parcelable.Creator<VmsLayer> CREATOR = new Parcelable.Creator<VmsLayer>() { // from class: android.car.vms.VmsLayer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsLayer createFromParcel(Parcel parcel) {
            return new VmsLayer(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsLayer[] newArray(int r1) {
            return new VmsLayer[r1];
        }
    };
    private int mSubtype;
    private int mType;
    private int mVersion;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VmsLayer(int r1, int r2, int r3) {
        this.mType = r1;
        this.mSubtype = r2;
        this.mVersion = r3;
    }

    public int getType() {
        return this.mType;
    }

    public int getSubtype() {
        return this.mSubtype;
    }

    public int getVersion() {
        return this.mVersion;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VmsLayer)) {
            return false;
        }
        VmsLayer vmsLayer = (VmsLayer) obj;
        return Objects.equals(Integer.valueOf(vmsLayer.mType), Integer.valueOf(this.mType)) && Objects.equals(Integer.valueOf(vmsLayer.mSubtype), Integer.valueOf(this.mSubtype)) && Objects.equals(Integer.valueOf(vmsLayer.mVersion), Integer.valueOf(this.mVersion));
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mType), Integer.valueOf(this.mSubtype), Integer.valueOf(this.mVersion));
    }

    public String toString() {
        return "VmsLayer{ Type: " + this.mType + ", Sub type: " + this.mSubtype + ", Version: " + this.mVersion + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mSubtype);
        parcel.writeInt(this.mVersion);
    }

    private VmsLayer(Parcel parcel) {
        readFromParcel(parcel);
    }

    private void readFromParcel(Parcel parcel) {
        this.mType = parcel.readInt();
        this.mSubtype = parcel.readInt();
        this.mVersion = parcel.readInt();
    }
}
