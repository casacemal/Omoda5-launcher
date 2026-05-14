.class public Lcom/chery/media/model/service/UsbMusicBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "UsbMusicBrowserService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mediaSession:Landroid/media/session/MediaSession;

.field private mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

.field private playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

.field private thisUsbType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/chery/media/model/service/UsbMusicBrowserService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/UsbMusicBrowserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    .line 32
    iput p1, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->thisUsbType:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/service/UsbMusicBrowserService;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->thisUsbType:I

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/model/service/UsbMusicBrowserService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbMusicBrowserService;->setMetaData()V

    return-void
.end method

.method private setMetaData()V
    .locals 5

    .line 86
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget v1, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->thisUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    .line 87
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "android.media.metadata.TITLE"

    .line 88
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    :cond_1
    const-string v0, "android.media.metadata.ARTIST"

    .line 89
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 91
    iget-object p0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 37
    sget-object v0, Lcom/chery/media/model/service/UsbMusicBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 40
    new-instance v0, Landroid/media/session/MediaSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbMusic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->thisUsbType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    .line 41
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/UsbMusicBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 43
    new-instance v0, Lcom/chery/media/model/service/UsbMusicBrowserService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbMusicBrowserService$1;-><init>(Lcom/chery/media/model/service/UsbMusicBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

    .line 44
    iget-object v1, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 46
    new-instance v0, Lcom/chery/media/model/service/UsbMusicBrowserService$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/UsbMusicBrowserService$2;-><init>(Lcom/chery/media/model/service/UsbMusicBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    .line 59
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/UsbMusicBusiness;->addPlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V

    .line 61
    invoke-direct {p0}, Lcom/chery/media/model/service/UsbMusicBrowserService;->setMetaData()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 66
    sget-object v0, Lcom/chery/media/model/service/UsbMusicBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 69
    invoke-static {}, Lcom/chery/media/model/business/UsbMusicBusiness;->getInstance()Lcom/chery/media/model/business/UsbMusicBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->playlistInfoListener:Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/UsbMusicBusiness;->removePlaylistInfoListener(Lcom/chery/media/model/business/UsbMusicBusiness$OnPlaylistInfoListener;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 0

    .line 75
    sget-object p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->TAG:Ljava/lang/String;

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
    sget-object p0, Lcom/chery/media/model/service/UsbMusicBrowserService;->TAG:Ljava/lang/String;

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
