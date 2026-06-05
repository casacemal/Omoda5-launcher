.class public Lcom/android/car/CarService;
.super Landroid/app/Service;
.source "CarService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarService$CrashTracker;,
        Lcom/android/car/CarService$VehicleDeathRecipient;
    }
.end annotation


# static fields
.field private static final IS_USER_BUILD:Z

.field private static final WAIT_FOR_VEHICLE_HAL_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private mCanBusErrorNotifier:Lcom/android/car/CanBusErrorNotifier;

.field private mICarImpl:Lcom/android/car/ICarImpl;

.field private mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

.field private final mVehicleDeathRecipient:Lcom/android/car/CarService$VehicleDeathRecipient;

.field private mVehicleInterfaceName:Ljava/lang/String;

.field private final mVhalCrashTracker:Lcom/android/car/CarService$CrashTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/CarService;->IS_USER_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Lcom/android/car/CarService$CrashTracker;

    new-instance v1, Lcom/android/car/-$$Lambda$CarService$tboqskEr8RKbrUTbWkpr_EbXcvs;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarService$tboqskEr8RKbrUTbWkpr_EbXcvs;-><init>(Lcom/android/car/CarService;)V

    const/16 v2, 0xa

    const v3, 0x927c0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/car/CarService$CrashTracker;-><init>(IILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/car/CarService;->mVhalCrashTracker:Lcom/android/car/CarService$CrashTracker;

    .line 70
    new-instance v0, Lcom/android/car/CarService$VehicleDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/CarService$VehicleDeathRecipient;-><init>(Lcom/android/car/CarService;Lcom/android/car/CarService$1;)V

    iput-object v0, p0, Lcom/android/car/CarService;->mVehicleDeathRecipient:Lcom/android/car/CarService$VehicleDeathRecipient;

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarService;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarService;

    .line 42
    iget-object v0, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/car/CarService;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarService;
    .param p1, "x1"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 42
    iput-object p1, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/car/CarService;)Lcom/android/car/CarService$CrashTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarService;

    .line 42
    iget-object v0, p0, Lcom/android/car/CarService;->mVhalCrashTracker:Lcom/android/car/CarService$CrashTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/CarService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarService;

    .line 42
    iget-object v0, p0, Lcom/android/car/CarService;->mVehicleInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/CarService;J)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarService;
    .param p1, "x1"    # J

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarService;->getVehicleWithTimeout(J)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .param p1, "x1"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 42
    invoke-static {p0, p1}, Lcom/android/car/CarService;->linkToDeath(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/IHwBinder$DeathRecipient;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/CarService;)Lcom/android/car/ICarImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarService;

    .line 42
    iget-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    return-object v0
.end method

.method private static getVehicle()Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .locals 3

    .line 171
    const-string v0, "CAR.SERVICE"

    :try_start_0
    invoke-static {}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->getService()Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "IVehicle service not registered yet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get IVehicle service"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 177
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getVehicleWithTimeout(J)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .locals 7
    .param p1, "waitMilliseconds"    # J

    .line 149
    invoke-static {}, Lcom/android/car/CarService;->getVehicle()Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v0

    .line 150
    .local v0, "vehicle":Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 151
    .local v1, "start":J
    :goto_0
    if-nez v0, :cond_0

    add-long v3, v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 153
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 158
    invoke-static {}, Lcom/android/car/CarService;->getVehicle()Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v3

    .line 155
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Sleep was interrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 161
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    if-eqz v0, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/car/CarService;->mCanBusErrorNotifier:Lcom/android/car/CanBusErrorNotifier;

    invoke-virtual {v3, p0}, Lcom/android/car/CanBusErrorNotifier;->removeFailureReport(Ljava/lang/Object;)V

    .line 165
    :cond_1
    return-object v0
.end method

.method private static linkToDeath(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 3
    .param p0, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 212
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0, v1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    nop

    .line 216
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to linkToDeath Vehicle HAL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/ICarImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public synthetic lambda$new$0$CarService()V
    .locals 2

    .line 60
    sget-boolean v0, Lcom/android/car/CarService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "CAR.SERVICE"

    const-string v1, "Vehicle HAL keeps crashing, notifying user..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/car/CarService;->mCanBusErrorNotifier:Lcom/android/car/CanBusErrorNotifier;

    invoke-virtual {v0, p0}, Lcom/android/car/CanBusErrorNotifier;->reportFailure(Ljava/lang/Object;)V

    .line 67
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Vehicle HAL crashed too many times in a given time frame"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .line 74
    const-string v0, "CAR.SERVICE"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/android/car/CarServiceThreadPool;->get()Lcom/android/car/CarServiceThreadPool;

    .line 79
    new-instance v1, Lcom/android/car/CanBusErrorNotifier;

    invoke-direct {v1, p0}, Lcom/android/car/CanBusErrorNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/car/CarService;->mCanBusErrorNotifier:Lcom/android/car/CanBusErrorNotifier;

    .line 80
    invoke-static {}, Lcom/android/car/CarService;->getVehicle()Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 82
    iget-object v1, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarService;->mVehicleInterfaceName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    nop

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarService;->mVehicleInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/android/car/ICarImpl;

    iget-object v4, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 95
    invoke-static {p0}, Lcom/android/car/systeminterface/SystemInterface$Builder;->defaultSystemInterface(Landroid/content/Context;)Lcom/android/car/systeminterface/SystemInterface$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface$Builder;->build()Lcom/android/car/systeminterface/SystemInterface;

    move-result-object v5

    iget-object v6, p0, Lcom/android/car/CarService;->mCanBusErrorNotifier:Lcom/android/car/CanBusErrorNotifier;

    iget-object v7, p0, Lcom/android/car/CarService;->mVehicleInterfaceName:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/car/ICarImpl;-><init>(Landroid/content/Context;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Lcom/android/car/systeminterface/SystemInterface;Lcom/android/car/CanBusErrorNotifier;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    .line 98
    iget-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    invoke-virtual {v0}, Lcom/android/car/ICarImpl;->init()V

    .line 100
    iget-object v0, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    iget-object v1, p0, Lcom/android/car/CarService;->mVehicleDeathRecipient:Lcom/android/car/CarService$VehicleDeathRecipient;

    invoke-static {v0, v1}, Lcom/android/car/CarService;->linkToDeath(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/IHwBinder$DeathRecipient;)V

    .line 102
    iget-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    const-string v1, "car_service"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 103
    const-string v0, "boot.car_service_created"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to get Vehicle HAL interface descriptor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Vehicle HAL service is not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 112
    const-string v0, "CAR.SERVICE"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/car/CarService;->mICarImpl:Lcom/android/car/ICarImpl;

    invoke-virtual {v0}, Lcom/android/car/ICarImpl;->release()V

    .line 114
    iget-object v0, p0, Lcom/android/car/CarService;->mCanBusErrorNotifier:Lcom/android/car/CanBusErrorNotifier;

    invoke-virtual {v0, p0}, Lcom/android/car/CanBusErrorNotifier;->removeFailureReport(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarService;->mVehicleDeathRecipient:Lcom/android/car/CarService$VehicleDeathRecipient;

    invoke-interface {v0, v1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarService;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 131
    const/4 v0, 0x1

    return v0
.end method
