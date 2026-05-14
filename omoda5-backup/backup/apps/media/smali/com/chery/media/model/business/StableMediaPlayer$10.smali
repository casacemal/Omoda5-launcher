.class Lcom/chery/media/model/business/StableMediaPlayer$10;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->setMediaPlayerState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;

.field final synthetic val$key:I

.field final synthetic val$media:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V
    .locals 0

    .line 1439
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$state:I

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iput-object p4, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1442
    iget v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$state:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v1, v4, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v1, v3, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1459
    :cond_2
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v2, v1, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1456
    :cond_3
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1453
    :cond_4
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    const/4 v2, 0x2

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1450
    :cond_5
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v2, v1, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1447
    :cond_6
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v2, v1, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    goto :goto_0

    .line 1444
    :cond_7
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$key:I

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$10;->val$media:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1400(Lcom/chery/media/model/business/StableMediaPlayer;IILjava/lang/String;)V

    :goto_0
    return-void
.end method
