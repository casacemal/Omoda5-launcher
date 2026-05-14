.class public Lcom/chery/media/model/business/UsbMusicBusiness;
.super Ljava/lang/Object;
.source "UsbMusicBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;,
        Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;,
        Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;,
        Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;,
        Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;
    }
.end annotation


# static fields
.field public static final FAST_PLAY_BACKWARD:I = -0x1

.field public static final FAST_PLAY_FORWARD:I = 0x1

.field public static final FAST_PLAY_NONE:I = 0x0

.field private static final FAST_PLAY_STEP:I = 0x1f40

.field private static final FAST_PLAY_STEP_FREQ:I = 0x3e8

.field public static final PLAYLIST_ALL:I = 0x0

.field public static final PLAYLIST_CUSTOM:I = 0x2

.field public static final PLAYLIST_FOLDER:I = 0x1

.field public static final PLAY_MODE_RANDOM:I = 0x1

.field public static final PLAY_MODE_SEQ:I = 0x2

.field public static final PLAY_MODE_SINGLE:I

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/UsbMusicBusiness;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private currentUsb:I

.field private currentUsbListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPlayInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

.field private errorDialog:Lcom/chery/media/view/dialog/Dialog_SingleText;

.field private handler:Landroid/os/Handler;

.field private musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

.field private playInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private playModeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private playingInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private playlistInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private runSaveRestoreInfo:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/chery/media/model/business/UsbMusicBusiness;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsb:I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsbListeners:Ljava/util/List;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    .line 131
    new-instance v1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    invoke-direct {v1, v0}, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;-><init>(I)V

    iput-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->defaultPlayInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playlistInfoListeners:Ljava/util/List;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playModeListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/UsbMusicBusiness;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setAudioFocus(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/UsbMusicBusiness;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsb:I

    return p0
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/UsbMusicBusiness;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentUsb(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/UsbMusicBusiness;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setPlayMode(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/model/business/StableMediaPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/UsbMusicBusiness;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->updateCanPlay()V

    return-void
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/media/AudioManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/UsbMusicBusiness;)Ljava/util/HashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/chery/media/model/business/UsbMusicBusiness;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setFastPlayStatus(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setPlayingState(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/UsbMusicBusiness;I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getNextMusic(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/UsbMusicBusiness;)Lcom/chery/media/view/dialog/Dialog_SingleText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->errorDialog:Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-object p0
.end method

.method static synthetic access$402(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/view/dialog/Dialog_SingleText;)Lcom/chery/media/view/dialog/Dialog_SingleText;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->errorDialog:Lcom/chery/media/view/dialog/Dialog_SingleText;

    return-object p1
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/UsbMusicBusiness;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->setDuration(IJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/UsbMusicBusiness;IJ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->setPosition(IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/UsbMusicBusiness;IZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->saveRestoreInfo(IZ)V

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

.method private checkCanPlay(I)Z
    .locals 5

    .line 811
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p1

    .line 812
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "checkCanPlay[%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->getCurrentPowerMode()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/16 v2, 0x13

    if-eq v0, v2, :cond_0

    .line 818
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "checkCanPlay[%s] power(%d) not run"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 822
    :cond_0
    iget v0, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocus:I

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->canPlayByAudioFocus(I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 823
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "checkCanPlay[%s] no audio focus"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 826
    :cond_1
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object p1, v0, v4

    const-string p1, "checkCanPlay[%s] true"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;
    .locals 1

    .line 186
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->instance:Lcom/chery/media/model/business/UsbMusicBusiness;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/chery/media/model/business/UsbMusicBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/UsbMusicBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->instance:Lcom/chery/media/model/business/UsbMusicBusiness;

    .line 189
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->instance:Lcom/chery/media/model/business/UsbMusicBusiness;

    return-object v0
.end method

.method private getNextMusic(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;
    .locals 2

    .line 916
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    .line 917
    iget p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 926
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 927
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 928
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr p1, p0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    goto :goto_1

    .line 920
    :cond_1
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 921
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 922
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int/2addr p1, p0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    return-object p0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->defaultPlayInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    return-object p0
.end method

.method private getPriorMusic(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;
    .locals 2

    .line 959
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    .line 960
    iget p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto :goto_2

    .line 970
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 971
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 972
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    if-gtz p1, :cond_1

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    .line 973
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int p0, p1, p0

    .line 972
    :goto_0
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    goto :goto_3

    .line 963
    :cond_2
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 964
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 965
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    if-gtz p1, :cond_3

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    goto :goto_1

    :cond_3
    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    .line 966
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    rem-int p0, p1, p0

    .line 965
    :goto_1
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method private isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
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

    .line 642
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move v1, v0

    .line 645
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 646
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

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

.method private readRestoreInfo(I)V
    .locals 5

    .line 1190
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p1

    .line 1191
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "readRestoreInfo %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->context:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v2, "%s_music_restore_info.txt"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1194
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 1197
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1198
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readRestoreInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/UsbMusicBusiness$9;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/UsbMusicBusiness$9;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/UsbMusicBusiness$9;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iput-object p0, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveRestoreInfo(IZ)V
    .locals 6

    .line 1135
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 1136
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 1139
    iget p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    if-eqz p2, :cond_0

    iget p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreState:I

    if-eq p2, v2, :cond_0

    .line 1140
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "restore state not none or end, ignore!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1143
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p2

    iget-boolean p2, p2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mounted:Z

    if-nez p2, :cond_1

    .line 1144
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "usb not mounted, ignore!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1149
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    .line 1151
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistType:I

    iput v1, p2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playlistType:I

    .line 1152
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistKey:Ljava/lang/String;

    iput-object v1, p2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playlistKey:Ljava/lang/String;

    .line 1154
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p1

    .line 1155
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playingMusic:Ljava/lang/String;

    .line 1157
    iget-boolean p1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz p1, :cond_3

    .line 1158
    iget-object p1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-boolean p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->isPlaying:Z

    iput-boolean p2, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->isPlaying:Z

    goto :goto_1

    .line 1161
    :cond_3
    iget-object p1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-boolean p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    iput-boolean p2, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->isPlaying:Z

    .line 1163
    :goto_1
    iget-object p1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget-wide v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    iput-wide v1, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->position:J

    .line 1165
    iget-object p1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    iget p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    iput p2, p1, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;->playMode:I

    .line 1169
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 1170
    iget-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1172
    :cond_4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->restoreInfo:Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo$RestoreInfo;

    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1173
    new-instance p2, Lcom/chery/media/model/business/UsbMusicBusiness$8;

    invoke-direct {p2, p0, v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness$8;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1186
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setAudioFocus(II)V
    .locals 5

    .line 774
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 775
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocus:I

    if-ne p2, v1, :cond_0

    return-void

    .line 778
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "setAudioFocus usb:%s focus:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iput p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocus:I

    .line 781
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->updateCanPlay(I)V

    return-void
.end method

.method private setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 5

    .line 654
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 655
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-ne p2, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 658
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "info is same"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 662
    :cond_1
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "setCurrentPlaying usb:%s currentPlaying:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iput-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz p2, :cond_2

    .line 665
    iget v0, p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->duration:I

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->setDuration(IJ)V

    .line 666
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v1, p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 671
    :goto_0
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    .line 672
    invoke-interface {v1, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;->onCurrentPlayingChanged(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    goto :goto_1

    .line 675
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method private setCurrentUsb(I)V
    .locals 3

    .line 550
    iget v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsb:I

    if-ne p1, v0, :cond_0

    return-void

    .line 553
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentUsb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iput p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsb:I

    .line 555
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;

    .line 556
    invoke-interface {v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;->onCurrentUsbChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDuration(IJ)V
    .locals 5

    .line 742
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 743
    iget-wide v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->duration:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 746
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "setDuration usb:%s duration:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iput-wide p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->duration:J

    .line 748
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    .line 749
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;->onDurationChanged(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFastPlayStatus(II)V
    .locals 6

    .line 1081
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 1083
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    if-ne p2, v1, :cond_0

    return-void

    .line 1086
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 1087
    iput p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    .line 1089
    iget v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    if-nez v0, :cond_1

    .line 1091
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->saveRestoreInfo(IZ)V

    .line 1094
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    .line 1095
    invoke-interface {v0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;->onFastPlayStatusChanged(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setPlayMode(II)V
    .locals 6

    .line 1109
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 1110
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    if-ne p2, v1, :cond_0

    return-void

    .line 1113
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "setPlayMode %s %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iput p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    .line 1115
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;

    .line 1116
    invoke-interface {v1, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;->onPlayModeChanged(II)V

    goto :goto_0

    .line 1119
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method private setPlayingState(IZ)V
    .locals 6

    .line 724
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 725
    iget-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->isPlaying:Z

    if-ne p2, v1, :cond_0

    return-void

    .line 728
    :cond_0
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "setPlayingState usb:%s playingState:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iput-boolean p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->isPlaying:Z

    .line 730
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    .line 731
    invoke-interface {v1, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;->onPlayingStateChanged(IZ)V

    goto :goto_0

    .line 734
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method private setPosition(IJ)V
    .locals 3

    .line 758
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 759
    iget-wide v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 763
    :cond_0
    iput-wide p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    .line 764
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;

    .line 765
    invoke-interface {v0, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;->onPositionChanged(IJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCanPlay()V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

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

    .line 786
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->updateCanPlay(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateCanPlay(I)V
    .locals 6

    .line 791
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    .line 792
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->checkCanPlay(I)Z

    move-result v1

    .line 793
    iget-boolean v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-ne v1, v2, :cond_0

    return-void

    .line 796
    :cond_0
    sget-object v2, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "updateCanPlay usb:%s canPlay:%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iput-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz v1, :cond_1

    .line 799
    iget-boolean v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    goto :goto_0

    .line 804
    :cond_1
    iget-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->isPlaying:Z

    iput-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    .line 805
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->stopFastPlay(I)V

    .line 806
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addCurrentUsbListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayModeListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlayingInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addPlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public changeCurrentPlaying(II)V
    .locals 5

    .line 715
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 716
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 718
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 719
    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    :cond_0
    return-void
.end method

.method public changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V
    .locals 5

    .line 689
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 690
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "to changeCurrentPlaying usb:%s musicInfo:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 697
    iget-object p2, p2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public changeCurrentPlaying(ILjava/lang/String;)V
    .locals 5

    .line 703
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 704
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "to changeCurrentPlaying usb:%s musicPath:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 707
    iget-object v2, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 708
    invoke-direct {p0, p1, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    :cond_1
    return-void
.end method

.method public changePlayMode(II)V
    .locals 5

    .line 1123
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 1124
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "changePlayMode %s %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    if-ne p2, v0, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setPlayMode(II)V

    return-void
.end method

.method public changePlaylist(IILjava/lang/String;)V
    .locals 4

    .line 573
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 574
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 581
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/chery/media/model/business/UsbScannerBusiness;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->musicInfos:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 578
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/media/model/business/UsbScannerBusiness;->getMusics(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->changePlaylist(IILjava/lang/String;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public changePlaylist(IILjava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 591
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "changePlaylist usb:%s playlistType:%d playlist size:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistType:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-direct {p0, p4, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->isPlaylistSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "playlist no change!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 598
    :cond_0
    iput p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistType:I

    .line 599
    iput-object p3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistKey:Ljava/lang/String;

    .line 600
    iget-object p3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 601
    iget-object p3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 602
    invoke-static {p4}, Lcom/chery/media/util/Utils;->generateRandomList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->randomPlaylist:Ljava/util/List;

    .line 603
    iget-object p3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->errorlist:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 605
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    iget-object p4, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    .line 607
    invoke-interface {v1, p1, p2, p3}, Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;->onPlaylistChanged(IILjava/util/List;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz p2, :cond_5

    .line 611
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 612
    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0, p1, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    goto :goto_3

    .line 615
    :cond_2
    iget-object p2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object p4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    move p2, v4

    .line 617
    :goto_1
    iget-object p4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_4

    .line 618
    iget-object p4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    .line 619
    iget-object v1, p4, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    iget-object v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 620
    invoke-direct {p0, p1, p4}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_2
    if-nez v5, :cond_5

    .line 626
    check-cast p3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-direct {p0, p1, p3}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 632
    :cond_5
    :goto_3
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->saveRestoreInfo(IZ)V

    return-void
.end method

.method public fastBackward(I)V
    .locals 5

    .line 990
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 991
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "fastBackward %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 999
    :cond_1
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1000
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1002
    :cond_2
    new-instance v1, Lcom/chery/media/model/business/UsbMusicBusiness$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness$6;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;I)V

    iput-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    .line 1021
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1022
    invoke-direct {p0, p1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setFastPlayStatus(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public fastForward(I)V
    .locals 6

    .line 1026
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 1027
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "fastForward %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1032
    :cond_0
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    if-ne v1, v2, :cond_1

    return-void

    .line 1035
    :cond_1
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 1036
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1038
    :cond_2
    new-instance v1, Lcom/chery/media/model/business/UsbMusicBusiness$7;

    invoke-direct {v1, p0, v0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness$7;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;I)V

    iput-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    .line 1062
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1063
    invoke-direct {p0, p1, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->setFastPlayStatus(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;
    .locals 0

    .line 679
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    .line 680
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    return-object p0
.end method

.method public getCurrentPlayingPosition(I)I
    .locals 0

    .line 684
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    .line 685
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getCurrentUsb()I
    .locals 0

    .line 561
    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsb:I

    return p0
.end method

.method public getDuration(I)J
    .locals 0

    .line 754
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->duration:J

    return-wide p0
.end method

.method public getFastPlayStatus(I)I
    .locals 0

    .line 1100
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    return p0
.end method

.method public getPlayMode(I)I
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    .line 1105
    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playMode:I

    return p0
.end method

.method public getPlaylist(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;",
            ">;"
        }
    .end annotation

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPlaylistType(I)I
    .locals 0

    .line 569
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlistType:I

    return p0
.end method

.method public getPosition(I)J
    .locals 0

    .line 770
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    return-wide p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 8

    .line 193
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->context:Landroid/content/Context;

    .line 195
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    .line 196
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->audioManager:Landroid/media/AudioManager;

    .line 198
    new-instance p1, Lcom/chery/media/model/business/StableMediaPlayer;

    const-string v0, "music"

    invoke-direct {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    .line 199
    invoke-virtual {p1}, Lcom/chery/media/model/business/StableMediaPlayer;->init()V

    .line 200
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v0, Lcom/chery/media/model/business/UsbMusicBusiness$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness$1;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addCallbackListener(Lcom/chery/media/model/business/StableMediaPlayer$CallbackListener;)V

    .line 299
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    new-instance v0, Lcom/chery/media/model/business/UsbMusicBusiness$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness$2;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/StableMediaPlayer;->addSeekCompleteListener(Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;)V

    const/4 p1, 0x0

    :goto_0
    if-gtz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    invoke-direct {v2, p1}, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result p1

    .line 316
    sget-object v0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getLastSource()I

    move-result v0

    .line 318
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastSource : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 321
    iget-object v3, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    .line 323
    iget-object v4, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v4, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->addPlayer(I)V

    .line 325
    invoke-static {v2}, Lcom/chery/media/model/business/MediaDef;->getUsbMusicAudioSource(I)I

    move-result v4

    iput v4, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusSource:I

    .line 328
    new-instance v4, Lcom/chery/media/model/business/UsbMusicBusiness$3;

    invoke-direct {v4, p0, v3, v2}, Lcom/chery/media/model/business/UsbMusicBusiness$3;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;I)V

    iput-object v4, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 342
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 343
    iget v5, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusSource:I

    const-string v6, "key_car_source_type"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    new-instance v5, Landroid/media/AudioFocusRequest$Builder;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 345
    invoke-virtual {v7, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    .line 346
    invoke-virtual {v6, v4}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 345
    invoke-virtual {v5, v4}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v4

    iget-object v5, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 347
    invoke-virtual {v4, v5}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v4

    iput-object v4, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 350
    invoke-direct {p0, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->checkCanPlay(I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    .line 352
    iget v4, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusSource:I

    if-eq p1, v4, :cond_1

    if-nez p1, :cond_2

    iget v3, v3, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusSource:I

    if-ne v0, v3, :cond_2

    .line 354
    :cond_1
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    .line 357
    :cond_2
    invoke-direct {p0, v2}, Lcom/chery/media/model/business/UsbMusicBusiness;->readRestoreInfo(I)V

    goto :goto_1

    .line 360
    :cond_3
    invoke-static {}, Lcom/chery/media/model/business/UsbScannerBusiness;->getInstance()Lcom/chery/media/model/business/UsbScannerBusiness;

    move-result-object p1

    new-instance v0, Lcom/chery/media/model/business/UsbMusicBusiness$4;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness$4;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/UsbScannerBusiness;->addUsbDeviceInfoListener(Lcom/chery/media/model/business/UsbScannerBusiness$OnUsbDeviceInfoListener;)V

    .line 495
    new-instance p1, Lcom/chery/media/model/business/UsbMusicBusiness$5;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/UsbMusicBusiness$5;-><init>(Lcom/chery/media/model/business/UsbMusicBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    return-void
.end method

.method public isPlaying(I)Z
    .locals 0

    .line 738
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    iget-boolean p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->isPlaying:Z

    return p0
.end method

.method public pause(I)V
    .locals 4

    .line 870
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 871
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "pause %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->pause(I)V

    return-void
.end method

.method public play(I)V
    .locals 6

    .line 835
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 836
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "play %s canPlay:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-nez v1, :cond_1

    .line 839
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-array p1, v5, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    aput-object v0, p1, v4

    const-string v0, "%s playlist is empty!"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 843
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(II)V

    .line 846
    :cond_1
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->setCurrentUsb(I)V

    .line 848
    iget-boolean v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->canPlay:Z

    if-eqz v1, :cond_4

    .line 849
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result v1

    .line 850
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 851
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v4}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupMute(IZI)V

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->activePlayer(I)V

    .line 855
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->getState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 856
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-object v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/chery/media/model/business/StableMediaPlayer;->setMedia(ILjava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    iget-wide v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->position:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    .line 859
    :cond_3
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/StableMediaPlayer;->play(I)V

    goto :goto_0

    .line 862
    :cond_4
    iput-boolean v5, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    .line 863
    iget v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocus:I

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/UsbMusicBusiness;->canPlayByAudioFocus(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 864
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->requestAudioFocus(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public playNext(I)V
    .locals 6

    .line 895
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 896
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "playNext %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 901
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getNextMusic(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 903
    sget-object v3, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v4, "nextMusic:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-ne v1, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 905
    invoke-virtual {p0, p1, v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    goto :goto_0

    .line 908
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 910
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    :cond_2
    return-void
.end method

.method public playPause(I)V
    .locals 4

    .line 877
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 878
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "playPause %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->pause(I)V

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    :goto_0
    return-void
.end method

.method public playPrior(I)V
    .locals 6

    .line 938
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 939
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "playPrior %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 944
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPriorMusic(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 946
    sget-object v3, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v4, "priorMusic:%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->currentPlaying:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    if-ne v1, v0, :cond_1

    const-wide/16 v0, 0x0

    .line 948
    invoke-virtual {p0, p1, v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->seekTo(IJ)V

    goto :goto_0

    .line 951
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->changeCurrentPlaying(ILcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 953
    :goto_0
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->play(I)V

    :cond_2
    return-void
.end method

.method public removeCurrentUsbListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnCurrentUsbListener;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->currentUsbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayModeListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayModeListener;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playModeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlayingInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlayingInfoListener;)V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playingInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->playlistInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestAudioFocus(I)Z
    .locals 6

    .line 534
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 535
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAudioFocus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 537
    sget-object p0, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const-string p1, "audioFocusRequest null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->audioManager:Landroid/media/AudioManager;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 541
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "requestAudioFocus ret:%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_1

    .line 543
    invoke-direct {p0, p1, v3}, Lcom/chery/media/model/business/UsbMusicBusiness;->setAudioFocus(II)V

    return v3

    :cond_1
    return v2
.end method

.method public seekTo(IJ)V
    .locals 4

    .line 983
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 984
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 986
    iget-object p0, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->musicPlayer:Lcom/chery/media/model/business/StableMediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/media/model/business/StableMediaPlayer;->seekTo(IJ)V

    return-void
.end method

.method public setPlayOnCanPlay(IZ)V
    .locals 3

    .line 889
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object p0

    .line 890
    sget-object p1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

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

    .line 891
    iput-boolean p2, p0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->playOnCanPlay:Z

    return-void
.end method

.method public stopFastPlay(I)V
    .locals 5

    .line 1067
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getPlayInfo(I)Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;

    move-result-object v0

    .line 1068
    sget-object v1, Lcom/chery/media/model/business/UsbMusicBusiness;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->usbName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "stopFastPlay %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayStatus:I

    if-nez v1, :cond_0

    return-void

    .line 1073
    :cond_0
    iget-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1074
    iget-object v1, p0, Lcom/chery/media/model/business/UsbMusicBusiness;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1075
    iput-object v1, v0, Lcom/chery/media/model/business/UsbMusicBusiness$PlayInfo;->fastPlayRun:Ljava/lang/Runnable;

    .line 1077
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/chery/media/model/business/UsbMusicBusiness;->setFastPlayStatus(II)V

    return-void
.end method
