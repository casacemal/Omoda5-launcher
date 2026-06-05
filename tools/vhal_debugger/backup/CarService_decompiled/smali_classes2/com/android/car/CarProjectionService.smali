.class Lcom/android/car/CarProjectionService;
.super Landroid/car/ICarProjection$Stub;
.source "CarProjectionService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/BinderInterfaceContainer$BinderEventHandler;
.implements Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarProjectionService$ProjectionReceiverClient;,
        Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;,
        Lcom/android/car/CarProjectionService$WirelessClient;,
        Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;,
        Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;,
        Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/car/ICarProjection$Stub;",
        "Lcom/android/car/CarServiceBase;",
        "Lcom/android/car/BinderInterfaceContainer$BinderEventHandler<",
        "Landroid/car/ICarProjectionKeyEventHandler;",
        ">;",
        "Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CAR.PROJECTION"

.field private static final WIFI_MODE_LOCALONLY:I = 0x2

.field private static final WIFI_MODE_TETHERED:I = 0x1


# instance fields
.field private mApBssid:Ljava/lang/String;

.field private mBound:Z

.field private final mCarInputService:Lcom/android/car/CarInputService;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mCurrentProjectionPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mCurrentProjectionState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mProjectionOptions:Landroid/car/projection/ProjectionOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mProjectionReceiverClients:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarProjectionService$ProjectionReceiverClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer<",
            "Landroid/car/ICarProjectionStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredService:Landroid/content/Intent;

