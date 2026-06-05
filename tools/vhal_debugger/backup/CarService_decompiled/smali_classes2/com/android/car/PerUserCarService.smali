.class public Lcom/android/car/PerUserCarService;
.super Landroid/app/Service;
.source "PerUserCarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/PerUserCarService$CarUserServiceBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CarUserService"


# instance fields
.field private volatile mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

.field private mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

.field private volatile mLocationManagerProxy:Lcom/android/car/LocationManagerProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/PerUserCarService;)Lcom/android/car/CarBluetoothUserService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/PerUserCarService;

    .line 34
    iget-object v0, p0, Lcom/android/car/PerUserCarService;->mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/PerUserCarService;)Lcom/android/car/LocationManagerProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/PerUserCarService;

    .line 34
    iget-object v0, p0, Lcom/android/car/PerUserCarService;->mLocationManagerProxy:Lcom/android/car/LocationManagerProxy;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    const-string v0, "CarUserService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    if-nez v1, :cond_0

    .line 47
    const-string v1, "UserSvcBinder null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 63
    const-string v0, "CarUserService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/PerUserCarService$CarUserServiceBinder;-><init>(Lcom/android/car/PerUserCarService;Lcom/android/car/PerUserCarService$1;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    .line 66
    new-instance v0, Lcom/android/car/CarBluetoothUserService;

    invoke-direct {v0, p0}, Lcom/android/car/CarBluetoothUserService;-><init>(Lcom/android/car/PerUserCarService;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarBluetoothUserService:Lcom/android/car/CarBluetoothUserService;

    .line 67
    new-instance v0, Lcom/android/car/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/android/car/LocationManagerProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mLocationManagerProxy:Lcom/android/car/LocationManagerProxy;

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 74
    const-string v0, "CarUserService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/PerUserCarService;->mCarUserServiceBinder:Lcom/android/car/PerUserCarService$CarUserServiceBinder;

    .line 77
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 55
    const-string v0, "CarUserService"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x1

    return v0
.end method
