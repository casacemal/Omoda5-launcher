.class Lcom/chery/media/model/business/StableMediaPlayer$9;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


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

    .line 1284
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1287
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 1288
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onSeekComplete, media:%s currentPosition:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1500(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/StableMediaPlayer$9$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$9$1;-><init>(Lcom/chery/media/model/business/StableMediaPlayer$9;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1297
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$9;->val$key:I

    invoke-static {p1, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$100(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    return-void
.end method
