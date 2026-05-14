.class Lcom/chery/media/model/business/UsbMusicBusiness$4;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;


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

    .line 360
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMountStatusChanged(IZ)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 365
    iput v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    goto :goto_0

    .line 368
    :cond_0
    iget p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    if-eqz p2, :cond_1

    .line 369
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$900(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V

    .line 371
    :cond_1
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 373
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1100(Lcom/chery/media/model/business/UsbMusicBusiness;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 374
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1200(Lcom/chery/media/model/business/UsbMusicBusiness;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScanInfoUpdate(II)V
    .locals 9

    const/16 v0, 0x23

    const/16 v1, 0x22

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_f

    .line 382
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v1

    .line 383
    iget v2, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    if-lez v2, :cond_f

    .line 384
    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1100(Lcom/chery/media/model/business/UsbMusicBusiness;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 385
    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1200(Lcom/chery/media/model/business/UsbMusicBusiness;I)V

    .line 388
    :cond_1
    iget-object v2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v2

    .line 390
    iget v3, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-nez v3, :cond_3

    .line 391
    iget-object v3, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    iget-object v7, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v7, v7, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->mountPath:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    iput v5, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    .line 394
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget-object v3, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playMode:I

    invoke-static {v1, p1, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1300(Lcom/chery/media/model/business/UsbMusicBusiness;II)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v7, "mountPath not match, clear restore info"

    invoke-static {v3, v7}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    invoke-direct {v3}, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;-><init>()V

    iput-object v3, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    .line 400
    iget-object v3, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    iput-object v1, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->mountPath:Ljava/lang/String;

    .line 401
    iput v4, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    .line 403
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {v1, p1, v6}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1300(Lcom/chery/media/model/business/UsbMusicBusiness;II)V

    .line 407
    :cond_3
    :goto_0
    iget v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-ne v1, v4, :cond_4

    .line 408
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p2, p1, v7, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore reset end"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput v6, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    .line 411
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p0, p1, v7}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$900(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V

    goto/16 :goto_5

    .line 413
    :cond_4
    iget v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    if-ne v1, v5, :cond_e

    .line 415
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v4, "restore playlist"

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget-object v4, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget v4, v4, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playlistType:I

    iget-object v8, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v8, v8, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playlistKey:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v8}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 418
    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne p2, v0, :cond_5

    .line 421
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v4, "restore playlist failed, set all musics"

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {v1, p1, v7, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "restore playlist next time"

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_6
    :goto_1
    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-nez v1, :cond_b

    .line 432
    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playingMusic:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playingMusic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    .line 438
    :cond_7
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget-object v3, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playingMusic:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILjava/lang/String;)V

    .line 439
    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz v1, :cond_8

    .line 441
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore music success"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore music position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-wide v3, v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->position:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/model/business/StableMediaPlayer;

    move-result-object p2

    iget-object v0, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->position:J

    invoke-virtual {p2, p1, v0, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    .line 446
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$1400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/model/business/StableMediaPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/media/model/business/StableMediaPlayer;->getActivatedKey()I

    move-result p2

    if-eq p2, p1, :cond_b

    .line 447
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget-object v0, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-wide v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->position:J

    invoke-static {p2, p1, v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$800(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V

    goto :goto_3

    :cond_8
    if-ne p2, v0, :cond_9

    .line 453
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore music failed, set first"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p2, p1, v7}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(II)V

    goto :goto_3

    .line 458
    :cond_9
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore music next time"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 433
    :cond_a
    :goto_2
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restored music info invalid"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p2, p1, v7}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(II)V

    .line 465
    :cond_b
    :goto_3
    iget-object p2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz p2, :cond_f

    .line 466
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore music play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-boolean v1, v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->isPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-boolean p2, p2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->isPlaying:Z

    if-eqz p2, :cond_d

    .line 468
    iget-boolean p2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz p2, :cond_c

    .line 469
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto :goto_4

    .line 472
    :cond_c
    iput-boolean v5, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    goto :goto_4

    .line 476
    :cond_d
    iput-boolean v7, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    .line 480
    :goto_4
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "restore end"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iput v6, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    .line 482
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-static {p0, p1, v7}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$900(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V

    goto :goto_5

    .line 485
    :cond_e
    iget p2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    if-ne p2, v6, :cond_f

    .line 487
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->access$100()Ljava/lang/String;

    move-result-object p2

    const-string v0, "update playlist"

    invoke-static {p2, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$4;->this$0:Lcom/chery/media/model/business/UsbMusicBusiness;

    iget p2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistType:I

    iget-object v0, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    :cond_f
    :goto_5
    return-void
.end method
