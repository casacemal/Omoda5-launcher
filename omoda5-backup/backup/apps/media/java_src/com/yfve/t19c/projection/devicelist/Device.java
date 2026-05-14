package com.yfve.t19c.projection.devicelist;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class Device implements Parcelable {
    public static final Parcelable.Creator<Device> CREATOR = new Parcelable.Creator<Device>() { // from class: com.yfve.t19c.projection.devicelist.Device.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Device createFromParcel(Parcel parcel) {
            return new Device(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Device[] newArray(int r1) {
            return new Device[r1];
        }
    };
    private boolean available;
    private String mac;
    private String name;
    private String serial;
    private int type;
    private boolean usbAA;
    private boolean usbCP;
    private boolean wirelessAA;
    private boolean wirelessCP;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Device() {
    }

    public Device(int r1, String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.type = r1;
        this.name = str;
        this.serial = str2;
        this.mac = str3;
        this.usbAA = z;
        this.wirelessAA = z2;
        this.usbCP = z3;
        this.wirelessCP = z4;
        this.available = z5;
    }

    public Device(Parcel parcel) {
        this.type = parcel.readInt();
        this.name = parcel.readString();
        this.serial = parcel.readString();
        this.mac = parcel.readString();
        this.usbAA = parcel.readByte() != 0;
        this.wirelessAA = parcel.readByte() != 0;
        this.usbCP = parcel.readByte() != 0;
        this.wirelessCP = parcel.readByte() != 0;
        this.available = parcel.readByte() != 0;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int r1) {
        this.type = r1;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getSerial() {
        return this.serial;
    }

    public void setSerial(String str) {
        this.serial = str;
    }

    public String getMac() {
        return this.mac;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public boolean isUsbAA() {
        return this.usbAA;
    }

    public void setUsbAA(boolean z) {
        this.usbAA = z;
    }

    public boolean isWirelessAA() {
        return this.wirelessAA;
    }

    public void setWirelessAA(boolean z) {
        this.wirelessAA = z;
    }

    public boolean isUsbCP() {
        return this.usbCP;
    }

    public void setUsbCP(boolean z) {
        this.usbCP = z;
    }

    public boolean isWirelessCP() {
        return this.wirelessCP;
    }

    public void setWirelessCP(boolean z) {
        this.wirelessCP = z;
    }

    public boolean isAvailable() {
        return this.available;
    }

    public void setAvailable(boolean z) {
        this.available = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.type);
        parcel.writeString(this.name);
        parcel.writeString(this.serial);
        parcel.writeString(this.mac);
        parcel.writeByte(this.usbAA ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.wirelessAA ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.usbCP ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.wirelessCP ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.available ? (byte) 1 : (byte) 0);
    }

    public String toString() {
        return "Device{type=" + this.type + ", name='" + this.name + "', serial='" + this.serial + "', mac='" + this.mac + "', usbAA=" + this.usbAA + ", wirelessAA=" + this.wirelessAA + ", usbCP=" + this.usbCP + ", wirelessCP=" + this.wirelessCP + ", available=" + this.available + '}';
    }
}
