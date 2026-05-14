.class public abstract Landroid/car/hardware/power/ICarPower$Stub;
.super Landroid/os/Binder;
.source "ICarPower.java"

# interfaces
.implements Landroid/car/hardware/power/ICarPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/power/ICarPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/power/ICarPower$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.hardware.power.ICarPower"

.field static final TRANSACTION_finished:I = 0x4

.field static final TRANSACTION_getBackLightStatus:I = 0x8

.field static final TRANSACTION_getBootReason:I = 0xf

.field static final TRANSACTION_getCurrentPowerMode:I = 0xe

.field static final TRANSACTION_getMCUVersion:I = 0xa

.field static final TRANSACTION_getMCUVersionForApp:I = 0x11

.field static final TRANSACTION_getTempRunTime:I = 0xd

.field static final TRANSACTION_reEnterTempRunMode:I = 0xb

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerListenerWithCompletion:I = 0x6

.field static final TRANSACTION_requestMCUDoFactoryReset:I = 0x13

.field static final TRANSACTION_requestRestartNow:I = 0x9

.field static final TRANSACTION_requestShutdownOnNextSuspend:I = 0x3

.field static final TRANSACTION_scheduleNextWakeupTime:I = 0x5

.field static final TRANSACTION_sendEventToMCU:I = 0x10

.field static final TRANSACTION_sendPROModeExit:I = 0x12

.field static final TRANSACTION_setBackLightEnable:I = 0x7

.field static final TRANSACTION_setTempRunTime:I = 0xc

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_voltageInfoQuery:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.hardware.power.ICarPower"

    .line 90
    invoke-virtual {p0, p0, v0}, Landroid/car/hardware/power/ICarPower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPower;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.hardware.power.ICarPower"

    .line 101
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    instance-of v1, v0, Landroid/car/hardware/power/ICarPower;

    if-eqz v1, :cond_1

    .line 103
    check-cast v0, Landroid/car/hardware/power/ICarPower;

    return-object v0

    .line 105
    :cond_1
    new-instance v0, Landroid/car/hardware/power/ICarPower$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/hardware/power/ICarPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/hardware/power/ICarPower;
    .locals 1

    .line 720
    sget-object v0, Landroid/car/hardware/power/ICarPower$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/power/ICarPower;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/hardware/power/ICarPower;)Z
    .locals 1

    .line 713
    sget-object v0, Landroid/car/hardware/power/ICarPower$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/power/ICarPower;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 714
    sput-object p0, Landroid/car/hardware/power/ICarPower$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/power/ICarPower;

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

    const-string v2, "android.car.hardware.power.ICarPower"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 288
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 280
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->voltageInfoQuery()F

    move-result p0

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return v1

    .line 273
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->requestMCUDoFactoryReset()V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 264
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 267
    :cond_0
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/ICarPower$Stub;->sendPROModeExit(Z)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 256
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->getMCUVersionForApp()Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 247
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 250
    :cond_1
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/ICarPower$Stub;->sendEventToMCU(Z)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 239
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->getBootReason()I

    move-result p0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 231
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->getCurrentPowerMode()I

    move-result p0

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 223
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->getTempRunTime()I

    move-result p0

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 214
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/ICarPower$Stub;->setTempRunTime(I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 207
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->reEnterTempRunMode()V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 199
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->getMCUVersion()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 192
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->requestRestartNow()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 184
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->getBackLightStatus()Z

    move-result p0

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 175
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    .line 178
    :cond_2
    invoke-virtual {p0, v0}, Landroid/car/hardware/power/ICarPower$Stub;->setBackLightEnable(Z)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 166
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/hardware/power/ICarPowerStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPowerStateListener;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/ICarPower$Stub;->registerListenerWithCompletion(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 157
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/ICarPower$Stub;->scheduleNextWakeupTime(I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 148
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/hardware/power/ICarPowerStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPowerStateListener;

    move-result-object p1

    .line 151
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/ICarPower$Stub;->finished(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 141
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/car/hardware/power/ICarPower$Stub;->requestShutdownOnNextSuspend()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 132
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/hardware/power/ICarPowerStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPowerStateListener;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/ICarPower$Stub;->unregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 123
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/car/hardware/power/ICarPowerStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPowerStateListener;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Landroid/car/hardware/power/ICarPower$Stub;->registerListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 118
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
