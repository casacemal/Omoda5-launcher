.class public Lcom/android/car/SystemActivityMonitoringService;
.super Ljava/lang/Object;
.source "SystemActivityMonitoringService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;,
        Lcom/android/car/SystemActivityMonitoringService$TaskListener;,
        Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;,
        Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;,
        Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    }
.end annotation


# static fields
.field private static final INVALID_STACK_ID:I = -0x1


# instance fields
.field private final mActivityLaunchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAm:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mFocusedStackId:I

.field private final mForegroundUidPids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

.field private final mMonitorHandlerThread:Landroid/os/HandlerThread;

.field private final mProcessObserver:Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

.field private final mTaskListener:Lcom/android/car/SystemActivityMonitoringService$TaskListener;

.field private final mTopTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mFocusedStackId:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    .line 120
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.AM"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mMonitorHandlerThread:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mMonitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mMonitorHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;-><init>(Lcom/android/car/SystemActivityMonitoringService;Landroid/os/Looper;Lcom/android/car/SystemActivityMonitoringService$1;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    .line 124
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

    invoke-direct {v0, p0, v3}, Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;-><init>(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$1;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mProcessObserver:Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

    .line 125
    new-instance v0, Lcom/android/car/SystemActivityMonitoringService$TaskListener;

    invoke-direct {v0, p0, v3}, Lcom/android/car/SystemActivityMonitoringService$TaskListener;-><init>(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$1;)V

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mTaskListener:Lcom/android/car/SystemActivityMonitoringService$TaskListener;

    .line 126
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mProcessObserver:Lcom/android/car/SystemActivityMonitoringService$ProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 131
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mTaskListener:Lcom/android/car/SystemActivityMonitoringService$TaskListener;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    nop

    .line 136
    invoke-direct {p0}, Lcom/android/car/SystemActivityMonitoringService;->updateTasks()V

    .line 137
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/car/SystemActivityMonitoringService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/SystemActivityMonitoringService;->handleForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/SystemActivityMonitoringService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->handleProcessDied(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p1, "x1"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->handleBlockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/SystemActivityMonitoringService;)Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 54
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/car/SystemActivityMonitoringService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService;

    .line 54
    invoke-direct {p0}, Lcom/android/car/SystemActivityMonitoringService;->updateTasks()V

    return-void
.end method

.method private doHandlePidGoneLocked(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 405
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 406
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 407
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_0
    return-void
.end method

.method private findActivityLaunchListenerLocked(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)I
    .locals 3
    .param p1, "listener"    # Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 261
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 262
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 264
    return v1

    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findTaskAndGrantFocus(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 435
    const-string v0, "CAR.AM"

    :try_start_0
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    nop

    .line 440
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$StackInfo;

    .line 441
    .local v3, "info":Landroid/app/ActivityManager$StackInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 442
    goto :goto_0

    .line 444
    :cond_0
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 446
    .local v4, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 448
    :try_start_1
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    iget v5, v3, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    goto :goto_1

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot setFocusedStack to stack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/app/ActivityManager$StackInfo;->stackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 454
    .end local v3    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 455
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot give focus, cannot find Activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void

    .line 436
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :catch_1
    move-exception v1

    .line 437
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "cannot getTasks"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    return-void
.end method

.method private handleBlockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 6
    .param p1, "currentTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "newActivityIntent"    # Landroid/content/Intent;

    .line 418
    const-string v0, "display_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 420
    .local v0, "displayId":I
    const-string v1, "CAR.AM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching blocking activity on display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 425
    .local v1, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 426
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v5, v5, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/SystemActivityMonitoringService;->findTaskAndGrantFocus(Landroid/content/ComponentName;)V

    .line 430
    return-void
.end method

.method private handleForegroundActivitiesChanged(IIZ)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 384
    monitor-enter p0

    .line 385
    if-eqz p3, :cond_1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 387
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 388
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 389
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    nop

    .end local v0    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 393
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->doHandlePidGoneLocked(II)V

    .line 395
    :goto_0
    monitor-exit p0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 399
    monitor-enter p0

    .line 400
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService;->doHandlePidGoneLocked(II)V

    .line 401
    monitor-exit p0

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateTasks()V
    .locals 15

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 305
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    nop

    .line 306
    const/4 v1, -0x1

    .line 310
    .local v1, "focusedStackId":I
    :try_start_1
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 311
    .local v2, "focusedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v2, :cond_0

    .line 312
    iget v3, v2, Landroid/app/ActivityManager$StackInfo;->stackId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    move v2, v1

    goto :goto_0

    .line 311
    :cond_0
    move v2, v1

    .line 317
    .end local v1    # "focusedStackId":I
    .local v2, "focusedStackId":I
    :goto_0
    nop

    .line 319
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v1

    .line 320
    .local v3, "topTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    monitor-enter p0

    .line 322
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 323
    .local v4, "info":Landroid/app/ActivityManager$StackInfo;
    iget v6, v4, Landroid/app/ActivityManager$StackInfo;->displayId:I

    move v13, v6

    .line 324
    .local v13, "displayId":I
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v6, v6

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-nez v6, :cond_2

    .line 325
    goto :goto_1

    .line 327
    :cond_2
    new-instance v14, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    iget-object v7, v4, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v8, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v8, v6, v8

    iget v9, v4, Landroid/app/ActivityManager$StackInfo;->displayId:I

    iget v10, v4, Landroid/app/ActivityManager$StackInfo;->position:I

    const/4 v12, 0x0

    move-object v6, v14

    move-object v11, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;-><init>(Landroid/content/ComponentName;IIILandroid/app/ActivityManager$StackInfo;Lcom/android/car/SystemActivityMonitoringService$1;)V

    move-object v6, v14

    .line 330
    .local v6, "newTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 332
    .local v7, "currentTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    if-eqz v7, :cond_3

    iget v8, v6, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->position:I

    iget v9, v7, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->position:I

    if-le v8, v9, :cond_4

    .line 334
    :cond_3
    invoke-virtual {v3, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    const-string v8, "CAR.AM"

    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 336
    const-string v5, "CAR.AM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating top task to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v6    # "newTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .end local v7    # "currentTopTaskInfo":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .end local v13    # "displayId":I
    :cond_4
    goto :goto_1

    .line 341
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 342
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 344
    .local v4, "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 345
    .local v6, "displayId":I
    iget-object v7, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    .end local v4    # "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .end local v6    # "displayId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    .end local v1    # "i":I
    :cond_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 350
    .local v1, "numListeners":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    if-ge v4, v1, :cond_9

    .line 351
    iget-object v6, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 352
    .local v6, "listener":Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 353
    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 355
    .local v8, "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    const-string v9, "CAR.AM"

    invoke-static {v9, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Notifying about top task: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CAR.AM"

    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_7
    invoke-interface {v6, v8}, Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;->onActivityLaunch(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V

    .line 352
    .end local v8    # "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 350
    .end local v6    # "listener":Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;
    .end local v7    # "i":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 361
    .end local v4    # "j":I
    :cond_9
    return-void

    .line 347
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 314
    .end local v2    # "focusedStackId":I
    .end local v3    # "topTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    .local v1, "focusedStackId":I
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AM"

    const-string v4, "cannot getFocusedStackId"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    return-void

    .line 302
    .end local v0    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    .end local v1    # "focusedStackId":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.AM"

    const-string v2, "cannot getTasks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    return-void
.end method


# virtual methods
.method public blockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 1
    .param p1, "currentTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "newActivityIntent"    # Landroid/content/Intent;

    .line 177
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mHandler:Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    invoke-static {v0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->access$300(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    .line 178
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 149
    const-string v0, "*SystemActivityMonitoringService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v0, " Top Tasks per display:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 154
    .local v1, "displayId":I
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 155
    .local v2, "info":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    if-eqz v2, :cond_0

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    .end local v1    # "displayId":I
    .end local v2    # "info":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_1
    const-string v0, " Foreground uid-pids:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 161
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 162
    .local v2, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v2, :cond_2

    .line 163
    goto :goto_1

    .line 165
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 167
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " focused stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mFocusedStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFocusedStackForTopActivity(Landroid/content/ComponentName;)Landroid/app/ActivityManager$StackInfo;
    .locals 4
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 366
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .local v1, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    nop

    .line 371
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 372
    return-object v0

    .line 374
    :cond_0
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 376
    .local v2, "topActivity":Landroid/content/ComponentName;
    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    return-object v1

    .line 379
    :cond_1
    return-object v0

    .line 367
    .end local v1    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    .end local v2    # "topActivity":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.AM"

    const-string v3, "cannot getFocusedStackId"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    return-object v0
.end method

.method public getTopTasks()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 182
    .local v0, "tasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;>;"
    monitor-enter p0

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 185
    .local v2, "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    if-nez v2, :cond_0

    .line 186
    const-string v3, "CAR.AM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top tasks contains null. Full content is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/SystemActivityMonitoringService;->mTopTasks:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v5}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_1

    .line 190
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v2    # "topTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    .line 193
    return-object v0

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 0

    .line 141
    return-void
.end method

.method public isInForeground(II)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mForegroundUidPids:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 199
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 200
    monitor-exit p0

    return v1

    .line 202
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 205
    .end local v0    # "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    monitor-exit p0

    .line 206
    return v1

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 271
    if-eqz p1, :cond_1

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/SystemActivityMonitoringService;->findActivityLaunchListenerLocked(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)I

    move-result v0

    .line 277
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    const-string v1, "CAR.AM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already register listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "index":I
    :goto_0
    monitor-exit p0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 0

    .line 145
    return-void
.end method

.method public restartTask(I)V
    .locals 7
    .param p1, "taskId"    # I

    .line 219
    const-string v0, "CAR.AM"

    const/4 v1, 0x0

    .line 220
    .local v1, "rootActivityName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 223
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/car/SystemActivityMonitoringService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    .line 224
    .local v4, "info":Landroid/app/ActivityManager$StackInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 225
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v6, v6, v5

    if-ne v6, p1, :cond_0

    .line 226
    iget-object v3, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    move-object v1, v3

    .line 227
    iget v3, v4, Landroid/app/ActivityManager$StackInfo;->userId:I

    move v2, v3

    .line 228
    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root activity is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User id is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 224
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 236
    .end local v4    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v5    # "i":I
    :cond_1
    goto :goto_0

    .line 240
    :cond_2
    :goto_2
    nop

    .line 242
    if-nez v1, :cond_3

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find root activity with task id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v3, "rootActivityIntent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const/4 v4, 0x4

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restarting root activity with user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_4
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 258
    return-void

    .line 237
    .end local v3    # "rootActivityIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Could not get stack info"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    return-void
.end method

.method public unRegisterActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;

    .line 286
    if-eqz p1, :cond_1

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/SystemActivityMonitoringService;->findActivityLaunchListenerLocked(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)I

    move-result v0

    .line 292
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService;->mActivityLaunchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    .end local v0    # "index":I
    :cond_0
    monitor-exit p0

    .line 296
    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
