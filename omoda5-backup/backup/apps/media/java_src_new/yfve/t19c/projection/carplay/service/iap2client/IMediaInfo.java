package com.yfve.t19c.projection.carplay.service.iap2client;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class IMediaInfo implements Parcelable {
    public static final Parcelable.Creator<IMediaInfo> CREATOR = new Parcelable.Creator<IMediaInfo>() { // from class: com.yfve.t19c.projection.carplay.service.iap2client.IMediaInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IMediaInfo createFromParcel(Parcel parcel) {
            return new IMediaInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IMediaInfo[] newArray(int r1) {
            return new IMediaInfo[r1];
        }
    };
    static final int kWifiSecurityTypeNone = 0;
    static final int kWifiSecurityTypeWEP = 1;
    static final int kWifiSecurityTypeWPA = 2;
    public String mAlbumTitle;
    public String mArtist;
    public int mPlaySts;
    public int mRepeatMode;
    public int mShuffleMode;
    public int mSpeed;
    public String mTitle;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IMediaInfo() {
        this.mTitle = "";
        this.mAlbumTitle = "";
        this.mArtist = "";
        this.mShuffleMode = 0;
        this.mRepeatMode = 0;
        this.mSpeed = 6;
        this.mPlaySts = 0;
    }

    protected IMediaInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r2) {
        parcel.writeString(this.mTitle);
        parcel.writeString(this.mAlbumTitle);
        parcel.writeString(this.mArtist);
        parcel.writeInt(this.mShuffleMode);
        parcel.writeInt(this.mRepeatMode);
        parcel.writeInt(this.mSpeed);
        parcel.writeInt(this.mPlaySts);
    }

    public void readFromParcel(Parcel parcel) {
        this.mTitle = parcel.readString();
        this.mAlbumTitle = parcel.readString();
        this.mArtist = parcel.readString();
        this.mShuffleMode = parcel.readInt();
        this.mRepeatMode = parcel.readInt();
        this.mSpeed = parcel.readInt();
        this.mPlaySts = parcel.readInt();
    }
}
