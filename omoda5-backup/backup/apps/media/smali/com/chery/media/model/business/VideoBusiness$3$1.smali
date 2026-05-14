.class Lcom/chery/media/model/business/VideoBusiness$3$1;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness$3;->onStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/VideoBusiness$3;

.field final synthetic val$key:I

.field final synthetic val$media:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VideoBusiness$3;ILjava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$3;

    iput p2, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$key:I

    iput-object p3, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$media:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$3;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$key:I

    invoke-static {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$media:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    .line 297
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$3;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$key:I

    invoke-static {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->access$600(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$3;

    iget-object v1, v1, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v2, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$key:I

    invoke-static {v1, v2}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 300
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v3, "nextVideo:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$3;

    iget-object v1, v1, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v2, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$key:I

    invoke-virtual {v1, v2, v0}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 302
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->this$1:Lcom/chery/media/model/business/VideoBusiness$3;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness$3$1;->val$key:I

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->errorlist:Ljava/util/List;

    .line 307
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    const-string v0, "errorlist size(%s) >= playlist size(%s)"

    .line 306
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
