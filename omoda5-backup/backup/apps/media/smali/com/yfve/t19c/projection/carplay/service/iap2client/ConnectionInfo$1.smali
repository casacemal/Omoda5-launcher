.class Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo$1;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
    .locals 0

    .line 57
    new-instance p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    invoke-direct {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
    .locals 0

    .line 62
    new-array p0, p1, [Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo$1;->newArray(I)[Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;

    move-result-object p0

    return-object p0
.end method
