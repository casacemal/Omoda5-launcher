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
public final class VmsLayersOffering implements Parcelable {
    public static final Parcelable.Creator<VmsLayersOffering> CREATOR = new Parcelable.Creator<VmsLayersOffering>() { // from class: android.car.vms.VmsLayersOffering.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsLayersOffering createFromParcel(Parcel parcel) {
            return new VmsLayersOffering(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsLayersOffering[] newArray(int r1) {
            return new VmsLayersOffering[r1];
        }
    };
    private final Set<VmsLayerDependency> mDependencies;
    private final int mPublisherId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VmsLayersOffering(Set<VmsLayerDependency> set, int r2) {
        this.mDependencies = Collections.unmodifiableSet(set);
        this.mPublisherId = r2;
    }

    public Set<VmsLayerDependency> getDependencies() {
        return this.mDependencies;
    }

    public int getPublisherId() {
        return this.mPublisherId;
    }

    public String toString() {
        return "VmsLayersOffering{ Publisher: " + this.mPublisherId + " Dependencies: " + this.mDependencies + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r4) {
        parcel.writeParcelableList(new ArrayList(this.mDependencies), r4);
        parcel.writeInt(this.mPublisherId);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VmsLayersOffering)) {
            return false;
        }
        VmsLayersOffering vmsLayersOffering = (VmsLayersOffering) obj;
        return Objects.equals(Integer.valueOf(vmsLayersOffering.mPublisherId), Integer.valueOf(this.mPublisherId)) && vmsLayersOffering.mDependencies.equals(this.mDependencies);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mPublisherId), this.mDependencies);
    }

    private VmsLayersOffering(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readParcelableList(arrayList, VmsLayerDependency.class.getClassLoader());
        this.mDependencies = Collections.unmodifiableSet(new HashSet(arrayList));
        this.mPublisherId = parcel.readInt();
    }
}
