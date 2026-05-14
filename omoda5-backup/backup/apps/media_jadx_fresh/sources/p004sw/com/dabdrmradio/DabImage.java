package p004sw.com.dabdrmradio;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DabImage implements Parcelable {
    public static final Parcelable.Creator<DabImage> CREATOR = new Parcelable.Creator<DabImage>() { // from class: sw.com.dabdrmradio.DabImage.1
        @Override // android.os.Parcelable.Creator
        public DabImage createFromParcel(Parcel parcel) {
            return new DabImage(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DabImage[] newArray(int r1) {
            return new DabImage[r1];
        }
    };
    private byte[] imagearray;
    private int size;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] getImagearray() {
        return this.imagearray;
    }

    public void setImagearray(byte[] bArr) {
        this.imagearray = bArr;
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int r1) {
        this.size = r1;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeByteArray(this.imagearray);
        parcel.writeInt(this.size);
    }

    public DabImage() {
    }

    protected DabImage(Parcel parcel) {
        this.imagearray = parcel.createByteArray();
        this.size = parcel.readInt();
    }
}
