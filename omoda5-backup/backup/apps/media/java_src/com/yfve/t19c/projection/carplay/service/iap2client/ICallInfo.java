package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ICallInfo implements Parcelable {
    public static final Parcelable.Creator<ICallInfo> CREATOR = new Parcelable.Creator<ICallInfo>() { // from class: com.yfve.t19c.projection.carplay.service.iap2client.ICallInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ICallInfo createFromParcel(Parcel parcel) {
            return new ICallInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ICallInfo[] newArray(int r1) {
            return new ICallInfo[r1];
        }
    };
    static final int kCallStsActive = 4;
    static final int kCallStsConnecting = 3;
    static final int kCallStsDisconnected = 0;
    static final int kCallStsDisconnecting = 6;
    static final int kCallStsHeld = 5;
    static final int kCallStsRinging = 2;
    static final int kCallStsSending = 1;
    public int mCallStatus;
    public String mCallUUID;
    public String mCallerLabel;
    public String mCallerName;
    public String mRemoteID;
    public long mStartTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ICallInfo() {
        this.mCallerLabel = "";
        this.mCallerName = "";
        this.mCallUUID = "";
        this.mRemoteID = "";
        this.mCallStatus = 0;
        this.mStartTime = 0L;
    }

    protected ICallInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r4) {
        parcel.writeString(this.mCallerLabel);
        parcel.writeString(this.mCallerName);
        parcel.writeString(this.mCallUUID);
        parcel.writeString(this.mRemoteID);
        parcel.writeInt(this.mCallStatus);
        parcel.writeLong(this.mStartTime);
    }

    public void readFromParcel(Parcel parcel) {
        this.mCallerLabel = parcel.readString();
        this.mCallerName = parcel.readString();
        this.mCallUUID = parcel.readString();
        this.mRemoteID = parcel.readString();
        this.mCallStatus = parcel.readInt();
        this.mStartTime = parcel.readLong();
    }
}
