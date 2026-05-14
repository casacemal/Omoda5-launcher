.class public abstract Landroid/car/trust/ICarTrustAgentBleCallback$Stub;
.super Landroid/os/Binder;
.source "ICarTrustAgentBleCallback.java"

# interfaces
.implements Landroid/car/trust/ICarTrustAgentBleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/ICarTrustAgentBleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.trust.ICarTrustAgentBleCallback"

.field static final TRANSACTION_onBleEnrollmentDeviceConnected:I = 0x3

.field static final TRANSACTION_onBleEnrollmentDeviceDisconnected:I = 0x4

.field static final TRANSACTION_onEnrollmentAdvertisingFailed:I = 0x2

.field static final TRANSACTION_onEnrollmentAdvertisingStarted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.trust.ICarTrustAgentBleCallback"

    .line 51
    invoke-virtual {p0, p0, v0}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentBleCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.trust.ICarTrustAgentBleCallback"

    .line 62
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    instance-of v1, v0, Landroid/car/trust/ICarTrustAgentBleCallback;

    if-eqz v1, :cond_1

    .line 64
    check-cast v0, Landroid/car/trust/ICarTrustAgentBleCallback;

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/trust/ICarTrustAgentBleCallback;
    .locals 1

    .line 241
    sget-object v0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentBleCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/trust/ICarTrustAgentBleCallback;)Z
    .locals 1

    .line 234
    sget-object v0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentBleCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 235
    sput-object p0, Landroid/car/trust/ICarTrustAgentBleCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentBleCallback;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "android.car.trust.ICarTrustAgentBleCallback"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 79
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 109
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 117
    :cond_2
    invoke-virtual {p0, v3}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    return v0

    .line 96
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 104
    :cond_4
    invoke-virtual {p0, v3}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    return v0

    .line 90
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->onEnrollmentAdvertisingFailed()V

    return v0

    .line 84
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->onEnrollmentAdvertisingStarted()V

    return v0
.end method
