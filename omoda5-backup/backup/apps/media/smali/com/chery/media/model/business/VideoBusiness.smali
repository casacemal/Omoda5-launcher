.class public Lcom/chery/media/model/business/VideoBusiness;
.super Ljava/lang/Object;
.source "VideoBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;,
        Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;,
        Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;,
        Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;,
        Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;,
        Lcom/chery/media/model/business/VideoBusiness$PlayInfo;,
        Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;
    }
.end annotation


# static fields
.field private static final FAST_PLAY_BACKWARD:I = -0x1

.field private static final FAST_PLAY_FORWARD:I = 0x1

.field private static final FAST_PLAY_NONE:I = 0x0

.field private static final FAST_PLAY_STEP:I = 0x1388

.field public static final PLAYLIST_ALL:I = 0x0

.field public static final PLAYLIST_FOLDER:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/VideoBusiness;


# instance fields
.field public audioFocus:I

.field public audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public audioFocusRequest:Landroid/media/AudioFocusRequest;

.field public audioFocusSource:I

.field private audioManager:Landroid/media/AudioManager;

.field private avmActive:Z

.field private brightness:I

.field private brightnessListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentUsb:I

.field private currentUsbListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPlayInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

.field private handler:Landroid/os/Handler;

.field private playInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/VideoBusiness$PlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private playingInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private playlistInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private runReleaseSpeedLimitCover:Ljava/lang/Runnable;

.field private runReleaseSpeedLimitPlay:Ljava/lang/Runnable;

.field private runSaveRestoreInfo:Ljava/lang/Runnable;

.field private speedLimitListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;",
            ">;"
        }
    .end annotation
.end field

.field private speedLimitPlay:Z

.field private speedLimitSetting:Z

.field private speedLimitView:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private uiEnablePlay:Z

.field private vehicleSpeedLimitObserver:Landroid/database/ContentObserver;

.field private videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

.field private volume:I

