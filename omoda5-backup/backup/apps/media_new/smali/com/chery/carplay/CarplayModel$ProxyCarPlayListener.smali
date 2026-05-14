.class Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;
.super Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;
.source "CarplayModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/carplay/CarplayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyCarPlayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/carplay/CarplayModel;


# direct methods
.method private constructor <init>(Lcom/chery/carplay/CarplayModel;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/carplay/CarplayModel;Lcom/chery/carplay/CarplayModel$1;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;-><init>(Lcom/chery/carplay/CarplayModel;)V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/String;)V
    .locals 3

    .line 500
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotifyCPReadyToAuth(Ljava/lang/String;I)V
    .locals 3

    .line 558
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyCPReadyToAuth: uniqueInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",connectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {p2}, Lcom/chery/carplay/CPCommon$ConnectType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    .line 561
    iput v1, v0, Landroid/os/Message;->what:I

    .line 562
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uniqueInfo"

    .line 563
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "connecttype"

    .line 564
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 566
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel$CPHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 466
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyDevTransport: btMac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",serialNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",isSupportCarPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 469
    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "btMac"

    .line 471
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serialNum"

    .line 472
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isSupportCarplay"

    .line 473
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 475
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel$CPHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNotifyDisableBt(Ljava/lang/String;)V
    .locals 3

    .line 552
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyDisableBt: btMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotifyLauncherPop(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 585
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyLauncherPop: popType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",popMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",deviceName:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    const/16 p2, 0x14

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0, p3}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotifyVideoChange(Z)V
    .locals 3

    .line 592
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyVideoChange: isStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-super {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyVideoChange(Z)V

    .line 595
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object v0

    new-instance v1, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener$1;-><init>(Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;Z)V

    invoke-virtual {v0, v1}, Lcom/chery/carplay/CarplayModel$CPHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 480
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStsUpdate: sts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",btMac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 483
    iput v1, v0, Landroid/os/Message;->what:I

    .line 484
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sessionSts"

    .line 485
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "btMac"

    .line 486
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceName"

    .line 487
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 489
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel$CPHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSetVideoFocus(Z)V
    .locals 3

    .line 494
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetVideoFocus: isExitActivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V
    .locals 3

    .line 571
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUSBIAP2DeviceStsChanged: isDeviceAttatched:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",serialNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12

    .line 574
    iput v1, v0, Landroid/os/Message;->what:I

    .line 575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "deviceAttached"

    .line 576
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "serialNum"

    .line 577
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 579
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel$CPHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 524
    invoke-super/range {p0 .. p5}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V

    .line 525
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateCallInfo: telSts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",callerNumber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",callerName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x13

    .line 528
    iput v1, v0, Landroid/os/Message;->what:I

    .line 529
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "telSts"

    .line 530
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "calledNumber"

    .line 531
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callerName"

    .line 532
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "startTime"

    .line 533
    invoke-virtual {v1, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 534
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 535
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/carplay/CarplayModel$CPHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateClientSts(Z)V
    .locals 3

    .line 540
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateClientSts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "CONNECTED"

    goto :goto_0

    :cond_0
    const-string v2, "DISCONNECTED"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 507
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateMediaToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 511
    :cond_0
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onUpdateMediaToken: token is null !"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUpdateNaviInfo(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 518
    invoke-super/range {p0 .. p5}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onUpdateNaviInfo(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public onUpdateSiriSts(Z)V
    .locals 3

    .line 546
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateSiriSts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {p0}, Lcom/chery/carplay/CarplayModel;->access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;

    move-result-object p0

    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/chery/carplay/CarplayModel$CPHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
