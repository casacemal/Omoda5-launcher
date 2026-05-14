.class Lcom/chery/media/model/business/StableMediaPlayer$8;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 1259
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 1262
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const-string p2, "onError, media:%s, %d, %d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->val$key:I

    const/16 p3, 0x9

    invoke-static {p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1200(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    .line 1264
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    .line 1265
    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1500(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/chery/media/model/business/StableMediaPlayer$8$1;

    invoke-direct {p3, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$8$1;-><init>(Lcom/chery/media/model/business/StableMediaPlayer$8;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1272
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1273
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1274
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1300(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1277
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$300(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1300(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1279
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$200(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1
.end method
