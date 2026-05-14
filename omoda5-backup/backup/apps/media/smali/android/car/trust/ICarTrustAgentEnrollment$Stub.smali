.class public abstract Landroid/car/trust/ICarTrustAgentEnrollment$Stub;
.super Landroid/os/Binder;
.source "ICarTrustAgentEnrollment.java"

# interfaces
.implements Landroid/car/trust/ICarTrustAgentEnrollment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/ICarTrustAgentEnrollment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.trust.ICarTrustAgentEnrollment"

.field static final TRANSACTION_enrollmentHandshakeAccepted:I = 0x3

.field static final TRANSACTION_getEnrolledDeviceInfosForUser:I = 0xa

.field static final TRANSACTION_isEscrowTokenActive:I = 0x5

.field static final TRANSACTION_registerBleCallback:I = 0xd

.field static final TRANSACTION_registerEnrollmentCallback:I = 0xb

.field static final TRANSACTION_removeAllTrustedDevices:I = 0x7

.field static final TRANSACTION_removeEscrowToken:I = 0x6

.field static final TRANSACTION_setTrustedDeviceEnrollmentEnabled:I = 0x8

.field static final TRANSACTION_setTrustedDeviceUnlockEnabled:I = 0x9

.field static final TRANSACTION_startEnrollmentAdvertising:I = 0x1

.field static final TRANSACTION_stopEnrollmentAdvertising:I = 0x2

.field static final TRANSACTION_terminateEnrollmentHandshake:I = 0x4

.field static final TRANSACTION_unregisterBleCallback:I = 0xe

.field static final TRANSACTION_unregisterEnrollmentCallback:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.trust.ICarTrustAgentEnrollment"

    .line 72
    invoke-virtual {p0, p0, v0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollment;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.trust.ICarTrustAgentEnrollment"

    .line 83
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    instance-of v1, v0, Landroid/car/trust/ICarTrustAgentEnrollment;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Landroid/car/trust/ICarTrustAgentEnrollment;

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/trust/ICarTrustAgentEnrollment;
    .locals 1

    .line 554
    sget-object v0, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollment;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/trust/ICarTrustAgentEnrollment;)Z
    .locals 1

    .line 547
    sget-object v0, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollment;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 548
    sput-object p0, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;->sDefaultImpl:Landroid/car/trust/ICarTrustAgentEnrollment;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.car.trust.ICarTrustAgentEnrollment"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 227
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->unregisterBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 218
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/trust/ICarTrustAgentBleCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentBleCallback;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->registerBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 209
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->unregisterEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 200
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/trust/ICarTrustAgentEnrollmentCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollmentCallback;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->registerEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 190
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 193
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->getEnrolledDeviceInfosForUser(I)Ljava/util/List;

    move-result-object p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    .line 181
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 184
    :cond_0
    invoke-virtual {p0, v0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->setTrustedDeviceUnlockEnabled(Z)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 172
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 175
    :cond_1
    invoke-virtual {p0, v0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->setTrustedDeviceEnrollmentEnabled(Z)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 163
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->removeAllTrustedDevices(I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    invoke-virtual {p0, v2, v3, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->removeEscrowToken(JI)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 140
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p0, v2, v3, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->isEscrowTokenActive(JI)Z

    move-result p0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 133
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->terminateEnrollmentHandshake()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 119
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 122
    sget-object p1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 127
    :goto_0
    invoke-virtual {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->enrollmentHandshakeAccepted(Landroid/bluetooth/BluetoothDevice;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 112
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->stopEnrollmentAdvertising()V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 105
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->startEnrollmentAdvertising()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 100
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
