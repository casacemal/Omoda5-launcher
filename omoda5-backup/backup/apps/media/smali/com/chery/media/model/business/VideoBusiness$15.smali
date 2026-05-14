.class Lcom/chery/media/model/business/VideoBusiness$15;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness;->fastForward(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VideoBusiness;

.field final synthetic val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

.field final synthetic val$usbType:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VideoBusiness;Lcom/chery/media/model/business/VideoBusiness$PlayInfo;I)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iput p3, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$usbType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1332
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iget-object v4, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iget-wide v4, v4, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->duration:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$usbType:I

    iget-object v4, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iget-wide v4, v4, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    add-long/2addr v4, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/chery/media/model/business/VideoBusiness;->seekTo(IJI)V

    .line 1334
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    .line 1335
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness;->access$700(Lcom/chery/media/model/business/VideoBusiness;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->playNext(I)V

    .line 1339
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$usbType:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/chery/media/model/business/VideoBusiness;->access$2400(Lcom/chery/media/model/business/VideoBusiness;II)V

    .line 1340
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness;->access$700(Lcom/chery/media/model/business/VideoBusiness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1341
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$15;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
