.class Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;
.super Ljava/util/TimerTask;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownProcessingTimerTask"
.end annotation


# instance fields
.field private mCurrentCount:I

.field private final mExpirationCount:I

.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarPowerManagementService;I)V
    .locals 0
    .param p2, "expirationCount"    # I

    .line 1481
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1482
    iput p2, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mExpirationCount:I

    .line 1483
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    .line 1484
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarPowerManagementService;ILcom/android/car/CarPowerManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/car/CarPowerManagementService$1;

    .line 1477
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;-><init>(Lcom/android/car/CarPowerManagementService;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1488
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    monitor-enter v0

    .line 1489
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$2800(Lcom/android/car/CarPowerManagementService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1491
    monitor-exit v0

    return-void

    .line 1493
    :cond_0
    iget v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    .line 1494
    iget v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mCurrentCount:I

    iget v2, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->mExpirationCount:I

    if-le v1, v2, :cond_1

    .line 1496
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$2900(Lcom/android/car/CarPowerManagementService;)V

    .line 1497
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$700(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v1

    .line 1498
    .local v1, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1700(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 1499
    .end local v1    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    goto :goto_0

    .line 1500
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService;->access$800(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/hal/PowerHalService;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/android/car/hal/PowerHalService;->sendShutdownPostpone(I)V

    .line 1502
    :goto_0
    monitor-exit v0

    .line 1503
    return-void

    .line 1502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
