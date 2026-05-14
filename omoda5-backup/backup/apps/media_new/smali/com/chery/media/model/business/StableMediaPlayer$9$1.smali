.class Lcom/chery/media/model/business/StableMediaPlayer$9$1;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer$9;->onSeekComplete(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/StableMediaPlayer$9;

.field final synthetic val$currentPosition:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer$9;I)V
    .locals 0

    .line 1289
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$9$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$9;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$9$1;->val$currentPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1292
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$9$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$9;

    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$9;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1600(Lcom/chery/media/model/business/StableMediaPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;

    .line 1293
    iget-object v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$9$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$9;

    iget v2, v2, Lcom/chery/media/model/business/StableMediaPlayer$9;->val$key:I

    iget v3, p0, Lcom/chery/media/model/business/StableMediaPlayer$9$1;->val$currentPosition:I

    int-to-long v3, v3

    invoke-interface {v1, v2, v3, v4}, Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;->onSeekComplete(IJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
