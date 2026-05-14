.class public Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;
.super Ljava/lang/Object;
.source "VrRadioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;
    }
.end annotation


# static fields
.field private static volatile mInstance:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIVrRadioCallback:Lcom/chery/libvr/apps/radio/IVrRadioCallback;

.field private mRadioToolCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/chery/libvr/apps/radio/IVrRadio;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    const-string v1, "VR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mService:Lcom/chery/libvr/apps/radio/IVrRadio;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mRadioToolCallbackList:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$1;

    invoke-direct {v0, p0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$1;-><init>(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;)V

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mIVrRadioCallback:Lcom/chery/libvr/apps/radio/IVrRadioCallback;

    .line 81
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->TAG:Ljava/lang/String;

    const-string v0, "VrRadioManager"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mRadioToolCallbackList:Ljava/util/List;

    return-object p0
.end method

.method private addCallback(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mRadioToolCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getIVrRadio()Lcom/chery/libvr/apps/radio/IVrRadio;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mService:Lcom/chery/libvr/apps/radio/IVrRadio;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->TAG:Ljava/lang/String;

    const-string v1, "getIVrRadio mService != null retrun"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mService:Lcom/chery/libvr/apps/radio/IVrRadio;

    return-object p0

    .line 101
    :cond_0
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 103
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->TAG:Ljava/lang/String;

    const-string v0, "getIVrRadio binder = null return!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 107
    :cond_1
    invoke-static {v0}, Lcom/chery/libvr/apps/radio/IVrRadio$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/libvr/apps/radio/IVrRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mService:Lcom/chery/libvr/apps/radio/IVrRadio;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->TAG:Ljava/lang/String;

    const-string v1, "getIVrRadio mService = OK!"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mService:Lcom/chery/libvr/apps/radio/IVrRadio;

    return-object p0

    .line 113
    :cond_2
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->TAG:Ljava/lang/String;

    const-string v0, "getIVrRadio mService = null return!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getInstance()Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    invoke-direct {v1}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;-><init>()V

    sput-object v1, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    return-object v0
.end method

.method private removeCallback(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mRadioToolCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mService:Lcom/chery/libvr/apps/radio/IVrRadio;

    .line 42
    invoke-direct {p0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->getIVrRadio()Lcom/chery/libvr/apps/radio/IVrRadio;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/libvr/apps/radio/IVrRadio;

    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->mIVrRadioCallback:Lcom/chery/libvr/apps/radio/IVrRadioCallback;

    invoke-interface {v0, p0}, Lcom/chery/libvr/apps/radio/IVrRadio;->registerVrRadioCallback(Lcom/chery/libvr/apps/radio/IVrRadioCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->getIVrRadio()Lcom/chery/libvr/apps/radio/IVrRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->getIVrRadio()Lcom/chery/libvr/apps/radio/IVrRadio;

    move-result-object p0

    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/chery/libvr/apps/radio/IVrRadio;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public releaseRadioTool(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->removeCallback(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V

    return-void
.end method

.method public setRadioTool(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->addCallback(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V

    return-void
.end method
