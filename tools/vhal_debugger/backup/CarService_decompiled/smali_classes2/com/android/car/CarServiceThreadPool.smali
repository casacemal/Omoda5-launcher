.class public Lcom/android/car/CarServiceThreadPool;
.super Ljava/lang/Object;
.source "CarServiceThreadPool.java"


# static fields
.field private static final IS_DEBUGGABLE:Z

.field private static final SHUTDOWN_TIMEOUT_MILLIS:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "CarServiceThreadPool"

.field private static sInstance:Lcom/android/car/CarServiceThreadPool;


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/car/CarServiceThreadPool;->IS_DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    nop

    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 42
    const-string v1, "system-ui-thread-pool"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/car/CarServiceThreadPool;
    .locals 3

    const-class v0, Lcom/android/car/CarServiceThreadPool;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/android/car/CarServiceThreadPool;

    invoke-direct {v1}, Lcom/android/car/CarServiceThreadPool;-><init>()V

    sput-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    .line 50
    :cond_0
    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    iget-object v1, v1, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Cannot get CarServiceThreadPool - it has been shut down"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 52
    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$submit$0(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 58
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CarServiceThreadPool"

    const-string v2, "Failure"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    throw v0
.end method

.method static declared-synchronized shutdown()V
    .locals 5

    const-class v0, Lcom/android/car/CarServiceThreadPool;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    iget-object v1, v1, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 68
    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    iget-object v1, v1, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    sget-object v1, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    iget-object v1, v1, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x4e20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .local v1, "terminated":Z
    nop

    .line 78
    :try_start_2
    sget-object v2, Lcom/android/car/CarServiceThreadPool;->sInstance:Lcom/android/car/CarServiceThreadPool;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 79
    const-string v2, "CarServiceThreadPool"

    const-string v3, "Shutdown successful"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    .end local v1    # "terminated":Z
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 75
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "CarServiceThreadPool init interrupted"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/car/CarServiceThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/car/-$$Lambda$CarServiceThreadPool$3eBhHjaYL4dR5c5740A_iQNnz30;

    invoke-direct {v1, p1}, Lcom/android/car/-$$Lambda$CarServiceThreadPool$3eBhHjaYL4dR5c5740A_iQNnz30;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
