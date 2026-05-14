.class Lcom/chery/media/model/business/StableMediaPlayer$11;
.super Ljava/lang/Object;
.source "StableMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/StableMediaPlayer;->updateDuration(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/StableMediaPlayer;

.field final synthetic val$duration:I

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/StableMediaPlayer;II)V
    .locals 0

    .line 1485
    iput-object p1, p0, Lcom/chery/media/model/business/StableMediaPlayer$11;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iput p2, p0, Lcom/chery/media/model/business/StableMediaPlayer$11;->val$key:I

    iput p3, p0, Lcom/chery/media/model/business/StableMediaPlayer$11;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1488
    iget-object v0, p0, Lcom/chery/media/model/business/StableMediaPlayer$11;->this$0:Lcom/chery/media/model/business/StableMediaPlayer;

    iget v1, p0, Lcom/chery/media/model/business/StableMediaPlayer$11;->val$key:I

    iget p0, p0, Lcom/chery/media/model/business/StableMediaPlayer$11;->val$duration:I

    invoke-static {v0, v1, p0}, Lcom/chery/media/model/business/StableMediaPlayer;->access$1000(Lcom/chery/media/model/business/StableMediaPlayer;II)V

    return-void
.end method
