package com.yfve.t19c.projection.carplay.proxy;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CarPlayDeviceInfo implements Parcelable {
    public static final Parcelable.Creator<CarPlayDeviceInfo> CREATOR = new Parcelable.Creator<CarPlayDeviceInfo>() { // from class: com.yfve.t19c.projection.carplay.proxy.CarPlayDeviceInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPlayDeviceInfo createFromParcel(Parcel parcel) {
            return new CarPlayDeviceInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPlayDeviceInfo[] newArray(int r1) {
            return new CarPlayDeviceInfo[r1];
        }
    };
    public static final int kAirPlayConnection_Both = 2;
    public static final int kAirPlayConnection_Wired = 0;
    public static final int kAirPlayConnection_Wireless = 1;
    public String mBtMacAddr;
    public int mConnectionType;
    public String mDeviceName;
    public String mSerialNum;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarPlayDeviceInfo() {
        this.mConnectionType = 0;
    }

    public CarPlayDeviceInfo(String str, String str2, String str3, int r4) {
        this.mDeviceName = str;
        this.mBtMacAddr = str2;
        this.mSerialNum = str3;
        this.mConnectionType = r4;
    }

    protected CarPlayDeviceInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeString(this.mDeviceName);
        parcel.writeString(this.mBtMacAddr);
        parcel.writeString(this.mSerialNum);
        parcel.writeInt(this.mConnectionType);
    }

    public void readFromParcel(Parcel parcel) {
        this.mDeviceName = parcel.readString();
        this.mBtMacAddr = parcel.readString();
        this.mSerialNum = parcel.readString();
        this.mConnectionType = parcel.readInt();
    }
}
