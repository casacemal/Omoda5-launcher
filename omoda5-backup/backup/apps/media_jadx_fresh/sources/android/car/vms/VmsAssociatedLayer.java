package android.car.vms;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@SystemApi
/* loaded from: classes.dex */
public final class VmsAssociatedLayer implements Parcelable {
    public static final Parcelable.Creator<VmsAssociatedLayer> CREATOR = new Parcelable.Creator<VmsAssociatedLayer>() { // from class: android.car.vms.VmsAssociatedLayer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsAssociatedLayer createFromParcel(Parcel parcel) {
            return new VmsAssociatedLayer(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsAssociatedLayer[] newArray(int r1) {
            return new VmsAssociatedLayer[r1];
        }
    };
    private final VmsLayer mLayer;
    private final Set<Integer> mPublisherIds;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VmsAssociatedLayer(VmsLayer vmsLayer, Set<Integer> set) {
        this.mLayer = (VmsLayer) Preconditions.checkNotNull(vmsLayer, "layer cannot be null");
        this.mPublisherIds = Collections.unmodifiableSet(set);
    }

    public VmsLayer getVmsLayer() {
        return this.mLayer;
    }

    public Set<Integer> getPublisherIds() {
        return this.mPublisherIds;
    }

    public String toString() {
        return "VmsAssociatedLayer{ VmsLayer: " + this.mLayer + ", Publishers: " + this.mPublisherIds + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeParcelable(this.mLayer, r3);
        parcel.writeArray(this.mPublisherIds.toArray());
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VmsAssociatedLayer)) {
            return false;
        }
        VmsAssociatedLayer vmsAssociatedLayer = (VmsAssociatedLayer) obj;
        return Objects.equals(vmsAssociatedLayer.mLayer, this.mLayer) && vmsAssociatedLayer.mPublisherIds.equals(this.mPublisherIds);
    }

    public int hashCode() {
        return Objects.hash(this.mLayer, this.mPublisherIds);
    }

    private VmsAssociatedLayer(Parcel parcel) {
        this.mLayer = (VmsLayer) parcel.readParcelable(VmsLayer.class.getClassLoader());
        Object[] array = parcel.readArray(Integer.class.getClassLoader());
        this.mPublisherIds = Collections.unmodifiableSet(new HashSet(Arrays.asList((Integer[]) Arrays.copyOf(array, array.length, Integer[].class))));
    }
}
