package p004sw.com.dabdrmradio;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DabEPGTime implements Parcelable {
    public static final Parcelable.Creator<DabEPGTime> CREATOR = new Parcelable.Creator<DabEPGTime>() { // from class: sw.com.dabdrmradio.DabEPGTime.1
        @Override // android.os.Parcelable.Creator
        public DabEPGTime createFromParcel(Parcel parcel) {
            return new DabEPGTime(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DabEPGTime[] newArray(int r1) {
            return new DabEPGTime[r1];
        }
    };
    private byte day;
    private byte hour;
    private byte minute;
    private byte month;
    private byte second;
    private int year;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getEPGTimeYear() {
        return this.year;
    }

    public void setEPGTimeYear(int r1) {
        this.year = r1;
    }

    public byte getEPGTimeMonth() {
        return this.month;
    }

    public void setEPGTimeMonth(byte b) {
        this.month = b;
    }

    public byte getEPGTimeDay() {
        return this.day;
    }

    public void setEPGTimeDay(byte b) {
        this.day = b;
    }

    public byte getEPGTimeHour() {
        return this.hour;
    }

    public void setEPGTimeHour(byte b) {
        this.hour = b;
    }

    public byte getEPGTimeMinute() {
        return this.minute;
    }

    public void setEPGTimeMinute(byte b) {
        this.minute = b;
    }

    public byte getEPGTimeSecond() {
        return this.second;
    }

    public void setEPGTimeSecond(byte b) {
        this.second = b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.year);
        parcel.writeByte(this.month);
        parcel.writeByte(this.day);
        parcel.writeByte(this.hour);
        parcel.writeByte(this.minute);
        parcel.writeByte(this.second);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DabEPGTime)) {
            DabEPGTime dabEPGTime = (DabEPGTime) obj;
            return this.year == dabEPGTime.year && this.month == dabEPGTime.month && this.day == dabEPGTime.day && this.hour == dabEPGTime.hour && this.minute == dabEPGTime.minute && this.second == dabEPGTime.second;
        }
        return super.equals(obj);
    }

    public DabEPGTime() {
        this.year = 2022;
        this.month = (byte) 4;
        this.day = (byte) 29;
        this.hour = (byte) 14;
        this.minute = (byte) 53;
        this.second = (byte) 0;
    }

    protected DabEPGTime(Parcel parcel) {
        this.year = 2022;
        this.month = (byte) 4;
        this.day = (byte) 29;
        this.hour = (byte) 14;
        this.minute = (byte) 53;
        this.second = (byte) 0;
        this.year = parcel.readInt();
        this.month = parcel.readByte();
        this.day = parcel.readByte();
        this.hour = parcel.readByte();
        this.minute = parcel.readByte();
        this.second = parcel.readByte();
    }
}
