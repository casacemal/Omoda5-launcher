.class Lcom/chery/media/model/service/EolMediaService$1;
.super Lcom/chery/eol/IEolMediaService$Stub;
.source "EolMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/service/EolMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/service/EolMediaService;


# direct methods
.method constructor <init>(Lcom/chery/media/model/service/EolMediaService;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/chery/media/model/service/EolMediaService$1;->this$0:Lcom/chery/media/model/service/EolMediaService;

    invoke-direct {p0}, Lcom/chery/eol/IEolMediaService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCurrentSrc(B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCurrentSrc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 132
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->requestAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    .line 134
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/service/EolMediaService$1;->this$0:Lcom/chery/media/model/service/EolMediaService;

    invoke-direct {v0, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    const-string v4, "MediaPageId"

    const-string v5, "PAGE_LOCAL_MUSIC_PLAYER"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_1
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for local music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->requestBtMusicAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 120
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 121
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/service/EolMediaService$1;->this$0:Lcom/chery/media/model/service/EolMediaService;

    invoke-direct {v0, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    const-string v4, "MediaPageId"

    const-string v5, "PAGE_BT_MUSIC_PLAYER"

    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_3
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for bt music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 106
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    .line 108
    new-instance v3, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/service/EolMediaService$1;->this$0:Lcom/chery/media/model/service/EolMediaService;

    invoke-direct {v3, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v4, "com.chery.media"

    const-string v5, "com.chery.media.view.activity.MediaActivity"

    const-string v6, "com.chery.media.ACTION_OPEN"

    const-string v7, "MediaPageId"

    const-string v8, "PAGE_USB_MUSIC_PLAYER"

    invoke-virtual/range {v3 .. v8}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_5
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for usb1 music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 94
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 95
    new-instance v2, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/service/EolMediaService$1;->this$0:Lcom/chery/media/model/service/EolMediaService;

    invoke-direct {v2, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v3, "com.chery.media"

    const-string v4, "com.chery.media.view.activity.MediaActivity"

    const-string v5, "com.chery.media.ACTION_OPEN"

    const-string v6, "MediaPageId"

    const-string v7, "PAGE_RADIO_PLAYER"

    invoke-virtual/range {v2 .. v7}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_7
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for FM"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_8
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 81
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 82
    new-instance v2, Lcom/chery/common/PageManager;

    iget-object p0, p0, Lcom/chery/media/model/service/EolMediaService$1;->this$0:Lcom/chery/media/model/service/EolMediaService;

    invoke-direct {v2, p0}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v3, "com.chery.media"

    const-string v4, "com.chery.media.view.activity.MediaActivity"

    const-string v5, "com.chery.media.ACTION_OPEN"

    const-string v6, "MediaPageId"

    const-string v7, "PAGE_RADIO_PLAYER"

    invoke-virtual/range {v2 .. v7}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_9
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for AM"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getCurrentSrc()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getCurrentSrc"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/MediaBusiness;->getCurrentAudioSource()I

    move-result p0

    .line 45
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentAudioSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    .line 69
    :cond_5
    :goto_0
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret currentSrc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDesiredFileAndTime()[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getDesiredFileAndTime"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlayingPosition(I)I

    move-result p0

    .line 304
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trackNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    new-array v1, v1, [B

    const/4 v2, 0x1

    if-gez p0, :cond_0

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_0
    aput-byte v0, v1, v0

    .line 313
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPosition(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    .line 314
    div-long v5, v3, v5

    const-wide/16 v7, 0x3c

    .line 315
    div-long v9, v5, v7

    .line 316
    rem-long/2addr v5, v7

    .line 317
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v11, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v11, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v11, v3

    const-string v0, "trackTime:%s minuteNum:%s secondNum:%s"

    invoke-static {v0, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    aget-byte v0, v1, v2

    shr-int/lit8 v4, p0, 0x8

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 320
    aget-byte v0, v1, v3

    or-int/2addr p0, v0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    .line 321
    aget-byte p0, v1, v8

    int-to-long v2, p0

    const/16 p0, 0x8

    shr-long v11, v9, p0

    or-long/2addr v2, v11

    long-to-int p0, v2

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    const/4 p0, 0x4

    .line 322
    aget-byte v0, v1, p0

    int-to-long v2, v0

    or-long/2addr v2, v9

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    const/4 p0, 0x5

    .line 323
    aget-byte v0, v1, p0

    int-to-long v2, v0

    or-long/2addr v2, v5

    long-to-int v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    .line 325
    :goto_0
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public setDesiredFileOrTime([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDesiredFileOrTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    .line 260
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 265
    aget-byte v1, p1, p0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    .line 278
    :cond_1
    array-length v1, p1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_3

    .line 279
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v2

    or-int/2addr v0, v1

    .line 280
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "minute num:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    aget-byte p1, p1, v3

    .line 282
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "second num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_2

    const/16 v1, 0x3b

    if-gt p1, v1, :cond_2

    .line 284
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p1

    int-to-long v4, v0

    mul-long/2addr v4, v2

    invoke-virtual {v1, p0, v4, v5}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    goto :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "second num invalid"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data length < 4"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_4
    array-length v1, p1

    if-lt v1, v3, :cond_5

    .line 268
    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte p1, p1, v2

    or-int/2addr p1, v0

    .line 269
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(II)V

    goto :goto_0

    .line 273
    :cond_5
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data length < 3"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 261
    :cond_6
    :goto_1
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data invalid"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFastPlayMode(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 214
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 215
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(II)V

    .line 217
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->fastBackward(I)V

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->fastForward(I)V

    goto :goto_0

    .line 228
    :cond_3
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "current playing null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_4
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for usb1 music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setPlayMode([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 171
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mode invalid"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 177
    aget-byte v1, p1, p0

    const/4 v2, 0x1

    .line 178
    aget-byte p1, p1, v2

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 198
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, p0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    goto :goto_0

    .line 193
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 186
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, p0, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    goto :goto_0

    .line 183
    :cond_6
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlayMode(II)V

    :goto_0
    return-void
.end method

.method public setPlayPauseState(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayPauseState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    :goto_0
    return-void
.end method

.method public setSkipTrack(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->playPrior(I)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->playNext(I)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {}, Lcom/chery/media/model/service/EolMediaService;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cannot request audio focus for usb1 music"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
