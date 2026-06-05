.class public Lcom/android/internal/car/CarServiceHelperService;
.super Lcom/android/server/SystemService;
.source "CarServiceHelperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;
    }
.end annotation


# static fields
.field private static final CAR_HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAR_SERVICE_INTERFACE:Ljava/lang/String; = "android.car.ICar"

.field private static final DBG:Z = true

.field private static final ICAR_CALL_SET_CAR_SERVICE_HELPER:I = 0x0

.field private static final ICAR_CALL_SET_SWITCH_USER:I = 0x2

.field private static final ICAR_CALL_SET_USER_UNLOCK_STATUS:I = 0x1

.field private static final PROP_RESTART_RUNTIME:Ljava/lang/String; = "ro.car.recovery.restart_runtime.enabled"

.field private static final TAG:Ljava/lang/String; = "CarServiceHelper"


# instance fields
.field private mCarService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mCarServiceConnection:Landroid/content/ServiceConnection;

.field private final mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mContext:Landroid/content/Context;

.field private final mHelper:Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

.field private mLastSwitchedUser:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSystemBootCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserUnlockedStatus:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "android.hardware.automotive.vehicle@2.0::IVehicle"

    const-string v1, "android.hardware.automotive.audiocontrol@1.0::IAudioControl"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/car/CarServiceHelperService;->CAR_HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    new-instance v0, Landroid/car/userlib/CarUserManagerHelper;

    invoke-direct {v0, p1}, Landroid/car/userlib/CarUserManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/car/CarServiceHelperService;-><init>(Landroid/content/Context;Landroid/car/userlib/CarUserManagerHelper;)V

    .line 109
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/car/userlib/CarUserManagerHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carUserManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 78
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mLastSwitchedUser:I

    .line 81
    new-instance v0, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;-><init>(Lcom/android/internal/car/CarServiceHelperService;Lcom/android/internal/car/CarServiceHelperService$1;)V

    iput-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mHelper:Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mUserUnlockedStatus:Ljava/util/HashMap;

    .line 91
    new-instance v0, Lcom/android/internal/car/CarServiceHelperService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/car/CarServiceHelperService$1;-><init>(Lcom/android/internal/car/CarServiceHelperService;)V

    iput-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarServiceConnection:Landroid/content/ServiceConnection;

    .line 114
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/car/CarServiceHelperService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/car/CarServiceHelperService;->handleCarServiceConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/car/CarServiceHelperService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 60
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->handleCarServiceCrash()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/car/CarServiceHelperService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/car/CarServiceHelperService;

    .line 60
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 60
    invoke-static {p0}, Lcom/android/internal/car/CarServiceHelperService;->nativeForceSuspend(I)I

    move-result v0

    return v0
.end method

.method private checkForCarServiceConnection()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    const-string v0, "car_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .local v0, "iBinder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car service found through ServiceManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, v0}, Lcom/android/internal/car/CarServiceHelperService;->handleCarServiceConnection(Landroid/os/IBinder;)V

    .line 201
    :cond_1
    return-void

    .line 193
    .end local v0    # "iBinder":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static dumpServiceStacks()V
    .locals 3

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    nop

    .line 434
    invoke-static {}, Lcom/android/internal/car/CarServiceHelperService;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v1

    .line 433
    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    .line 435
    return-void
.end method

.method private static getInterestingHalPids()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 389
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 390
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 391
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 392
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 393
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 394
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 395
    goto :goto_0

    .line 398
    :cond_0
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/internal/car/CarServiceHelperService;->CAR_HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    .line 399
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    :cond_1
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    :cond_2
    goto :goto_0

    .line 404
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 405
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 414
    invoke-static {}, Lcom/android/internal/car/CarServiceHelperService;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 416
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 417
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 419
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 420
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_0
    return-object v0
.end method

