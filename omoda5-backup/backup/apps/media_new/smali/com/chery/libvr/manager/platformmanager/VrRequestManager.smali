.class public Lcom/chery/libvr/manager/platformmanager/VrRequestManager;
.super Ljava/lang/Object;
.source "VrRequestManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static volatile mInstance:Lcom/chery/libvr/manager/platformmanager/VrRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/chery/libvr/manager/platformmanager/VrRequestManager;
    .locals 2

    .line 18
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    invoke-direct {v1}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;-><init>()V

    sput-object v1, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 25
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->mInstance:Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    return-object v0
.end method


# virtual methods
.method public deInitVr()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->disconnectPlatformService()V

    return-void
.end method

.method public getService(I)Landroid/os/IBinder;
    .locals 0

    .line 33
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getPlatformService(I)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public initVr(Landroid/content/Context;Lcom/chery/libvr/bean/InitListener;)V
    .locals 0

    .line 29
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->init(Landroid/content/Context;Lcom/chery/libvr/bean/InitListener;)V

    return-void
.end method
