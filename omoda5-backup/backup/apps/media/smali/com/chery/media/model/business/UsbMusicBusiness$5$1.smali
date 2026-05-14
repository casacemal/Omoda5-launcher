.class Lcom/chery/media/model/business/UsbMusicBusiness$5$1;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness$5;->onStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

.field final synthetic val$var1:I


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness$5;I)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iput p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->val$var1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 501
    iget v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->val$var1:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v0

    .line 510
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getLastSource()I

    move-result v1

    .line 512
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

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

    if-ne v0, v2, :cond_3

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1700(Lcom/chery/media/model/business/UsbMusicBusiness;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 515
    iget-object v3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1700(Lcom/chery/media/model/business/UsbMusicBusiness;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    .line 516
    iget v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusSource:I

    if-ne v1, v3, :cond_2

    .line 517
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {v0, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    .line 522
    :cond_3
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1500(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    goto :goto_0

    .line 504
    :cond_4
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5$1;->this$1:Lcom/chery/media/model/business/UsbMusicBusiness$5;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$5;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1500(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    :goto_0
    return-void
.end method
