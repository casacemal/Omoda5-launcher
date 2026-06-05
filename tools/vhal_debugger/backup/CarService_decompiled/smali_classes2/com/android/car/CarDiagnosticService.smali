.class public Lcom/android/car/CarDiagnosticService;
.super Landroid/car/diagnostic/ICarDiagnostic$Stub;
.source "CarDiagnosticService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;,
        Lcom/android/car/CarDiagnosticService$LiveFrameRecord;,
        Lcom/android/car/CarDiagnosticService$DiagnosticRecord;,
        Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    }
.end annotation


# instance fields
.field private final mClients:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiagnosticLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/CarDiagnosticService$DiagnosticClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDiagnosticClearPermission:Lcom/android/car/internal/CarPermission;

.field private final mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

.field private final mDiagnosticListeners:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiagnosticLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/Listeners<",
            "Lcom/android/car/CarDiagnosticService$DiagnosticClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mDiagnosticReadPermission:Lcom/android/car/internal/CarPermission;

.field private final mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiagnosticLock"
        }
    .end annotation
.end field

.field private final mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiagnosticLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/DiagnosticHalService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "diagnosticHal"    # Lcom/android/car/hal/DiagnosticHalService;

    .line 80
    invoke-direct {p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    .line 68
    new-instance v0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    .line 81
    iput-object p1, p0, Lcom/android/car/CarDiagnosticService;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 83
    new-instance v0, Lcom/android/car/internal/CarPermission;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mContext:Landroid/content/Context;

    const-string v2, "android.car.permission.CAR_DIAGNOSTICS"

    invoke-direct {v0, v1, v2}, Lcom/android/car/internal/CarPermission;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticReadPermission:Lcom/android/car/internal/CarPermission;

    .line 85
    new-instance v0, Lcom/android/car/internal/CarPermission;

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mContext:Landroid/content/Context;

    const-string v2, "android.car.permission.CLEAR_CAR_DIAGNOSTICS"

    invoke-direct {v0, v1, v2}, Lcom/android/car/internal/CarPermission;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticClearPermission:Lcom/android/car/internal/CarPermission;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarDiagnosticService;Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarDiagnosticService;
    .param p1, "x1"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService;->removeClient(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V

    return-void
.end method

.method private findDiagnosticClientLocked(Landroid/car/diagnostic/ICarDiagnosticEventListener;)Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDiagnosticLock"
        }
    .end annotation

    .line 477
    invoke-interface {p1}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 478
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 479
    .local v2, "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    invoke-virtual {v2, v0}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->isHoldingListenerBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    return-object v2

    .line 482
    .end local v2    # "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    :cond_0
    goto :goto_0

    .line 483
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    return-object v0
.end method

.method static synthetic lambda$processDiagnosticData$1(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)Ljava/util/List;
    .locals 1
    .param p0, "diagnosticClient"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 180
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$release$0(Ljava/lang/Integer;Lcom/android/car/Listeners;)V
    .locals 0
    .param p0, "frameType"    # Ljava/lang/Integer;
    .param p1, "diagnosticListeners"    # Lcom/android/car/Listeners;

    .line 144
    invoke-virtual {p1}, Lcom/android/car/Listeners;->release()V

    return-void
.end method

.method private processDiagnosticData(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 158
    .local v0, "eventsByClient":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/car/CarDiagnosticService$DiagnosticClient;Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;>;"
    const/4 v1, 0x0

    .line 160
    .local v1, "listeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    iget-object v2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 162
    .local v3, "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    invoke-virtual {v3}, Landroid/car/diagnostic/CarDiagnosticEvent;->isLiveFrame()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 164
    invoke-direct {p0, v3}, Lcom/android/car/CarDiagnosticService;->setRecentmostLiveFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 165
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/car/Listeners;

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {v3}, Landroid/car/diagnostic/CarDiagnosticEvent;->isFreezeFrame()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 167
    invoke-direct {p0, v3}, Lcom/android/car/CarDiagnosticService;->setRecentmostFreezeFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 168
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/car/Listeners;

    .line 176
    :goto_1
    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1}, Lcom/android/car/Listeners;->getClients()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/Listeners$ClientWithRate;

    .line 178
    .local v5, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    invoke-virtual {v5}, Lcom/android/car/Listeners$ClientWithRate;->getClient()Lcom/android/car/Listeners$IListener;

    move-result-object v6

    check-cast v6, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 179
    .local v6, "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    sget-object v7, Lcom/android/car/-$$Lambda$CarDiagnosticService$K3aBd1oODaMxNDR94wAy8IBGg9g;->INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$K3aBd1oODaMxNDR94wAy8IBGg9g;

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 181
    .local v7, "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v5    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    .end local v6    # "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .end local v7    # "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    goto :goto_2

    .line 184
    .end local v3    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_1
    goto :goto_0

    .line 170
    .restart local v3    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_2
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    .line 172
    const-string v5, "received unknown diagnostic event: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 170
    const-string v5, "CAR.DIAGNOSTIC"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_0

    .line 185
    .end local v3    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_3
    iget-object v2, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 189
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarDiagnosticService$DiagnosticClient;Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 190
    .local v4, "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 192
    .local v5, "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-virtual {v4, v5}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->dispatchDiagnosticUpdate(Ljava/util/List;)V

    .line 193
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/CarDiagnosticService$DiagnosticClient;Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;>;"
    .end local v4    # "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .end local v5    # "clientEvents":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    goto :goto_3

    .line 194
    :cond_4
    return-void
.end method

.method private removeClient(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V
    .locals 5
    .param p1, "diagnosticClient"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 487
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 489
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getDiagnosticArray()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 490
    .local v3, "diagnostic":I
    nop

    .line 491
    invoke-virtual {p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getICarDiagnosticEventListener()Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object v4

    .line 490
    invoke-virtual {p0, v3, v4}, Lcom/android/car/CarDiagnosticService;->unregisterDiagnosticListener(ILandroid/car/diagnostic/ICarDiagnosticEventListener;)V

    .line 489
    .end local v3    # "diagnostic":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    nop

    .line 497
    return-void

    .line 495
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private setInitialFreezeFrames()V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    .line 112
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameInfoSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getFreezeFrameTimestamps()[J

    move-result-object v0

    .line 114
    .local v0, "timestamps":[J
    if-eqz v0, :cond_0

    .line 115
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 116
    .local v3, "timestamp":J
    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v5, v3, v4}, Lcom/android/car/hal/DiagnosticHalService;->getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/car/CarDiagnosticService;->setRecentmostFreezeFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 115
    .end local v3    # "timestamp":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "timestamps":[J
    :cond_0
    return-void
.end method

.method private setInitialLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "liveFrame":Landroid/car/diagnostic/CarDiagnosticEvent;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isLiveFrameSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService;->getCurrentLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/CarDiagnosticService;->setRecentmostLiveFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    .line 107
    :cond_0
    return-object v0
.end method

.method private setRecentmostFreezeFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "event"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->checkFreezeFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private setRecentmostLiveFrame(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "event"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->checkLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private startDiagnostic(II)Z
    .locals 5
    .param p1, "frameType"    # I
    .param p2, "rate"    # I

    .line 281
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 281
    const-string v1, "starting diagnostic %s at rate %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.DIAGNOSTIC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    .line 284
    .local v0, "diagnosticHal":Lcom/android/car/hal/DiagnosticHalService;
    if-eqz v0, :cond_5

    .line 285
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->isReady()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    const-string v3, "diagnosticHal not ready"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v2

    .line 289
    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    return v3

    .line 304
    :cond_2
    invoke-virtual {v0, v3, p2}, Lcom/android/car/hal/DiagnosticHalService;->requestDiagnosticStart(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 306
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->enable()V

    .line 307
    return v3

    .line 291
    :cond_3
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    return v3

    .line 294
    :cond_4
    invoke-virtual {v0, v2, p2}, Lcom/android/car/hal/DiagnosticHalService;->requestDiagnosticStart(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 296
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->enable()V

    .line 297
    return v3

    .line 312
    :cond_5
    :goto_0
    return v2
.end method

.method private stopDiagnostic(I)V
    .locals 3
    .param p1, "frameType"    # I

    .line 372
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    .line 373
    .local v0, "diagnosticHal":Lcom/android/car/hal/DiagnosticHalService;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v2}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->disableIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {v0, v1}, Lcom/android/car/hal/DiagnosticHalService;->requestDiagnosticStop(I)V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->disableIfNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 380
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/hal/DiagnosticHalService;->requestDiagnosticStop(I)V

    .line 387
    :cond_3
    :goto_0
    return-void

    .line 374
    :cond_4
    :goto_1
    const-string v1, "CAR.DIAGNOSTIC"

    const-string v2, "diagnosticHal not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method


# virtual methods
.method public varargs clearFreezeFrames([J)Z
    .locals 2
    .param p1, "timestamps"    # [J

    .line 452
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticClearPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 453
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService;->isClearFreezeFramesSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 454
    return v1

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService;->isSelectiveClearFreezeFramesSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    return v1

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->lock()V

    .line 461
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/DiagnosticHalService;->clearFreezeFrames([J)V

    .line 462
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->clearEvents()V

    .line 463
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->unlock()V

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 669
    const-string v0, "concurrent modification happened"

    const-string v1, "*CarDiagnosticService*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    const-string v1, "**last events for diagnostics**"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 672
    const-string v1, "last live frame event: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 675
    :cond_0
    const-string v1, "freeze frame events: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->getEvents()Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/car/-$$Lambda$iIXtk07mwjd9ZcasP_C4yfwPh0g;

    invoke-direct {v2, p1}, Lcom/android/car/-$$Lambda$iIXtk07mwjd9ZcasP_C4yfwPh0g;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 677
    const-string v1, "**clients**"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 680
    .local v2, "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    if-eqz v2, :cond_1

    .line 682
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "binder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {v2}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->access$100(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)Landroid/car/diagnostic/ICarDiagnosticEventListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " active diagnostics:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-virtual {v2}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getDiagnosticArray()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 687
    :catch_0
    move-exception v3

    .line 688
    .local v3, "e":Ljava/util/ConcurrentModificationException;
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    .end local v3    # "e":Ljava/util/ConcurrentModificationException;
    :goto_1
    goto :goto_2

    .line 691
    :cond_1
    const-string v3, "null client"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 693
    .end local v2    # "client":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    :goto_2
    goto :goto_0

    .line 696
    :cond_2
    goto :goto_3

    .line 694
    :catch_1
    move-exception v1

    .line 695
    .local v1, "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :goto_3
    const-string v1, "**diagnostic listeners**"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 699
    :try_start_3
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 700
    .local v2, "diagnostic":I
    iget-object v3, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/Listeners;

    .line 701
    .local v3, "diagnosticListeners":Lcom/android/car/Listeners;
    if-eqz v3, :cond_3

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Diagnostic:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " num client:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v3}, Lcom/android/car/Listeners;->getNumberOfClients()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v3}, Lcom/android/car/Listeners;->getRate()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 710
    .end local v2    # "diagnostic":I
    .end local v3    # "diagnosticListeners":Lcom/android/car/Listeners;
    :cond_3
    goto :goto_4

    .line 713
    :cond_4
    goto :goto_5

    .line 711
    :catch_2
    move-exception v1

    .line 712
    .restart local v1    # "e":Ljava/util/ConcurrentModificationException;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    .end local v1    # "e":Ljava/util/ConcurrentModificationException;
    :goto_5
    return-void
.end method

.method public getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "timestamp"    # J

    .line 444
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->lock()V

    .line 445
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->getEvent(J)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    .line 446
    .local v0, "freezeFrame":Landroid/car/diagnostic/CarDiagnosticEvent;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->unlock()V

    .line 447
    return-object v0
.end method

.method public getFreezeFrameTimestamps()[J
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->lock()V

    .line 436
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->getFreezeFrameTimestamps()[J

    move-result-object v0

    .line 437
    .local v0, "timestamps":[J
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->unlock()V

    .line 438
    return-object v0
.end method

.method public getLatestLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->lock()V

    .line 428
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->getLastEvent()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0

    .line 429
    .local v0, "liveFrame":Landroid/car/diagnostic/CarDiagnosticEvent;
    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v1}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->unlock()V

    .line 430
    return-object v0
.end method

.method public init()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticHal:Lcom/android/car/hal/DiagnosticHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/DiagnosticHalService;->setDiagnosticListener(Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;)V

    .line 94
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->setInitialLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 95
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->setInitialFreezeFrames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    nop

    .line 99
    return-void

    .line 97
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isClearFreezeFramesSupported()Z
    .locals 2

    .line 410
    nop

    .line 411
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    .line 412
    .local v0, "diagnosticCapabilities":Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameClearSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 412
    :goto_0
    return v1
.end method

.method public isFreezeFrameNotificationSupported()Z
    .locals 1

    .line 399
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v0

    return v0
.end method

.method public isGetFreezeFrameSupported()Z
    .locals 2

    .line 403
    nop

    .line 404
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    .line 405
    .local v0, "diagnosticCapabilities":Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameInfoSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isFreezeFrameSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 405
    :goto_0
    return v1
.end method

.method public isLiveFrameSupported()Z
    .locals 1

    .line 395
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isLiveFrameSupported()Z

    move-result v0

    return v0
.end method

.method public isSelectiveClearFreezeFramesSupported()Z
    .locals 2

    .line 417
    nop

    .line 418
    invoke-direct {p0}, Lcom/android/car/CarDiagnosticService;->getDiagnosticHal()Lcom/android/car/hal/DiagnosticHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService;->getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    move-result-object v0

    .line 419
    .local v0, "diagnosticCapabilities":Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService;->isClearFreezeFramesSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->isSelectiveClearFreezeFramesSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 419
    :goto_0
    return v1
.end method

.method public onDiagnosticEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService;->processDiagnosticData(Ljava/util/List;)V

    .line 200
    return-void
.end method

.method public registerOrUpdateDiagnosticListener(IILandroid/car/diagnostic/ICarDiagnosticEventListener;)Z
    .locals 11
    .param p1, "frameType"    # I
    .param p2, "rate"    # I
    .param p3, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "shouldStartDiagnostics":Z
    const/4 v1, 0x0

    .line 207
    .local v1, "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    const/4 v2, 0x0

    .line 208
    .local v2, "oldRate":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 209
    .local v3, "diagnosticListeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticReadPermission:Lcom/android/car/internal/CarPermission;

    invoke-virtual {v4}, Lcom/android/car/internal/CarPermission;->assertGranted()V

    .line 212
    invoke-direct {p0, p3}, Lcom/android/car/CarDiagnosticService;->findDiagnosticClientLocked(Landroid/car/diagnostic/ICarDiagnosticEventListener;)Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v4

    .line 213
    const/4 v4, 0x0

    .line 214
    .local v4, "diagnosticClientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    const/4 v5, 0x1

    const-string v6, "CAR.DIAGNOSTIC"

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 215
    :try_start_1
    new-instance v8, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    invoke-direct {v8, p0, p3}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;-><init>(Lcom/android/car/CarDiagnosticService;Landroid/car/diagnostic/ICarDiagnosticEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v8

    .line 217
    :try_start_2
    invoke-interface {p3}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v8, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    nop

    .line 226
    :try_start_3
    iget-object v8, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :catch_0
    move-exception v8

    .line 219
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "received RemoteException trying to register listener for %s"

    new-array v5, v5, [Ljava/lang/Object;

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    .line 221
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    nop

    .line 251
    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 224
    return v7

    .line 228
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    :try_start_4
    iget-object v8, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/Listeners;

    move-object v3, v8

    .line 229
    if-nez v3, :cond_1

    .line 230
    new-instance v8, Lcom/android/car/Listeners;

    invoke-direct {v8, p2}, Lcom/android/car/Listeners;-><init>(I)V

    move-object v3, v8

    .line 231
    iget-object v8, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const/4 v0, 0x1

    goto :goto_1

    .line 234
    :cond_1
    invoke-virtual {v3}, Lcom/android/car/Listeners;->getRate()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v2, v8

    .line 235
    nop

    .line 236
    invoke-virtual {v3, v1}, Lcom/android/car/Listeners;->findClientWithRate(Lcom/android/car/Listeners$IListener;)Lcom/android/car/Listeners$ClientWithRate;

    move-result-object v8

    move-object v4, v8

    .line 238
    :goto_1
    if-nez v4, :cond_2

    .line 239
    new-instance v8, Lcom/android/car/Listeners$ClientWithRate;

    invoke-direct {v8, v1, p2}, Lcom/android/car/Listeners$ClientWithRate;-><init>(Lcom/android/car/Listeners$IListener;I)V

    move-object v4, v8

    .line 241
    invoke-virtual {v3, v4}, Lcom/android/car/Listeners;->addClientWithRate(Lcom/android/car/Listeners$ClientWithRate;)V

    goto :goto_2

    .line 243
    :cond_2
    invoke-virtual {v4, p2}, Lcom/android/car/Listeners$ClientWithRate;->setRate(I)V

    .line 245
    :goto_2
    invoke-virtual {v3}, Lcom/android/car/Listeners;->getRate()I

    move-result v8

    if-le v8, p2, :cond_3

    .line 246
    invoke-virtual {v3, p2}, Lcom/android/car/Listeners;->setRate(I)V

    .line 247
    const/4 v0, 0x1

    .line 249
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->addDiagnostic(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 251
    .end local v4    # "diagnosticClientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 252
    nop

    .line 253
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v8, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v8

    .line 255
    const-string v8, "shouldStartDiagnostics = %s for %s at rate %d"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-eqz v0, :cond_5

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarDiagnosticService;->startDiagnostic(II)Z

    move-result v4

    if-nez v4, :cond_5

    .line 262
    const-string v4, "startDiagnostic failed"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 265
    :try_start_5
    invoke-virtual {v1, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->removeDiagnostic(I)V

    .line 266
    if-eqz v2, :cond_4

    .line 267
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/car/Listeners;->setRate(I)V

    goto :goto_3

    .line 269
    :cond_4
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 272
    :goto_3
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 273
    nop

    .line 274
    return v7

    .line 272
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 277
    :cond_5
    return v5

    .line 251
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public release()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    sget-object v1, Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;->INSTANCE:Lcom/android/car/-$$Lambda$CarDiagnosticService$RWaSYphwlmCsrO3T7AJmx5iJvgE;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 145
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mLiveFrameDiagnosticRecord:Lcom/android/car/CarDiagnosticService$LiveFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$LiveFrameRecord;->disableIfNeeded()Z

    .line 147
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mFreezeFrameDiagnosticRecords:Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;

    invoke-virtual {v0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->disableIfNeeded()Z

    .line 148
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 151
    nop

    .line 152
    return-void

    .line 150
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unregisterDiagnosticListener(ILandroid/car/diagnostic/ICarDiagnosticEventListener;)V
    .locals 12
    .param p1, "frameType"    # I
    .param p2, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "shouldStopDiagnostic":Z
    const/4 v1, 0x0

    .line 320
    .local v1, "shouldRestartDiagnostic":Z
    const/4 v2, 0x0

    .line 321
    .local v2, "newRate":I
    iget-object v3, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 323
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/car/CarDiagnosticService;->findDiagnosticClientLocked(Landroid/car/diagnostic/ICarDiagnosticEventListener;)Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .local v3, "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "CAR.DIAGNOSTIC"

    if-nez v3, :cond_0

    .line 325
    :try_start_1
    const-string v8, "trying to unregister diagnostic client %s for %s which is not registered"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v5

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    .line 327
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    return-void

    .line 333
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->removeDiagnostic(I)V

    .line 334
    invoke-virtual {v3}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->getNumberOfActiveDiagnostic()I

    move-result v8

    if-nez v8, :cond_1

    .line 335
    invoke-virtual {v3}, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->release()V

    .line 336
    iget-object v8, p0, Lcom/android/car/CarDiagnosticService;->mClients:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 338
    :cond_1
    iget-object v8, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/Listeners;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 339
    .local v8, "diagnosticListeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    if-nez v8, :cond_2

    .line 357
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    return-void

    .line 343
    :cond_2
    nop

    .line 344
    :try_start_3
    invoke-virtual {v8, v3}, Lcom/android/car/Listeners;->findClientWithRate(Lcom/android/car/Listeners$IListener;)Lcom/android/car/Listeners$ClientWithRate;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    .local v9, "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    if-nez v9, :cond_3

    .line 357
    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    return-void

    .line 348
    :cond_3
    :try_start_4
    invoke-virtual {v8, v9}, Lcom/android/car/Listeners;->removeClientWithRate(Lcom/android/car/Listeners$ClientWithRate;)V

    .line 349
    invoke-virtual {v8}, Lcom/android/car/Listeners;->getNumberOfClients()I

    move-result v10

    if-nez v10, :cond_4

    .line 350
    const/4 v0, 0x1

    .line 351
    iget-object v10, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticListeners:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {v8}, Lcom/android/car/Listeners;->updateRate()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 353
    invoke-virtual {v8}, Lcom/android/car/Listeners;->getRate()I

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v10

    .line 354
    const/4 v1, 0x1

    .line 357
    .end local v3    # "diagnosticClient":Lcom/android/car/CarDiagnosticService$DiagnosticClient;
    .end local v8    # "diagnosticListeners":Lcom/android/car/Listeners;, "Lcom/android/car/Listeners<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    .end local v9    # "clientWithRate":Lcom/android/car/Listeners$ClientWithRate;, "Lcom/android/car/Listeners$ClientWithRate<Lcom/android/car/CarDiagnosticService$DiagnosticClient;>;"
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 358
    nop

    .line 359
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 363
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 361
    const-string v4, "shouldStopDiagnostic = %s, shouldRestartDiagnostic = %s for type %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz v0, :cond_6

    .line 365
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService;->stopDiagnostic(I)V

    goto :goto_1

    .line 366
    :cond_6
    if-eqz v1, :cond_7

    .line 367
    invoke-direct {p0, p1, v2}, Lcom/android/car/CarDiagnosticService;->startDiagnostic(II)Z

    .line 369
    :cond_7
    :goto_1
    return-void

    .line 357
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/car/CarDiagnosticService;->mDiagnosticLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
