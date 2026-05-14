.class public Lcom/chery/media/model/business/PictureBusiness;
.super Ljava/lang/Object;
.source "PictureBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;,
        Lcom/chery/media/model/business/PictureBusiness$OnPlayingInfoListener;,
        Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;,
        Lcom/chery/media/model/business/PictureBusiness$PlayInfo;,
        Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;
    }
.end annotation


# static fields
.field public static final PLAYLIST_ALL:I = 0x0

.field public static final PLAYLIST_FOLDER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/PictureBusiness;


# instance fields
.field private context:Landroid/content/Context;

.field private currentUsb:I

.field private currentUsbListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPlayInfo:Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

.field private handler:Landroid/os/Handler;

.field private playInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/PictureBusiness$PlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private playingInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/PictureBusiness$OnPlayingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private playlistInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private runReleaseSpeedLimitCover:Ljava/lang/Runnable;

.field private speedLimitListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;",
            ">;"
        }
    .end annotation
.end field

.field private speedLimitSetting:Z

.field private speedLimitView:Z

.field private vehicleSpeedLimitObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-class v0, Lcom/chery/media/model/business/PictureBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsb:I

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitSetting:Z

    .line 43
    iput-boolean v1, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitView:Z

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitListeners:Ljava/util/List;

    .line 46
    new-instance v1, Lcom/chery/media/model/business/PictureBusiness$1;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/PictureBusiness$1;-><init>(Lcom/chery/media/model/business/PictureBusiness;)V

    iput-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsbListeners:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->playInfoMap:Ljava/util/HashMap;

    .line 90
    new-instance v1, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;-><init>(Lcom/chery/media/model/business/PictureBusiness;I)V

    iput-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->defaultPlayInfo:Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->playlistInfoListeners:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->playingInfoListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/PictureBusiness;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->setSpeedLimitView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/PictureBusiness;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsb:I

    return p0
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/PictureBusiness;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentUsb(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/PictureBusiness;I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/PictureBusiness;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/PictureBusiness;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->setSpeedLimitSetting(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/PictureBusiness;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->onVehicleSpeedChanged(F)V

    return-void
.end method

.method private getChangeNextPicture(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;
    .locals 1

    .line 483
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p0

    .line 484
    iget-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 485
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getChangePriorPicture(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;
    .locals 1

    .line 507
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p0

    .line 508
    iget-object p1, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 509
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    .line 511
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int p0, p1, p0

    .line 510
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getInstance()Lcom/chery/media/model/business/PictureBusiness;
    .locals 1

    .line 126
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->instance:Lcom/chery/media/model/business/PictureBusiness;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/chery/media/model/business/PictureBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/PictureBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/PictureBusiness;->instance:Lcom/chery/media/model/business/PictureBusiness;

    .line 129
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->instance:Lcom/chery/media/model/business/PictureBusiness;

    return-object v0
.end method

.method private getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    return-object p0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->defaultPlayInfo:Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    return-object p0
.end method

.method private isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_1

    .line 400
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    .line 403
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 404
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method private onVehicleSpeedChanged(F)V
    .locals 5

    .line 517
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "onVehicleSpeedChanged,speed is: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getCountry()I

    move-result v0

    const/16 v2, 0x25

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 520
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/PictureBusiness;->setSpeedLimitView(Z)V

    .line 521
    iget-object p1, p0, Lcom/chery/media/model/business/PictureBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-boolean p1, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitView:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/chery/media/model/business/PictureBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/chery/media/model/business/PictureBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 5

    .line 412
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 413
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    if-ne p2, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 416
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    iget-object v2, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    sget-object p0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const-string p1, "info is same"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 420
    :cond_1
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "setCurrentPlaying usb:%s currentPlaying:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iput-object p2, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 422
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;

    .line 423
    invoke-interface {v0, p1, p2}, Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;->onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setCurrentUsb(I)V
    .locals 3

    .line 318
    iget v0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsb:I

    if-ne p1, v0, :cond_0

    return-void

    .line 321
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentUsb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iput p1, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsb:I

    .line 323
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;

    .line 324
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;->onCurrentUsbChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSpeedLimitSetting(Z)V
    .locals 3

    .line 536
    iget-boolean v0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitSetting:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 539
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedLimitSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iput-boolean p1, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitSetting:Z

    .line 543
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;

    .line 544
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;->onSpeedLimitSettingChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSpeedLimitView(Z)V
    .locals 3

    .line 553
    iget-boolean v0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitView:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 556
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedLimitView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iput-boolean p1, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitView:Z

    .line 559
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;

    .line 560
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;->onSpeedLimitViewChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCurrentUsbListener(Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayingInfoListener(Lcom/chery/media/model/business/PictureBusiness$OnPlayingInfoListener;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlaylistInfoListener(Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSpeedLimitListener(Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeCurrentPlaying(II)V
    .locals 5

    .line 459
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 460
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "to changeCurrentPlaying usb:%s index:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_0

    .line 462
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 463
    iget-object v0, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    :cond_0
    return-void
.end method

.method public changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V
    .locals 5

    .line 433
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "to changeCurrentPlaying usb:%s pictureInfo:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 441
    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentPlaying(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeCurrentPlaying(ILjava/lang/String;)V
    .locals 5

    .line 447
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "to changeCurrentPlaying usb:%s picturePath:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 451
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-direct {p0, p1, v1}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    :cond_1
    return-void
.end method

.method public changeCurrentUsb(I)V
    .locals 3

    .line 333
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCurrentUsb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsb:I

    if-ne p1, v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentUsb(I)V

    return-void
.end method

.method public changeNext(I)V
    .locals 6

    .line 468
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 469
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "playNext %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getChangeNextPicture(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v3, "nextPicture:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    :cond_1
    return-void
.end method

.method public changePlaylist(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;)V"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 350
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 351
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "changePlaylist usb:%s playlistType:%d playlist size:%d"

    .line 350
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlistType:I

    if-ne p2, v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-direct {p0, p3, v1}, Lcom/chery/media/model/business/PictureBusiness;->isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    sget-object p0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const-string p1, "playlist no change!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 359
    :cond_1
    iput p2, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlistType:I

    .line 360
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p3, :cond_2

    .line 362
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 365
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    if-eqz p3, :cond_3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    :goto_1
    iget-object p3, p0, Lcom/chery/media/model/business/PictureBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;

    .line 367
    invoke-interface {v2, p1, p2, v1}, Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;->onPlaylistChanged(IILjava/util/List;)V

    goto :goto_2

    .line 370
    :cond_4
    iget-object p2, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    if-eqz p2, :cond_8

    .line 371
    iget-object p2, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 372
    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-direct {p0, p1, p3}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    goto :goto_5

    .line 375
    :cond_5
    iget-object p2, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    move p2, v4

    .line 377
    :goto_3
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 378
    iget-object v1, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    .line 379
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    iget-object v3, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 380
    invoke-direct {p0, p1, v1}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    move v4, v5

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-nez v4, :cond_8

    .line 386
    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    invoke-direct {p0, p1, p3}, Lcom/chery/media/model/business/PictureBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public changePrior(I)V
    .locals 6

    .line 492
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object v0

    .line 493
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "playPrior %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, v0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 498
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getChangePriorPicture(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    const-string v3, "priorPicture:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/chery/media/model/business/PictureBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    :cond_1
    return-void
.end method

.method public getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;
    .locals 0

    .line 428
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p0

    .line 429
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    return-object p0
.end method

.method public getCurrentUsb()I
    .locals 0

    .line 329
    iget p0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsb:I

    return p0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPlaylistType(I)I
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;->playlistType:I

    return p0
.end method

.method public getSpeedLimitSetting()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitSetting:Z

    return p0
.end method

.method public getSpeedLimitView()Z
    .locals 0

    .line 549
    iget-boolean p0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitView:Z

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5

    .line 133
    sget-object v0, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness;->context:Landroid/content/Context;

    .line 135
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/PictureBusiness;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-gtz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;

    invoke-direct {v3, p0, v0}, Lcom/chery/media/model/business/PictureBusiness$PlayInfo;-><init>(Lcom/chery/media/model/business/PictureBusiness;I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/PictureBusiness$2;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/PictureBusiness$2;-><init>(Lcom/chery/media/model/business/PictureBusiness;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    .line 172
    iget-object v0, p0, Lcom/chery/media/model/business/PictureBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "video_speed_limited"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-object v2, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video_speed_limited:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "close"

    .line 174
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/PictureBusiness;->setSpeedLimitSetting(Z)V

    .line 176
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    new-instance v1, Lcom/chery/media/model/business/PictureBusiness$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3, v0}, Lcom/chery/media/model/business/PictureBusiness$3;-><init>(Lcom/chery/media/model/business/PictureBusiness;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->vehicleSpeedLimitObserver:Landroid/database/ContentObserver;

    .line 186
    iget-object v1, p0, Lcom/chery/media/model/business/PictureBusiness;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/chery/media/model/business/PictureBusiness;->vehicleSpeedLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarBasicClient()Lcom/chery/caradapter/carapi/client/CarBasicClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->getVehicleSpeed()F

    move-result v0

    .line 189
    sget-object v1, Lcom/chery/media/model/business/PictureBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vehicleSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x25

    .line 190
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getCountry()I

    move-result v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move p1, v2

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/PictureBusiness;->setSpeedLimitView(Z)V

    .line 193
    :cond_2
    new-instance p1, Lcom/chery/media/model/business/PictureBusiness$4;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/PictureBusiness$4;-><init>(Lcom/chery/media/model/business/PictureBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarBasicClientListener(Lcom/chery/caradapter/carapi/interfaces/IBasicListener;)V

    .line 301
    new-instance p1, Lcom/chery/media/model/business/PictureBusiness$5;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/PictureBusiness$5;-><init>(Lcom/chery/media/model/business/PictureBusiness;)V

    .line 311
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.chery.media.test.speed"

    .line 312
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeCurrentUsbListener(Lcom/chery/media/model/business/PictureBusiness$OnCurrentUsbListener;)V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayingInfoListener(Lcom/chery/media/model/business/PictureBusiness$OnPlayingInfoListener;)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlaylistInfoListener(Lcom/chery/media/model/business/PictureBusiness$OnPlaylistInfoListener;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSpeedLimitListener(Lcom/chery/media/model/business/PictureBusiness$SpeedLimitListener;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/chery/media/model/business/PictureBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
