.class Lcom/android/car/CarPowerManagementService$PowerHandler;
.super Landroid/os/Handler;
.source "CarPowerManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerHandler"
.end annotation


# instance fields
.field private final MAIN_DISPLAY_EVENT_DELAY_MS:J

.field private final MSG_CHECK_STANDBY_MODE:I

.field private final MSG_DISPLAY_BRIGHTNESS_CHANGE:I

.field private final MSG_DO_MCU_FACTORY_RESET:I

.field private final MSG_DO_VOLTAGE_INFO_RES:I

.field private final MSG_MAIN_DISPLAY_STATE_CHANGE:I

.field private final MSG_NOTIFY_POWER_ON:I

.field private final MSG_POWER_STATE_CHANGE:I

.field private final MSG_PROCESSING_COMPLETE:I

.field private final MSG_REENTER_TEMPRUN:I

.field private final MSG_REQUEST_RESTART:I

.field private final MSG_SET_TEMPRUN_TIME:I

.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1347
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    .line 1348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1329
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_POWER_STATE_CHANGE:I

    .line 1330
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_DISPLAY_BRIGHTNESS_CHANGE:I

    .line 1331
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_MAIN_DISPLAY_STATE_CHANGE:I

    .line 1332
    const/4 p1, 0x3

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_PROCESSING_COMPLETE:I

    .line 1335
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_NOTIFY_POWER_ON:I

    .line 1336
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_REQUEST_RESTART:I

    .line 1337
    const/4 p1, 0x6

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_REENTER_TEMPRUN:I

    .line 1338
    const/4 p1, 0x7

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_SET_TEMPRUN_TIME:I

    .line 1339
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_CHECK_STANDBY_MODE:I

    .line 1340
    const/16 p1, 0x9

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_DO_MCU_FACTORY_RESET:I

    .line 1341
    const/16 p1, 0xa

    iput p1, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MSG_DO_VOLTAGE_INFO_RES:I

    .line 1345
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->MAIN_DISPLAY_EVENT_DELAY_MS:J

    .line 1349
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;Lcom/android/car/CarPowerManagementService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/car/CarPowerManagementService$1;

    .line 1328
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPowerManagementService$PowerHandler;-><init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleRestartNow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleReEnterTempRunMode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/CarPowerManagementService$PowerHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # I

    .line 1328
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleSetTempRunTime(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleVoltageInfoRes()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/CarPowerManagementService$PowerHandler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # I

    .line 1328
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleDisplayBrightnessChange(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;
    .param p1, "x1"    # Z

    .line 1328
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleMainDisplayStateChange(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleProcessingComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->cancelAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handlePowerStateChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleCheckStandbyMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->cancelProcessingComplete()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/CarPowerManagementService$PowerHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1328
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->handleMCUFactoryReset()V

    return-void
.end method

.method private cancelAll()V
    .locals 1

    .line 1378
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1380
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1381
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1382
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1383
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1384
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1385
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1386
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1387
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1388
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1389
    return-void
.end method

.method private cancelProcessingComplete()V
    .locals 1

    .line 1374
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1375
    return-void
.end method

.method private handleCheckStandbyMode()V
    .locals 1

    .line 1413
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1414
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1415
    return-void
.end method

.method private handleDisplayBrightnessChange(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 1357
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1358
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1359
    return-void
.end method

.method private handleMCUFactoryReset()V
    .locals 1

    .line 1418
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1419
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1420
    return-void
.end method

.method private handleMainDisplayStateChange(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 1362
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1363
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1364
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1365
    return-void
.end method

.method private handlePowerOn()V
    .locals 1

    .line 1393
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1394
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1395
    return-void
.end method

.method private handlePowerStateChange()V
    .locals 1

    .line 1352
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1353
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1354
    return-void
.end method

.method private handleProcessingComplete()V
    .locals 1

    .line 1368
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeMessages(I)V

    .line 1369
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1370
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1371
    return-void
.end method

.method private handleReEnterTempRunMode()V
    .locals 1

    .line 1403
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1404
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    return-void
.end method

.method private handleRestartNow()V
    .locals 1

    .line 1398
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1399
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1400
    return-void
.end method

.method private handleSetTempRunTime(I)V
    .locals 2
    .param p1, "time"    # I

    .line 1408
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1409
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1410
    return-void
.end method

.method private handleVoltageInfoRes()V
    .locals 1

    .line 1423
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1424
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1425
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1431
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "CAR.POWER"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1470
    :pswitch_1
    const-string v0, "cpms handler doHandleVoltageInfoRes"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2700(Lcom/android/car/CarPowerManagementService;)V

    goto/16 :goto_0

    .line 1466
    :pswitch_2
    const-string v0, "cpms handler doHandleMCUFactoryReset"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2600(Lcom/android/car/CarPowerManagementService;)V

    .line 1468
    goto :goto_0

    .line 1462
    :pswitch_3
    const-string v0, "cpms handler doHandleCheckStandbyMode"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2500(Lcom/android/car/CarPowerManagementService;)V

    .line 1464
    goto :goto_0

    .line 1458
    :pswitch_4
    const-string v0, "cpms handler doHandleSetTempRunTime"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$2400(Lcom/android/car/CarPowerManagementService;I)V

    .line 1460
    goto :goto_0

    .line 1454
    :pswitch_5
    const-string v0, "cpms handler doHandleReEnterTempRun"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2300(Lcom/android/car/CarPowerManagementService;)V

    .line 1456
    goto :goto_0

    .line 1450
    :pswitch_6
    const-string v0, "cpms handler doRestartNow"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2200(Lcom/android/car/CarPowerManagementService;)V

    .line 1452
    goto :goto_0

    .line 1445
    :pswitch_7
    const-string v0, "cpms handler doHandleProcessingComplete"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$2100(Lcom/android/car/CarPowerManagementService;)V

    .line 1447
    goto :goto_0

    .line 1441
    :pswitch_8
    const-string v0, "cpms handler doHandleMainDisplayStateChange"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$2000(Lcom/android/car/CarPowerManagementService;Z)V

    .line 1443
    goto :goto_0

    .line 1437
    :pswitch_9
    const-string v0, "cpms handler doHandleDisplayBrightnessChange"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/car/CarPowerManagementService;->access$1900(Lcom/android/car/CarPowerManagementService;I)V

    .line 1439
    goto :goto_0

    .line 1433
    :pswitch_a
    const-string v0, "cpms handler doHandlePowerStateChange"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$PowerHandler;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$1800(Lcom/android/car/CarPowerManagementService;)V

    .line 1435
    nop

    .line 1474
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
