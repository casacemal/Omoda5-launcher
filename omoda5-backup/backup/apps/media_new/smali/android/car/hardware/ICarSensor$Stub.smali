.class public abstract Landroid/car/hardware/ICarSensor$Stub;
.super Landroid/os/Binder;
.source "ICarSensor.java"

# interfaces
.implements Landroid/car/hardware/ICarSensor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/ICarSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/ICarSensor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.hardware.ICarSensor"

.field static final TRANSACTION_getLatestSensorEvent:I = 0x3

.field static final TRANSACTION_getSensorConfig:I = 0x5

.field static final TRANSACTION_getSupportedSensors:I = 0x1

.field static final TRANSACTION_registerOrUpdateSensorListener:I = 0x2

.field static final TRANSACTION_unregisterSensorListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.hardware.ICarSensor"

    .line 59
    invoke-virtual {p0, p0, v0}, Landroid/car/hardware/ICarSensor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/hardware/ICarSensor;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.hardware.ICarSensor"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Landroid/car/hardware/ICarSensor;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Landroid/car/hardware/ICarSensor;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Landroid/car/hardware/ICarSensor$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/hardware/ICarSensor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/hardware/ICarSensor;
    .locals 1

    .line 323
    sget-object v0, Landroid/car/hardware/ICarSensor$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/ICarSensor;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/hardware/ICarSensor;)Z
    .locals 1

    .line 316
    sget-object v0, Landroid/car/hardware/ICarSensor$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/ICarSensor;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 317
    sput-object p0, Landroid/car/hardware/ICarSensor$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/ICarSensor;

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

    const-string v1, "android.car.hardware.ICarSensor"

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 87
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 141
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 144
    invoke-virtual {p0, p1}, Landroid/car/hardware/ICarSensor$Stub;->getSensorConfig(I)Landroid/car/hardware/CarSensorConfig;

    move-result-object p0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    invoke-virtual {p0, p3, v0}, Landroid/car/hardware/CarSensorConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 130
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/ICarSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/ICarSensorEventListener;

    move-result-object p2

    .line 135
    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/ICarSensor$Stub;->unregisterSensorListener(ILandroid/car/hardware/ICarSensorEventListener;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 114
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/car/hardware/ICarSensor$Stub;->getLatestSensorEvent(I)Landroid/car/hardware/CarSensorEvent;

    move-result-object p0

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_5

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p0, p3, v0}, Landroid/car/hardware/CarSensorEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 100
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/car/hardware/ICarSensorEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/ICarSensorEventListener;

    move-result-object p2

    .line 107
    invoke-virtual {p0, p1, p4, p2}, Landroid/car/hardware/ICarSensor$Stub;->registerOrUpdateSensorListener(IILandroid/car/hardware/ICarSensorEventListener;)Z

    move-result p0

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 92
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/car/hardware/ICarSensor$Stub;->getSupportedSensors()[I

    move-result-object p0

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0
.end method
