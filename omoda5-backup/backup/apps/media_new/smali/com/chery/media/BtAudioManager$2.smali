.class Lcom/chery/media/BtAudioManager$2;
.super Landroid/os/Handler;
.source "BtAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/BtAudioManager;->initMediaSession(Lcom/chery/media/BtAudioManager$MediaSessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/BtAudioManager;


# direct methods
.method constructor <init>(Lcom/chery/media/BtAudioManager;Landroid/os/Looper;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 195
    iget-object p0, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/session/PlaybackState;

    invoke-interface {p0, p1}, Lcom/chery/media/BtAudioManager$MediaSessionListener;->updatePlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 200
    iget-object p0, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaMetadata;

    invoke-interface {p0, p1}, Lcom/chery/media/BtAudioManager$MediaSessionListener;->updateMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {v0}, Lcom/chery/media/BtAudioManager;->access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 190
    iget-object p0, p0, Lcom/chery/media/BtAudioManager$2;->this$0:Lcom/chery/media/BtAudioManager;

    invoke-static {p0}, Lcom/chery/media/BtAudioManager;->access$200(Lcom/chery/media/BtAudioManager;)Lcom/chery/media/BtAudioManager$MediaSessionListener;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0, v1}, Lcom/chery/media/BtAudioManager$MediaSessionListener;->onConnectState(Z)V

    :cond_4
    :goto_1
    return-void
.end method
