.class public Lcom/android/car/CarDrivingStateService;
.super Landroid/car/drivingstate/ICarDrivingState$Stub;
.source "CarDrivingStateService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_TRANSITION_LOG_SIZE:I = 0x14

.field private static final NOT_RECEIVED:I = -0x1

.field private static final PROPERTY_UPDATE_RATE:I = 0x5

.field private static final REQUIRED_PROPERTIES:[I

.field private static final TAG:Ljava/lang/String; = "CarDrivingState"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

.field private final mDrivingStateClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/CarDrivingStateService$DrivingStateClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private mLastGear:I

.field private mLastGearTimestamp:J

.field private mLastParkingBrakeState:Z

.field private mLastParkingBrakeTimestamp:J

.field private mLastSpeed:F

.field private mLastSpeedTimestamp:J

.field private mPropertyService:Lcom/android/car/CarPropertyService;

.field private mSubscribFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSupportedGears:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransitionLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/Utils$TransitionLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/CarDrivingStateService;->REQUIRED_PROPERTIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x11600207
        0x11400400
        0x11200402
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 82
    invoke-direct {p0}, Landroid/car/drivingstate/ICarDrivingState$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mTransitionLogs:Ljava/util/LinkedList;

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastGearTimestamp:J

    .line 74
    iput-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeedTimestamp:J

    .line 76
    iput-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeTimestamp:J

    .line 322
    new-instance v0, Lcom/android/car/CarDrivingStateService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarDrivingStateService$1;-><init>(Lcom/android/car/CarDrivingStateService;)V

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 83
    iput-object p1, p0, Lcom/android/car/CarDrivingStateService;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    .line 85
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/car/CarDrivingStateService;->createDrivingStateEvent(I)Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarDrivingStateService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarDrivingStateService;

    .line 52
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/CarDrivingStateService;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarDrivingStateService;
    .param p1, "x1"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/car/CarDrivingStateService;->handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

.method private addTransitionLog(Ljava/lang/String;IIJ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "timestamp"    # J

    .line 424
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 428
    :cond_0
    new-instance v0, Lcom/android/car/Utils$TransitionLog;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/car/Utils$TransitionLog;-><init>(Ljava/lang/String;IIJ)V

    .line 429
    .local v0, "tLog":Lcom/android/car/Utils$TransitionLog;
    iget-object v1, p0, Lcom/android/car/CarDrivingStateService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method private declared-synchronized checkPropertySupport()Z
    .locals 10

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v0}, Lcom/android/car/CarPropertyService;->getPropertyList()Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    sget-object v1, Lcom/android/car/CarDrivingStateService;->REQUIRED_PROPERTIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    .line 129
    .local v5, "propertyId":I
    const/4 v6, 0x0

    .line 130
    .local v6, "found":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/car/hardware/CarPropertyConfig;

    .line 131
    .local v8, "config":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v8}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v9

    if-ne v9, v5, :cond_0

    .line 132
    const/4 v6, 0x1

    .line 133
    goto :goto_2

    .line 135
    .end local v8    # "config":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_1

    .line 136
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :cond_1
    :goto_2
    if-nez v6, :cond_2

    .line 137
    const-string v1, "CarDrivingState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Required property not supported: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return v3

    .line 128
    .end local v5    # "propertyId":I
    .end local v6    # "found":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_3
    monitor-exit p0

    const/4 v1, 0x1

    return v1

    .line 126
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createDrivingStateEvent(I)Landroid/car/drivingstate/CarDrivingStateEvent;
    .locals 3
    .param p0, "eventValue"    # I

    .line 556
    new-instance v0, Landroid/car/drivingstate/CarDrivingStateEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Landroid/car/drivingstate/CarDrivingStateEvent;-><init>(IJ)V

    return-object v0
.end method

