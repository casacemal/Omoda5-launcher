package com.yfve.t19c.projection.carplay.service.cpclient;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IGraphicBuffer implements Parcelable {
    public static final Parcelable.Creator<IGraphicBuffer> CREATOR = new Parcelable.Creator<IGraphicBuffer>() { // from class: com.yfve.t19c.projection.carplay.service.cpclient.IGraphicBuffer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IGraphicBuffer createFromParcel(Parcel parcel) {
            return new IGraphicBuffer(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IGraphicBuffer[] newArray(int r1) {
            return new IGraphicBuffer[r1];
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

    public IGraphicBuffer() {
    }

    protected IGraphicBuffer(Parcel parcel) {
        readFromParcel(parcel);
    }
}