.method private handleCarServiceConnection(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .line 206
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    .line 208
    monitor-exit v0

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "CarServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car service binder changed, was:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iput-object p1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    .line 215
    iget v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mLastSwitchedUser:I

    .line 216
    .local v1, "lastSwitchedUser":I
    iget-boolean v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mSystemBootCompleted:Z

    .line 217
    .local v2, "systemBootCompleted":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    const-string v0, "CarServiceHelper"

    const-string v3, "**CarService connected**"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->sendSetCarServiceHelperBinderCall()V

    .line 220
    if-eqz v2, :cond_2

    .line 221
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->notifyAllUnlockedUsers()V

    .line 223
    :cond_2
    const/16 v0, -0x2710

    if-eq v1, v0, :cond_3

    .line 224
    invoke-direct {p0, v1}, Lcom/android/internal/car/CarServiceHelperService;->sendSwitchUserBindercall(I)V

    .line 226
    :cond_3
    return-void

    .line 217
    .end local v1    # "lastSwitchedUser":I
    .end local v2    # "systemBootCompleted":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleCarServiceCrash()V
    .locals 3

    .line 440
    const-string v0, "ro.car.recovery.restart_runtime.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 442
    .local v0, "restartOnServiceCrash":Z
    invoke-static {}, Lcom/android/internal/car/CarServiceHelperService;->dumpServiceStacks()V

    .line 443
    const-string v1, "CarServiceHelper"

    if-eqz v0, :cond_0

    .line 444
    const-string v2, "*** CARHELPER KILLING SYSTEM PROCESS: CarService crash"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v2, "*** GOODBYE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 447
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 449
    :cond_0
    const-string v2, "*** CARHELPER ignoring: CarService crash"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    return-void
.end method

.method private handleUserLockStatusChange(IZ)V
    .locals 6
    .param p1, "userHandle"    # I
    .param p2, "unlocked"    # Z

    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mUserUnlockedStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 232
    .local v2, "oldStatus":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p2, :cond_1

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mUserUnlockedStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mSystemBootCompleted:Z

    if-eqz v3, :cond_1

    .line 235
    const/4 v0, 0x1

    .line 238
    .end local v2    # "oldStatus":Ljava/lang/Boolean;
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/android/internal/car/CarServiceHelperService;->sendSetUserLockStatusBinderCall(IZ)V

    .line 242
    :cond_2
    return-void

    .line 238
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static native nativeForceSuspend(I)I
.end method

.method private notifyAllUnlockedUsers()V
    .locals 5

    .line 325
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 326
    .local v0, "users":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mUserUnlockedStatus:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 328
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_0
    goto :goto_0

    .line 332
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAllUnlockedUsers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 337
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/internal/car/CarServiceHelperService;->sendSetUserLockStatusBinderCall(IZ)V

    .line 338
    .end local v2    # "i":Ljava/lang/Integer;
    goto :goto_1

    .line 339
    :cond_2
    return-void

    .line 332
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendBinderCallToCarService(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "callNumber"    # I

    .line 370
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    .line 372
    .local v1, "carService":Landroid/os/IBinder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 374
    add-int/lit8 v0, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v1, v0, p1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 381
    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CarServiceHelper"

    const-string v3, "RemoteException from car service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 378
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->handleCarServiceCrash()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 382
    :goto_1
    return-void

    .line 380
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 372
    .end local v1    # "carService":Landroid/os/IBinder;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private sendSetCarServiceHelperBinderCall()V
    .locals 2

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 343
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mHelper:Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;

    invoke-virtual {v1}, Lcom/android/internal/car/CarServiceHelperService$ICarServiceHelperImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 346
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/car/CarServiceHelperService;->sendBinderCallToCarService(Landroid/os/Parcel;I)V

    .line 347
    return-void
.end method

.method private sendSetUserLockStatusBinderCall(IZ)V
    .locals 2
    .param p1, "userHandle"    # I
    .param p2, "unlocked"    # Z

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/car/CarServiceHelperService;->sendBinderCallToCarService(Landroid/os/Parcel;I)V

    .line 356
    return-void
.end method

.method private sendSwitchUserBindercall(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/car/CarServiceHelperService;->sendBinderCallToCarService(Landroid/os/Parcel;I)V

    .line 364
    return-void
.end method

.method private setupAndStartUsers()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 247
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    const-string v1, "CarServiceHelper"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getUserProvisioningState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "DevicePolicyManager active, skip user unlock/switch"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 255
    :cond_0
    const/4 v2, 0x0

    .line 256
    .local v2, "targetUserId":I
    iget-object v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v3}, Landroid/car/userlib/CarUserManagerHelper;->getAllUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 257
    const-string v3, "Create new admin user and switch"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v3}, Landroid/car/userlib/CarUserManagerHelper;->createNewAdminUser()Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 260
    .local v3, "admin":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_1

    .line 261
    const-string v4, "cannot create admin user"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_1
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 265
    .end local v3    # "admin":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 266
    :cond_2
    const-string v3, "Switch to default user"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v3}, Landroid/car/userlib/CarUserManagerHelper;->getInitialUser()I

    move-result v2

    .line 271
    :goto_0
    if-nez v2, :cond_3

    .line 272
    return-void

    .line 274
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    .line 275
    .local v3, "am":Landroid/app/IActivityManager;
    if-nez v3, :cond_4

    .line 276
    const-string v4, "cannot get ActivityManagerService"

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 279
    :cond_4
    new-instance v4, Landroid/util/TimingsTraceLog;

    const-wide/32 v5, 0x80000

    invoke-direct {v4, v1, v5, v6}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 280
    .local v4, "t":Landroid/util/TimingsTraceLog;
    invoke-direct {p0, v4, v3}, Lcom/android/internal/car/CarServiceHelperService;->unlockSystemUser(Landroid/util/TimingsTraceLog;Landroid/app/IActivityManager;)V

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ForegroundUserStart"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 284
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v3, v2, v5}, Landroid/app/IActivityManager;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot start foreground user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 287
    :cond_5
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1, v2}, Landroid/car/userlib/CarUserManagerHelper;->setLastActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_1
    goto :goto_2

    .line 289
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "RemoteException from AMS"

    invoke-static {v5, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 294
    return-void
.end method

.method private unlockSystemUser(Landroid/util/TimingsTraceLog;Landroid/app/IActivityManager;)V
    .locals 4
    .param p1, "t"    # Landroid/util/TimingsTraceLog;
    .param p2, "am"    # Landroid/app/IActivityManager;

    .line 297
    const-string v0, "CarServiceHelper"

    const-string v1, "UnlockSystemUser"

    invoke-virtual {p1, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 301
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result v2

    .line 302
    .local v2, "started":Z
    if-nez v2, :cond_0

    .line 303
    const-string v3, "could not restart system user in foreground; trying unlock instead"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v3, "forceUnlockSystemUser"

    invoke-virtual {p1, v3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 305
    const/4 v3, 0x0

    invoke-interface {p2, v1, v3, v3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v3

    .line 307
    .local v3, "unlocked":Z
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 308
    if-nez v3, :cond_0

    .line 309
    const-string v1, "could not unlock system user neither"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 310
    return-void

    .line 314
    .end local v3    # "unlocked":Z
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/car/CarServiceHelperService;->handleUserLockStatusChange(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v2    # "started":Z
    nop

    :goto_0
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 320
    goto :goto_1

    .line 319
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 315
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "RemoteException from AMS"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 321
    :goto_1
    return-void

    .line 319
    :goto_2
    invoke-virtual {p1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->checkForCarServiceConnection()V

    .line 127
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->setupAndStartUsers()V

    .line 128
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->checkForCarServiceConnection()V

    goto :goto_0

    .line 129
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_2

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mSystemBootCompleted:Z

    .line 133
    iget-object v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    .line 134
    const/4 v0, 0x1

    .line 136
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/internal/car/CarServiceHelperService;->notifyAllUnlockedUsers()V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 141
    .end local v0    # "shouldNotify":Z
    :cond_2
    :goto_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/car/CarServiceHelperService;->handleUserLockStatusChange(IZ)V

    .line 172
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "android.car.ICar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/car/CarServiceHelperService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    const-string v1, "CarServiceHelper"

    const-string v2, "cannot start car service"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    const-string v1, "car-framework-service-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/car/CarServiceHelperService;->handleUserLockStatusChange(IZ)V

    .line 167
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 176
    iget-object v0, p0, Lcom/android/internal/car/CarServiceHelperService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iput p1, p0, Lcom/android/internal/car/CarServiceHelperService;->mLastSwitchedUser:I

    .line 178
    iget-object v1, p0, Lcom/android/internal/car/CarServiceHelperService;->mCarService:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-direct {p0, p1}, Lcom/android/internal/car/CarServiceHelperService;->sendSwitchUserBindercall(I)V

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 158
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/car/CarServiceHelperService;->handleUserLockStatusChange(IZ)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method
