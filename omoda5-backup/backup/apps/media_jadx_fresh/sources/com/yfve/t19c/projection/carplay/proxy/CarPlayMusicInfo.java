package com.yfve.t19c.projection.carplay.proxy;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CarPlayMusicInfo implements Parcelable {
    public static final Parcelable.Creator<CarPlayMusicInfo> CREATOR = new Parcelable.Creator<CarPlayMusicInfo>() { // from class: com.yfve.t19c.projection.carplay.proxy.CarPlayMusicInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPlayMusicInfo createFromParcel(Parcel parcel) {
            return new CarPlayMusicInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarPlayMusicInfo[] newArray(int r1) {
            return new CarPlayMusicInfo[r1];
        }
    };
    public MediaItemAttributes mcMediaItemAttributes = new MediaItemAttributes();
    public PlaybackAttributes mcPlaybackAttributes = new PlaybackAttributes();

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public class MediaItemAttributes {
        public boolean mbMediaItemIsBanSupported;
        public boolean mbMediaItemIsBanned;
        public boolean mbMediaItemIsLikeSupported;
        public boolean mbMediaItemIsLiked;
        public boolean mbMediaItemIsResidentOnDevice;
        public int meMediaItemMediaType;
        public long mlMediaItemAlbumArtistPersistentIdentifier;
        public long mlMediaItemAlbumPersistentIdentifier;
        public long mlMediaItemArtistPersistentIdentifier;
        public long mlMediaItemComposerPersistentIdentifier;
        public long mlMediaItemGenrePersistentIdentifier;
        public long mlMediaItemPersistentIdentifier;
        public long mlMediaItemPlaybackDurationInMilliseconds;
        public int mnMediaItemAlbumDiscCount;
        public int mnMediaItemAlbumDiscNumber;
        public int mnMediaItemAlbumTrackCount;
        public int mnMediaItemAlbumTrackNumber;
        public int mnMediaItemArtworkFileTransferIdentifier;
        public int mnMediaItemChapterCount;
        public String msMediaItemAlbumArtist;
        public String msMediaItemAlbumTitle;
        public String msMediaItemArtist;
        public String msMediaItemComposer;
        public String msMediaItemGenre;
        public String msMediaItemRating;
        public String msMediaItemTitle;

        public MediaItemAttributes() {
        }
    }

    public class PlaybackAttributes {
        public boolean mbPlaybackAppleMusicRadioAd;
        public boolean mbPlaybackSetElapsedTimeAvailable;
        public int mePlaybackRepeatMode;
        public int mePlaybackShuffleMode;
        public int mePlaybackStatus;
        public long mlPlaybackAppleMusicRadioStationMediaPlaylistID;
        public long mlPlaybackElapsedTimeInMilliseconds;
        public int mnPlaybackQueueChapterIndex;
        public int mnPlaybackQueueCount;
        public int mnPlaybackQueueIndex;
        public int mnPlaybackSpeed;
        public String msPlaybackAppBundleID;
        public String msPlaybackAppName;
        public String msPlaybackAppleMusicRadioStationName;
        public String msPlaybackMediaLibraryUniqueIdentifier;

        public PlaybackAttributes() {
        }
    }

    public CarPlayMusicInfo() {
    }

    protected CarPlayMusicInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int r4) {
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemPersistentIdentifier);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemTitle);
        parcel.writeInt(this.mcMediaItemAttributes.meMediaItemMediaType);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemRating);
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemPlaybackDurationInMilliseconds);
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemAlbumPersistentIdentifier);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemAlbumTitle);
        parcel.writeInt(this.mcMediaItemAttributes.mnMediaItemAlbumTrackNumber);
        parcel.writeInt(this.mcMediaItemAttributes.mnMediaItemAlbumTrackCount);
        parcel.writeInt(this.mcMediaItemAttributes.mnMediaItemAlbumDiscNumber);
        parcel.writeInt(this.mcMediaItemAttributes.mnMediaItemAlbumDiscCount);
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemArtistPersistentIdentifier);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemArtist);
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemAlbumArtistPersistentIdentifier);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemAlbumArtist);
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemGenrePersistentIdentifier);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemGenre);
        parcel.writeLong(this.mcMediaItemAttributes.mlMediaItemComposerPersistentIdentifier);
        parcel.writeString(this.mcMediaItemAttributes.msMediaItemComposer);
        parcel.writeBoolean(this.mcMediaItemAttributes.mbMediaItemIsLikeSupported);
        parcel.writeBoolean(this.mcMediaItemAttributes.mbMediaItemIsBanSupported);
        parcel.writeBoolean(this.mcMediaItemAttributes.mbMediaItemIsLiked);
        parcel.writeBoolean(this.mcMediaItemAttributes.mbMediaItemIsBanned);
        parcel.writeBoolean(this.mcMediaItemAttributes.mbMediaItemIsResidentOnDevice);
        parcel.writeInt(this.mcMediaItemAttributes.mnMediaItemArtworkFileTransferIdentifier);
        parcel.writeInt(this.mcMediaItemAttributes.mnMediaItemChapterCount);
        parcel.writeInt(this.mcPlaybackAttributes.mePlaybackStatus);
        parcel.writeLong(this.mcPlaybackAttributes.mlPlaybackElapsedTimeInMilliseconds);
        parcel.writeInt(this.mcPlaybackAttributes.mnPlaybackQueueIndex);
        parcel.writeInt(this.mcPlaybackAttributes.mnPlaybackQueueCount);
        parcel.writeInt(this.mcPlaybackAttributes.mnPlaybackQueueChapterIndex);
        parcel.writeInt(this.mcPlaybackAttributes.mePlaybackShuffleMode);
        parcel.writeInt(this.mcPlaybackAttributes.mePlaybackRepeatMode);
        parcel.writeString(this.mcPlaybackAttributes.msPlaybackAppName);
        parcel.writeString(this.mcPlaybackAttributes.msPlaybackMediaLibraryUniqueIdentifier);
        parcel.writeBoolean(this.mcPlaybackAttributes.mbPlaybackAppleMusicRadioAd);
        parcel.writeString(this.mcPlaybackAttributes.msPlaybackAppleMusicRadioStationName);
        parcel.writeInt(this.mcPlaybackAttributes.mnPlaybackSpeed);
        parcel.writeBoolean(this.mcPlaybackAttributes.mbPlaybackSetElapsedTimeAvailable);
        parcel.writeLong(this.mcPlaybackAttributes.mlPlaybackAppleMusicRadioStationMediaPlaylistID);
        parcel.writeString(this.mcPlaybackAttributes.msPlaybackAppBundleID);
    }

    public void readFromParcel(Parcel parcel) {
        this.mcMediaItemAttributes.mlMediaItemPersistentIdentifier = parcel.readLong();
        this.mcMediaItemAttributes.msMediaItemTitle = parcel.readString();
        this.mcMediaItemAttributes.meMediaItemMediaType = parcel.readInt();
        this.mcMediaItemAttributes.msMediaItemRating = parcel.readString();
        this.mcMediaItemAttributes.mlMediaItemPlaybackDurationInMilliseconds = parcel.readLong();
        this.mcMediaItemAttributes.mlMediaItemAlbumPersistentIdentifier = parcel.readLong();
        this.mcMediaItemAttributes.msMediaItemAlbumTitle = parcel.readString();
        this.mcMediaItemAttributes.mnMediaItemAlbumTrackNumber = parcel.readInt();
        this.mcMediaItemAttributes.mnMediaItemAlbumTrackCount = parcel.readInt();
        this.mcMediaItemAttributes.mnMediaItemAlbumDiscNumber = parcel.readInt();
        this.mcMediaItemAttributes.mnMediaItemAlbumDiscCount = parcel.readInt();
        this.mcMediaItemAttributes.mlMediaItemArtistPersistentIdentifier = parcel.readLong();
        this.mcMediaItemAttributes.msMediaItemArtist = parcel.readString();
        this.mcMediaItemAttributes.mlMediaItemAlbumArtistPersistentIdentifier = parcel.readLong();
        this.mcMediaItemAttributes.msMediaItemAlbumArtist = parcel.readString();
        this.mcMediaItemAttributes.mlMediaItemGenrePersistentIdentifier = parcel.readLong();
        this.mcMediaItemAttributes.msMediaItemGenre = parcel.readString();
        this.mcMediaItemAttributes.mlMediaItemComposerPersistentIdentifier = parcel.readLong();
        this.mcMediaItemAttributes.msMediaItemComposer = parcel.readString();
        this.mcMediaItemAttributes.mbMediaItemIsLikeSupported = parcel.readBoolean();
        this.mcMediaItemAttributes.mbMediaItemIsBanSupported = parcel.readBoolean();
        this.mcMediaItemAttributes.mbMediaItemIsLiked = parcel.readBoolean();
        this.mcMediaItemAttributes.mbMediaItemIsBanned = parcel.readBoolean();
        this.mcMediaItemAttributes.mbMediaItemIsResidentOnDevice = parcel.readBoolean();
        this.mcMediaItemAttributes.mnMediaItemArtworkFileTransferIdentifier = parcel.readInt();
        this.mcMediaItemAttributes.mnMediaItemChapterCount = parcel.readInt();
        this.mcPlaybackAttributes.mePlaybackStatus = parcel.readInt();
        this.mcPlaybackAttributes.mlPlaybackElapsedTimeInMilliseconds = parcel.readLong();
        this.mcPlaybackAttributes.mnPlaybackQueueIndex = parcel.readInt();
        this.mcPlaybackAttributes.mnPlaybackQueueCount = parcel.readInt();
        this.mcPlaybackAttributes.mnPlaybackQueueChapterIndex = parcel.readInt();
        this.mcPlaybackAttributes.mePlaybackShuffleMode = parcel.readInt();
        this.mcPlaybackAttributes.mePlaybackRepeatMode = parcel.readInt();
        this.mcPlaybackAttributes.msPlaybackAppName = parcel.readString();
        this.mcPlaybackAttributes.msPlaybackMediaLibraryUniqueIdentifier = parcel.readString();
        this.mcPlaybackAttributes.mbPlaybackAppleMusicRadioAd = parcel.readBoolean();
        this.mcPlaybackAttributes.msPlaybackAppleMusicRadioStationName = parcel.readString();
        this.mcPlaybackAttributes.mnPlaybackSpeed = parcel.readInt();
        this.mcPlaybackAttributes.mbPlaybackSetElapsedTimeAvailable = parcel.readBoolean();
        this.mcPlaybackAttributes.mlPlaybackAppleMusicRadioStationMediaPlaylistID = parcel.readLong();
        this.mcPlaybackAttributes.msPlaybackAppBundleID = parcel.readString();
    }
}
