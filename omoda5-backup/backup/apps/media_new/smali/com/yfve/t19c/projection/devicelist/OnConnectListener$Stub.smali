.class public abstract Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;
.super Landroid/os/Binder;
.source "OnConnectListener.java"

# interfaces
.implements Lcom/yfve/t19c/projection/devicelist/OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/devicelist/OnConnectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.yfve.t19c.projection.devicelist.OnConnectListener"

.field static final TRANSACTION_onDeviceUpdate:I = 0x1

.field static final TRANSACTION_onNotification:I = 0x2

.field static final TRANSACTION_onRequestBluetoothPair:I = 0x3

.field static final TRANSACTION_onSessionStateUpdate:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.yfve.t19c.projection.devicelist.OnConnectListener"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/devicelist/OnConnectListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.yfve.t19c.projection.devicelist.OnConnectListener"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/yfve/t19c/projection/devicelist/OnConnectListener;
    .locals 1

    .line 250
    sget-object v0, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/yfve/t19c/projection/devicelist/OnConnectListener;)Z
    .locals 1

    .line 240
    sget-object v0, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 244
    sput-object p0, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub$Proxy;->sDefaultImpl:Lcom/yfve/t19c/projection/devicelist/OnConnectListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 241
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.yfve.t19c.projection.devicelist.OnConnectListener"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 62
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 107
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->onSessionStateUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 98
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->onRequestBluetoothPair(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v1, p0

    .line 92
    invoke-virtual/range {v1 .. v6}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->onNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 67
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 70
    sget-object p1, Lcom/yfve/t19c/projection/devicelist/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yfve/t19c/projection/devicelist/Device;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/devicelist/OnConnectListener$Stub;->onDeviceUpdate(Lcom/yfve/t19c/projection/devicelist/Device;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
