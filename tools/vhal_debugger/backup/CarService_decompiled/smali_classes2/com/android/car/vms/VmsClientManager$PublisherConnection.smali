.class Lcom/android/car/vms/VmsClientManager$PublisherConnection;
.super Ljava/lang/Object;
.source "VmsClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vms/VmsClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublisherConnection"
.end annotation


# instance fields
.field private mClientService:Landroid/car/vms/IVmsPublisherClient;

.field private final mFullName:Ljava/lang/String;

.field private mIsBound:Z

.field private mIsTerminated:Z

.field private final mName:Landroid/content/ComponentName;

.field private mRebindScheduled:Z

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/car/vms/VmsClientManager;


# direct methods
.method constructor <init>(Lcom/android/car/vms/VmsClientManager;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/car/vms/VmsClientManager;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 432
    iput-object p1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z

    .line 428
    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsTerminated:Z

    .line 429
    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mRebindScheduled:Z

    .line 433
    iput-object p2, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mName:Landroid/content/ComponentName;

    .line 434
    iput-object p3, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mUser:Landroid/os/UserHandle;

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    .line 436
    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/vms/VmsClientManager$PublisherConnection;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    .line 423
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/car/vms/VmsClientManager$PublisherConnection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    .line 423
    iget-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z

    return v0
.end method

.method static synthetic lambda$doRebind$0(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 500
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-object v0
.end method


# virtual methods
.method declared-synchronized bind()Z
    .locals 7

    monitor-enter p0

    .line 439
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 442
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsTerminated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 447
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :try_start_3
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager;->access$1500(Lcom/android/car/vms/VmsClientManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    .line 451
    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$1400(Lcom/android/car/vms/VmsClientManager;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mUser:Landroid/os/UserHandle;

    .line 450
    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    goto :goto_0

    .line 452
    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_4
    const-string v2, "VmsClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "While binding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-boolean v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    .line 438
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized doRebind()V
    .locals 4

    monitor-enter p0

    .line 487
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mRebindScheduled:Z

    .line 490
    iget-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsTerminated:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mClientService:Landroid/car/vms/IVmsPublisherClient;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 494
    :cond_0
    const-string v0, "VmsClientManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebinding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->unbind()V

    .line 498
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->bind()Z

    .line 499
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$1700(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 500
    :try_start_1
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager;->access$1700(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/car/vms/-$$Lambda$VmsClientManager$PublisherConnection$5_xjWyYul9IPJSIlrs24rDYXQv0;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$PublisherConnection$5_xjWyYul9IPJSIlrs24rDYXQv0;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 501
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 502
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    monitor-exit p0

    return-void

    .line 502
    :catchall_0
    move-exception v1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 491
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 486
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized notifyOnDisconnect()V
    .locals 2

    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mClientService:Landroid/car/vms/IVmsPublisherClient;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$1800(Lcom/android/car/vms/VmsClientManager;)Lcom/android/car/VmsPublisherService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/car/VmsPublisherService;->onClientDisconnected(Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mClientService:Landroid/car/vms/IVmsPublisherClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :cond_0
    monitor-exit p0

    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 536
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->notifyOnDisconnect()V

    .line 537
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->scheduleRebind()V

    .line 538
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 522
    invoke-static {p2}, Landroid/car/vms/IVmsPublisherClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsPublisherClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mClientService:Landroid/car/vms/IVmsPublisherClient;

    .line 523
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$1800(Lcom/android/car/vms/VmsClientManager;)Lcom/android/car/VmsPublisherService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mClientService:Landroid/car/vms/IVmsPublisherClient;

    invoke-virtual {v0, v1, v2}, Lcom/android/car/VmsPublisherService;->onClientConnected(Ljava/lang/String;Landroid/car/vms/IVmsPublisherClient;)V

    .line 524
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 529
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->notifyOnDisconnect()V

    .line 530
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->scheduleRebind()V

    .line 531
    return-void
.end method

.method declared-synchronized scheduleRebind()V
    .locals 4

    monitor-enter p0

    .line 474
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mRebindScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 475
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$1400(Lcom/android/car/vms/VmsClientManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/car/vms/-$$Lambda$xJ4lZcWagwMOLrGKDO2vmn3JGSE;

    invoke-direct {v1, p0}, Lcom/android/car/vms/-$$Lambda$xJ4lZcWagwMOLrGKDO2vmn3JGSE;-><init>(Lcom/android/car/vms/VmsClientManager$PublisherConnection;)V

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$1600(Lcom/android/car/vms/VmsClientManager;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mRebindScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 473
    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized terminate()V
    .locals 1

    monitor-enter p0

    .line 507
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsTerminated:Z

    .line 508
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->notifyOnDisconnect()V

    .line 509
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->unbind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-void

    .line 506
    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized unbind()V
    .locals 4

    monitor-enter p0

    .line 460
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 461
    monitor-exit p0

    return-void

    .line 466
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$1500(Lcom/android/car/vms/VmsClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    .line 468
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "VmsClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "While unbinding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mFullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->mIsBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 471
    monitor-exit p0

    return-void

    .line 459
    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
