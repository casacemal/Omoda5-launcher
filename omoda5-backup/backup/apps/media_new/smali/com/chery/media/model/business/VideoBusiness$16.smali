.class Lcom/chery/media/model/business/VideoBusiness$16;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness;->changeBrightnessBy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VideoBusiness;

.field final synthetic val$delta:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VideoBusiness;I)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iput p2, p0, Lcom/chery/media/model/business/VideoBusiness$16;->val$delta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1445
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness;->access$2500(Lcom/chery/media/model/business/VideoBusiness;)I

    move-result v0

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$16;->val$delta:I

    add-int/2addr v0, v1

    .line 1446
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v1}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMin()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMin()I

    move-result v0

    goto :goto_0

    .line 1447
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v1}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMax()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMax()I

    move-result v0

    .line 1448
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$16;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness;->access$2500(Lcom/chery/media/model/business/VideoBusiness;)I

    move-result p0

    if-eq v0, p0, :cond_2

    .line 1449
    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->getInstance()Lcom/chery/setting/BrightnessAIDLTool;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/setting/BrightnessAIDLTool;->setBrightness(I)V

    :cond_2
    return-void
.end method
