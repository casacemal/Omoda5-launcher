.class Lcom/chery/carplay/CarplayModel$CPHandler;
.super Landroid/os/Handler;
.source "CarplayModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/carplay/CarplayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/carplay/CarplayModel;


# direct methods
.method public constructor <init>(Lcom/chery/carplay/CarplayModel;Landroid/os/Looper;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/chery/carplay/CarplayModel;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "carplayListenerCallback = null not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "serialNum"

    const-string v3, "btMac"

    if-eq v0, v1, :cond_7

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onNotifyLauncherPop(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "telSts"

    .line 154
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "calledNumber"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "callerName"

    .line 156
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "startTime"

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 158
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v2

    invoke-interface/range {v2 .. v7}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onUpdateCallInfo(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 141
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceAttached"

    .line 142
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 144
    iget-object v3, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v3, v1}, Lcom/chery/carplay/CarplayModel;->access$402(Lcom/chery/carplay/CarplayModel;Z)Z

    .line 145
    iget-object v3, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v3, v1}, Lcom/chery/carplay/CarplayModel;->access$502(Lcom/chery/carplay/CarplayModel;Z)Z

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v1}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onUSBIAP2DeviceStsChanged(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const-string v1, "uniqueInfo"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connecttype"

    .line 133
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 134
    iget-object v2, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v2}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onNotifyCPReadyToAuth(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 124
    :pswitch_4
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chery/carplay/CarplayModel;->access$302(Lcom/chery/carplay/CarplayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v1}, Lcom/chery/carplay/CarplayModel;->access$300(Lcom/chery/carplay/CarplayModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onNotifyDisableBt(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :pswitch_5
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onUpdateSiriSts(Z)V

    goto/16 :goto_0

    .line 118
    :pswitch_6
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onUpdateClientSts(Z)V

    goto/16 :goto_0

    .line 115
    :pswitch_7
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v0}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-interface {v0, v1}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V

    goto :goto_0

    .line 111
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v1}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v2, "sessionSts"

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    iget-object v4, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/chery/carplay/CarplayModel;->access$302(Lcom/chery/carplay/CarplayModel;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-object v4, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v4, v1}, Lcom/chery/carplay/CarplayModel;->access$402(Lcom/chery/carplay/CarplayModel;Z)Z

    .line 104
    iget-object v4, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v4, v1}, Lcom/chery/carplay/CarplayModel;->access$502(Lcom/chery/carplay/CarplayModel;Z)Z

    .line 106
    :cond_6
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceName"

    .line 107
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v3, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v3}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v1}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onSetVideoFocus(Z)V

    goto :goto_0

    .line 81
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 85
    :cond_8
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isSupportCarplay"

    .line 87
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 88
    iget-object v3, p0, Lcom/chery/carplay/CarplayModel$CPHandler;->this$0:Lcom/chery/carplay/CarplayModel;

    invoke-static {v3}, Lcom/chery/carplay/CarplayModel;->access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 166
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
