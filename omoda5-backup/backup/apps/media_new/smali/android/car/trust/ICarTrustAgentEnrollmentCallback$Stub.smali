.class public abstract Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;
.super Landroid/os/Binder;
.source "ICarTrustAgentEnrollmentCallback.java"

# interfaces
.implements Landroid/car/trust/ICarTrustAgentEnrollmentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.trust.ICarTrustAgentEnrollmentCallback"

.field static final TRANSACTION_onAuthStringAvailable:I = 0x2

.field static final TRANSACTION_onEnrollmentHandshakeFailure:I = 0x1

.field static final TRANSACTION_onEscrowTokenActiveStateChanged:I = 0x5

.field static final TRANSACTION_onEscrowTokenAdded:I = 0x3

.field static final TRANSACTION_onEscrowTokenRemoved:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 59
    invoke-virtual {p0, p0, v0}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollmentCallback;
    .locals 1

    .line 294
    sget-object v0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)Z
    .locals 1

    .line 287
    sget-object v0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 288
    sput-object p0, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.car.trust.ICarTrustAgentEnrollmentCallback"

    if-eq p1, v1, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 87
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 138
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 143
    :goto_0
    invoke-virtual {p0, p3, p4, p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->onEscrowTokenActiveStateChanged(JZ)V

    return v1

    .line 130
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 133
    invoke-virtual {p0, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->onEscrowTokenRemoved(J)V

    return v1

    .line 122
    :cond_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 125
    invoke-virtual {p0, p1, p2}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->onEscrowTokenAdded(J)V

    return v1

    .line 107
    :cond_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 110
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 116
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p0, v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    return v1

    .line 92
    :cond_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 95
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 101
    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 102
    invoke-virtual {p0, v0, p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V

    return v1
.end method
