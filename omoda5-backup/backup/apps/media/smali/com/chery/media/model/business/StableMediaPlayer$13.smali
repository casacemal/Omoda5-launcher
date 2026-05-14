.class Lcom/chery/media/model/business/StableMediaPlayer$13;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->updateVideoSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;

.field final synthetic val$height:I

.field final synthetic val$key:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;III)V
    .locals 0

    .line 1526
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->val$key:I

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->val$width:I

    iput p4, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1529
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->val$key:I

    iget v2, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->val$width:I

    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$13;->val$height:I

    invoke-static {v0, v1, v2, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1700(Lcom/chery/media/model/business/StableMediaPlayer;III)V

    return-void
.end method
