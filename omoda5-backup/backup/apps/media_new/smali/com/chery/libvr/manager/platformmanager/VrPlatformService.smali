.class public Lcom/chery/libvr/manager/platformmanager/VrPlatformService;
.super Ljava/lang/Object;
.source "VrPlatformService.java"


# static fields
.field private static volatile mInstance:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private connetVrService:Landroid/content/ServiceConnection;

.field private mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mInitListener:Lcom/chery/libvr/bean/InitListener;

.field private mVrInitStatus:Z

.field private mVrInitStatusCallback:Lcom/chery/libvr/apps/IVrInitStatusCallback;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    const-string v1, "VR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mVrInitStatus:Z

    .line 146
    new-instance v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;

    invoke-direct {v0, p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$2;-><init>(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->connetVrService:Landroid/content/ServiceConnection;

    .line 210
    new-instance v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;

    invoke-direct {v0, p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$3;-><init>(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 225
    new-instance v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;

    invoke-direct {v0, p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$4;-><init>(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mVrInitStatusCallback:Lcom/chery/libvr/apps/IVrInitStatusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    return-object p0
.end method

.method static synthetic access$002(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Lcom/chery/libvr/apps/IVrFunctionBinderPool;)Lcom/chery/libvr/apps/IVrFunctionBinderPool;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->connectPlatformService()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Z
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->isVrInitStatusOk()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/bean/InitListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInitListener:Lcom/chery/libvr/bean/InitListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Lcom/chery/libvr/apps/IVrInitStatusCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mVrInitStatusCallback:Lcom/chery/libvr/apps/IVrInitStatusCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$702(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mVrInitStatus:Z

    return p1
.end method

.method private declared-synchronized connectPlatformService()V
    .locals 4

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    const-string v1, "connectPlatformService lib version: 103"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.chery.cerence"

    const-string v2, "com.chery.cerence.VrService"

    .line 87
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->connetVrService:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 91
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 94
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/chery/libvr/manager/platformmanager/VrPlatformService;
    .locals 2

    .line 31
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    invoke-direct {v1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;-><init>()V

    sput-object v1, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    return-object v0
.end method

.method private isVrInitStatusOk()Z
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 124
    :try_start_0
    invoke-interface {v0}, Lcom/chery/libvr/apps/IVrFunctionBinderPool;->getVrInitStatus()Z

    move-result v0

    .line 125
    iget-boolean v2, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mVrInitStatus:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVrInitStatusOk() value = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public disconnectPlatformService()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    const-string v1, "disconnectPlatformService()"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->connetVrService:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    iget-object v1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mVrInitStatusCallback:Lcom/chery/libvr/apps/IVrInitStatusCallback;

    invoke-interface {v0, v1}, Lcom/chery/libvr/apps/IVrFunctionBinderPool;->unregisterVrInitStatusCallback(Lcom/chery/libvr/apps/IVrInitStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    .line 109
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInitListener:Lcom/chery/libvr/bean/InitListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/chery/libvr/bean/InitListener;->onDisconnectedToRemote()V

    goto :goto_1

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    const-string v0, "disconnectPlatformService mInitListener == null"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlatformService(I)Landroid/os/IBinder;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlatformService serviceTypeCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    if-eqz v1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mBinderPoolInterface:Lcom/chery/libvr/apps/IVrFunctionBinderPool;

    invoke-interface {p0, p1}, Lcom/chery/libvr/apps/IVrFunctionBinderPool;->queryFunctionToolBinder(I)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->TAG:Ljava/lang/String;

    const-string p1, "getPlatformService mBinderPoolInterface == null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/chery/libvr/bean/InitListener;)V
    .locals 0

    .line 42
    iput-object p2, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mInitListener:Lcom/chery/libvr/bean/InitListener;

    .line 43
    iput-object p1, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->startThreadToConnectPlatformService()V

    return-void
.end method

.method public startThreadToConnectPlatformService()V
    .locals 7

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    new-instance v1, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$1;

    invoke-direct {v1, p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService$1;-><init>(Lcom/chery/libvr/manager/platformmanager/VrPlatformService;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
