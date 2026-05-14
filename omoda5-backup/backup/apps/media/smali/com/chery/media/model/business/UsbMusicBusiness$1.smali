.class Lcom/chery/media/model/business/UsbMusicBusiness$1;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/UsbMusicBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/UsbMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(IJ)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$700(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V

    return-void
.end method

.method public onMediaChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPositionChanged(IJ)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    if-nez v0, :cond_0

    .line 287
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$800(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

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
    .locals 9

    .line 208
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

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

    iget-object v7, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    const/4 v8, 0x3

    aput-object v7, v3, v8

    const-string v7, "onStateChanged %s %s %s current:%s"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    if-ne p2, v4, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v1, p1, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$200(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V

    if-ne p2, v2, :cond_2

    .line 214
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz p2, :cond_5

    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 215
    iget-boolean p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz p2, :cond_5

    .line 216
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p2

    iget p2, p2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    if-nez p2, :cond_1

    .line 217
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    .line 218
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto/16 :goto_2

    .line 221
    :cond_1
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$300(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 223
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p3

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const-string v1, "nextMusic:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p3, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p3, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 225
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x5

    if-ne p2, v1, :cond_5

    .line 232
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz p2, :cond_5

    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 233
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 234
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    iget-boolean p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz p2, :cond_5

    .line 237
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p2

    const/16 v0, 0xbb8

    if-nez p2, :cond_4

    .line 238
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    new-instance v1, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$500(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$402(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    .line 239
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p2

    new-instance v1, Lcom/chery/media/model/business/UsbMusicBusiness$1$1;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness$1$1;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness$1;)V

    invoke-virtual {p2, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 245
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p2

    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$500(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_1

    .line 248
    :cond_4
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->show(I)V

    .line 250
    :goto_1
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$1;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/chery/media/model/business/UsbMusicBusiness$1$2;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness$1;ILjava/lang/String;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onVideoSizeNotify(III)V
    .locals 0

    return-void
.end method
