.class Lcom/chery/media/model/business/VideoBusiness$14;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness;->fastBackward(I)V
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

    .line 1295
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iput p3, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$usbType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1298
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v4, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$usbType:I

    iget-object v5, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    iget-wide v5, v5, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    sub-long/2addr v5, v2

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/chery/media/model/business/VideoBusiness;->seekTo(IJI)V

    .line 1300
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$usbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    .line 1301
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness;->access$700(Lcom/chery/media/model/business/VideoBusiness;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v2, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$usbType:I

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/chery/media/model/business/VideoBusiness;->seekTo(IJ)V

    .line 1305
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v2, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$usbType:I

    invoke-virtual {v0, v2}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    .line 1306
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v2, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$usbType:I

    invoke-static {v0, v2, v1}, Lcom/chery/media/model/business/VideoBusiness;->access$2400(Lcom/chery/media/model/business/VideoBusiness;II)V

    .line 1307
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness;->access$700(Lcom/chery/media/model/business/VideoBusiness;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1308
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$14;->val$playInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
