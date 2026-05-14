package com.chery.btphone;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PhoneDetail implements Parcelable {
    public static final Parcelable.Creator<PhoneDetail> CREATOR = new Parcelable.Creator<PhoneDetail>() { // from class: com.chery.btphone.PhoneDetail.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneDetail createFromParcel(Parcel parcel) {
            return new PhoneDetail(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PhoneDetail[] newArray(int r1) {
            return new PhoneDetail[r1];
        }
    };
    private long callduration;
    private String name;
    private String number;
    private int state;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PhoneDetail() {
    }

    public PhoneDetail(String str, String str2, int r3, long j) {
        this.name = str;
        this.number = str2;
        this.state = r3;
        this.callduration = j;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String str) {
        this.number = str;
    }

    public int getState() {
        return this.state;
    }

    public void setState(int r1) {
        this.state = r1;
    }

    public long getCallduration() {
        return this.callduration;
    }

    public void setCallduration(long j) {
        this.callduration = j;
    }

    public String toString() {
        return "PhoneDetail{name='" + this.name + "', number='" + this.number + "', state=" + this.state + ", callduration=" + this.callduration + '}';
    }

    protected PhoneDetail(Parcel parcel) {
        this.name = parcel.readString();
        this.number = parcel.readString();
        this.state = parcel.readInt();
        this.callduration = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r4) {
        parcel.writeString(this.name);
        parcel.writeString(this.number);
        parcel.writeInt(this.state);
        parcel.writeLong(this.callduration);
    }
}
