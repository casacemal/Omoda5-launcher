.class public Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONNECT_STATUS_CONNECTED:I = 0x2

.field public static final CONNECT_STATUS_CONNECTING:I = 0x1

.field public static final CONNECT_STATUS_NONE:I = 0x0

.field public static final CONNECT_TYPE_BT_CLIENT:I = 0x3

.field public static final CONNECT_TYPE_BT_SERVER:I = 0x2

.field public static final CONNECT_TYPE_CARPLAY_SESSION:I = 0x4

.field public static final CONNECT_TYPE_NONE:I = 0x0

.field public static final CONNECT_TYPE_USB_HOST:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private status:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->type:I

    .line 21
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->status:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->type:I

    .line 26
    iput p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->status:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatus()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->status:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->type:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->type:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->status:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->status:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget p2, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget p0, p0, Lcom/yfve/t19c/projection/carplay/service/iap2client/ConnectionInfo;->status:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
