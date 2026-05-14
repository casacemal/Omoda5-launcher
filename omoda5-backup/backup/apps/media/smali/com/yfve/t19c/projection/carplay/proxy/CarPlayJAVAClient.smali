.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;
.super Ljava/lang/Object;
.source "CarPlayJAVAClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private connection:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;

.field private mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarPlayServiceListenerStub:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCallbackList:Ljava/util/List;

    .line 39
    new-instance v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;

    invoke-direct {v1, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)V

    iput-object v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCarPlayServiceListenerStub:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    .line 362
    new-instance v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;

    invoke-direct {v1, p0, v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$1;)V

    iput-object v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->connection:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;)Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCarPlayServiceListenerStub:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    return-object p0
.end method


# virtual methods
.method public exitActivity()V
    .locals 3

    .line 268
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "exitActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 271
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->exitActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 273
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getCarPlayVideoState()Z
    .locals 3

    .line 292
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "getCarPlayVideoState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 296
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->getCarPlayVideoState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 298
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMediaToken()Landroid/media/session/MediaSession$Token;
    .locals 3

    .line 279
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "getMediaToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 283
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .line 424
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "getSerialNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 428
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 430
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public initialise(Landroid/content/Context;)V
    .locals 3

    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "t19c.intent.action.CARPLAY"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.yfve.t19c.projection.carplay.service"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    :try_start_0
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v2, "bind carplay java service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->connection:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 31
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isCPStarted()Z
    .locals 3

    .line 411
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "isCPStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 415
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->isCPStarted()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 417
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener::listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestCPMedia()V
    .locals 3

    .line 338
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "requestCPMedia"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 341
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->requestCPMedia()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 343
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public requestNativeUI()V
    .locals 3

    .line 327
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "requestNativeUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 330
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->requestVideoResource()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 332
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public requestResource(ZZZI)V
    .locals 3

    .line 349
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestResource:isResourceVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestResource:isResourceBorrow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestResource:isBorrowStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 355
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->requestResource(ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public roleSwitchComplete(Ljava/lang/String;)V
    .locals 3

    .line 316
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleSwitchComplete:serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 319
    :try_start_0
    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->roleSwitchComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setCarPlayConnect()V
    .locals 3

    .line 305
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "setCarPlayConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 308
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->setCarPlayConnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 310
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startCarPlaySession(Ljava/lang/String;Z)V
    .locals 2

    .line 257
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    const-string v1, "startCarPlaySession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz p0, :cond_0

    .line 260
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->startCarPlaySession(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 262
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public uninitialise(Landroid/content/Context;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->connection:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient$DevConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unregisterListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mBinderClient:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;

    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCarPlayServiceListenerStub:Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;

    invoke-interface {v0, v1}, Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceInterface;->unregisteListener(Lcom/yfve/t19c/projection/carplay/proxy/ICPServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 253
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->mCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
