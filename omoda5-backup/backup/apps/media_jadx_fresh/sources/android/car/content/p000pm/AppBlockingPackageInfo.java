package android.car.content.p000pm;

import android.annotation.SystemApi;
import android.content.pm.Signature;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

@SystemApi
/* loaded from: classes.dex */
public final class AppBlockingPackageInfo implements Parcelable {
    public static final Parcelable.Creator<AppBlockingPackageInfo> CREATOR = new Parcelable.Creator<AppBlockingPackageInfo>() { // from class: android.car.content.pm.AppBlockingPackageInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppBlockingPackageInfo createFromParcel(Parcel parcel) {
            return new AppBlockingPackageInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppBlockingPackageInfo[] newArray(int r1) {
            return new AppBlockingPackageInfo[r1];
        }
    };
    public static final int FLAG_SYSTEM_APP = 1;
    public static final int FLAG_WHOLE_ACTIVITY = 2;
    public final String[] activities;
    public final int flags;
    public final int maxRevisionCode;
    public final int minRevisionCode;
    public final String packageName;
    public final Signature[] signatures;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ConstructorFlags {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AppBlockingPackageInfo(String str, int r2, int r3, int r4, Signature[] signatureArr, String[] strArr) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException("packageName cannot be null");
        }
        this.packageName = str;
        this.flags = r4;
        this.minRevisionCode = r2;
        this.maxRevisionCode = r3;
        this.signatures = signatureArr;
        this.activities = strArr;
        verify();
    }

    public AppBlockingPackageInfo(Parcel parcel) throws IllegalArgumentException {
        this.packageName = parcel.readString();
        this.flags = parcel.readInt();
        this.minRevisionCode = parcel.readInt();
        this.maxRevisionCode = parcel.readInt();
        this.signatures = (Signature[]) parcel.createTypedArray(Signature.CREATOR);
        this.activities = parcel.createStringArray();
        verify();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r3) {
        parcel.writeString(this.packageName);
        parcel.writeInt(this.flags);
        parcel.writeInt(this.minRevisionCode);
        parcel.writeInt(this.maxRevisionCode);
        parcel.writeTypedArray(this.signatures, 0);
        parcel.writeStringArray(this.activities);
    }

    public void verify() throws IllegalArgumentException {
        if (this.signatures == null && (this.flags & 1) == 0) {
            throw new IllegalArgumentException("Only system package with FLAG_SYSTEM_APP can have null signatures");
        }
    }

    public boolean isActivityCovered(String str) {
        if ((this.flags & 2) != 0) {
            return true;
        }
        String[] strArr = this.activities;
        if (strArr == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int r0 = (((((((Arrays.hashCode(this.activities) + 31) * 31) + this.flags) * 31) + this.maxRevisionCode) * 31) + this.minRevisionCode) * 31;
        String str = this.packageName;
        return ((r0 + (str == null ? 0 : str.hashCode())) * 31) + Arrays.hashCode(this.signatures);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AppBlockingPackageInfo appBlockingPackageInfo = (AppBlockingPackageInfo) obj;
        if (!Arrays.equals(this.activities, appBlockingPackageInfo.activities) || this.flags != appBlockingPackageInfo.flags || this.maxRevisionCode != appBlockingPackageInfo.maxRevisionCode || this.minRevisionCode != appBlockingPackageInfo.minRevisionCode) {
            return false;
        }
        String str = this.packageName;
        if (str == null) {
            if (appBlockingPackageInfo.packageName != null) {
                return false;
            }
        } else if (!str.equals(appBlockingPackageInfo.packageName)) {
            return false;
        }
        return Arrays.equals(this.signatures, appBlockingPackageInfo.signatures);
    }

    public String toString() {
        return "AppBlockingPackageInfo [packageName=" + this.packageName + ", flags=" + this.flags + ", minRevisionCode=" + this.minRevisionCode + ", maxRevisionCode=" + this.maxRevisionCode + ", signatures=" + Arrays.toString(this.signatures) + ", activities=" + Arrays.toString(this.activities) + "]";
    }
}
