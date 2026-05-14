.class Lcom/chery/androidauto/AAModel$ProxyAAListener;
.super Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;
.source "AAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/androidauto/AAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyAAListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/androidauto/AAModel;


# direct methods
.method private constructor <init>(Lcom/chery/androidauto/AAModel;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/androidauto/AAModel;Lcom/chery/androidauto/AAModel$1;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/chery/androidauto/AAModel$ProxyAAListener;-><init>(Lcom/chery/androidauto/AAModel;)V

    return-void
.end method


# virtual methods
.method public OnPrepareRemoteHfpDevice(Ljava/lang/String;)V
    .locals 3

    .line 458
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnPrepareRemoteHfpDevice btMac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationResult(I)V
    .locals 3

    .line 464
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationResult state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onHidePermissionPrompt()V
    .locals 0

    return-void
.end method

.method public onNotification(Ljava/lang/String;)V
    .locals 3

    .line 424
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 392
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyDevTransport: btMac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",serialNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 394
    iput v1, v0, Landroid/os/Message;->what:I

    .line 395
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "btMac"

    .line 396
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serialNum"

    .line 397
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 399
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/androidauto/AAModel$AAHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSessionStatusUpdate(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 410
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSessionStatusUpdate sessionSts:"

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

    .line 412
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 413
    iput v1, v0, Landroid/os/Message;->what:I

    .line 414
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sessionSts"

    .line 415
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "btMac"

    .line 416
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceName"

    .line 417
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 419
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/androidauto/AAModel$AAHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSetVideoFocus(I)V
    .locals 3

    .line 404
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetVideoFocus: focusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onShowPermissionPrompt()V
    .locals 0

    return-void
.end method

.method public onUpdateActivityState(I)V
    .locals 3

    .line 470
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateActivityState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/16 v0, 0xb

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 431
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

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

    .line 432
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 435
    :cond_0
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onUpdateMediaToken: token is null !"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onUpdateVoiceSessionState(I)V
    .locals 3

    .line 441
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateVoiceSessionState [1:START,2:END]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object p0, p0, Lcom/chery/androidauto/AAModel$ProxyAAListener;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {p0}, Lcom/chery/androidauto/AAModel;->access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/androidauto/AAModel$AAHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
