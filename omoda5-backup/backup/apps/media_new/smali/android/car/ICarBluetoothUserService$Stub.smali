.class public abstract Landroid/car/ICarBluetoothUserService$Stub;
.super Landroid/os/Binder;
.source "ICarBluetoothUserService.java"

# interfaces
.implements Landroid/car/ICarBluetoothUserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICarBluetoothUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarBluetoothUserService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.ICarBluetoothUserService"

.field static final TRANSACTION_bluetoothConnectToProfile:I = 0x4

.field static final TRANSACTION_bluetoothDisconnectFromProfile:I = 0x5

.field static final TRANSACTION_closeBluetoothConnectionProxies:I = 0x2

.field static final TRANSACTION_getProfilePriority:I = 0x6

.field static final TRANSACTION_isBluetoothConnectionProxyAvailable:I = 0x3

.field static final TRANSACTION_setProfilePriority:I = 0x7

.field static final TRANSACTION_setupBluetoothConnectionProxies:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.ICarBluetoothUserService"

    .line 50
    invoke-virtual {p0, p0, v0}, Landroid/car/ICarBluetoothUserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICarBluetoothUserService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICarBluetoothUserService"

    .line 61
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    instance-of v1, v0, Landroid/car/ICarBluetoothUserService;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Landroid/car/ICarBluetoothUserService;

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Landroid/car/ICarBluetoothUserService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICarBluetoothUserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ICarBluetoothUserService;
    .locals 1

    .line 382
    sget-object v0, Landroid/car/ICarBluetoothUserService$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarBluetoothUserService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/ICarBluetoothUserService;)Z
    .locals 1

    .line 375
    sget-object v0, Landroid/car/ICarBluetoothUserService$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarBluetoothUserService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 376
    sput-object p0, Landroid/car/ICarBluetoothUserService$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarBluetoothUserService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.ICarBluetoothUserService"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 158
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 163
    sget-object p4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 169
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 170
    invoke-virtual {p0, p1, v0, p2}, Landroid/car/ICarBluetoothUserService$Stub;->setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 141
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    .line 146
    sget-object p4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 151
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/car/ICarBluetoothUserService$Stub;->getProfilePriority(ILandroid/bluetooth/BluetoothDevice;)I

    move-result p0

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 124
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 129
    sget-object p4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 134
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/car/ICarBluetoothUserService$Stub;->bluetoothDisconnectFromProfile(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 107
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    .line 112
    sget-object p4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 117
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/car/ICarBluetoothUserService$Stub;->bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 97
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Landroid/car/ICarBluetoothUserService$Stub;->isBluetoothConnectionProxyAvailable(I)Z

    move-result p0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 90
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/car/ICarBluetoothUserService$Stub;->closeBluetoothConnectionProxies()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 83
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/car/ICarBluetoothUserService$Stub;->setupBluetoothConnectionProxies()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 78
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
