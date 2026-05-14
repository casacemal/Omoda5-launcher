package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ConnectionInfo implements Parcelable {
    public static final int CONNECT_STATUS_CONNECTED = 2;
    public static final int CONNECT_STATUS_CONNECTING = 1;
    public static final int CONNECT_STATUS_NONE = 0;
    public static final int CONNECT_TYPE_BT_CLIENT = 3;
    public static final int CONNECT_TYPE_BT_SERVER = 2;
    public static final int CONNECT_TYPE_CARPLAY_SESSION = 4;
    public static final int CONNECT_TYPE_NONE = 0;
    public static final int CONNECT_TYPE_USB_HOST = 1;
    public static final Parcelable.Creator<ConnectionInfo> CREATOR = new Parcelable.Creator<ConnectionInfo>() { // from class: com.yfve.t19c.projection.carplay.service.iap2client.ConnectionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectionInfo createFromParcel(Parcel parcel) {
            return new ConnectionInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ConnectionInfo[] newArray(int r1) {
            return new ConnectionInfo[r1];
        }
    };
    private int status;
    private int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ConnectionInfo() {
        this.type = 0;
        this.status = 0;
    }

    public ConnectionInfo(int r1, int r2) {
        this.type = r1;
        this.status = r2;
    }

    protected ConnectionInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.type);
        parcel.writeInt(this.status);
    }

    public void readFromParcel(Parcel parcel) {
        this.type = parcel.readInt();
        this.status = parcel.readInt();
    }

    public int getType() {
        return this.type;
    }

    public void setType(int r1) {
        this.type = r1;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int r1) {
        this.status = r1;
    }
}
