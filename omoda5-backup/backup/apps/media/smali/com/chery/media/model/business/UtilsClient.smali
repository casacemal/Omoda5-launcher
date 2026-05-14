.class public Lcom/chery/media/model/business/UtilsClient;
.super Ljava/lang/Object;
.source "UtilsClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/UtilsClient;


# instance fields
.field private context:Landroid/content/Context;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceInterface:Lcom/chery/media/IUtilsServiceAidlInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-class v0, Lcom/chery/media/model/business/UtilsClient;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/UtilsClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/chery/media/model/business/UtilsClient;->instance:Lcom/chery/media/model/business/UtilsClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/chery/media/model/business/UtilsClient$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/UtilsClient$1;-><init>(Lcom/chery/media/model/business/UtilsClient;)V

    iput-object v0, p0, Lcom/chery/media/model/business/UtilsClient;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/chery/media/model/business/UtilsClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/chery/media/model/business/UtilsClient;Lcom/chery/media/IUtilsServiceAidlInterface;)Lcom/chery/media/IUtilsServiceAidlInterface;
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/chery/media/model/business/UtilsClient;->serviceInterface:Lcom/chery/media/IUtilsServiceAidlInterface;

    return-object p1
.end method

.method private bindService()V
    .locals 3

    .line 50
    sget-object v0, Lcom/chery/media/model/business/UtilsClient;->TAG:Ljava/lang/String;

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/chery/media/model/business/UtilsClient;->context:Landroid/content/Context;

    const-string v2, "com.chery.media.model.service.UtilsService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/chery/media/model/business/UtilsClient;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/model/business/UtilsClient;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/chery/media/model/business/UtilsClient;
    .locals 1

    .line 36
    sget-object v0, Lcom/chery/media/model/business/UtilsClient;->instance:Lcom/chery/media/model/business/UtilsClient;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/chery/media/model/business/UtilsClient;

    invoke-direct {v0}, Lcom/chery/media/model/business/UtilsClient;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/UtilsClient;->instance:Lcom/chery/media/model/business/UtilsClient;

    .line 39
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/UtilsClient;->instance:Lcom/chery/media/model/business/UtilsClient;

    return-object v0
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/chery/media/model/business/UtilsClient;->serviceInterface:Lcom/chery/media/IUtilsServiceAidlInterface;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 62
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/chery/media/IUtilsServiceAidlInterface;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 64
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/chery/media/model/business/UtilsClient;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/chery/media/model/business/UtilsClient;->bindService()V

    return-void
.end method
