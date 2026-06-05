.class public Lcom/android/car/garagemode/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;


# static fields
.field private static final LOG:Lcom/android/car/garagemode/Logger;


# instance fields
.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private final mContext:Landroid/content/Context;

.field private final mGarageMode:Lcom/android/car/garagemode/GarageMode;

.field private final mHandler:Landroid/os/Handler;

.field final mWakeupPolicy:Lcom/android/car/garagemode/WakeupPolicy;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/android/car/garagemode/Logger;

    const-string v1, "Controller"

    invoke-direct {v0, v1}, Lcom/android/car/garagemode/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 47
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/car/garagemode/Controller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/car/garagemode/WakeupPolicy;Landroid/os/Handler;Lcom/android/car/garagemode/GarageMode;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/car/garagemode/WakeupPolicy;Landroid/os/Handler;Lcom/android/car/garagemode/GarageMode;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "wakeupPolicy"    # Lcom/android/car/garagemode/WakeupPolicy;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "garageMode"    # Lcom/android/car/garagemode/GarageMode;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/car/garagemode/Controller;->mContext:Landroid/content/Context;

    .line 57
    if-nez p4, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lcom/android/car/garagemode/Controller;->mHandler:Landroid/os/Handler;

    .line 58
    nop

    .line 59
    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/android/car/garagemode/WakeupPolicy;->initFromResources(Landroid/content/Context;)Lcom/android/car/garagemode/WakeupPolicy;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lcom/android/car/garagemode/Controller;->mWakeupPolicy:Lcom/android/car/garagemode/WakeupPolicy;

    .line 60
    if-nez p5, :cond_2

    new-instance v0, Lcom/android/car/garagemode/GarageMode;

    invoke-direct {v0, p0}, Lcom/android/car/garagemode/GarageMode;-><init>(Lcom/android/car/garagemode/Controller;)V

    goto :goto_2

    :cond_2
    move-object v0, p5

    :goto_2
    iput-object v0, p0, Lcom/android/car/garagemode/Controller;->mGarageMode:Lcom/android/car/garagemode/GarageMode;

    .line 61
    return-void
.end method

.method private handleShutdownCancelled()V
    .locals 0

    .line 192
    invoke-virtual {p0}, Lcom/android/car/garagemode/Controller;->resetGarageMode()V

    .line 193
    return-void
.end method

.method private handleShutdownEnter()V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/android/car/garagemode/Controller;->resetGarageMode()V

    .line 185
    return-void
.end method

.method private handleShutdownPrepare(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/garagemode/Controller;->initiateGarageMode(Ljava/util/concurrent/CompletableFuture;)V

    .line 189
    return-void
.end method

.method private handleSuspendEnter()V
    .locals 0

    .line 180
    invoke-virtual {p0}, Lcom/android/car/garagemode/Controller;->resetGarageMode()V

    .line 181
    return-void
.end method

.method private handleSuspendExit()V
    .locals 0

    .line 176
    invoke-virtual {p0}, Lcom/android/car/garagemode/Controller;->resetGarageMode()V

    .line 177
    return-void
.end method


# virtual methods
.method finishGarageMode()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mGarageMode:Lcom/android/car/garagemode/GarageMode;

    invoke-virtual {v0}, Lcom/android/car/garagemode/GarageMode;->finish()V

    .line 159
    return-void
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getJobSchedulerService()Landroid/app/job/JobScheduler;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/garagemode/Controller;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 66
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v0, p0}, Landroid/car/hardware/power/CarPowerManager;->setListenerWithCompletion(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;)V

    .line 67
    return-void
.end method

.method initiateGarageMode(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 144
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mWakeupPolicy:Lcom/android/car/garagemode/WakeupPolicy;

    invoke-virtual {v0}, Lcom/android/car/garagemode/WakeupPolicy;->incrementCounter()V

    .line 145
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mGarageMode:Lcom/android/car/garagemode/GarageMode;

    invoke-virtual {v0, p1}, Lcom/android/car/garagemode/GarageMode;->enterGarageMode(Ljava/util/concurrent/CompletableFuture;)V

    .line 146
    return-void
.end method

.method isGarageModeActive()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mGarageMode:Lcom/android/car/garagemode/GarageMode;

    invoke-virtual {v0}, Lcom/android/car/garagemode/GarageMode;->isGarageModeActive()Z

    move-result v0

    return v0
.end method

.method public onStateChanged(ILjava/util/concurrent/CompletableFuture;)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "CPM state changed to SHUTDOWN_CANCELLED"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/android/car/garagemode/Controller;->handleShutdownCancelled()V

    .line 80
    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "CPM state changed to SHUTDOWN_PREPARE"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p2}, Lcom/android/car/garagemode/Controller;->handleShutdownPrepare(Ljava/util/concurrent/CompletableFuture;)V

    .line 88
    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "CPM state changed to SHUTDOWN_ENTER"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/android/car/garagemode/Controller;->handleShutdownEnter()V

    .line 84
    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "CPM state changed to SUSPEND_EXIT"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/android/car/garagemode/Controller;->handleSuspendExit()V

    .line 96
    goto :goto_0

    .line 90
    :cond_4
    sget-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "CPM state changed to SUSPEND_ENTER"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/android/car/garagemode/Controller;->handleSuspendEnter()V

    .line 92
    nop

    .line 99
    :goto_0
    return-void
.end method

.method pendingGarageModeJobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mGarageMode:Lcom/android/car/garagemode/GarageMode;

    invoke-virtual {v0}, Lcom/android/car/garagemode/GarageMode;->pendingJobs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v0}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V

    .line 72
    return-void
.end method

.method resetGarageMode()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mGarageMode:Lcom/android/car/garagemode/GarageMode;

    invoke-virtual {v0}, Lcom/android/car/garagemode/GarageMode;->cancel()V

    .line 153
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mWakeupPolicy:Lcom/android/car/garagemode/WakeupPolicy;

    invoke-virtual {v0}, Lcom/android/car/garagemode/WakeupPolicy;->resetCounter()V

    .line 154
    return-void
.end method

.method scheduleNextWakeup()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mWakeupPolicy:Lcom/android/car/garagemode/WakeupPolicy;

    invoke-virtual {v0}, Lcom/android/car/garagemode/WakeupPolicy;->getNextWakeUpInterval()I

    move-result v0

    if-gtz v0, :cond_0

    .line 169
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mWakeupPolicy:Lcom/android/car/garagemode/WakeupPolicy;

    invoke-virtual {v0}, Lcom/android/car/garagemode/WakeupPolicy;->getNextWakeUpInterval()I

    move-result v0

    .line 172
    .local v0, "seconds":I
    iget-object v1, p0, Lcom/android/car/garagemode/Controller;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {v1, v0}, Landroid/car/hardware/power/CarPowerManager;->scheduleNextWakeupTime(I)V

    .line 173
    return-void
.end method

.method sendBroadcast(Landroid/content/Intent;)V
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;

    .line 121
    sget-object v0, Lcom/android/car/garagemode/Controller;->LOG:Lcom/android/car/garagemode/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending broadcast with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/car/garagemode/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method setCarPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0
    .param p1, "cpm"    # Landroid/car/hardware/power/CarPowerManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/android/car/garagemode/Controller;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 164
    return-void
.end method
