.class public Lcom/chery/media/model/service/UsbVideoBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "UsbVideoBrowserService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

.field private mediaSession:Landroid/media/session/MediaSession;

.field private mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

.field private playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/media/model/service/UsbVideoBrowserService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/UsbVideoBrowserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/service/UsbVideoBrowserService;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbVideoBrowserService;->setMetaData()V

    return-void
.end method

.method private setMetaData()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentUsb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "android.media.metadata.TITLE"

    .line 88
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 90
    iget-object p0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 31
    sget-object v0, Lcom/chery/media/model/service/UsbVideoBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 34
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "Video"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    .line 35
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/UsbVideoBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 37
    new-instance v0, Lcom/chery/media/model/service/UsbVideoBrowserService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbVideoBrowserService$1;-><init>(Lcom/chery/media/model/service/UsbVideoBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

    .line 38
    iget-object v1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 40
    new-instance v0, Lcom/chery/media/model/service/UsbVideoBrowserService$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbVideoBrowserService$2;-><init>(Lcom/chery/media/model/service/UsbVideoBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    .line 46
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->addCurrentUsbListener(Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;)V

    .line 47
    new-instance v0, Lcom/chery/media/model/service/UsbVideoBrowserService$3;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbVideoBrowserService$3;-><init>(Lcom/chery/media/model/service/UsbVideoBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    .line 58
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->addPlaylistInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;)V

    .line 60
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbVideoBrowserService;->setMetaData()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 65
    sget-object v0, Lcom/chery/media/model/service/UsbVideoBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 68
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->currentUsbListener:Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/VideoBusiness;->removeCurrentUsbListener(Lcom/chery/media/model/business/VideoBusiness$OnCurrentUsbListener;)V

    .line 69
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->getInstance()Lcom/chery/media/model/business/VideoBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->playlistInfoListener:Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/VideoBusiness;->removePlaylistInfoListener(Lcom/chery/media/model/business/VideoBusiness$OnPlaylistInfoListener;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 0

    .line 75
    sget-object p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->TAG:Ljava/lang/String;

    const-string p1, "onGetRoot"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance p0, Landroid/service/media/MediaBrowserService$BrowserRoot;

    const-string p1, "_ROOT_"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/service/media/MediaBrowserService$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/service/media/MediaBrowserService$Result<",
            "Ljava/util/List<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    sget-object p0, Lcom/chery/media/model/service/UsbVideoBrowserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadChildren "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method
