.class Lcom/chery/media/model/business/StableMediaPlayer$7;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 1244
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 1247
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$500(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onCompletion, media:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->val$key:I

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1200(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    .line 1249
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->val$key:I

    invoke-static {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$100(Lcom/chery/media/model/business/StableMediaPlayer;I)V

    .line 1250
    iget-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->val$mpi:Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;

    iget-object p1, p1, Lcom/chery/media/model/business/StableMediaPlayer$MediaPlayerInfo;->mMedia:Ljava/lang/String;

    .line 1251
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$7;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1500(Lcom/chery/media/model/business/StableMediaPlayer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/StableMediaPlayer$7$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer$7$1;-><init>(Lcom/chery/media/model/business/StableMediaPlayer$7;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
