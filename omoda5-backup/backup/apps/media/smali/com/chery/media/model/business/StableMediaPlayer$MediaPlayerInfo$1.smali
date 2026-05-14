.class Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;-><init>(Lcom/chery/media/model/business/StableMediaPlayer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

.field final synthetic val$key:I

.field final synthetic val$this$0:Lcom/chery/media/model/business/StableMediaPlayer;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;Lcom/chery/media/model/business/StableMediaPlayer;I)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iput-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->val$this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->val$key:I

    invoke-static {v0, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$100(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    .line 214
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mCheckPosition:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
