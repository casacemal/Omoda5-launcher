package android.car.vms;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@SystemApi
/* loaded from: classes.dex */
public final class VmsAvailableLayers implements Parcelable {
    public static final Parcelable.Creator<VmsAvailableLayers> CREATOR = new Parcelable.Creator<VmsAvailableLayers>() { // from class: android.car.vms.VmsAvailableLayers.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsAvailableLayers createFromParcel(Parcel parcel) {
            return new VmsAvailableLayers(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsAvailableLayers[] newArray(int r1) {
            return new VmsAvailableLayers[r1];
        }
    };
    private final Set<VmsAssociatedLayer> mAssociatedLayers;
    private final int mSeq;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VmsAvailableLayers(Set<VmsAssociatedLayer> set, int r2) {
        this.mSeq = r2;
        this.mAssociatedLayers = Collections.unmodifiableSet(set);
    }

    public int getSequence() {
        return this.mSeq;
    }

    public Set<VmsAssociatedLayer> getAssociatedLayers() {
        return this.mAssociatedLayers;
    }

    public String toString() {
        return "VmsAvailableLayers{ seq: " + this.mSeq + ", AssociatedLayers: " + this.mAssociatedLayers + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeInt(this.mSeq);
        parcel.writeParcelableList(new ArrayList(this.mAssociatedLayers), r3);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VmsAvailableLayers)) {
            return false;
        }
        VmsAvailableLayers vmsAvailableLayers = (VmsAvailableLayers) obj;
        return Objects.equals(vmsAvailableLayers.mAssociatedLayers, this.mAssociatedLayers) && vmsAvailableLayers.mSeq == this.mSeq;
    }

    private VmsAvailableLayers(Parcel parcel) {
        this.mSeq = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        parcel.readParcelableList(arrayList, VmsAssociatedLayer.class.getClassLoader());
        this.mAssociatedLayers = Collections.unmodifiableSet(new HashSet(arrayList));
    }
}
