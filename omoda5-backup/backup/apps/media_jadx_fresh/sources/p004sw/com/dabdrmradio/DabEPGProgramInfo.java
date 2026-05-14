package p004sw.com.dabdrmradio;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DabEPGProgramInfo implements Parcelable {
    public static final Parcelable.Creator<DabEPGProgramInfo> CREATOR = new Parcelable.Creator<DabEPGProgramInfo>() { // from class: sw.com.dabdrmradio.DabEPGProgramInfo.1
        @Override // android.os.Parcelable.Creator
        public DabEPGProgramInfo createFromParcel(Parcel parcel) {
            return new DabEPGProgramInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DabEPGProgramInfo[] newArray(int r1) {
            return new DabEPGProgramInfo[r1];
        }
    };
    private int program_duaration;
    private String program_name;
    private DabEPGTime program_start_time;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getEPGProgramName() {
        return this.program_name;
    }

    public void setEPGProgramName(String str) {
        this.program_name = str;
    }

    public DabEPGTime getEPGProgramStartTime() {
        return this.program_start_time;
    }

    public void setEPGProgramStartTime(DabEPGTime dabEPGTime) {
        this.program_start_time = dabEPGTime;
    }

    public int getEPGProgramDuaration() {
        return this.program_duaration;
    }

    public void setEPGProgramDuaration(int r1) {
        this.program_duaration = r1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeString(this.program_name);
        parcel.writeParcelable(this.program_start_time, r3);
        parcel.writeInt(this.program_duaration);
    }

    public DabEPGProgramInfo() {
        this.program_name = "";
    }

    protected DabEPGProgramInfo(Parcel parcel) {
        this.program_name = "";
        this.program_name = parcel.readString();
        this.program_start_time = (DabEPGTime) parcel.readParcelable(DabEPGTime.class.getClassLoader());
        this.program_duaration = parcel.readInt();
    }
}
