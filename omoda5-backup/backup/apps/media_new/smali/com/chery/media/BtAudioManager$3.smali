.class Lcom/chery/media/BtAudioManager$3;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "BtAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/BtAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/BtAudioManager;


# direct methods
.method constructor <init>(Lcom/chery/media/BtAudioManager;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 4

    .line 289
    invoke-static {}, Lcom/chery/media/BtAudioManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnected: "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$300(Lcom/chery/media/BtAudioManager;)Landroid/media/browse/MediaBrowser;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    new-instance v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v3}, Lcom/chery/media/BtAudioManager;->access$500(Lcom/chery/media/BtAudioManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-static {v1, v2}, Lcom/chery/media/BtAudioManager;->access$402(Lcom/chery/media/BtAudioManager;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;

    .line 294
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$400(Lcom/chery/media/BtAudioManager;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chery/media/BtAudioManager;->access$602(Lcom/chery/media/BtAudioManager;Landroid/media/session/MediaController$TransportControls;)Landroid/media/session/MediaController$TransportControls;

    .line 297
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$400(Lcom/chery/media/BtAudioManager;)Landroid/media/session/MediaController;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$800(Lcom/chery/media/BtAudioManager;)Landroid/media/session/MediaController$Callback;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    return-void
.end method

.method public onConnectionFailed()V
    .locals 2

    .line 308
    invoke-static {}, Lcom/chery/media/BtAudioManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConnectionFailed: "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$900(Lcom/chery/media/BtAudioManager;)V

    .line 310
    iget-object p0, p0, Lcom/chery/media/BtAudioManager$3;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 1

    .line 303
    invoke-static {}, Lcom/chery/media/BtAudioManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onConnectionSuspended: "

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