.method private findDrivingStateClient(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    .line 196
    invoke-interface {p1}, Landroid/car/drivingstate/ICarDrivingStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 198
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    .line 199
    .local v2, "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    invoke-virtual {v2, v0}, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->isHoldingBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    return-object v2

    .line 202
    .end local v2    # "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    :cond_0
    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSupportedGears()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    invoke-virtual {v0}, Lcom/android/car/CarPropertyService;->getPropertyList()Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "properyList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 416
    .local v2, "p":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    const v4, 0x11400400

    if-ne v3, v4, :cond_0

    .line 417
    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getConfigArray()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 419
    .end local v2    # "p":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 420
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    monitor-enter p0

    .line 337
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 338
    monitor-exit p0

    return-void

    .line 340
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 341
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 342
    .local v1, "propId":I
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 346
    .local v2, "curTimestamp":J
    const v4, 0x11200402

    if-eq v1, v4, :cond_4

    const v4, 0x11400400

    if-eq v1, v4, :cond_2

    const v4, 0x11600207

    if-eq v1, v4, :cond_1

    .line 388
    const-string v4, "CarDrivingState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received property event for unhandled propId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :cond_1
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 352
    .local v4, "curSpeed":F
    iget-wide v5, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeedTimestamp:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 353
    iput-wide v2, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeedTimestamp:J

    .line 354
    iput v4, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeed:F

    goto :goto_0

    .line 360
    .end local v4    # "curSpeed":F
    :cond_2
    iget-object v4, p0, Lcom/android/car/CarDrivingStateService;->mSupportedGears:Ljava/util/List;

    if-nez v4, :cond_3

    .line 361
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->getSupportedGears()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/car/CarDrivingStateService;->mSupportedGears:Ljava/util/List;

    .line 363
    :cond_3
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 367
    .local v4, "curGear":I
    iget-wide v5, p0, Lcom/android/car/CarDrivingStateService;->mLastGearTimestamp:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 368
    iput-wide v2, p0, Lcom/android/car/CarDrivingStateService;->mLastGearTimestamp:J

    .line 369
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/car/CarDrivingStateService;->mLastGear:I

    goto :goto_0

    .line 375
    .end local v4    # "curGear":I
    :cond_4
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 379
    .local v4, "curParkingBrake":Z
    iget-wide v5, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeTimestamp:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_5

    .line 380
    iput-wide v2, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeTimestamp:J

    .line 381
    iput-boolean v4, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeState:Z

    .line 392
    .end local v4    # "curParkingBrake":Z
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->inferDrivingStateLocked()I

    move-result v4

    .line 399
    .local v4, "drivingState":I
    iget-object v5, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    iget v5, v5, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    if-eq v4, v5, :cond_6

    .line 400
    const-string v6, "CarDrivingState"

    iget-object v5, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    iget v7, v5, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 400
    move-object v5, p0

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/car/CarDrivingStateService;->addTransitionLog(Ljava/lang/String;IIJ)V

    .line 403
    invoke-static {v4}, Lcom/android/car/CarDrivingStateService;->createDrivingStateEvent(I)Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 407
    iget-object v5, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    .line 408
    .local v6, "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    iget-object v7, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    invoke-virtual {v6, v7}, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->dispatchEventToClients(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    .end local v6    # "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    goto :goto_1

    .line 411
    :cond_6
    monitor-exit p0

    return-void

    .line 336
    .end local v0    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v1    # "propId":I
    .end local v2    # "curTimestamp":J
    .end local v4    # "drivingState":I
    .end local p1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private inferDrivingStateLocked()I
    .locals 4

    .line 440
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->updateVehiclePropertiesIfNeeded()V

    .line 458
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->isVehicleKnownToBeParked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    iget-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeedTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeed:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    .line 465
    :cond_1
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 466
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 464
    :cond_3
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private isCarManualTransmissionType()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mSupportedGears:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mSupportedGears:Ljava/util/List;

    const/4 v1, 0x4

    .line 501
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isVehicleKnownToBeParked()Z
    .locals 4

    .line 480
    iget-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastGearTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/car/CarDrivingStateService;->mLastGear:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 481
    const/4 v0, 0x1

    return v0

    .line 482
    :cond_0
    iget-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeTimestamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->isCarManualTransmissionType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-boolean v0, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeState:Z

    return v0

    .line 491
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized subscribeToProperties()V
    .locals 7

    monitor-enter p0

    .line 148
    :try_start_0
    sget-object v0, Lcom/android/car/CarDrivingStateService;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 149
    .local v3, "propertyId":I
    iget-object v4, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const/high16 v5, 0x40a00000    # 5.0f

    iget-object v6, p0, Lcom/android/car/CarDrivingStateService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .end local v3    # "propertyId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :cond_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateVehiclePropertiesIfNeeded()V
    .locals 6

    .line 515
    iget-wide v0, p0, Lcom/android/car/CarDrivingStateService;->mLastGearTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v4, 0x11400400

    invoke-virtual {v0, v4, v1}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 519
    .local v0, "propertyValue":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/car/CarDrivingStateService;->mLastGear:I

    .line 521
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/car/CarDrivingStateService;->mLastGearTimestamp:J

    .line 528
    .end local v0    # "propertyValue":Landroid/car/hardware/CarPropertyValue;
    :cond_0
    iget-wide v4, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeTimestamp:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v4, 0x11200402

    invoke-virtual {v0, v4, v1}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 532
    .restart local v0    # "propertyValue":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_1

    .line 533
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeState:Z

    .line 534
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/car/CarDrivingStateService;->mLastParkingBrakeTimestamp:J

    .line 541
    .end local v0    # "propertyValue":Landroid/car/hardware/CarPropertyValue;
    :cond_1
    iget-wide v4, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeedTimestamp:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    const v2, 0x11600207

    invoke-virtual {v0, v2, v1}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 545
    .restart local v0    # "propertyValue":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_2

    .line 546
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeed:F

    .line 547
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/car/CarDrivingStateService;->mLastSpeedTimestamp:J

    .line 553
    .end local v0    # "propertyValue":Landroid/car/hardware/CarPropertyValue;
    :cond_2
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 304
    const-string v0, "*CarDrivingStateService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    const-string v0, "Driving state change log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Utils$TransitionLog;

    .line 307
    .local v1, "tLog":Lcom/android/car/Utils$TransitionLog;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 308
    .end local v1    # "tLog":Lcom/android/car/Utils$TransitionLog;
    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Driving State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    iget v1, v1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mSupportedGears:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 311
    const-string v0, "Supported gears:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mSupportedGears:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 313
    .local v1, "gear":Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gear:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    .end local v1    # "gear":Ljava/lang/Integer;
    goto :goto_1

    .line 316
    :cond_1
    return-void
.end method

.method public declared-synchronized getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;
    .locals 1

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 7

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->checkPropertySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "CarDrivingState"

    const-string v1, "init failure.  Driving state will always be fully restrictive"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 96
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/car/CarServiceThreadPool;->get()Lcom/android/car/CarServiceThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$CarDrivingStateService$NjoS5Z3NhJsnsHeT13l6uYS-AWc;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarDrivingStateService$NjoS5Z3NhJsnsHeT13l6uYS-AWc;-><init>(Lcom/android/car/CarDrivingStateService;)V

    invoke-virtual {v0, v1}, Lcom/android/car/CarServiceThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mSubscribFuture:Ljava/util/concurrent/Future;

    .line 101
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->inferDrivingStateLocked()I

    move-result v0

    invoke-static {v0}, Lcom/android/car/CarDrivingStateService;->createDrivingStateEvent(I)Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 102
    const-string v2, "CarDrivingState Boot"

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    iget v4, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;

    iget-wide v5, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->timeStamp:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/car/CarDrivingStateService;->addTransitionLog(Ljava/lang/String;IIJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public injectDrivingState(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 242
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CONTROL_APP_BLOCKING"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    .line 245
    .local v1, "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    invoke-virtual {v1, p1}, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->dispatchEventToClients(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    .line 246
    .end local v1    # "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method public synthetic lambda$init$0$CarDrivingStateService()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/car/CarDrivingStateService;->subscribeToProperties()V

    .line 98
    return-void
.end method

.method public declared-synchronized registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    monitor-enter p0

    .line 166
    if-eqz p1, :cond_1

    .line 174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarDrivingStateService;->findDrivingStateClient(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    move-result-object v0

    .line 175
    .local v0, "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    invoke-direct {v1, p0, p1}, Lcom/android/car/CarDrivingStateService$DrivingStateClient;-><init>(Lcom/android/car/CarDrivingStateService;Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 178
    :try_start_1
    invoke-interface {p1}, Landroid/car/drivingstate/ICarDrivingStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    nop

    .line 183
    :try_start_2
    iget-object v1, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CarDrivingState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot link death recipient to binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    .end local v0    # "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    .end local p1    # "listener":Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 170
    .restart local p1    # "listener":Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    .end local p1    # "listener":Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 7

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mSubscribFuture:Ljava/util/concurrent/Future;

    const-string v1, "CarDrivingState"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/car/CarDrivingStateService;->REQUIRED_PROPERTIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 112
    .local v4, "property":I
    iget-object v5, p0, Lcom/android/car/CarDrivingStateService;->mPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v6, p0, Lcom/android/car/CarDrivingStateService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    invoke-virtual {v5, v4, v6}, Lcom/android/car/CarPropertyService;->unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 111
    .end local v4    # "property":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    .line 115
    .local v1, "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    invoke-static {v1}, Lcom/android/car/CarDrivingStateService$DrivingStateClient;->access$000(Lcom/android/car/CarDrivingStateService$DrivingStateClient;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    nop

    .end local v1    # "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/car/CarDrivingStateService;->createDrivingStateEvent(I)Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarDrivingStateService;->mCurrentDrivingState:Landroid/car/drivingstate/CarDrivingStateEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    monitor-enter p0

    .line 214
    if-eqz p1, :cond_1

    .line 219
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarDrivingStateService;->findDrivingStateClient(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)Lcom/android/car/CarDrivingStateService$DrivingStateClient;

    move-result-object v0

    .line 220
    .local v0, "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    if-nez v0, :cond_0

    .line 221
    const-string v1, "CarDrivingState"

    const-string v2, "unregisterDrivingStateChangeListener(): listener was not previously registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 225
    .end local p0    # "this":Lcom/android/car/CarDrivingStateService;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/car/drivingstate/ICarDrivingStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 226
    iget-object v1, p0, Lcom/android/car/CarDrivingStateService;->mDrivingStateClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 213
    .end local v0    # "client":Lcom/android/car/CarDrivingStateService$DrivingStateClient;
    .end local p1    # "listener":Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 215
    .restart local p1    # "listener":Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    :cond_1
    :try_start_2
    const-string v0, "CarDrivingState"

    const-string v1, "unregisterDrivingStateChangeListener(): listener null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local p1    # "listener":Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    :goto_0
    monitor-exit p0

    throw p1
.end method
