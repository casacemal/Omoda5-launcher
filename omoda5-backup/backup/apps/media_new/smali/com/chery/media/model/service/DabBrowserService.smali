.class public Lcom/chery/media/model/service/DabBrowserService;
.super Landroid/service/media/MediaBrowserService;
.source "DabBrowserService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dabInfoCallback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

.field private mSession:Landroid/media/session/MediaSession;

.field private mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

.field private programName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/media/model/service/DabBrowserService;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/service/DabBrowserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/service/media/MediaBrowserService;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/chery/media/model/service/DabBrowserService;->programName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/chery/media/model/service/DabBrowserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/model/service/DabBrowserService;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/model/service/DabBrowserService;->programName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/media/model/service/DabBrowserService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/chery/media/model/service/DabBrowserService;->programName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/model/service/DabBrowserService;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/chery/media/model/service/DabBrowserService;->setMetaData(Ljava/lang/String;)V

    return-void
.end method

.method private setMetaData(Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-object v0, Lcom/chery/media/model/service/DabBrowserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMetaData "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v1, "android.media.metadata.TITLE"

    .line 94
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 96
    iget-object p0, p0, Lcom/chery/media/model/service/DabBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 29
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 30
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "DabMBService"

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/service/DabBrowserService;->mSession:Landroid/media/session/MediaSession;

    .line 31
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/service/DabBrowserService;->setSessionToken(Landroid/media/session/MediaSession$Token;)V

    .line 32
    sget-object v0, Lcom/chery/media/model/service/DabBrowserService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/chery/media/model/service/DabBrowserService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/DabBrowserService$1;-><init>(Lcom/chery/media/model/service/DabBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/DabBrowserService;->mediaSessionCallback:Landroid/media/session/MediaSession$Callback;

    .line 46
    iget-object v1, p0, Lcom/chery/media/model/service/DabBrowserService;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 48
    new-instance v0, Lcom/chery/media/model/service/DabBrowserService$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/DabBrowserService$2;-><init>(Lcom/chery/media/model/service/DabBrowserService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/DabBrowserService;->dabInfoCallback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 65
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/service/DabBrowserService;->dabInfoCallback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    .line 66
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabBusiness;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabBusiness;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/DabInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/chery/media/model/service/DabBrowserService;->programName:Ljava/lang/String;

    .line 68
    invoke-direct {p0, v0}, Lcom/chery/media/model/service/DabBrowserService;->setMetaData(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/service/media/MediaBrowserService;->onDestroy()V

    .line 75
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/service/DabBrowserService;->dabInfoCallback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/DabBusiness;->removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;
    .locals 0

    .line 81
    sget-object p0, Lcom/chery/media/model/service/DabBrowserService;->TAG:Ljava/lang/String;

    const-string p1, "onGetRoot"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
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

    .line 87
    sget-object p0, Lcom/chery/media/model/service/DabBrowserService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadChildren "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Landroid/service/media/MediaBrowserService$Result;->detach()V

    return-void
.end method
