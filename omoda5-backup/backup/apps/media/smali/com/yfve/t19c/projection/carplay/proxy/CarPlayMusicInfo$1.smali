.class Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$1;
.super Ljava/lang/Object;
.source "CarPlayMusicInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;
    .locals 0

    .line 171
    new-instance p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;

    invoke-direct {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;
    .locals 0

    .line 176
    new-array p0, p1, [Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo$1;->newArray(I)[Lcom/yfve/t19c/projection/carplay/proxy/CarPlayMusicInfo;

    move-result-object p0

    return-object p0
.end method
