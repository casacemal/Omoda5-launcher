.class Lcom/chery/media/model/business/StableMediaPlayer$8$1;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer$8;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/StableMediaPlayer$8;

.field final synthetic val$media:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer$8;Ljava/lang/String;)V
    .locals 0

    .line 1265
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$8;

    iput-object p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$8$1;->val$media:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$8$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$8;

    iget-object v0, v0, Lcom/chery/media/model/business/StableMediaPlayer$8;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$8$1;->this$1:Lcom/chery/media/model/business/StableMediaPlayer$8;

    iget v1, v1, Lcom/chery/media/model/business/StableMediaPlayer$8;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$8$1;->val$media:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    return-void
.end method