.field private mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiMode:I

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mWirelessClients:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarProjectionService$WirelessClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarInputService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "carInputService"    # Lcom/android/car/CarInputService;

    .line 164
    invoke-direct {p0}, Landroid/car/ICarProjection$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mProjectionReceiverClients:Ljava/util/HashMap;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionState:I

    .line 128
    new-instance v0, Lcom/android/car/BinderInterfaceContainer;

    invoke-direct {v0}, Lcom/android/car/BinderInterfaceContainer;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;

    .line 141
    new-instance v0, Lcom/android/car/CarProjectionService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarProjectionService$1;-><init>(Lcom/android/car/CarProjectionService;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mConnection:Landroid/content/ServiceConnection;

    .line 165
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    .line 166
    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mHandler:Landroid/os/Handler;

    .line 167
    iput-object p3, p0, Lcom/android/car/CarProjectionService;->mCarInputService:Lcom/android/car/CarInputService;

    .line 169
    new-instance v0, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-direct {v0, p0}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;-><init>(Lcom/android/car/CarProjectionService;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    .line 170
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 172
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/car/CarProjectionService;->setAccessPointTethering(Z)V

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;

    .line 86
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 86
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/car/CarProjectionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->sendApStarted(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;

    .line 86
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->sendApStopped()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/car/CarProjectionService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->sendApFailed(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/CarProjectionService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/android/car/CarProjectionService;->handleWifiApStateChange(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/CarProjectionService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;

    .line 86
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/car/CarProjectionService;Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->unregisterWirelessClientLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/car/CarProjectionService;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 86
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarProjectionService;

    .line 86
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unbindServiceIfBound()V

    return-void
.end method

.method private bindToService(Landroid/content/Intent;)V
    .locals 4
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 212
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 214
    return-void

    .line 210
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private computeHandledEventsLocked()Ljava/util/BitSet;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 846
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 848
    .local v0, "rv":Ljava/util/BitSet;
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 849
    .local v2, "handlerInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    move-object v3, v2

    check-cast v3, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    invoke-static {v3}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->access$1600(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;)Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 850
    .end local v2    # "handlerInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    goto :goto_0

    .line 851
    :cond_0
    return-object v0
.end method

.method private static createActivityOptions(Landroid/content/res/Resources;)Landroid/app/ActivityOptions;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 538
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 539
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    const/4 v1, 0x0

    .line 540
    .local v1, "changed":Z
    const v2, 0x7f0a0006

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 541
    .local v2, "displayId":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 542
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 543
    const/4 v1, 0x1

    .line 545
    :cond_0
    const v3, 0x7f020025

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 546
    .local v3, "rawBounds":[I
    if-eqz v3, :cond_1

    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 547
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 548
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 549
    const/4 v1, 0x1

    .line 551
    .end local v4    # "bounds":Landroid/graphics/Rect;
    :cond_1
    if-eqz v1, :cond_2

    move-object v4, v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    return-object v4
.end method

.method private createProjectionOptionsBuilder()Landroid/car/projection/ProjectionOptions$Builder;
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 520
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/car/projection/ProjectionOptions;->builder()Landroid/car/projection/ProjectionOptions$Builder;

    move-result-object v1

    .line 522
    .local v1, "builder":Landroid/car/projection/ProjectionOptions$Builder;
    invoke-static {v0}, Lcom/android/car/CarProjectionService;->createActivityOptions(Landroid/content/res/Resources;)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 523
    .local v2, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {v1, v2}, Landroid/car/projection/ProjectionOptions$Builder;->setProjectionActivityOptions(Landroid/app/ActivityOptions;)Landroid/car/projection/ProjectionOptions$Builder;

    .line 527
    :cond_0
    const v3, 0x7f0f010d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, "consentActivity":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/car/projection/ProjectionOptions$Builder;->setConsentActivity(Landroid/content/ComponentName;)Landroid/car/projection/ProjectionOptions$Builder;

    .line 532
    :cond_1
    const v4, 0x7f0a0007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/car/projection/ProjectionOptions$Builder;->setUiMode(I)Landroid/car/projection/ProjectionOptions$Builder;

    .line 533
    return-object v1
.end method

.method private ensureApConfiguration()V
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 936
    .local v0, "apConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 937
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 939
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 941
    :cond_0
    return-void
.end method

.method private getOrCreateProjectionReceiverClientLocked(Landroid/os/IBinder;)Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mProjectionReceiverClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    .line 445
    .local v0, "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    if-nez v0, :cond_0

    .line 446
    new-instance v1, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    new-instance v2, Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;

    invoke-direct {v2, p0, p1}, Lcom/android/car/-$$Lambda$CarProjectionService$0Y_gaNrLudUElLWvh51qbk6sLUI;-><init>(Lcom/android/car/CarProjectionService;Landroid/os/IBinder;)V

    invoke-direct {v1, v2}, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;-><init>(Landroid/os/IBinder$DeathRecipient;)V

    move-object v0, v1

    .line 447
    invoke-static {v0}, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->access$800(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 448
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mProjectionReceiverClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    :cond_0
    return-object v0
.end method

.method private handleWifiApStateChange(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "currState"    # I
    .param p2, "prevState"    # I
    .param p3, "errorCode"    # I
    .param p4, "ifaceName"    # Ljava/lang/String;
    .param p5, "mode"    # I

    .line 754
    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWifiApStateChange, curState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prevState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ifaceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :try_start_0
    invoke-static {p4}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 762
    .local v0, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 763
    .local v2, "bssid":[B
    const-string v3, "%02x:%02x:%02x:%02x:%02x:%02x"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v2, v5

    .line 764
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aget-byte v6, v2, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aget-byte v6, v2, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aget-byte v6, v2, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aget-byte v6, v2, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aget-byte v6, v2, v5

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    .line 763
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/CarProjectionService;->mApBssid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v0    # "iface":Ljava/net/NetworkInterface;
    .end local v2    # "bssid":[B
    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyProjectionStatusChanged(Landroid/car/ICarProjectionStatusListener;)V
    .locals 8
    .param p1, "singleListenerToNotify"    # Landroid/car/ICarProjectionStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v0, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/car/projection/ProjectionStatus;>;"
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mProjectionReceiverClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    .line 477
    .local v3, "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    invoke-static {v3}, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->access$700(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;)Landroid/car/projection/ProjectionStatus;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    nop

    .end local v3    # "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    goto :goto_0

    .line 479
    :cond_0
    iget v2, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionState:I

    .line 480
    .local v2, "currentState":I
    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionPackage:Ljava/lang/String;

    .line 481
    .local v3, "currentPackage":Ljava/lang/String;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify projection status change, state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pkg: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", listeners: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/CarProjectionService;->mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;

    .line 485
    invoke-virtual {v4}, Lcom/android/car/BinderInterfaceContainer;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", listenerToNotify: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 484
    const-string v4, "CAR.PROJECTION"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-nez p1, :cond_2

    .line 491
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v1}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 493
    .local v4, "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionStatusListener;>;"
    :try_start_1
    iget-object v5, v4, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v5, Landroid/car/ICarProjectionStatusListener;

    invoke-interface {v5, v2, v3, v0}, Landroid/car/ICarProjectionStatusListener;->onProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    goto :goto_2

    .line 495
    :catch_0
    move-exception v5

    .line 496
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v6, "CAR.PROJECTION"

    const-string v7, "Error calling to projection status listener"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    .end local v4    # "listener":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionStatusListener;>;"
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 500
    :cond_2
    invoke-interface {p1, v2, v3, v0}, Landroid/car/ICarProjectionStatusListener;->onProjectionStatusChanged(ILjava/lang/String;Ljava/util/List;)V

    .line 503
    :goto_3
    return-void

    .line 481
    .end local v2    # "currentState":I
    .end local v3    # "currentPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private registerWirelessClient(Lcom/android/car/CarProjectionService$WirelessClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/car/CarProjectionService$WirelessClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    iget-object v1, p1, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Lcom/android/car/CarProjectionService;->unregisterWirelessClientLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    const-string v1, "CAR.PROJECTION"

    const-string v2, "Client was already registered, override it."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    iget-object v0, p1, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    new-instance v1, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;

    invoke-direct {v1, p0, p1}, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;-><init>(Lcom/android/car/CarProjectionService;Lcom/android/car/CarProjectionService$WirelessClient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 913
    return-void

    .line 911
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendApFailed(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 714
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 715
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 716
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 717
    invoke-direct {p0, v0}, Lcom/android/car/CarProjectionService;->sendApStatusMessage(Landroid/os/Message;)V

    .line 718
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unregisterWirelessClients()V

    .line 719
    return-void
.end method

.method private sendApStarted(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 692
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 693
    .local v0, "localWifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mApBssid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 695
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 696
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 697
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending PROJECTION_AP_STARTED, ssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", apBand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", apChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bssid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    const-string v3, "CAR.PROJECTION"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-direct {p0, v1}, Lcom/android/car/CarProjectionService;->sendApStatusMessage(Landroid/os/Message;)V

    .line 704
    return-void
.end method

.method private sendApStatusMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .line 723
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 725
    .local v1, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarProjectionService$WirelessClient;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarProjectionService$WirelessClient;

    .line 727
    .local v2, "client":Lcom/android/car/CarProjectionService$WirelessClient;
    invoke-virtual {v2, p1}, Lcom/android/car/CarProjectionService$WirelessClient;->send(Landroid/os/Message;)V

    .line 728
    .end local v2    # "client":Lcom/android/car/CarProjectionService$WirelessClient;
    goto :goto_0

    .line 729
    :cond_0
    return-void

    .line 725
    .end local v1    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarProjectionService$WirelessClient;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendApStopped()V
    .locals 2

    .line 707
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 708
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 709
    invoke-direct {p0, v0}, Lcom/android/car/CarProjectionService;->sendApStatusMessage(Landroid/os/Message;)V

    .line 710
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unregisterWirelessClients()V

    .line 711
    return-void
.end method

.method private startAccessPoint()V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget v1, p0, Lcom/android/car/CarProjectionService;->mWifiMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 566
    const-string v1, "CAR.PROJECTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Access Point mode during starting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/CarProjectionService;->mWifiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->startLocalOnlyApLocked()V

    .line 559
    goto :goto_0

    .line 562
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->startTetheredApLocked()V

    .line 563
    nop

    .line 570
    :goto_0
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startLocalOnlyApLocked()V
    .locals 3

    .line 626
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    const-string v1, "CAR.PROJECTION"

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "Local-only hotspot is already registered."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/CarProjectionService;->sendApStarted(Landroid/net/wifi/WifiConfiguration;)V

    .line 629
    return-void

    .line 632
    :cond_0
    const-string v0, "Requesting to start local-only hotspot."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/car/CarProjectionService$2;

    invoke-direct {v1, p0}, Lcom/android/car/CarProjectionService$2;-><init>(Lcom/android/car/CarProjectionService;)V

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->startLocalOnlyHotspot(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;Landroid/os/Handler;)V

    .line 677
    return-void
.end method

.method private startTetheredApLocked()V
    .locals 5

    .line 594
    const-string v0, "CAR.PROJECTION"

    const-string v1, "startTetheredApLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 597
    new-instance v1, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    invoke-direct {v1, p0, v2}, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;-><init>(Lcom/android/car/CarProjectionService;Lcom/android/car/CarProjectionService$1;)V

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    .line 598
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    iget-object v4, p0, Lcom/android/car/CarProjectionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;Landroid/os/Handler;)V

    .line 599
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->ensureApConfiguration()V

    .line 602
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 605
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/CarProjectionService;->sendApStarted(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 607
    :cond_1
    const-string v1, "Failed to start soft AP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/car/CarProjectionService;->sendApFailed(I)V

    .line 611
    :cond_2
    :goto_0
    return-void
.end method

.method private stopAccessPoint()V
    .locals 4

    .line 574
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->sendApStopped()V

    .line 576
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    iget v1, p0, Lcom/android/car/CarProjectionService;->mWifiMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 587
    const-string v1, "CAR.PROJECTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Access Point mode during stopping : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/CarProjectionService;->mWifiMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->stopLocalOnlyApLocked()V

    .line 580
    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->stopTetheredApLocked()V

    .line 584
    nop

    .line 590
    :goto_0
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopLocalOnlyApLocked()V
    .locals 2

    .line 680
    const-string v0, "CAR.PROJECTION"

    const-string v1, "stopLocalOnlyApLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    if-nez v1, :cond_0

    .line 683
    const-string v1, "Requested to stop local-only hotspot which was already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void

    .line 687
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->close()V

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 689
    return-void
.end method

.method private stopTetheredApLocked()V
    .locals 3

    .line 614
    const-string v0, "CAR.PROJECTION"

    const-string v1, "stopTetheredAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    if-eqz v1, :cond_0

    .line 617
    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 618
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    .line 619
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    const-string v1, "Failed to request soft AP to stop."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_0
    return-void
.end method

.method private unbindServiceIfBound()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    if-nez v1, :cond_0

    .line 219
    monitor-exit v0

    return-void

    .line 221
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private unregisterProjectionReceiverClient(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 454
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mProjectionReceiverClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    .line 456
    .local v1, "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    if-nez v1, :cond_0

    .line 457
    const-string v2, "CAR.PROJECTION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Projection receiver client for token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    monitor-exit v0

    return-void

    .line 460
    :cond_0
    invoke-static {v1}, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->access$800(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 461
    nop

    .line 462
    invoke-static {v1}, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->access$700(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;)Landroid/car/projection/ProjectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/projection/ProjectionStatus;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionPackage:Ljava/lang/String;

    .line 461
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 463
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionPackage:Ljava/lang/String;

    .line 464
    iput v3, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionState:I

    .line 466
    .end local v1    # "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    :cond_1
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unregisterWirelessClientLocked(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 925
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarProjectionService$WirelessClient;

    .line 926
    .local v0, "client":Lcom/android/car/CarProjectionService$WirelessClient;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 927
    iget-object v2, v0, Lcom/android/car/CarProjectionService$WirelessClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 930
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private unregisterWirelessClients()V
    .locals 6

    .line 916
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 917
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarProjectionService$WirelessClient;

    .line 918
    .local v2, "client":Lcom/android/car/CarProjectionService$WirelessClient;
    iget-object v3, v2, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    iget-object v4, v2, Lcom/android/car/CarProjectionService$WirelessClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 919
    nop

    .end local v2    # "client":Lcom/android/car/CarProjectionService$WirelessClient;
    goto :goto_0

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 921
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateInputServiceHandlerLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 835
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->computeHandledEventsLocked()Ljava/util/BitSet;

    move-result-object v0

    .line 837
    .local v0, "newEvents":Ljava/util/BitSet;
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mCarInputService:Lcom/android/car/CarInputService;

    invoke-virtual {v1, p0, v0}, Lcom/android/car/CarInputService;->setProjectionKeyEventHandler(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;Ljava/util/BitSet;)V

    goto :goto_0

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mCarInputService:Lcom/android/car/CarInputService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/car/CarInputService;->setProjectionKeyEventHandler(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;Ljava/util/BitSet;)V

    .line 842
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 786
    const-string v0, "**CarProjectionService**"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_0
    const-string v1, "Registered key event handlers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 792
    .local v2, "handler":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    move-object v3, v2

    check-cast v3, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    .line 793
    .local v3, "projectionKeyEventHandler":Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v3}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 795
    .end local v2    # "handler":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    .end local v3    # "projectionKeyEventHandler":Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    goto :goto_0

    .line 797
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local-only hotspot reservation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mLocalOnlyHotspotReservation:Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wireless clients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current wifi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarProjectionService;->mWifiMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftApCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mSoftApCallback:Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bound to projection app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current projection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current projection package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mProjectionReceiverClients:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection status listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;

    .line 807
    invoke-virtual {v2}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiScanner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    monitor-exit v0

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAvailableWifiChannels(I)[I
    .locals 5
    .param p1, "band"    # I

    .line 287
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 289
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiScanner;

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 295
    .local v1, "scanner":Landroid/net/wifi/WifiScanner;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 297
    const-string v2, "CAR.PROJECTION"

    const-string v3, "Unable to get WifiScanner"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-array v0, v0, [I

    return-object v0

    .line 301
    :cond_1
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiScanner;->getAvailableChannels(I)Ljava/util/List;

    move-result-object v2

    .line 302
    .local v2, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 307
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 308
    .local v0, "array":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 309
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 311
    .end local v3    # "i":I
    :cond_3
    return-object v0

    .line 303
    .end local v0    # "array":[I
    :cond_4
    :goto_1
    const-string v3, "CAR.PROJECTION"

    const-string v4, "WifiScanner reported no available channels"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-array v0, v0, [I

    return-object v0

    .line 295
    .end local v1    # "scanner":Landroid/net/wifi/WifiScanner;
    .end local v2    # "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getProjectionOptions()Landroid/os/Bundle;
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 508
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mProjectionOptions:Landroid/car/projection/ProjectionOptions;

    if-nez v1, :cond_0

    .line 510
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->createProjectionOptionsBuilder()Landroid/car/projection/ProjectionOptions$Builder;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Landroid/car/projection/ProjectionOptions$Builder;->build()Landroid/car/projection/ProjectionOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mProjectionOptions:Landroid/car/projection/ProjectionOptions;

    .line 513
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mProjectionOptions:Landroid/car/projection/ProjectionOptions;

    invoke-virtual {v0}, Landroid/car/projection/ProjectionOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 513
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 4

    .line 733
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/car/CarProjectionService$3;

    invoke-direct {v1, p0}, Lcom/android/car/CarProjectionService$3;-><init>(Lcom/android/car/CarProjectionService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 750
    return-void
.end method

.method public synthetic lambda$getOrCreateProjectionReceiverClientLocked$0$CarProjectionService(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 446
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->unregisterProjectionReceiverClient(Landroid/os/IBinder;)V

    return-void
.end method

.method public onBinderDeath(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
            "Landroid/car/ICarProjectionKeyEventHandler;",
            ">;)V"
        }
    .end annotation

    .line 781
    .local p1, "iface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    iget-object v0, p1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v0, Landroid/car/ICarProjectionKeyEventHandler;

    invoke-virtual {p0, v0}, Lcom/android/car/CarProjectionService;->unregisterKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;)V

    .line 782
    return-void
.end method

.method public onKeyEvent(I)V
    .locals 7
    .param p1, "keyEvent"    # I

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatching key event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 818
    .local v2, "eventHandlerInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    move-object v3, v2

    check-cast v3, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    .line 821
    .local v3, "eventHandler":Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    invoke-static {v3, p1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->access$1500(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 824
    :try_start_1
    iget-object v4, v3, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->binderInterface:Landroid/os/IInterface;

    check-cast v4, Landroid/car/ICarProjectionKeyEventHandler;

    invoke-interface {v4, p1}, Landroid/car/ICarProjectionKeyEventHandler;->onKeyEvent(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    goto :goto_1

    .line 825
    :catch_0
    move-exception v4

    .line 826
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "CAR.PROJECTION"

    const-string v6, "Cannot dispatch event to client"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
    .end local v2    # "eventHandlerInterface":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/ICarProjectionKeyEventHandler;>;"
    .end local v3    # "eventHandler":Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 830
    :cond_1
    monitor-exit v0

    .line 831
    return-void

    .line 830
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public registerKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;[B)V
    .locals 6
    .param p1, "eventHandler"    # Landroid/car/ICarProjectionKeyEventHandler;
    .param p2, "eventMask"    # [B

    .line 230
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 231
    invoke-static {p2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    .line 232
    .local v0, "events":Ljava/util/BitSet;
    nop

    .line 233
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 232
    :goto_0
    const-string v2, "Unknown handled event"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v2, p1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->get(Landroid/car/ICarProjectionKeyEventHandler;)Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    move-result-object v2

    .line 237
    .local v2, "info":Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    if-nez v2, :cond_1

    .line 238
    new-instance v3, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;

    iget-object v4, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v0, v5}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;-><init>(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;Landroid/car/ICarProjectionKeyEventHandler;Ljava/util/BitSet;Lcom/android/car/CarProjectionService$1;)V

    move-object v2, v3

    .line 239
    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v3, v2}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->addBinderInterface(Lcom/android/car/BinderInterfaceContainer$BinderInterface;)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-static {v2, v0}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;->access$500(Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;Ljava/util/BitSet;)V

    .line 244
    :goto_1
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->updateInputServiceHandlerLocked()V

    .line 245
    .end local v2    # "info":Lcom/android/car/CarProjectionService$ProjectionKeyEventHandler;
    monitor-exit v1

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerProjectionRunner(Landroid/content/Intent;)V
    .locals 4
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/car/CarProjectionService;->mBound:Z

    if-eqz v1, :cond_0

    .line 182
    monitor-exit v0

    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 185
    const-string v1, "CAR.PROJECTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering new service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] while old service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "] is still running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unbindServiceIfBound()V

    .line 189
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->bindToService(Landroid/content/Intent;)V

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerProjectionStatusListener(Landroid/car/ICarProjectionStatusListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/ICarProjectionStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionStatusPermission(Landroid/content/Context;)V

    .line 428
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0, p1}, Lcom/android/car/BinderInterfaceContainer;->addBinder(Landroid/os/IInterface;)V

    .line 431
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->notifyProjectionStatusChanged(Landroid/car/ICarProjectionStatusListener;)V

    .line 432
    return-void
.end method

.method public release()V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->clear()V

    .line 775
    monitor-exit v0

    .line 776
    return-void

    .line 775
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseBluetoothProfileInhibit device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 366
    if-eqz p1, :cond_1

    .line 370
    if-eqz p3, :cond_0

    .line 373
    const/4 v0, 0x0

    return v0

    .line 371
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Token must not be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/CarProjectionService;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":I
    .end local p3    # "token":Landroid/os/IBinder;
    throw v0

    .line 368
    .restart local p0    # "this":Lcom/android/car/CarProjectionService;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "profile":I
    .restart local p3    # "token":Landroid/os/IBinder;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Device must not be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/CarProjectionService;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":I
    .end local p3    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .restart local p0    # "this":Lcom/android/car/CarProjectionService;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "profile":I
    .restart local p3    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Error in releaseBluetoothProfileInhibit"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    throw v0
.end method

.method public requestBluetoothProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBluetoothProfileInhibit device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 333
    if-eqz p1, :cond_1

    .line 337
    if-eqz p3, :cond_0

    .line 340
    const/4 v0, 0x0

    return v0

    .line 338
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Token must not be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/CarProjectionService;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":I
    .end local p3    # "token":Landroid/os/IBinder;
    throw v0

    .line 335
    .restart local p0    # "this":Lcom/android/car/CarProjectionService;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "profile":I
    .restart local p3    # "token":Landroid/os/IBinder;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Device must not be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/CarProjectionService;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":I
    .end local p3    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .restart local p0    # "this":Lcom/android/car/CarProjectionService;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "profile":I
    .restart local p3    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "Error in requestBluetoothProfileInhibit"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    throw v0
.end method

.method setAccessPointTethering(Z)V
    .locals 2
    .param p1, "tetherEnabled"    # Z

    .line 863
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    :try_start_0
    iput v1, p0, Lcom/android/car/CarProjectionService;->mWifiMode:I

    .line 865
    monitor-exit v0

    .line 866
    return-void

    .line 865
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setUiMode(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "uiMode"    # Ljava/lang/Integer;

    .line 855
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->createProjectionOptionsBuilder()Landroid/car/projection/ProjectionOptions$Builder;

    move-result-object v1

    .line 857
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/projection/ProjectionOptions$Builder;->setUiMode(I)Landroid/car/projection/ProjectionOptions$Builder;

    move-result-object v1

    .line 858
    invoke-virtual {v1}, Landroid/car/projection/ProjectionOptions$Builder;->build()Landroid/car/projection/ProjectionOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mProjectionOptions:Landroid/car/projection/ProjectionOptions;

    .line 859
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startProjectionAccessPoint(Landroid/os/Messenger;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 262
    invoke-static {p1, p2}, Lcom/android/car/CarProjectionService$WirelessClient;->access$600(Landroid/os/Messenger;Landroid/os/IBinder;)Lcom/android/car/CarProjectionService$WirelessClient;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/CarProjectionService;->registerWirelessClient(Lcom/android/car/CarProjectionService$WirelessClient;)V

    .line 263
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->startAccessPoint()V

    .line 264
    return-void
.end method

.method public stopProjectionAccessPoint(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 268
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received stop access point request from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService;->unregisterWirelessClientLocked(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const-string v1, "CAR.PROJECTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    monitor-exit v0

    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mWirelessClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 278
    .local v1, "shouldReleaseAp":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v1, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->stopAccessPoint()V

    .line 283
    :cond_1
    return-void

    .line 278
    .end local v1    # "shouldReleaseAp":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterKeyEventHandler(Landroid/car/ICarProjectionKeyEventHandler;)V
    .locals 2
    .param p1, "eventHandler"    # Landroid/car/ICarProjectionKeyEventHandler;

    .line 250
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 251
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mKeyEventHandlers:Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;

    invoke-virtual {v1, p1}, Lcom/android/car/CarProjectionService$ProjectionKeyEventHandlerContainer;->removeBinder(Landroid/os/IInterface;)V

    .line 253
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->updateInputServiceHandlerLocked()V

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterProjectionRunner(Landroid/content/Intent;)V
    .locals 4
    .param p1, "serviceIntent"    # Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string v1, "CAR.PROJECTION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request to unbind unregistered service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]. Registered service["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    monitor-exit v0

    return-void

    .line 202
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/CarProjectionService;->mRegisteredService:Landroid/content/Intent;

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-direct {p0}, Lcom/android/car/CarProjectionService;->unbindServiceIfBound()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterProjectionStatusListener(Landroid/car/ICarProjectionStatusListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/ICarProjectionStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionStatusPermission(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mProjectionStatusListeners:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0, p1}, Lcom/android/car/BinderInterfaceContainer;->removeBinder(Landroid/os/IInterface;)V

    .line 439
    return-void
.end method

.method public updateProjectionStatus(Landroid/car/projection/ProjectionStatus;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "status"    # Landroid/car/projection/ProjectionStatus;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProjectionStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertProjectionPermission(Landroid/content/Context;)V

    .line 387
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 389
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 393
    .local v2, "userHandleId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/car/CarProjectionService;->mContext:Landroid/content/Context;

    .line 394
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .local v3, "packageUid":I
    nop

    .line 399
    if-ne v1, v3, :cond_3

    .line 404
    iget-object v4, p0, Lcom/android/car/CarProjectionService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 405
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/car/CarProjectionService;->getOrCreateProjectionReceiverClientLocked(Landroid/os/IBinder;)Lcom/android/car/CarProjectionService$ProjectionReceiverClient;

    move-result-object v5

    .line 406
    .local v5, "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    invoke-static {v5, p1}, Lcom/android/car/CarProjectionService$ProjectionReceiverClient;->access$702(Lcom/android/car/CarProjectionService$ProjectionReceiverClient;Landroid/car/projection/ProjectionStatus;)Landroid/car/projection/ProjectionStatus;

    .line 413
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->isActive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 414
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionState:I

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionPackage:Ljava/lang/String;

    .line 416
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    :cond_1
    invoke-virtual {p1}, Landroid/car/projection/ProjectionStatus;->getState()I

    move-result v6

    iput v6, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionState:I

    .line 418
    iput-object v0, p0, Lcom/android/car/CarProjectionService;->mCurrentProjectionPackage:Ljava/lang/String;

    .line 420
    .end local v5    # "client":Lcom/android/car/CarProjectionService$ProjectionReceiverClient;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/car/CarProjectionService;->notifyProjectionStatusChanged(Landroid/car/ICarProjectionStatusListener;)V

    .line 422
    return-void

    .line 420
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 400
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " cannot update status for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    .end local v3    # "packageUid":I
    :catch_0
    move-exception v3

    .line 396
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " does not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
