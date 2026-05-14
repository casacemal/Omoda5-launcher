.class Lcom/chery/media/model/business/VideoBusiness$3;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VideoBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VideoBusiness;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(IJ)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->access$800(Lcom/chery/media/model/business/VideoBusiness;IJ)V

    return-void
.end method

.method public onMediaChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPositionChanged(IJ)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    if-nez v0, :cond_0

    .line 327
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->access$900(Lcom/chery/media/model/business/VideoBusiness;IJ)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "fastPlayStatus %s, not to setPosition"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStateChanged(IILjava/lang/String;)V
    .locals 8

    .line 267
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    const-string v4, "onStateChanged %s %s %s current:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v1, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->access$500(Lcom/chery/media/model/business/VideoBusiness;II)V

    if-ne p2, v2, :cond_0

    .line 273
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 274
    iget-boolean p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-eqz p2, :cond_2

    .line 275
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$600(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 277
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p3

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const-string v1, "nextVideo:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p3, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {p3, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 279
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 285
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 286
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 287
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    iget-boolean p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-eqz p2, :cond_2

    .line 290
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/VideoBusiness;->access$700(Lcom/chery/media/model/business/VideoBusiness;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/chery/media/model/business/VideoBusiness$3$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/chery/media/model/business/VideoBusiness$3$1;-><init>(Lcom/chery/media/model/business/VideoBusiness$3;ILjava/lang/String;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoSizeNotify(III)V
    .locals 1

    .line 336
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$3;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-static {p0, p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->access$1000(Lcom/chery/media/model/business/VideoBusiness;ILandroid/util/Size;)V

    return-void
.end method
