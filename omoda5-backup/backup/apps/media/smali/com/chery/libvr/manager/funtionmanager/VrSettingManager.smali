.class public Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;
.super Ljava/lang/Object;
.source "VrSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;
    }
.end annotation


# static fields
.field private static volatile mInstance:Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIVrSettingCallback:Lcom/chery/libvr/apps/setting/IVrSettingCallback;

.field private mService:Lcom/chery/libvr/apps/setting/IVrSetting;

.field private mSettingToolCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;",
            ">;"
        }
    .end annotation
.end field


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

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mService:Lcom/chery/libvr/apps/setting/IVrSetting;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mSettingToolCallbackList:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$1;

    invoke-direct {v0, p0}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$1;-><init>(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;)V

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mIVrSettingCallback:Lcom/chery/libvr/apps/setting/IVrSettingCallback;

    .line 81
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->TAG:Ljava/lang/String;

    const-string v0, "VrSettingManager"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mSettingToolCallbackList:Ljava/util/List;

    return-object p0
.end method

.method private addCallback(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mSettingToolCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getIVrSetting()Lcom/chery/libvr/apps/setting/IVrSetting;
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mService:Lcom/chery/libvr/apps/setting/IVrSetting;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->TAG:Ljava/lang/String;

    const-string v1, "getIVrSetting mService != null retrun"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mService:Lcom/chery/libvr/apps/setting/IVrSetting;

    return-object p0

    .line 102
    :cond_0
    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrRequestManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chery/libvr/manager/platformmanager/VrRequestManager;->getService(I)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 104
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->TAG:Ljava/lang/String;

    const-string v0, "getIVrSetting binder = null return!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 108
    :cond_1
    invoke-static {v0}, Lcom/chery/libvr/apps/setting/IVrSetting$Stub;->asInterface(Landroid/os/IBinder;)Lcom/chery/libvr/apps/setting/IVrSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mService:Lcom/chery/libvr/apps/setting/IVrSetting;

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->TAG:Ljava/lang/String;

    const-string v1, "getIVrSetting mService = OK!"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mService:Lcom/chery/libvr/apps/setting/IVrSetting;

    return-object p0

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->TAG:Ljava/lang/String;

    const-string v0, "getIVrSetting mService = null return!"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getInstance()Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;

    invoke-direct {v1}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;-><init>()V

    sput-object v1, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;

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
    sget-object v0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mInstance:Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;

    return-object v0
.end method

.method private removeCallback(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mSettingToolCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    :try_start_0
    iput-object v0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mService:Lcom/chery/libvr/apps/setting/IVrSetting;

    .line 42
    invoke-direct {p0}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->getIVrSetting()Lcom/chery/libvr/apps/setting/IVrSetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/libvr/apps/setting/IVrSetting;

    iget-object p0, p0, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->mIVrSettingCallback:Lcom/chery/libvr/apps/setting/IVrSettingCallback;

    invoke-interface {v0, p0}, Lcom/chery/libvr/apps/setting/IVrSetting;->registerVrSettingCallback(Lcom/chery/libvr/apps/setting/IVrSettingCallback;)V
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
    invoke-direct {p0}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->getIVrSetting()Lcom/chery/libvr/apps/setting/IVrSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->getIVrSetting()Lcom/chery/libvr/apps/setting/IVrSetting;

    move-result-object p0

    invoke-static {}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getInstance()Lcom/chery/libvr/manager/platformmanager/VrPlatformService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/manager/platformmanager/VrPlatformService;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2, p3}, Lcom/chery/libvr/apps/setting/IVrSetting;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
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

.method public releaseSettingTool(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->removeCallback(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;)V

    return-void
.end method

.method public setSettingTool(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/chery/libvr/manager/funtionmanager/VrSettingManager;->addCallback(Lcom/chery/libvr/manager/funtionmanager/VrSettingManager$SettingTool;)V

    return-void
.end method
