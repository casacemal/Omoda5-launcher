.class Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;
.super Landroid/os/Handler;
.source "SystemActivityMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/SystemActivityMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityMonitorHandler"
.end annotation


# static fields
.field private static final MSG_BLOCK_ACTIVITY:I = 0x3

.field private static final MSG_FOREGROUND_ACTIVITIES_CHANGED:I = 0x1

.field private static final MSG_PROCESS_DIED:I = 0x2

.field private static final MSG_UPDATE_TASKS:I


# instance fields
.field final synthetic this$0:Lcom/android/car/SystemActivityMonitoringService;


# direct methods
.method private constructor <init>(Lcom/android/car/SystemActivityMonitoringService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 495
    iput-object p1, p0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    .line 496
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 497
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/SystemActivityMonitoringService;Landroid/os/Looper;Lcom/android/car/SystemActivityMonitoringService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/SystemActivityMonitoringService$1;

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;-><init>(Lcom/android/car/SystemActivityMonitoringService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;
    .param p1, "x1"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->requestBlockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 489
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->requestForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 489
    invoke-direct {p0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->requestProcessDied(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;

    .line 489
    invoke-direct {p0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->requestUpdatingTask()V

    return-void
.end method

.method private requestBlockActivity(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V
    .locals 2
    .param p1, "currentTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    .param p2, "newActivityIntent"    # Landroid/content/Intent;

    .line 518
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 521
    return-void
.end method

.method private requestForegroundActivitiesChanged(IIZ)V
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 506
    nop

    .line 507
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 506
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method

.method private requestProcessDied(II)V
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 512
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 513
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    return-void
.end method

.method private requestUpdatingTask()V
    .locals 1

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 501
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 502
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 525
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 539
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/Intent;

    invoke-static {v1, v2, v3}, Lcom/android/car/SystemActivityMonitoringService;->access$1200(Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;)V

    goto :goto_0

    .line 534
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;Landroid/content/Intent;>;"
    :cond_1
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/car/SystemActivityMonitoringService;->access$1100(Lcom/android/car/SystemActivityMonitoringService;II)V

    .line 535
    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/car/SystemActivityMonitoringService;->access$1000(Lcom/android/car/SystemActivityMonitoringService;IIZ)V

    .line 531
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-static {v0}, Lcom/android/car/SystemActivityMonitoringService;->access$900(Lcom/android/car/SystemActivityMonitoringService;)V

    .line 532
    goto :goto_0

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/android/car/SystemActivityMonitoringService$ActivityMonitorHandler;->this$0:Lcom/android/car/SystemActivityMonitoringService;

    invoke-static {v0}, Lcom/android/car/SystemActivityMonitoringService;->access$900(Lcom/android/car/SystemActivityMonitoringService;)V

    .line 528
    nop

    .line 542
    :goto_0
    return-void
.end method
