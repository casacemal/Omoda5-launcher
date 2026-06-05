.class Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;
.super Ljava/lang/Object;
.source "CarAudioService.java"

# interfaces
.implements Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/audio/CarAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityLaunchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/audio/CarAudioService;


# direct methods
.method private constructor <init>(Lcom/android/car/audio/CarAudioService;)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/audio/CarAudioService;Lcom/android/car/audio/CarAudioService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p2, "x1"    # Lcom/android/car/audio/CarAudioService$1;

    .line 1446
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;-><init>(Lcom/android/car/audio/CarAudioService;)V

    return-void
.end method


# virtual methods
.method public onActivityLaunch(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)V
    .locals 10
    .param p1, "topTask"    # Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1450
    const-string v0, "CAR.AUDIO"

    const/4 v1, -0x1

    .line 1451
    .local v1, "displayId":I
    const/4 v2, -0x1

    .line 1452
    .local v2, "uid":I
    const/4 v3, -0x1

    .line 1454
    .local v3, "zoneId":I
    if-eqz p1, :cond_8

    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 1458
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v5}, Lcom/android/car/audio/CarAudioService;->access$900(Lcom/android/car/audio/CarAudioService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1459
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v5}, Lcom/android/car/audio/CarAudioService;->access$900(Lcom/android/car/audio/CarAudioService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;

    .line 1460
    .local v5, "tmpTopTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    invoke-virtual {v5, p1}, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->isMatching(Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1461
    return-void

    .line 1458
    .end local v5    # "tmpTopTask":Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1466
    .end local v4    # "i":I
    :cond_2
    :try_start_0
    iget-object v4, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->stackInfo:Landroid/app/ActivityManager$StackInfo;

    iget v4, v4, Landroid/app/ActivityManager$StackInfo;->userId:I

    .line 1467
    .local v4, "userId":I
    iget-object v5, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->topActivity:Landroid/content/ComponentName;

    .line 1470
    .local v5, "componentName":Landroid/content/ComponentName;
    iget v6, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->taskId:I

    const v7, 0x186a0

    div-int/2addr v6, v7

    .line 1471
    .local v6, "realUserId":I
    if-eq v6, v4, :cond_3

    .line 1472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change userid from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    move v4, v6

    .line 1475
    :cond_3
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v7}, Lcom/android/car/audio/CarAudioService;->access$1000(Lcom/android/car/audio/CarAudioService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1476
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1475
    invoke-virtual {v7, v8, v9, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move v2, v7

    .line 1477
    iget v7, p1, Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;->displayId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v7

    .line 1481
    .end local v4    # "userId":I
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "realUserId":I
    nop

    .line 1482
    const/16 v4, 0x2710

    if-le v2, v4, :cond_7

    if-gez v1, :cond_4

    goto :goto_1

    .line 1486
    :cond_4
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v4}, Lcom/android/car/audio/CarAudioService;->access$1100(Lcom/android/car/audio/CarAudioService;)Landroid/hardware/display/DisplayManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 1488
    .local v4, "display":Landroid/view/Display;
    if-nez v4, :cond_5

    .line 1489
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null display id :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    return-void

    .line 1493
    :cond_5
    invoke-virtual {v4}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    .line 1494
    .local v0, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    if-eqz v0, :cond_6

    .line 1495
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/car/audio/CarAudioService;->getZoneIdForDisplayPortId(B)I

    move-result v3

    .line 1499
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-virtual {v5, v3, v2}, Lcom/android/car/audio/CarAudioService;->setZoneIdForUid(II)Z

    .line 1501
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;->this$0:Lcom/android/car/audio/CarAudioService;

    invoke-static {v5}, Lcom/android/car/audio/CarAudioService;->access$900(Lcom/android/car/audio/CarAudioService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    return-void

    .line 1497
    :cond_6
    return-void

    .line 1483
    .end local v0    # "physicalAddress":Landroid/view/DisplayAddress$Physical;
    .end local v4    # "display":Landroid/view/Display;
    :cond_7
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ivalid uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",or invalid displayId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    return-void

    .line 1478
    :catch_0
    move-exception v4

    .line 1479
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "onActivityLaunch:"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1480
    return-void

    .line 1455
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_2
    return-void
.end method
