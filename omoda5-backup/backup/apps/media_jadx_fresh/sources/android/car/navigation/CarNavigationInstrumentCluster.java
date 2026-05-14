package android.car.navigation;

import android.annotation.SystemApi;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@SystemApi
/* loaded from: classes.dex */
public final class CarNavigationInstrumentCluster implements Parcelable {
    public static final int CLUSTER_TYPE_CUSTOM_IMAGES_SUPPORTED = 1;
    public static final int CLUSTER_TYPE_IMAGE_CODES_ONLY = 2;
    public static final Parcelable.Creator<CarNavigationInstrumentCluster> CREATOR = new Parcelable.Creator<CarNavigationInstrumentCluster>() { // from class: android.car.navigation.CarNavigationInstrumentCluster.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarNavigationInstrumentCluster createFromParcel(Parcel parcel) {
            return new CarNavigationInstrumentCluster(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarNavigationInstrumentCluster[] newArray(int r1) {
            return new CarNavigationInstrumentCluster[r1];
        }
    };
    private final Bundle mExtra;
    private final int mImageColorDepthBits;
    private final int mImageHeight;
    private final int mImageWidth;
    private int mMinIntervalMillis;
    private final int mType;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ClusterType {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public static CarNavigationInstrumentCluster createCluster(int r7) {
        return new CarNavigationInstrumentCluster(r7, 2, 0, 0, 0);
    }

    public static CarNavigationInstrumentCluster createCustomImageCluster(int r7, int r8, int r9, int r10) {
        return new CarNavigationInstrumentCluster(r7, 1, r8, r9, r10);
    }

    public int getMinIntervalMillis() {
        return this.mMinIntervalMillis;
    }

    public int getType() {
        return this.mType;
    }

    public int getImageWidth() {
        return this.mImageWidth;
    }

    public int getImageHeight() {
        return this.mImageHeight;
    }

    public Bundle getExtra() {
        return this.mExtra;
    }

    public int getImageColorDepthBits() {
        return this.mImageColorDepthBits;
    }

    public CarNavigationInstrumentCluster(CarNavigationInstrumentCluster carNavigationInstrumentCluster) {
        this(carNavigationInstrumentCluster.mMinIntervalMillis, carNavigationInstrumentCluster.mType, carNavigationInstrumentCluster.mImageWidth, carNavigationInstrumentCluster.mImageHeight, carNavigationInstrumentCluster.mImageColorDepthBits);
    }

    public boolean supportsCustomImages() {
        return this.mType == 1;
    }

    private CarNavigationInstrumentCluster(int r1, int r2, int r3, int r4, int r5) {
        this.mMinIntervalMillis = r1;
        this.mType = r2;
        this.mImageWidth = r3;
        this.mImageHeight = r4;
        this.mImageColorDepthBits = r5;
        this.mExtra = new Bundle();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeInt(this.mMinIntervalMillis);
        parcel.writeInt(this.mType);
        parcel.writeInt(this.mImageWidth);
        parcel.writeInt(this.mImageHeight);
        parcel.writeInt(this.mImageColorDepthBits);
        parcel.writeBundle(this.mExtra);
    }

    private CarNavigationInstrumentCluster(Parcel parcel) {
        this.mMinIntervalMillis = parcel.readInt();
        this.mType = parcel.readInt();
        this.mImageWidth = parcel.readInt();
        this.mImageHeight = parcel.readInt();
        this.mImageColorDepthBits = parcel.readInt();
        this.mExtra = parcel.readBundle(getClass().getClassLoader());
    }

    public String toString() {
        return CarNavigationInstrumentCluster.class.getSimpleName() + "{ minIntervalMillis: " + this.mMinIntervalMillis + ", type: " + this.mType + ", imageWidth: " + this.mImageWidth + ", imageHeight: " + this.mImageHeight + ", imageColourDepthBits: " + this.mImageColorDepthBits + "extra: " + this.mExtra + " }";
    }
}
