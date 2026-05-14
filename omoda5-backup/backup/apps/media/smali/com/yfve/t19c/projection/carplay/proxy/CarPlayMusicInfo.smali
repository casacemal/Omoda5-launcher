.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;
.super Ljava/lang/Object;
.source "CarPlayMusicInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;,
        Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

.field public mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    .line 8
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    .line 8
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    .line 65
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemPersistentIdentifier:J

    .line 124
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemTitle:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->meMediaItemMediaType:I

    .line 126
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemRating:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemPlaybackDurationInMilliseconds:J

    .line 128
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemAlbumPersistentIdentifier:J

    .line 129
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemAlbumTitle:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumTrackNumber:I

    .line 131
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumTrackCount:I

    .line 132
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumDiscNumber:I

    .line 133
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumDiscCount:I

    .line 134
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemArtistPersistentIdentifier:J

    .line 135
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemArtist:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemAlbumArtistPersistentIdentifier:J

    .line 137
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemAlbumArtist:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemGenrePersistentIdentifier:J

    .line 139
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemGenre:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemComposerPersistentIdentifier:J

    .line 141
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemComposer:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsLikeSupported:Z

    .line 143
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsBanSupported:Z

    .line 144
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsLiked:Z

    .line 145
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsBanned:Z

    .line 146
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsResidentOnDevice:Z

    .line 147
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemArtworkFileTransferIdentifier:I

    .line 148
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemChapterCount:I

    .line 150
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mePlaybackStatus:I

    .line 151
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mlPlaybackElapsedTimeInMilliseconds:J

    .line 152
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackQueueIndex:I

    .line 153
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackQueueCount:I

    .line 154
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackQueueChapterIndex:I

    .line 155
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mePlaybackShuffleMode:I

    .line 156
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mePlaybackRepeatMode:I

    .line 157
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackAppName:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackMediaLibraryUniqueIdentifier:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mbPlaybackAppleMusicRadioAd:Z

    .line 160
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackAppleMusicRadioStationName:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackSpeed:I

    .line 162
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mbPlaybackSetElapsedTimeAvailable:Z

    .line 163
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mlPlaybackAppleMusicRadioStationMediaPlaylistID:J

    .line 164
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackAppBundleID:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 77
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemPersistentIdentifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->meMediaItemMediaType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemRating:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemPlaybackDurationInMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemAlbumPersistentIdentifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemAlbumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumTrackNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumTrackCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumDiscNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemAlbumDiscCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemArtistPersistentIdentifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemAlbumArtistPersistentIdentifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemAlbumArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemGenrePersistentIdentifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemGenre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mlMediaItemComposerPersistentIdentifier:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->msMediaItemComposer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsLikeSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsBanSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsLiked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 99
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsBanned:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mbMediaItemIsResidentOnDevice:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemArtworkFileTransferIdentifier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcMediaItemAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$MediaItemAttributes;->mnMediaItemChapterCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mePlaybackStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mlPlaybackElapsedTimeInMilliseconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackQueueIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackQueueCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackQueueChapterIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mePlaybackShuffleMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mePlaybackRepeatMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackAppName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackMediaLibraryUniqueIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mbPlaybackAppleMusicRadioAd:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-object p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackAppleMusicRadioStationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mnPlaybackSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-boolean p2, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mbPlaybackSetElapsedTimeAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 117
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-wide v0, p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->mlPlaybackAppleMusicRadioStationMediaPlaylistID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;->mcPlaybackAttributes:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;

    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$PlaybackAttributes;->msPlaybackAppBundleID:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
