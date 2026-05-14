package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IdentifyInfo implements Parcelable {
    public static final Parcelable.Creator<IdentifyInfo> CREATOR = new Parcelable.Creator<IdentifyInfo>() { // from class: com.yfve.t19c.projection.carplay.service.iap2client.IdentifyInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IdentifyInfo createFromParcel(Parcel parcel) {
            return new IdentifyInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IdentifyInfo[] newArray(int r1) {
            return new IdentifyInfo[r1];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
    }

    public IdentifyInfo() {
    }

    protected IdentifyInfo(Parcel parcel) {
        readFromParcel(parcel);
    }
}
