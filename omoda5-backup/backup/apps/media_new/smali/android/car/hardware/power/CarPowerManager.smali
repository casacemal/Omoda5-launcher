.class public Landroid/car/hardware/power/CarPowerManager;
.super Ljava/lang/Object;
.source "CarPowerManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;,
        Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarPowerManager"


# instance fields
.field private mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

.field private mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

.field private mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/car/hardware/power/ICarPower;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    .line 207
    invoke-static {p1}, Landroid/car/hardware/power/ICarPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPower;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/power/CarPowerManager;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->updateFuture(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/hardware/power/CarPowerManager;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    return-object p0
.end method

.method static synthetic access$300(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;
    .locals 0

    .line 38
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    return-object p0
.end method

.method private cleanupFuture()V
    .locals 2

    .line 354
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    :cond_1
    return-void
.end method

.method private setServiceForListenerLocked(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    if-nez v0, :cond_1

    .line 280
    new-instance v0, Landroid/car/hardware/power/CarPowerManager$1;

    invoke-direct {v0, p0, p1}, Landroid/car/hardware/power/CarPowerManager$1;-><init>(Landroid/car/hardware/power/CarPowerManager;Z)V

    if-eqz p1, :cond_0

    .line 296
    :try_start_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p1, v0}, Landroid/car/hardware/power/ICarPower;->registerListenerWithCompletion(Landroid/car/hardware/power/ICarPowerStateListener;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p1, v0}, Landroid/car/hardware/power/ICarPower;->registerListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 300
    :goto_0
    iput-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateFuture(I)V
    .locals 1

    .line 334
    invoke-direct {p0}, Landroid/car/hardware/power/CarPowerManager;->cleanupFuture()V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 339
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 340
    new-instance v0, Landroid/car/hardware/power/-$$Lambda$CarPowerManager$0LhGRWlJk6LDgHSx02yuXNtpPMI;

    invoke-direct {v0, p0}, Landroid/car/hardware/power/-$$Lambda$CarPowerManager$0LhGRWlJk6LDgHSx02yuXNtpPMI;-><init>(Landroid/car/hardware/power/CarPowerManager;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public clearListener()V
    .locals 3

    .line 313
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    const/4 v2, 0x0

    .line 315
    iput-object v2, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    .line 316
    iput-object v2, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 317
    iput-object v2, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    .line 318
    invoke-direct {p0}, Landroid/car/hardware/power/CarPowerManager;->cleanupFuture()V

    .line 319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string p0, "CarPowerManager"

    const-string v0, "unregisterListener: listener was not registered"

    .line 322
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 327
    :cond_0
    :try_start_1
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0, v1}, Landroid/car/hardware/power/ICarPower;->unregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    .line 319
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getBackLightStatus()Z
    .locals 2

    .line 398
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->getBackLightStatus()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in getBackLightStatus"

    .line 400
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getBootReason()I
    .locals 2

    .line 415
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->getBootReason()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in getBootReason"

    .line 417
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentPowerMode()I
    .locals 2

    .line 519
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->getCurrentPowerMode()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in getCurrentPowerMode"

    .line 521
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x9

    :goto_0
    return p0
.end method

.method public getMCUVersion()Ljava/lang/String;
    .locals 2

    .line 451
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->getMCUVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in getMCUVersion"

    .line 453
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getMCUVersionForApp()Ljava/lang/String;
    .locals 2

    .line 464
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->getMCUVersionForApp()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in getMCUVersionForApp"

    .line 466
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getTempRunTime()I
    .locals 2

    .line 505
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->getTempRunTime()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in getTempRunTime"

    .line 507
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x14

    :goto_0
    return p0
.end method

.method public synthetic lambda$updateFuture$0$CarPowerManager(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 341
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_0

    const-string p1, "CarPowerManager"

    const-string v0, "Exception occurred while waiting for future"

    .line 342
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    :cond_0
    :try_start_0
    iget-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    invoke-interface {p1, p0}, Landroid/car/hardware/power/ICarPower;->finished(Landroid/car/hardware/power/ICarPowerStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 347
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 366
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerToService:Landroid/car/hardware/power/ICarPowerStateListener;

    .line 368
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 368
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public reEnterTempRunMode()V
    .locals 2

    .line 477
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->reEnterTempRunMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in reEnterTempRunMode"

    .line 479
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public requestMCUDoFactoryReset()V
    .locals 2

    const-string v0, "CarPowerManager"

    :try_start_0
    const-string v1, "request MCU Do Factory Reset"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->requestMCUDoFactoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception in requestMCUDoFactoryReset"

    .line 430
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public requestRestartNow()V
    .locals 2

    .line 439
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->requestRestartNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CarPowerManager"

    const-string v1, "Exception in requestRestartNow"

    .line 441
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public requestShutdownOnNextSuspend()V
    .locals 0

    .line 216
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->requestShutdownOnNextSuspend()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 218
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public scheduleNextWakeupTime(I)V
    .locals 0

    .line 228
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0, p1}, Landroid/car/hardware/power/ICarPower;->scheduleNextWakeupTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 230
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public sendEventToMCU(Z)V
    .locals 1

    .line 542
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0, p1}, Landroid/car/hardware/power/ICarPower;->sendEventToMCU(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CarPowerManager"

    const-string v0, "Exception in getCurrentPowerMode"

    .line 544
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendPROModeExit(Z)V
    .locals 1

    .line 553
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0, p1}, Landroid/car/hardware/power/ICarPower;->sendPROModeExit(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CarPowerManager"

    const-string v0, "Exception in getCurrentPowerMode"

    .line 555
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setBackLightEnable(Z)V
    .locals 1

    .line 383
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0, p1}, Landroid/car/hardware/power/ICarPower;->setBackLightEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CarPowerManager"

    const-string v0, "Exception in seBackLightEnable"

    .line 385
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    .locals 2

    .line 244
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    if-nez v1, :cond_0

    .line 249
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    const/4 p1, 0x0

    .line 250
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->setServiceForListenerLocked(Z)V

    .line 251
    monitor-exit v0

    return-void

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener must be cleared first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 251
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setListenerWithCompletion(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;)V
    .locals 2

    .line 268
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    if-nez v1, :cond_0

    .line 273
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mListenerWithCompletion:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    const/4 p1, 0x1

    .line 274
    invoke-direct {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->setServiceForListenerLocked(Z)V

    .line 275
    monitor-exit v0

    return-void

    .line 270
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Listener must be cleared first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTempRunTime(I)V
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0x78

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0, p1}, Landroid/car/hardware/power/ICarPower;->setTempRunTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CarPowerManager"

    const-string v0, "Exception in setTempRunTime"

    .line 494
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public voltageInfoQuery()F
    .locals 3

    const-string v0, "CarPowerManager"

    .line 529
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mService:Landroid/car/hardware/power/ICarPower;

    invoke-interface {p0}, Landroid/car/hardware/power/ICarPower;->voltageInfoQuery()F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception in getVoltageInfo"

    .line 531
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 533
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voltageInfoQuery: voltageInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
