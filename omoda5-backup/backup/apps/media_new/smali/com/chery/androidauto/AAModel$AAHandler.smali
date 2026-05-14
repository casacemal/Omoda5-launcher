.class Lcom/chery/androidauto/AAModel$AAHandler;
.super Landroid/os/Handler;
.source "AAModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/androidauto/AAModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AAHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/androidauto/AAModel;


# direct methods
.method public constructor <init>(Lcom/chery/androidauto/AAModel;Landroid/os/Looper;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "btMac"

    if-eq v0, v1, :cond_b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_UPDATE_ACTIVITY_STATE not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onUpdateActivityState(I)V

    goto/16 :goto_0

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_AUTHENTICATION_RESULT not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onAuthenticationResult(I)V

    goto/16 :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 141
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_PREPARE_REMOTE_DEVICE not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chery/androidauto/AAModel;->access$602(Lcom/chery/androidauto/AAModel;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v1}, Lcom/chery/androidauto/AAModel;->access$600(Lcom/chery/androidauto/AAModel;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->OnPrepareRemoteHfpDevice(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_3

    .line 134
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_VRSESSION_STATE not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onUpdateVoiceSessionState(I)V

    goto/16 :goto_0

    .line 126
    :pswitch_4
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_4

    .line 127
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_MEDIASESSION_TOKEN not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/MediaSession$Token;

    invoke-interface {v0, v1}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onUpdateMediaToken(Landroid/media/session/MediaSession$Token;)V

    goto/16 :goto_0

    .line 118
    :pswitch_5
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_5

    .line 119
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_NOTFICATION not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v1}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :pswitch_6
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_6

    .line 105
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_SESSION_STS_UPDATE not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "sessionSts"

    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceName"

    .line 114
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v3, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v3}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_7
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_8

    .line 97
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback = null MSG_SET_VIDEO_FOCUS not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 101
    iget-object v1, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v1}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onSetVideoFocus(I)V

    goto :goto_0

    .line 78
    :cond_9
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$300(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AABindServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 79
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$300(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AABindServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/chery/androidauto/AAModel$AABindServiceCallback;->onBindServiceDisConnected()V

    goto :goto_0

    .line 73
    :cond_a
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$300(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AABindServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 74
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$300(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AABindServiceCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/chery/androidauto/AAModel$AABindServiceCallback;->onBindServiceConnected()V

    goto :goto_0

    .line 83
    :cond_b
    iget-object v0, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v0}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v0

    if-nez v0, :cond_c

    .line 84
    invoke-static {}, Lcom/chery/androidauto/AAModel;->access$500()Ljava/lang/String;

    move-result-object p0

    const-string p1, "aaListenerCallback=null MSG_NOTIFY_DEV_TRANSPORT not handle"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 87
    :cond_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 91
    :cond_d
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialNum"

    .line 92
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/chery/androidauto/AAModel$AAHandler;->this$0:Lcom/chery/androidauto/AAModel;

    invoke-static {v2}, Lcom/chery/androidauto/AAModel;->access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/chery/androidauto/AAModel$AAListenerCallback;->onNotifyDevTransport(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_e
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