.field private volumeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/chery/media/model/business/VideoBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsb:I

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsbListeners:Ljava/util/List;

    const/16 v1, 0x10

    .line 73
    iput v1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusSource:I

    .line 76
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocus:I

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    .line 136
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    invoke-direct {v1, v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;-><init>(I)V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->defaultPlayInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playlistInfoListeners:Ljava/util/List;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitSetting:Z

    .line 176
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitView:Z

    .line 177
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    .line 194
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$1;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VideoBusiness$1;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$2;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VideoBusiness$2;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitPlay:Ljava/lang/Runnable;

    .line 211
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->uiEnablePlay:Z

    .line 214
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness;->volume:I

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->volumeListeners:Ljava/util/List;

    .line 228
    iput v0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightness:I

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->brightnessListeners:Ljava/util/List;

    .line 242
    iput-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->avmActive:Z

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/VideoBusiness;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/VideoBusiness;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitPlay(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/VideoBusiness;ILandroid/util/Size;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->notifyVideoSize(ILandroid/util/Size;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/VideoBusiness;IZ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/VideoBusiness;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setAudioFocus(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/VideoBusiness;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsb:I

    return p0
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/VideoBusiness;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentUsb(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/VideoBusiness;)Landroid/media/AudioManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/VideoBusiness;)Lcom/chery/media/model/business/StableMediaPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/VideoBusiness;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setVolume(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/chery/media/model/business/VideoBusiness;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setBrightness(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/chery/media/model/business/VideoBusiness;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/chery/media/model/business/VideoBusiness;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/chery/media/model/business/VideoBusiness;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitSetting(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/chery/media/model/business/VideoBusiness;F)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->onVehicleSpeedChanged(F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/chery/media/model/business/VideoBusiness;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setAvmActive(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/chery/media/model/business/VideoBusiness;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->setFastPlayStatus(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/chery/media/model/business/VideoBusiness;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightness:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/VideoBusiness;II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->setPlayingState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getChangeNextVideo(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/VideoBusiness;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/VideoBusiness;IJ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->setDuration(IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/VideoBusiness;IJ)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->setPosition(IJ)V

    return-void
.end method

.method private canPlayByAudioFocus(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method private changePlaylist(IILjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;)V"
        }
    .end annotation

    .line 830
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 831
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 832
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

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

    .line 831
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistType:I

    if-ne p2, v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-direct {p0, p4, v1}, Lcom/chery/media/model/business/VideoBusiness;->isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "playlist no change!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 839
    :cond_1
    iput p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistType:I

    .line 840
    iput-object p3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistKey:Ljava/lang/String;

    .line 841
    iget-object p3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    if-eqz p4, :cond_2

    .line 843
    iget-object p3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 845
    :cond_2
    iget-object p3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 847
    new-instance p3, Ljava/util/ArrayList;

    if-eqz p4, :cond_3

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_3
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 848
    :goto_1
    iget-object p4, p0, Lcom/chery/media/model/business/VideoBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    .line 849
    invoke-interface {v1, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;->onPlaylistChanged(IILjava/util/List;)V

    goto :goto_2

    .line 852
    :cond_4
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 853
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    .line 854
    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    invoke-direct {p0, p1, p3}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    goto :goto_5

    .line 857
    :cond_5
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    move p2, v4

    .line 859
    :goto_3
    iget-object p4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_7

    .line 860
    iget-object p4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 861
    iget-object v1, p4, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 862
    invoke-direct {p0, p1, p4}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    move v5, v4

    :goto_4
    if-nez v5, :cond_8

    .line 868
    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    invoke-direct {p0, p1, p3}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 874
    :cond_8
    :goto_5
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/VideoBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method private checkCanPlay(I)Z
    .locals 5

    .line 1083
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p1

    .line 1084
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "checkCanPlay[%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->uiEnablePlay:Z

    if-nez v0, :cond_0

    .line 1087
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "checkCanPlay[%s] ui does\'t enable play"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 1091
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "checkCanPlay[%s] surfaceHolder null"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1094
    :cond_1
    iget v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocus:I

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/VideoBusiness;->canPlayByAudioFocus(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1095
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "checkCanPlay[%s] no audio focus"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1098
    :cond_2
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->getCurrentPowerMode()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xf

    if-eq v0, v2, :cond_3

    const/16 v2, 0x13

    if-eq v0, v2, :cond_3

    .line 1102
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v4

    const-string v0, "checkCanPlay power(%d) not run"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1105
    :cond_3
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->avmActive:Z

    if-eqz v0, :cond_4

    .line 1106
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "checkCanPlay avm active"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1109
    :cond_4
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isPartNumberBrazil()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1110
    iget-boolean p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    if-eqz p0, :cond_6

    .line 1111
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "checkCanPlay brazil area speedLimitPlay"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1116
    :cond_5
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitSetting:Z

    if-eqz v0, :cond_6

    iget-boolean p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    if-eqz p0, :cond_6

    .line 1117
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "checkCanPlay speedLimitSetting or speedLimitPlay"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 1121
    :cond_6
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "checkCanPlay[%s] true"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getChangeNextVideo(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 1

    .line 1229
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    .line 1230
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1231
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr p1, p0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getChangePriorVideo(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 1

    .line 1259
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    .line 1260
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1261
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    .line 1263
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int p0, p1, p0

    .line 1262
    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getInstance()Lcom/chery/media/model/business/VideoBusiness;
    .locals 1

    .line 245
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->instance:Lcom/chery/media/model/business/VideoBusiness;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/chery/media/model/business/VideoBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/VideoBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/VideoBusiness;->instance:Lcom/chery/media/model/business/VideoBusiness;

    .line 248
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->instance:Lcom/chery/media/model/business/VideoBusiness;

    return-object v0
.end method

.method private getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    return-object p0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->defaultPlayInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    return-object p0
.end method

.method private isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
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

    .line 884
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    .line 887
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 888
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

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

.method private notifyVideoSize(ILandroid/util/Size;)V
    .locals 5

    .line 1028
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1029
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "notifyVideoSize usb:%s size:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->videoSize:Landroid/util/Size;

    .line 1031
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    .line 1032
    invoke-interface {v0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;->onVideoSizeNotify(ILandroid/util/Size;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onVehicleSpeedChanged(F)V
    .locals 5

    .line 1581
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

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

    .line 1582
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isPartNumberBrazil()Z

    move-result v0

    const-wide/16 v2, 0xbb8

    if-eqz v0, :cond_2

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 1584
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitView(Z)V

    .line 1585
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1586
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitPlay(Z)V

    .line 1587
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitPlay:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1590
    :cond_0
    iget-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitView:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1591
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1593
    :cond_1
    iget-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitPlay:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1594
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitPlay:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1599
    :cond_2
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0xf

    :goto_0
    int-to-float v0, v4

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    .line 1601
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitView(Z)V

    .line 1602
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1605
    :cond_4
    iget-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitView:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1606
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->runReleaseSpeedLimitCover:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private readRestoreInfo(I)V
    .locals 5

    .line 1511
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p1

    .line 1512
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "readRestoreInfo %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "%s_video_restore_info.txt"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1515
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1518
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1519
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readRestoreInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/VideoBusiness$18;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/VideoBusiness$18;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/VideoBusiness$18;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iput-object p0, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1525
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveRestoreInfo(IZ)V
    .locals 6

    .line 1458
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1459
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "saveRestoreInfo %s force:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    .line 1462
    iget p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    if-eqz p2, :cond_0

    iget p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreState:I

    if-eq p2, v2, :cond_0

    .line 1463
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "restore state not none or end, ignore!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1466
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-nez p2, :cond_1

    .line 1467
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "usb not mounted, ignore!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1472
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    .line 1474
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistType:I

    iput v1, p2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playlistType:I

    .line 1475
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistKey:Ljava/lang/String;

    iput-object v1, p2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playlistKey:Ljava/lang/String;

    .line 1477
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p1

    .line 1478
    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->playingVideo:Ljava/lang/String;

    .line 1480
    iget-boolean p1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-eqz p1, :cond_3

    .line 1481
    iget-object p1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-boolean p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->isPlaying:Z

    iput-boolean p2, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->isPlaying:Z

    goto :goto_1

    .line 1484
    :cond_3
    iget-object p1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-boolean p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playOnCanPlay:Z

    iput-boolean p2, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->isPlaying:Z

    .line 1486
    :goto_1
    iget-object p1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    iget-wide v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    iput-wide v1, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;->position:J

    .line 1490
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 1491
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1493
    :cond_4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/VideoBusiness$PlayInfo$RestoreInfo;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1494
    new-instance p2, Lcom/chery/media/model/business/VideoBusiness$17;

    invoke-direct {p2, p0, v0, p1}, Lcom/chery/media/model/business/VideoBusiness$17;-><init>(Lcom/chery/media/model/business/VideoBusiness;Lcom/chery/media/model/business/VideoBusiness$PlayInfo;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/chery/media/model/business/VideoBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1507
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAudioFocus(I)V
    .locals 4

    .line 1047
    iget v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1050
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setAudioFocus focus:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iput p1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocus:I

    .line 1053
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    return-void
.end method

.method private setAvmActive(Z)V
    .locals 3

    .line 1613
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->avmActive:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1616
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvmActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iput-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->avmActive:Z

    .line 1618
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    return-void
.end method

.method private setBrightness(I)V
    .locals 3

    .line 1422
    iget v0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightness:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1425
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set brightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    iput p1, p0, Lcom/chery/media/model/business/VideoBusiness;->brightness:I

    .line 1427
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightnessListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;

    .line 1428
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;->onBrightnessChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 5

    .line 896
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-ne p2, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 900
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    sget-object p0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string p1, "info is same"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 904
    :cond_1
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "setCurrentPlaying usb:%s currentPlaying:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-static {v0, p2}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$402(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    if-eqz p2, :cond_2

    .line 908
    iget v1, p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->duration:I

    int-to-long v1, v1

    invoke-direct {p0, p1, v1, v2}, Lcom/chery/media/model/business/VideoBusiness;->setDuration(IJ)V

    .line 909
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v2, p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_2
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 914
    :goto_0
    iput-boolean v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->expectedPlay:Z

    const-wide/16 v0, 0x0

    .line 915
    invoke-direct {p0, p1, v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->setPosition(IJ)V

    .line 916
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    .line 917
    invoke-interface {v1, p1, p2}, Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;->onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    goto :goto_1

    .line 920
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/VideoBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method private setCurrentUsb(I)V
    .locals 3

    .line 790
    iget v0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsb:I

    if-ne p1, v0, :cond_0

    return-void

    .line 793
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentUsb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iput p1, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsb:I

    .line 795
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    .line 796
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;->onCurrentUsbChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDuration(IJ)V
    .locals 5

    .line 996
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 997
    iget-wide v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->duration:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 1000
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "setDuration usb:%s duration:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iput-wide p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->duration:J

    .line 1002
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    .line 1003
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;->onDurationChanged(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFastPlayStatus(II)V
    .locals 6

    .line 1364
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1366
    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    if-ne p2, v1, :cond_0

    return-void

    .line 1369
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "setFastPlayStatus %s %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iput p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    .line 1372
    iget p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    if-nez p2, :cond_1

    .line 1374
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/VideoBusiness;->saveRestoreInfo(IZ)V

    :cond_1
    return-void
.end method

.method private setIsPlaying(IZ)V
    .locals 5

    .line 982
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p1

    .line 983
    iget-boolean v0, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->isPlaying:Z

    if-ne p2, v0, :cond_0

    return-void

    .line 986
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "setIsPlaying usb:%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iput-boolean p2, p1, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->isPlaying:Z

    .line 988
    iget p1, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsb:I

    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/VideoBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method private setPlayingState(II)V
    .locals 7

    .line 964
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 965
    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playingState:I

    if-ne p2, v1, :cond_0

    return-void

    .line 968
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "setPlayingState usb:%s %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iput p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playingState:I

    .line 970
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    .line 971
    invoke-interface {v1, p1, p2}, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;->onPlayingStateChanged(II)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    move v5, v6

    .line 974
    :cond_2
    invoke-direct {p0, p1, v5}, Lcom/chery/media/model/business/VideoBusiness;->setIsPlaying(IZ)V

    return-void
.end method

.method private setPosition(IJ)V
    .locals 3

    .line 1012
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1013
    iget-wide v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 1017
    :cond_0
    iput-wide p2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    .line 1018
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;

    .line 1019
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;->onPositionChanged(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSpeedLimitPlay(Z)V
    .locals 3

    .line 1564
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1567
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedLimitPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iput-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    .line 1569
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    .line 1571
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

    .line 1572
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;->onSpeedLimitPlayChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSpeedLimitSetting(Z)V
    .locals 3

    .line 1531
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitSetting:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1534
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedLimitSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    iput-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitSetting:Z

    .line 1536
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    .line 1538
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

    .line 1539
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;->onSpeedLimitSettingChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setSpeedLimitView(Z)V
    .locals 3

    .line 1548
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitView:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1551
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeedLimitView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iput-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitView:Z

    .line 1554
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;

    .line 1555
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;->onSpeedLimitViewChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setVolume(I)V
    .locals 3

    .line 1391
    iget v0, p0, Lcom/chery/media/model/business/VideoBusiness;->volume:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1394
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iput p1, p0, Lcom/chery/media/model/business/VideoBusiness;->volume:I

    .line 1396
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->volumeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;

    .line 1397
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;->onVolumeChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCanPlay()V
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1058
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCanPlay(I)V
    .locals 6

    .line 1063
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    .line 1064
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->checkCanPlay(I)Z

    move-result v1

    .line 1065
    iget-boolean v2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-ne v1, v2, :cond_0

    return-void

    .line 1068
    :cond_0
    sget-object v2, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "updateCanPlay usb:%s canPlay:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iput-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-eqz v1, :cond_1

    .line 1071
    iget-boolean v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playOnCanPlay:Z

    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->expectedPlay:Z

    iput-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playOnCanPlay:Z

    .line 1077
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->stopFastPlay(I)V

    .line 1078
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->pause(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addBrightnessListener(Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightnessListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightnessListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCurrentUsbListener(Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayingInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlaylistInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addSpeedLimitListener(Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addVolumeListener(Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->volumeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->volumeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeBrightness(I)V
    .locals 3

    .line 1433
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBrightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMin()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getBrightnessMax()I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    .line 1437
    :cond_0
    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->getInstance()Lcom/chery/setting/BrightnessAIDLTool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/setting/BrightnessAIDLTool;->setBrightness(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeBrightnessBy(I)V
    .locals 3

    .line 1441
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeBrightnessBy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$16;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/VideoBusiness$16;-><init>(Lcom/chery/media/model/business/VideoBusiness;I)V

    const-wide/16 p0, 0x32

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public changeCurrentPlaying(II)V
    .locals 5

    .line 955
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 956
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 958
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 959
    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    :cond_0
    return-void
.end method

.method public changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V
    .locals 5

    .line 929
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 930
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "to changeCurrentPlaying usb:%s videoInfo:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 937
    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeCurrentPlaying(ILjava/lang/String;)V
    .locals 5

    .line 943
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 944
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "to changeCurrentPlaying usb:%s videoPath:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    .line 947
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 948
    invoke-direct {p0, p1, v1}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    :cond_1
    return-void
.end method

.method public changePlaylist(IILjava/lang/String;)V
    .locals 4

    .line 813
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 814
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const-string v0, "changePlaylist usb:%s playlistType:%d playlistKey:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    if-eq p2, v3, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/chery/media/model/business/UsbScannerBusiness;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->videoInfos:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 818
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getVideos(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/VideoBusiness;->changePlaylist(IILjava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public changeVolume(I)V
    .locals 3

    .line 1402
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to change volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getVolumeMin()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->getVolumeMax()I

    move-result p0

    if-le p1, p0, :cond_0

    goto :goto_0

    .line 1406
    :cond_0
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupVolume(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public fastBackward(I)V
    .locals 5

    .line 1283
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1284
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "fastBackward %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1289
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 1292
    :cond_1
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1293
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1295
    :cond_2
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$14;

    invoke-direct {v1, p0, v0, p1}, Lcom/chery/media/model/business/VideoBusiness$14;-><init>(Lcom/chery/media/model/business/VideoBusiness;Lcom/chery/media/model/business/VideoBusiness$PlayInfo;I)V

    iput-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    .line 1312
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1313
    invoke-direct {p0, p1, v2}, Lcom/chery/media/model/business/VideoBusiness;->setFastPlayStatus(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public fastForward(I)V
    .locals 6

    .line 1317
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1318
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "fastForward %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    if-ne v1, v2, :cond_1

    return-void

    .line 1326
    :cond_1
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1327
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1329
    :cond_2
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$15;

    invoke-direct {v1, p0, v0, p1}, Lcom/chery/media/model/business/VideoBusiness$15;-><init>(Lcom/chery/media/model/business/VideoBusiness;Lcom/chery/media/model/business/VideoBusiness$PlayInfo;I)V

    iput-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    .line 1345
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1346
    invoke-direct {p0, p1, v2}, Lcom/chery/media/model/business/VideoBusiness;->setFastPlayStatus(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public freeze(I)V
    .locals 5

    .line 1182
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1183
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "freeze %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->deactivePlayer(I)V

    .line 1186
    iput-boolean v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->expectedPlay:Z

    return-void
.end method

.method public getBrightness()I
    .locals 0

    .line 1410
    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightness:I

    return p0
.end method

.method public getBrightnessMax()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getBrightnessMin()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;
    .locals 0

    .line 924
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    .line 925
    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUsb()I
    .locals 0

    .line 801
    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsb:I

    return p0
.end method

.method public getDuration(I)J
    .locals 0

    .line 1008
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->duration:J

    return-wide p0
.end method

.method public getPlayingState(I)I
    .locals 0

    .line 978
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playingState:I

    return p0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;",
            ">;"
        }
    .end annotation

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPlaylistType(I)I
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlistType:I

    return p0
.end method

.method public getPosition(I)J
    .locals 0

    .line 1024
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    return-wide p0
.end method

.method public getSpeedLimitPlay()Z
    .locals 0

    .line 1577
    iget-boolean p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitPlay:Z

    return p0
.end method

.method public getSpeedLimitSetting()Z
    .locals 0

    .line 1544
    iget-boolean p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitSetting:Z

    return p0
.end method

.method public getSpeedLimitView()Z
    .locals 0

    .line 1560
    iget-boolean p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitView:Z

    return p0
.end method

.method public getVideoSize(I)Landroid/util/Size;
    .locals 1

    .line 1037
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    .line 1038
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->videoSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->videoSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    .line 1039
    :cond_0
    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1040
    new-instance p1, Landroid/util/Size;

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->width:I

    invoke-static {p0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->height:I

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 1043
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->videoSize:Landroid/util/Size;

    return-object p0
.end method

.method public getVolume()I
    .locals 0

    .line 1379
    iget p0, p0, Lcom/chery/media/model/business/VideoBusiness;->volume:I

    return p0
.end method

.method public getVolumeMax()I
    .locals 1

    .line 1387
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getVolumeMin()I
    .locals 1

    .line 1383
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMinVolume(I)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    .line 252
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    .line 254
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    .line 255
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioManager:Landroid/media/AudioManager;

    .line 257
    new-instance p1, Lcom/chery/media/model/business/StableMediaPlayer;

    const-string v0, "video"

    invoke-direct {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    .line 258
    invoke-virtual {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->init()V

    .line 259
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v0, Lcom/chery/media/model/business/VideoBusiness$3;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VideoBusiness$3;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addCallbackListener(Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;)V

    .line 339
    iget-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v0, Lcom/chery/media/model/business/VideoBusiness$4;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VideoBusiness$4;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addSeekCompleteListener(Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-gtz v0, :cond_0

    .line 352
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    invoke-direct {v3, v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 356
    iget-object v2, p0, Lcom/chery/media/model/business/VideoBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    .line 357
    iget-object v3, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v3, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->addPlayer(I)V

    .line 358
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->checkCanPlay(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    .line 359
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->readRestoreInfo(I)V

    goto :goto_1

    .line 362
    :cond_1
    new-instance v0, Lcom/chery/media/model/business/VideoBusiness$5;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VideoBusiness$5;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 377
    iget v1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusSource:I

    const-string v2, "key_car_source_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 379
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 380
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 383
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v0

    .line 384
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentSource : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getLastSource()I

    move-result v1

    .line 386
    sget-object v3, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastSource : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget v3, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusSource:I

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_3

    if-ne v1, v3, :cond_3

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->requestAudioFocus()Z

    .line 391
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$6;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VideoBusiness$6;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    .line 513
    new-instance v0, Lcom/chery/media/model/business/VideoBusiness$7;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VideoBusiness$7;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-static {v0}, Lcom/chery/media/util/CarAdapterUse;->addCarVolumeClientListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V

    .line 533
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/VideoBusiness;->setVolume(I)V

    .line 535
    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->getInstance()Lcom/chery/setting/BrightnessAIDLTool;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chery/setting/BrightnessAIDLTool;->init(Landroid/content/Context;)V

    .line 536
    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->getInstance()Lcom/chery/setting/BrightnessAIDLTool;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$8;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VideoBusiness$8;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-virtual {v0, v1}, Lcom/chery/setting/BrightnessAIDLTool;->addBrightnessListener(Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;)V

    .line 549
    new-instance v0, Lcom/chery/media/model/business/VideoBusiness$9;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VideoBusiness$9;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-static {v0}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    .line 581
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "video_speed_limited"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    sget-object v3, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video_speed_limited:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "close"

    .line 583
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitSetting(Z)V

    .line 585
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 586
    new-instance v1, Lcom/chery/media/model/business/VideoBusiness$10;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3, v0}, Lcom/chery/media/model/business/VideoBusiness$10;-><init>(Lcom/chery/media/model/business/VideoBusiness;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->vehicleSpeedLimitObserver:Landroid/database/ContentObserver;

    .line 595
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/chery/media/model/business/VideoBusiness;->vehicleSpeedLimitObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 597
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarBasicClient()Lcom/chery/caradapter/carapi/client/CarBasicClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->getVehicleSpeed()F

    move-result v0

    .line 598
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vehicleSpeed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isPartNumberBrazil()Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, p1

    .line 600
    :goto_2
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitView(Z)V

    if-lez v0, :cond_5

    move p1, v2

    .line 601
    :cond_5
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitPlay(Z)V

    goto :goto_3

    .line 603
    :cond_6
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    move p1, v2

    .line 604
    :cond_7
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitView(Z)V

    goto :goto_3

    :cond_8
    const/high16 v1, 0x41700000    # 15.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    move p1, v2

    .line 607
    :cond_9
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setSpeedLimitView(Z)V

    .line 609
    :goto_3
    new-instance p1, Lcom/chery/media/model/business/VideoBusiness$11;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/VideoBusiness$11;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarBasicClientListener(Lcom/chery/caradapter/carapi/interfaces/IBasicListener;)V

    .line 716
    new-instance p1, Lcom/chery/media/model/business/VideoBusiness$12;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/VideoBusiness$12;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addAvmEngineListener(Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;)V

    .line 764
    new-instance p1, Lcom/chery/media/model/business/VideoBusiness$13;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/VideoBusiness$13;-><init>(Lcom/chery/media/model/business/VideoBusiness;)V

    .line 774
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.chery.media.test.speed"

    .line 775
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isPlaying(I)Z
    .locals 0

    .line 992
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->isPlaying:Z

    return p0
.end method

.method public pause(I)V
    .locals 5

    .line 1174
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1175
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "pause %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->pause(I)V

    .line 1178
    iput-boolean v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->expectedPlay:Z

    return-void
.end method

.method public play(I)V
    .locals 6

    .line 1146
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1147
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "play %s canPlay:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->setCurrentUsb(I)V

    .line 1151
    iget-boolean v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->canPlay:Z

    if-eqz v1, :cond_2

    .line 1152
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result v1

    .line 1153
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupMute(IZI)V

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->activePlayer(I)V

    .line 1158
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->getState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1159
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-wide v2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->position:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    .line 1162
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->play(I)V

    .line 1163
    iput-boolean v5, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->expectedPlay:Z

    goto :goto_0

    .line 1166
    :cond_2
    iput-boolean v5, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playOnCanPlay:Z

    .line 1167
    iget p1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocus:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->canPlayByAudioFocus(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1168
    invoke-virtual {p0}, Lcom/chery/media/model/business/VideoBusiness;->requestAudioFocus()Z

    :cond_3
    :goto_0
    return-void
.end method

.method public playNext(I)V
    .locals 6

    .line 1208
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1209
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "playNext %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1214
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getChangeNextVideo(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1216
    sget-object v3, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v4, "nextVideo:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 1218
    invoke-virtual {p0, p1, v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->seekTo(IJ)V

    goto :goto_0

    .line 1221
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 1223
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    :cond_2
    return-void
.end method

.method public playPause(I)V
    .locals 4

    .line 1190
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1191
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "playPause %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->pause(I)V

    goto :goto_0

    .line 1197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    :goto_0
    return-void
.end method

.method public playPrior(I)V
    .locals 6

    .line 1238
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1239
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "playPrior %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1244
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getChangePriorVideo(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1246
    sget-object v3, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v4, "priorVideo:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {v0}, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->access$400(Lcom/chery/media/model/business/VideoBusiness$PlayInfo;)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 1248
    invoke-virtual {p0, p1, v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->seekTo(IJ)V

    goto :goto_0

    .line 1251
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/chery/media/model/business/VideoBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    .line 1253
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->play(I)V

    :cond_2
    return-void
.end method

.method public removeBrightnessListener(Lcom/chery/media/model/business/VideoBusiness$OnBrightnessListener;)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->brightnessListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCurrentUsbListener(Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayingInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlayingInfoListener;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlaylistInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSpeedLimitListener(Lcom/chery/media/model/business/VideoBusiness$SpeedLimitListener;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->speedLimitListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVolumeListener(Lcom/chery/media/model/business/VideoBusiness$OnVolumeListener;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->volumeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 6

    .line 780
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 781
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "requestAudioFocus ret:%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v2, :cond_0

    .line 783
    invoke-direct {p0, v2}, Lcom/chery/media/model/business/VideoBusiness;->setAudioFocus(I)V

    return v2

    :cond_0
    return v5
.end method

.method public seekTo(IJ)V
    .locals 4

    .line 1269
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1270
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "seek %s %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(IJI)V
    .locals 4

    .line 1276
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1277
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "seek %s %s %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJI)V

    return-void
.end method

.method public setPlayOnCanPlay(IZ)V
    .locals 3

    .line 1202
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p0

    .line 1203
    sget-object p1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "setPlayOnCanPlay %s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iput-boolean p2, p0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->playOnCanPlay:Z

    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1139
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceHolder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1141
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness;->videoPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1142
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    return-void
.end method

.method public setUiEnablePlay(Z)V
    .locals 3

    .line 1130
    iget-boolean v0, p0, Lcom/chery/media/model/business/VideoBusiness;->uiEnablePlay:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 1133
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUiEnablePlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    iput-boolean p1, p0, Lcom/chery/media/model/business/VideoBusiness;->uiEnablePlay:Z

    .line 1135
    invoke-direct {p0}, Lcom/chery/media/model/business/VideoBusiness;->updateCanPlay()V

    return-void
.end method

.method public stopFastPlay(I)V
    .locals 5

    .line 1350
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object v0

    .line 1351
    sget-object v1, Lcom/chery/media/model/business/VideoBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stopFastPlay %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    if-nez v1, :cond_0

    return-void

    .line 1356
    :cond_0
    iget-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/chery/media/model/business/VideoBusiness;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1358
    iput-object v1, v0, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    .line 1360
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/VideoBusiness;->setFastPlayStatus(II)V

    return-void
.end method
