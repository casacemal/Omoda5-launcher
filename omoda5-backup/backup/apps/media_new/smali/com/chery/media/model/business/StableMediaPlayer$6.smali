.class Lcom/chery/media/model/business/StableMediaPlayer$6;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->createPlayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;

.field final synthetic val$key:I

.field final synthetic val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;I)V
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1228
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onPrepared, media:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1230
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget v1, v1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMediaPlayerState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "current state not MEDIA_PLAYER_STATE_PREPARING: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->val$key:I

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1200(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    .line 1234
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1235
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1236
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1300(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1239
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1300(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1241
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$6;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
