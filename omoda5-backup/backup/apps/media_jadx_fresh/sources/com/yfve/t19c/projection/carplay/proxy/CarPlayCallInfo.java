package com.yfve.t19c.projection.carplay.proxy;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CarPlayCallInfo implements Parcelable {
    public static final Parcelable.Creator<CarPlayCallInfo> CREATOR = new Parcelable.Creator<CarPlayCallInfo>() { // from class: com.yfve.t19c.projection.carplay.proxy.CarPlayCallInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPlayCallInfo createFromParcel(Parcel parcel) {
            return new CarPlayCallInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPlayCallInfo[] newArray(int r1) {
            return new CarPlayCallInfo[r1];
        }
    };
    public String mAddrBookID;
    public int mCallStatus;
    public String mCallUUID;
    public String mCallerLabel;
    public String mCallerName;
    public int mDirection;
    public int mDisconnectReason;
    public boolean mIsConferenceGroup;
    public String mRemoteID;
    public int mService;
    public long mStartTime;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarPlayCallInfo() {
    }

    public CarPlayCallInfo(String str, String str2, int r3, int r4, String str3, String str4, String str5, int r8, boolean z, int r10, long j) {
        this.mRemoteID = str;
        this.mCallerName = str2;
        this.mCallStatus = r3;
        this.mDirection = r4;
        this.mCallUUID = str3;
        this.mAddrBookID = str4;
        this.mCallerLabel = str5;
        this.mService = r8;
        this.mIsConferenceGroup = z;
        this.mDisconnectReason = r10;
        this.mStartTime = j;
    }

    protected CarPlayCallInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r4) {
        parcel.writeString(this.mRemoteID);
        parcel.writeString(this.mCallerName);
        parcel.writeInt(this.mCallStatus);
        parcel.writeInt(this.mDirection);
        parcel.writeString(this.mCallUUID);
        parcel.writeString(this.mAddrBookID);
        parcel.writeString(this.mCallerLabel);
        parcel.writeInt(this.mService);
        parcel.writeBoolean(this.mIsConferenceGroup);
        parcel.writeInt(this.mDisconnectReason);
        parcel.writeLong(this.mStartTime);
    }

    public void readFromParcel(Parcel parcel) {
        this.mRemoteID = parcel.readString();
        this.mCallerName = parcel.readString();
        this.mCallStatus = parcel.readInt();
        this.mDirection = parcel.readInt();
        this.mCallUUID = parcel.readString();
        this.mAddrBookID = parcel.readString();
        this.mCallerLabel = parcel.readString();
        this.mService = parcel.readInt();
        this.mIsConferenceGroup = parcel.readBoolean();
        this.mDisconnectReason = parcel.readInt();
        this.mStartTime = parcel.readLong();
    }
}
