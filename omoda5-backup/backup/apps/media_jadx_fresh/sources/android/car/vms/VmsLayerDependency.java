package android.car.vms;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@SystemApi
/* loaded from: classes.dex */
public final class VmsLayerDependency implements Parcelable {
    public static final Parcelable.Creator<VmsLayerDependency> CREATOR = new Parcelable.Creator<VmsLayerDependency>() { // from class: android.car.vms.VmsLayerDependency.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsLayerDependency createFromParcel(Parcel parcel) {
            return new VmsLayerDependency(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsLayerDependency[] newArray(int r1) {
            return new VmsLayerDependency[r1];
        }
    };
    private final Set<VmsLayer> mDependency;
    private final VmsLayer mLayer;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VmsLayerDependency(VmsLayer vmsLayer, Set<VmsLayer> set) {
        this.mLayer = (VmsLayer) Preconditions.checkNotNull(vmsLayer, "layer cannot be null");
        this.mDependency = Collections.unmodifiableSet(set);
    }

    public VmsLayerDependency(VmsLayer vmsLayer) {
        this(vmsLayer, (Set<VmsLayer>) Collections.emptySet());
    }

    public VmsLayer getLayer() {
        return this.mLayer;
    }

    public Set<VmsLayer> getDependencies() {
        return this.mDependency;
    }

    public String toString() {
        return "VmsLayerDependency{ Layer: " + this.mLayer + " Dependency: " + this.mDependency + "}";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VmsLayerDependency)) {
            return false;
        }
        VmsLayerDependency vmsLayerDependency = (VmsLayerDependency) obj;
        return Objects.equals(vmsLayerDependency.mLayer, this.mLayer) && vmsLayerDependency.mDependency.equals(this.mDependency);
    }

    public int hashCode() {
        return Objects.hash(this.mLayer, this.mDependency);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeParcelable(this.mLayer, r3);
        parcel.writeParcelableList(new ArrayList(this.mDependency), r3);
    }

    private VmsLayerDependency(Parcel parcel) {
        this.mLayer = (VmsLayer) parcel.readParcelable(VmsLayer.class.getClassLoader());
        ArrayList arrayList = new ArrayList();
        parcel.readParcelableList(arrayList, VmsLayer.class.getClassLoader());
        this.mDependency = Collections.unmodifiableSet(new HashSet(arrayList));
    }
}
