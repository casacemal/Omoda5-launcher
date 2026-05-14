.class public Lcom/chery/media/model/service/LocalMusicBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "LocalMusicBrowserService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

.field private mediaSession:Landroid/media/session/MediaSession;

.field private mediaSessionCallback:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/chery/media/model/service/LocalMusicBrowserService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/LocalMusicBrowserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/service/LocalMusicBrowserService;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/chery/media/model/service/LocalMusicBrowserService;->setMetaData()V

    return-void
.end method

.method private setMetaData()V
    .locals 5

    .line 78
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/LocalMusicBusiness;->getCurrentPlaying()Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v3, v3, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "android.media.metadata.TITLE"

    .line 80
    invoke-virtual {v1, v4, v3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    :cond_1
    const-string v0, "android.media.metadata.ARTIST"

    .line 81
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 83
    iget-object p0, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 31
    sget-object v0, Lcom/chery/media/model/service/LocalMusicBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 34
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "LocalMusic"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    .line 35
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/LocalMusicBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 37
    new-instance v0, Lcom/chery/media/model/service/LocalMusicBrowserService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/LocalMusicBrowserService$1;-><init>(Lcom/chery/media/model/service/LocalMusicBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

    .line 38
    iget-object v1, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 40
    new-instance v0, Lcom/chery/media/model/service/LocalMusicBrowserService$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/LocalMusicBrowserService$2;-><init>(Lcom/chery/media/model/service/LocalMusicBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    .line 51
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/LocalMusicBusiness;->addCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/service/LocalMusicBrowserService;->setMetaData()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 58
    sget-object v0, Lcom/chery/media/model/service/LocalMusicBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 61
    invoke-static {}, Lcom/chery/media/model/business/LocalMusicBusiness;->getInstance()Lcom/chery/media/model/business/LocalMusicBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->currentPlayingListener:Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/LocalMusicBusiness;->removeCurrentPlayingListener(Lcom/chery/media/model/business/LocalMusicBusiness$OnCurrentPlayingListener;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 0

    .line 67
    sget-object p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->TAG:Ljava/lang/String;

    const-string p1, "onGetRoot"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
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

    .line 73
    sget-object p0, Lcom/chery/media/model/service/LocalMusicBrowserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadChildren "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method
