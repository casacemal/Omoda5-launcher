.class public final Landroid/car/CarBluetoothManager;
.super Ljava/lang/Object;
.source "CarBluetoothManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarBluetoothManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/car/ICarBluetooth;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Landroid/car/CarBluetoothManager;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {p1}, Landroid/car/ICarBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBluetooth;

    move-result-object p1

    iput-object p1, p0, Landroid/car/CarBluetoothManager;->mService:Landroid/car/ICarBluetooth;

    return-void
.end method


# virtual methods
.method public connectDevices()V
    .locals 0

    .line 51
    :try_start_0
    iget-object p0, p0, Landroid/car/CarBluetoothManager;->mService:Landroid/car/ICarBluetooth;

    invoke-interface {p0}, Landroid/car/ICarBluetooth;->connectDevices()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
