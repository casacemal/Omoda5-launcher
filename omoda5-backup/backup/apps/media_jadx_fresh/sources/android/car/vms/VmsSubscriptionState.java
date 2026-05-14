package android.car.vms;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

@SystemApi
/* loaded from: classes.dex */
public final class VmsSubscriptionState implements Parcelable {
    public static final Parcelable.Creator<VmsSubscriptionState> CREATOR = new Parcelable.Creator<VmsSubscriptionState>() { // from class: android.car.vms.VmsSubscriptionState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsSubscriptionState createFromParcel(Parcel parcel) {
            return new VmsSubscriptionState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VmsSubscriptionState[] newArray(int r1) {
            return new VmsSubscriptionState[r1];
        }
    };
    private final Set<VmsLayer> mLayers;
    private final int mSequenceNumber;
    private final Set<VmsAssociatedLayer> mSubscribedLayersFromPublishers;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public VmsSubscriptionState(int r1, Set<VmsLayer> set, Set<VmsAssociatedLayer> set2) {
        this.mSequenceNumber = r1;
        this.mLayers = Collections.unmodifiableSet(set);
        this.mSubscribedLayersFromPublishers = Collections.unmodifiableSet(set2);
    }

    public int getSequenceNumber() {
        return this.mSequenceNumber;
    }

    public Set<VmsLayer> getLayers() {
        return this.mLayers;
    }

    public Set<VmsAssociatedLayer> getAssociatedLayers() {
        return this.mSubscribedLayersFromPublishers;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("sequence number=");
        sb.append(this.mSequenceNumber);
        sb.append("; layers={");
        Iterator<VmsLayer> it = this.mLayers.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        sb.append("}");
        sb.append("; associatedLayers={");
        Iterator<VmsAssociatedLayer> it2 = this.mSubscribedLayersFromPublishers.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            sb.append(",");
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r4) {
        parcel.writeInt(this.mSequenceNumber);
        parcel.writeParcelableList(new ArrayList(this.mLayers), r4);
        parcel.writeParcelableList(new ArrayList(this.mSubscribedLayersFromPublishers), r4);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof VmsSubscriptionState)) {
            return false;
        }
        VmsSubscriptionState vmsSubscriptionState = (VmsSubscriptionState) obj;
        return Objects.equals(Integer.valueOf(vmsSubscriptionState.mSequenceNumber), Integer.valueOf(this.mSequenceNumber)) && vmsSubscriptionState.mLayers.equals(this.mLayers) && vmsSubscriptionState.mSubscribedLayersFromPublishers.equals(this.mSubscribedLayersFromPublishers);
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.mSequenceNumber), this.mLayers, this.mSubscribedLayersFromPublishers);
    }

    private VmsSubscriptionState(Parcel parcel) {
        this.mSequenceNumber = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        parcel.readParcelableList(arrayList, VmsLayer.class.getClassLoader());
        this.mLayers = Collections.unmodifiableSet(new HashSet(arrayList));
        ArrayList arrayList2 = new ArrayList();
        parcel.readParcelableList(arrayList2, VmsAssociatedLayer.class.getClassLoader());
        this.mSubscribedLayersFromPublishers = Collections.unmodifiableSet(new HashSet(arrayList2));
    }
}
