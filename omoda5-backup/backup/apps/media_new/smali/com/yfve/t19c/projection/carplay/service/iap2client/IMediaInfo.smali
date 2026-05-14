.class public Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;
.super Ljava/lang/Object;
.source "IMediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final kWifiSecurityTypeNone:I = 0x0

.field static final kWifiSecurityTypeWEP:I = 0x1

.field static final kWifiSecurityTypeWPA:I = 0x2


# instance fields
.field public mAlbumTitle:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mPlaySts:I

.field public mRepeatMode:I

.field public mShuffleMode:I

.field public mSpeed:I

.field public mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mTitle:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mAlbumTitle:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mArtist:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mShuffleMode:I

    .line 23
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mRepeatMode:I

    const/4 v1, 0x6

    .line 24
    iput v1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mSpeed:I

    .line 25
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mPlaySts:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mTitle:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mAlbumTitle:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mArtist:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mShuffleMode:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mRepeatMode:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mSpeed:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mPlaySts:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mShuffleMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mRepeatMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/IMediaInfo;->mPlaySts:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
