.class public Lcom/chery/media/model/business/MediaBusiness;
.super Ljava/lang/Object;
.source "MediaBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;,
        Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/MediaBusiness;


# instance fields
.field private aaModel:Lcom/chery/androidauto/AAModel;

.field private audioManager:Landroid/media/AudioManager;

.field private audioMgrThread:Landroid/os/HandlerThread;

.field private audioMgrThreadHandler:Landroid/os/Handler;

.field private audioSourceChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private carplayModel:Lcom/chery/carplay/CarplayModel;

.field private context:Landroid/content/Context;

.field private currentAudioSource:I

.field private handler:Landroid/os/Handler;

.field private ioThread:Lcom/chery/media/util/RunnableThread;

.field private isDabLastPlayed:Z

.field private mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

.field private screenOn:Z

.field private screenSwitchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private screenSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-class v0, Lcom/chery/media/model/business/MediaBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    .line 42
    iput-boolean v0, p0, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed:Z

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioSourceChangeListeners:Ljava/util/List;

    .line 64
    iput-boolean v0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenOn:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenSwitchListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/MediaBusiness;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->setCurrentAudioSource(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/MediaBusiness;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/MediaBusiness;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/MediaBusiness;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    return p0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/MediaBusiness;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->onMediaGroupMuteChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/MediaBusiness;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->onAlarmGroupMuteChanged(Z)V

    return-void
.end method

.method public static getInstance()Lcom/chery/media/model/business/MediaBusiness;
    .locals 1

    .line 80
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->instance:Lcom/chery/media/model/business/MediaBusiness;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/chery/media/model/business/MediaBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/MediaBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/MediaBusiness;->instance:Lcom/chery/media/model/business/MediaBusiness;

    .line 83
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->instance:Lcom/chery/media/model/business/MediaBusiness;

    return-object v0
.end method

.method private onAlarmGroupMuteChanged(Z)V
    .locals 3

    .line 428
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlarmGroupMuteChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eqz p1, :cond_1

    .line 430
    iget p0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->stopA2dpRender()V

    .line 433
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    goto :goto_0

    .line 440
    :cond_1
    iget p0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    if-eq p0, v0, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    .line 443
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->startA2dpRender()V

    :goto_0
    return-void
.end method

.method private onMediaGroupMuteChanged(Z)V
    .locals 8

    .line 374
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMediaGroupMuteChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    const/16 v1, 0xc

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_6

    .line 376
    iget p1, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    const/4 v7, 0x0

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 394
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->pause(I)V

    goto/16 :goto_0

    .line 388
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->pause()V

    goto/16 :goto_0

    .line 385
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    iget p0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    invoke-static {p0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    goto/16 :goto_0

    .line 391
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->pause()V

    goto :goto_0

    .line 378
    :cond_4
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 382
    :cond_5
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 401
    :cond_6
    iget p1, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_c

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_8

    if-eq p1, v0, :cond_7

    goto :goto_0

    .line 419
    :cond_7
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p0

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    goto :goto_0

    .line 413
    :cond_8
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->play()V

    goto :goto_0

    .line 410
    :cond_9
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object p1

    iget p0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    invoke-static {p0}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicTypeOfAudioSource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto :goto_0

    .line 416
    :cond_a
    invoke-static {}, Lcom/chery/media/model/business/BtMusicBusiness;->getInstance()Lcom/chery/media/model/business/BtMusicBusiness;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/model/business/BtMusicBusiness;->play()V

    goto :goto_0

    .line 403
    :cond_b
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    goto :goto_0

    .line 407
    :cond_c
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_0
    return-void
.end method

.method private setCurrentAudioSource(I)V
    .locals 3

    .line 338
    iget v0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 344
    :cond_1
    iput-boolean v0, p0, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed:Z

    .line 353
    :goto_0
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentAudioSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    .line 355
    iput p1, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    .line 356
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->audioSourceChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;

    .line 357
    invoke-interface {v1, v0, p1}, Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;->onAudioSourceChanged(II)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private setScreenOn(Z)V
    .locals 3

    .line 363
    iget-boolean v0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 366
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput-boolean p1, p0, Lcom/chery/media/model/business/MediaBusiness;->screenOn:Z

    .line 368
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenSwitchListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;

    .line 369
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;->onScreenOnChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addAudioSourceChangeListener(Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->audioSourceChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->audioSourceChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addScreenSwitchListener(Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenSwitchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenSwitchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAAModel()Lcom/chery/androidauto/AAModel;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->aaModel:Lcom/chery/androidauto/AAModel;

    return-object p0
.end method

.method public getCarplayModel()Lcom/chery/carplay/CarplayModel;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->carplayModel:Lcom/chery/carplay/CarplayModel;

    return-object p0
.end method

.method public getCurrentAudioSource()I
    .locals 0

    .line 334
    iget p0, p0, Lcom/chery/media/model/business/MediaBusiness;->currentAudioSource:I

    return p0
.end method

.method public getIoThread()Lcom/chery/media/util/RunnableThread;
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->ioThread:Lcom/chery/media/util/RunnableThread;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 87
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->context:Landroid/content/Context;

    .line 89
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->handler:Landroid/os/Handler;

    .line 91
    iget-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioManager:Landroid/media/AudioManager;

    .line 92
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "audioMgrThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioMgrThread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->audioMgrThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioMgrThreadHandler:Landroid/os/Handler;

    .line 95
    iget-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/chery/media/model/business/MediaBusiness$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/MediaBusiness$1;-><init>(Lcom/chery/media/model/business/MediaBusiness;)V

    iget-object v1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioMgrThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioSourceChange(Landroid/media/AudioManager$OnAudioSourceChangeCallBack;Landroid/os/Handler;)V

    .line 158
    iget-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->setCurrentAudioSource(I)V

    .line 160
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->getBackLightStatus()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/MediaBusiness;->setScreenOn(Z)V

    .line 161
    new-instance p1, Lcom/chery/media/model/business/MediaBusiness$2;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/MediaBusiness$2;-><init>(Lcom/chery/media/model/business/MediaBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    .line 175
    new-instance p1, Lcom/chery/media/model/business/MediaBusiness$3;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/MediaBusiness$3;-><init>(Lcom/chery/media/model/business/MediaBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarVolumeClientListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V

    .line 249
    new-instance p1, Lcom/chery/window/UiVisibilityTest;

    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->context:Landroid/content/Context;

    const/4 v1, 0x3

    const-string v2, "Media"

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/chery/window/UiVisibilityTest;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    .line 251
    invoke-virtual {p1}, Lcom/chery/window/UiVisibilityTest;->init()V

    .line 253
    new-instance p1, Lcom/chery/carplay/CarplayModel;

    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/chery/carplay/CarplayModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->carplayModel:Lcom/chery/carplay/CarplayModel;

    .line 254
    invoke-virtual {p1}, Lcom/chery/carplay/CarplayModel;->init()V

    .line 255
    iget-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->carplayModel:Lcom/chery/carplay/CarplayModel;

    new-instance v0, Lcom/chery/media/model/business/MediaBusiness$4;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/MediaBusiness$4;-><init>(Lcom/chery/media/model/business/MediaBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/carplay/CarplayModel;->registerListener(Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;)V

    .line 322
    new-instance p1, Lcom/chery/androidauto/AAModel;

    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/chery/androidauto/AAModel;-><init>(Landroid/content/Context;Lcom/chery/androidauto/AAModel$AABindServiceCallback;)V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->aaModel:Lcom/chery/androidauto/AAModel;

    .line 323
    invoke-virtual {p1}, Lcom/chery/androidauto/AAModel;->init()V

    .line 325
    new-instance p1, Lcom/chery/media/util/RunnableThread;

    invoke-direct {p1}, Lcom/chery/media/util/RunnableThread;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness;->ioThread:Lcom/chery/media/util/RunnableThread;

    .line 326
    invoke-virtual {p1}, Lcom/chery/media/util/RunnableThread;->init()V

    return-void
.end method

.method public isDabLastPlayed()Z
    .locals 0

    .line 330
    iget-boolean p0, p0, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed:Z

    return p0
.end method

.method public removeAudioSourceChangeListener(Lcom/chery/media/model/business/MediaBusiness$OnAudioSourceChangeListener;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->audioSourceChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScreenSwitchListener(Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->screenSwitchListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateFullscreenState(Z)V
    .locals 3

    .line 452
    sget-object v0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change to fullscreen? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p0, p0, Lcom/chery/media/model/business/MediaBusiness;->mUiVisibilityTest:Lcom/chery/window/UiVisibilityTest;

    if-nez p0, :cond_0

    .line 454
    sget-object p0, Lcom/chery/media/model/business/MediaBusiness;->TAG:Ljava/lang/String;

    const-string p1, "return. "

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 458
    invoke-virtual {p0, v0, p1}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 463
    invoke-virtual {p0, v0, p1}, Lcom/chery/window/UiVisibilityTest;->setUiVisibility(II)V

    :goto_0
    return-void
.end method
