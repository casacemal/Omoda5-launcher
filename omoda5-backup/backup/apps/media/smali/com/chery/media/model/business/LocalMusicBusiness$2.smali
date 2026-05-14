.class Lcom/chery/media/model/business/LocalMusicBusiness$2;
.super Ljava/lang/Object;
.source "LocalMusicBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/LocalMusicBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/LocalMusicBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/LocalMusicBusiness;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDurationChanged(IJ)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0, p2, p3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1000(Lcom/chery/media/model/business/LocalMusicBusiness;J)V

    return-void
.end method

.method public onMediaChanged(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPositionChanged(IJ)V
    .locals 0

    .line 339
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1100(Lcom/chery/media/model/business/LocalMusicBusiness;)I

    move-result p1

    if-nez p1, :cond_0

    .line 340
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0, p2, p3}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1200(Lcom/chery/media/model/business/LocalMusicBusiness;J)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$1100(Lcom/chery/media/model/business/LocalMusicBusiness;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, p3

    const-string p0, "fastPlayStatus %s, not to setPosition"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onStateChanged(IILjava/lang/String;)V
    .locals 7

    .line 264
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 p1, 0x2

    aput-object p3, v2, p1

    iget-object v5, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v5}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const-string v5, "onStateChanged %s %s %s current:%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    if-ne p2, p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    invoke-static {v0, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$300(Lcom/chery/media/model/business/LocalMusicBusiness;Z)V

    if-ne p2, v1, :cond_2

    .line 269
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 270
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$400(Lcom/chery/media/model/business/LocalMusicBusiness;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 271
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$500(Lcom/chery/media/model/business/LocalMusicBusiness;)I

    move-result p1

    if-nez p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/chery/media/model/business/LocalMusicBusiness;->seekTo(J)V

    .line 273
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto/16 :goto_2

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$600(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 278
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string v0, "nextMusic:%s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p2, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->changeCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 280
    iget-object p0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto/16 :goto_2

    :cond_2
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 287
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$200(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 288
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object p1, p1, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 289
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    iget-object p1, p1, Lcom/chery/media/model/business/LocalMusicBusiness;->errorlist:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_3
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$400(Lcom/chery/media/model/business/LocalMusicBusiness;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 292
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$700(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p1

    const/16 p2, 0xbb8

    if-nez p1, :cond_4

    .line 293
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    new-instance v0, Lcom/chery/media/view/dialog/Dialog_SingleText;

    iget-object v1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/dialog/Dialog_SingleText;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$702(Lcom/chery/media/model/business/LocalMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    .line 294
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$700(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p1

    new-instance v0, Lcom/chery/media/model/business/LocalMusicBusiness$2$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness$2$1;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$2;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/view/dialog/Dialog_SingleText;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 300
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$700(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$000(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->showText(Ljava/lang/String;I)V

    goto :goto_1

    .line 303
    :cond_4
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$700(Lcom/chery/media/model/business/LocalMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chery/media/view/dialog/Dialog_SingleText;->show(I)V

    .line 305
    :goto_1
    iget-object p1, p0, Lcom/chery/media/model/business/LocalMusicBusiness$2;->this$0:Lcom/chery/media/model/business/LocalMusicBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->access$900(Lcom/chery/media/model/business/LocalMusicBusiness;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;

    invoke-direct {p2, p0, p3}, Lcom/chery/media/model/business/LocalMusicBusiness$2$2;-><init>(Lcom/chery/media/model/business/LocalMusicBusiness$2;Ljava/lang/String;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onVideoSizeNotify(III)V
    .locals 0

    return-void
.end method
