.class public Lcom/chery/media/model/business/ThumbnailClient;
.super Ljava/lang/Object;
.source "ThumbnailClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/ThumbnailClient;


# instance fields
.field private context:Landroid/content/Context;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private thumbnailServiceAidlInterface:Lcom/chery/media/IThumbnailServiceAidlInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/chery/media/model/business/ThumbnailClient;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/ThumbnailClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/chery/media/model/business/ThumbnailClient;->instance:Lcom/chery/media/model/business/ThumbnailClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/chery/media/model/business/ThumbnailClient$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/ThumbnailClient$1;-><init>(Lcom/chery/media/model/business/ThumbnailClient;)V

    iput-object v0, p0, Lcom/chery/media/model/business/ThumbnailClient;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/chery/media/model/business/ThumbnailClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/chery/media/model/business/ThumbnailClient;Lcom/chery/media/IThumbnailServiceAidlInterface;)Lcom/chery/media/IThumbnailServiceAidlInterface;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/chery/media/model/business/ThumbnailClient;->thumbnailServiceAidlInterface:Lcom/chery/media/IThumbnailServiceAidlInterface;

    return-object p1
.end method

.method private bindThumbnailService()V
    .locals 3

    .line 51
    sget-object v0, Lcom/chery/media/model/business/ThumbnailClient;->TAG:Ljava/lang/String;

    const-string v1, "bindThumbnailService"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/chery/media/model/business/ThumbnailClient;->context:Landroid/content/Context;

    const-string v2, "com.chery.media.model.service.ThumbnailService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/chery/media/model/business/ThumbnailClient;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/chery/media/model/business/ThumbnailClient;
    .locals 1

    .line 37
    sget-object v0, Lcom/chery/media/model/business/ThumbnailClient;->instance:Lcom/chery/media/model/business/ThumbnailClient;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/chery/media/model/business/ThumbnailClient;

    invoke-direct {v0}, Lcom/chery/media/model/business/ThumbnailClient;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/ThumbnailClient;->instance:Lcom/chery/media/model/business/ThumbnailClient;

    .line 40
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/ThumbnailClient;->instance:Lcom/chery/media/model/business/ThumbnailClient;

    return-object v0
.end method


# virtual methods
.method public createAudioThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailClient;->thumbnailServiceAidlInterface:Lcom/chery/media/IThumbnailServiceAidlInterface;

    if-eqz p0, :cond_0

    .line 61
    :try_start_0
    invoke-interface {p0, p1}, Lcom/chery/media/IThumbnailServiceAidlInterface;->createAudioThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public createImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailClient;->thumbnailServiceAidlInterface:Lcom/chery/media/IThumbnailServiceAidlInterface;

    if-eqz p0, :cond_0

    .line 85
    :try_start_0
    invoke-interface {p0, p1}, Lcom/chery/media/IThumbnailServiceAidlInterface;->createImageThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/chery/media/model/business/ThumbnailClient;->thumbnailServiceAidlInterface:Lcom/chery/media/IThumbnailServiceAidlInterface;

    if-eqz p0, :cond_0

    .line 73
    :try_start_0
    invoke-interface {p0, p1}, Lcom/chery/media/IThumbnailServiceAidlInterface;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/chery/media/model/business/ThumbnailClient;->context:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/chery/media/model/business/ThumbnailClient;->bindThumbnailService()V

    return-void
.end method
