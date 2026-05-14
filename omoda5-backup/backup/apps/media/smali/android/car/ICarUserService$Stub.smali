.class public abstract Landroid/car/ICarUserService$Stub;
.super Landroid/os/Binder;
.source "ICarUserService.java"

# interfaces
.implements Landroid/car/ICarUserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICarUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarUserService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.car.ICarUserService"

.field static final TRANSACTION_getBluetoothUserService:I = 0x1

.field static final TRANSACTION_getLocationManagerProxy:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.car.ICarUserService"

    .line 31
    invoke-virtual {p0, p0, v0}, Landroid/car/ICarUserService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICarUserService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICarUserService"

    .line 42
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Landroid/car/ICarUserService;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Landroid/car/ICarUserService;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Landroid/car/ICarUserService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICarUserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ICarUserService;
    .locals 1

    .line 151
    sget-object v0, Landroid/car/ICarUserService$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarUserService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/car/ICarUserService;)Z
    .locals 1

    .line 144
    sget-object v0, Landroid/car/ICarUserService$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarUserService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 145
    sput-object p0, Landroid/car/ICarUserService$Stub$Proxy;->sDefaultImpl:Landroid/car/ICarUserService;

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

    const-string v2, "android.car.ICarUserService"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 59
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 72
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/car/ICarUserService$Stub;->getLocationManagerProxy()Landroid/car/ILocationManagerProxy;

    move-result-object p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 75
    invoke-interface {p0}, Landroid/car/ILocationManagerProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 64
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/car/ICarUserService$Stub;->getBluetoothUserService()Landroid/car/ICarBluetoothUserService;

    move-result-object p0

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 67
    invoke-interface {p0}, Landroid/car/ICarBluetoothUserService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1
.end method
