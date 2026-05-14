.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;
.super Ljava/lang/Object;
.source "CarPlayDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final kAirPlayConnection_Both:I = 0x2

.field public static final kAirPlayConnection_Wired:I = 0x0

.field public static final kAirPlayConnection_Wireless:I = 0x1


# instance fields
.field public mBtMacAddr:Ljava/lang/String;

.field public mConnectionType:I

.field public mDeviceName:Ljava/lang/String;

.field public mSerialNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo$1;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mConnectionType:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mBtMacAddr:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mSerialNum:Ljava/lang/String;

    .line 28
    iput p4, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mConnectionType:I

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

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mBtMacAddr:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mSerialNum:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mConnectionType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 45
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mBtMacAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mSerialNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayDeviceInfo;->mConnectionType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
