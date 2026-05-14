.class Lcom/chery/media/model/business/VideoBusiness$6;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;


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

    .line 391
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(IZ)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 396
    iput v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    goto :goto_0

    .line 399
    :cond_0
    iget p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    if-eqz p2, :cond_1

    .line 400
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/chery/media/model/business/VideoBusiness;->access$1100(Lcom/chery/media/model/business/VideoBusiness;IZ)V

    .line 402
    :cond_1
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 404
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/VideoBusiness;->access$1300(Lcom/chery/media/model/business/VideoBusiness;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 405
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$1400(Lcom/chery/media/model/business/VideoBusiness;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScanInfoUpdate(II)V
    .locals 8

    const/16 v0, 0x23

    const/16 v1, 0x22

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_e

    .line 413
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v1

    .line 414
    iget v2, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    if-lez v2, :cond_e

    .line 415
    iget-object v2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/VideoBusiness;->access$1300(Lcom/chery/media/model/business/VideoBusiness;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 416
    iget-object v2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v2, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$1400(Lcom/chery/media/model/business/VideoBusiness;I)V

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v2, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v2

    .line 421
    iget-object v3, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/VideoBusiness;->access$1500(Lcom/chery/media/model/business/VideoBusiness;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/VideoBusiness;->access$1500(Lcom/chery/media/model/business/VideoBusiness;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getLastSource()I

    move-result v3

    iget-object v4, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget v4, v4, Lcom/chery/media/model/business/VideoBusiness;->audioFocusSource:I

    if-ne v3, v4, :cond_2

    .line 422
    iget-object v3, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v3}, Lcom/chery/media/model/business/VideoBusiness;->requestAudioFocus()Z

    .line 425
    :cond_2
    iget v3, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-nez v3, :cond_4

    .line 426
    iget-object v3, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    iget-object v6, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v6, v6, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->mountPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 427
    iput v4, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    goto :goto_0

    .line 430
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v3

    const-string v6, "mountPath not match, clear restore info"

    invoke-static {v3, v6}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v3, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    invoke-direct {v3}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;-><init>()V

    iput-object v3, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    .line 433
    iget-object v3, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    iput-object v1, v3, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->mountPath:Ljava/lang/String;

    .line 434
    iput v5, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    .line 438
    :cond_4
    :goto_0
    iget v1, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v1, v5, :cond_5

    .line 439
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {p2, p1, v7, v3}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore reset end"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iput v6, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    .line 442
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0, p1, v7}, Lcom/chery/media/model/business/VideoBusiness;->access$1100(Lcom/chery/media/model/business/VideoBusiness;IZ)V

    goto/16 :goto_4

    .line 444
    :cond_5
    iget v1, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    if-ne v1, v4, :cond_d

    .line 446
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v4, "restore playlist"

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget-object v4, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget v4, v4, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playlistType:I

    iget-object v5, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v5, v5, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playlistKey:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 449
    iget-object v1, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne p2, v0, :cond_6

    .line 452
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v4, "restore playlist failed, set all videos"

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {v1, p1, v7, v3}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;)V

    goto :goto_1

    .line 457
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v3, "restore playlist next time"

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_7
    :goto_1
    invoke-static {v2}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-nez v1, :cond_c

    .line 463
    iget-object v1, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playingVideo:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playingVideo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 469
    :cond_8
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget-object v3, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playingVideo:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILjava/lang/String;)V

    .line 470
    invoke-static {v2}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 472
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore video success"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore video position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-wide v3, v1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->position:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/VideoBusiness;->access$1600(Lcom/chery/media/model/business/VideoBusiness;)Lcom/chery/media/model/business/StableMediaPlayer;

    move-result-object p2

    iget-object v0, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->position:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    .line 477
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/VideoBusiness;->access$1600(Lcom/chery/media/model/business/VideoBusiness;)Lcom/chery/media/model/business/StableMediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->getActivatedKey()I

    move-result p2

    if-eq p2, p1, :cond_c

    .line 478
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget-object v0, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->position:J

    invoke-static {p2, p1, v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->access$900(Lcom/chery/media/model/business/VideoBusiness;IJ)V

    goto :goto_3

    :cond_9
    if-ne p2, v0, :cond_a

    .line 484
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore video failed, set first"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {p2, p1, v7}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(II)V

    goto :goto_3

    .line 489
    :cond_a
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore video next time"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 464
    :cond_b
    :goto_2
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restored video info invalid"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-virtual {p2, p1, v7}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(II)V

    .line 496
    :cond_c
    :goto_3
    invoke-static {v2}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 498
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore end"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iput v6, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    .line 500
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0, p1, v7}, Lcom/chery/media/model/business/VideoBusiness;->access$1100(Lcom/chery/media/model/business/VideoBusiness;IZ)V

    goto :goto_4

    .line 503
    :cond_d
    iget p2, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    if-ne p2, v6, :cond_e

    .line 505
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object p2

    const-string v0, "update playlist"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$6;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    iget p2, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistType:I

    iget-object v0, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;)V

    :cond_e
    :goto_4
    return-void
.end method
