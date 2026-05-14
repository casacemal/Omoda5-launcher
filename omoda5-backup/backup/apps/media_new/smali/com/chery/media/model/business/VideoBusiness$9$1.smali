.class Lcom/chery/media/model/business/VideoBusiness$9$1;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness$9;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/VideoBusiness$9;

.field final synthetic val$var1:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VideoBusiness$9;I)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iput p2, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->val$var1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 555
    iget v0, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->val$var1:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$9;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness;->access$1500(Lcom/chery/media/model/business/VideoBusiness;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v0

    .line 564
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iget-object v1, v1, Lcom/chery/media/model/business/VideoBusiness$9;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/VideoBusiness;->access$1500(Lcom/chery/media/model/business/VideoBusiness;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getLastSource()I

    move-result v1

    .line 566
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastSource : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const/16 v2, 0x64

    if-ne v0, v2, :cond_2

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$9;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v0, v0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusSource:I

    if-ne v1, v0, :cond_2

    .line 569
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$9;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/VideoBusiness;->requestAudioFocus()Z

    .line 571
    :cond_2
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$9;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness;->access$1900(Lcom/chery/media/model/business/VideoBusiness;)V

    goto :goto_0

    .line 558
    :cond_3
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$9$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$9;

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$9;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness;->access$1900(Lcom/chery/media/model/business/VideoBusiness;)V

    :goto_0
    return-void
.end method
