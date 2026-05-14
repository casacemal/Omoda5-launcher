.class Lcom/chery/media/BtAudioManager$4;
.super Landroid/media/session/MediaController$Callback;
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

    .line 314
    iput-object p1, p0, Lcom/chery/media/BtAudioManager$4;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 317
    invoke-static {}, Lcom/chery/media/BtAudioManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMetadataChanged"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$4;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/BtAudioManager$4;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 323
    invoke-static {}, Lcom/chery/media/BtAudioManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPlaybackStateChanged"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$4;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/BtAudioManager$4;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$700(Lcom/chery/media/BtAudioManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
