.class public Lcom/android/car/vms/VmsClientManager;
.super Ljava/lang/Object;
.source "VmsClientManager.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vms/VmsClientManager$SubscriberConnection;,
        Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final HAL_CLIENT_NAME:Ljava/lang/String; = "HalClient"

.field private static final TAG:Ljava/lang/String; = "VmsClientManager"

.field private static final UNKNOWN_PACKAGE:Ljava/lang/String; = "UnknownPackage"


# instance fields
.field private final mBrokerService:Lcom/android/car/vms/VmsBrokerService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mCurrentUserClients:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/vms/VmsClientManager$PublisherConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mGetCallingUid:Ljava/util/function/IntSupplier;

.field private mHalClient:Landroid/car/vms/IVmsPublisherClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMillisBeforeRebind:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPublisherService:Lcom/android/car/VmsPublisherService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRebindCounts:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRebindCounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/vms/VmsClientManager$SubscriberConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemClients:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/vms/VmsClientManager$PublisherConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUserUnlocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mSystemUserUnlockedListener:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mUserService:Lcom/android/car/user/CarUserService;

.field final mUserSwitchReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/user/CarUserService;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/hal/VmsHalService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "brokerService"    # Lcom/android/car/vms/VmsBrokerService;
    .param p3, "userService"    # Lcom/android/car/user/CarUserService;
    .param p4, "userManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;
    .param p5, "halService"    # Lcom/android/car/hal/VmsHalService;

    .line 148
    sget-object v6, Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;->INSTANCE:Lcom/android/car/vms/-$$Lambda$OLUSIA110KxM3wbFP4L-5xrTvHw;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/car/vms/VmsClientManager;-><init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/user/CarUserService;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/hal/VmsHalService;Ljava/util/function/IntSupplier;)V

    .line 150
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/user/CarUserService;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/hal/VmsHalService;Ljava/util/function/IntSupplier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "brokerService"    # Lcom/android/car/vms/VmsBrokerService;
    .param p3, "userService"    # Lcom/android/car/user/CarUserService;
    .param p4, "userManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;
    .param p5, "halService"    # Lcom/android/car/hal/VmsHalService;
    .param p6, "getCallingUid"    # Ljava/util/function/IntSupplier;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mSystemClients:Ljava/util/Map;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUserClients:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mRebindCounts:Ljava/util/Map;

    .line 105
    new-instance v0, Lcom/android/car/vms/-$$Lambda$VmsClientManager$83IFADDQ3vicfnjrIuuda5zCh7g;

    invoke-direct {v0, p0}, Lcom/android/car/vms/-$$Lambda$VmsClientManager$83IFADDQ3vicfnjrIuuda5zCh7g;-><init>(Lcom/android/car/vms/VmsClientManager;)V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mSystemUserUnlockedListener:Ljava/lang/Runnable;

    .line 113
    new-instance v0, Lcom/android/car/vms/VmsClientManager$1;

    invoke-direct {v0, p0}, Lcom/android/car/vms/VmsClientManager$1;-><init>(Lcom/android/car/vms/VmsClientManager;)V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-object p1, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mHandler:Landroid/os/Handler;

    .line 159
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mUserManager:Landroid/os/UserManager;

    .line 160
    iput-object p3, p0, Lcom/android/car/vms/VmsClientManager;->mUserService:Lcom/android/car/user/CarUserService;

    .line 161
    iput-object p4, p0, Lcom/android/car/vms/VmsClientManager;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 162
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    iput v0, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    .line 163
    iput-object p2, p0, Lcom/android/car/vms/VmsClientManager;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    .line 164
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/vms/VmsClientManager;->mMillisBeforeRebind:I

    .line 166
    iput-object p6, p0, Lcom/android/car/vms/VmsClientManager;->mGetCallingUid:Ljava/util/function/IntSupplier;

    .line 167
    invoke-virtual {p5, p0}, Lcom/android/car/hal/VmsHalService;->setClientManager(Lcom/android/car/vms/VmsClientManager;)V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/vms/VmsClientManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/vms/VmsClientManager;)Landroid/car/userlib/CarUserManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/car/vms/VmsClientManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/car/vms/VmsClientManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/car/vms/VmsClientManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget v0, p0, Lcom/android/car/vms/VmsClientManager;->mMillisBeforeRebind:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mRebindCounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/car/vms/VmsClientManager;)Lcom/android/car/VmsPublisherService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mPublisherService:Lcom/android/car/VmsPublisherService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/car/vms/VmsClientManager;)Lcom/android/car/vms/VmsBrokerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/vms/VmsClientManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget v0, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/car/vms/VmsClientManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;
    .param p1, "x1"    # I

    .line 65
    iput p1, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUserClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/vms/VmsClientManager;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;
    .param p1, "x1"    # Ljava/util/Map;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/car/vms/VmsClientManager;->terminate(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/vms/VmsClientManager;Ljava/util/stream/Stream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;
    .param p1, "x1"    # Ljava/util/stream/Stream;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/car/vms/VmsClientManager;->terminate(Ljava/util/stream/Stream;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/vms/VmsClientManager;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/vms/VmsClientManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    invoke-direct {p0}, Lcom/android/car/vms/VmsClientManager;->bindToSystemClients()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/vms/VmsClientManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager;

    .line 65
    invoke-direct {p0}, Lcom/android/car/vms/VmsClientManager;->bindToUserClients()V

    return-void
.end method

.method private bind(Ljava/util/Map;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/vms/VmsClientManager$PublisherConnection;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 383
    .local p1, "connectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/vms/VmsClientManager$PublisherConnection;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "VmsClientManager"

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already bound: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void

    .line 388
    :cond_0
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 389
    .local v0, "name":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid client name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 396
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 403
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v4, "android.car.permission.BIND_VMS_CLIENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not require "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void

    .line 409
    :cond_2
    new-instance v3, Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    invoke-direct {v3, p0, v0, p3}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;-><init>(Lcom/android/car/vms/VmsClientManager;Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 410
    .local v3, "connection":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    invoke-virtual {v3}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->bind()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client bound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 414
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    return-void

    .line 398
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "connection":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    :catch_0
    move-exception v2

    .line 399
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client not installed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method private bindToSystemClients()V
    .locals 7

    .line 348
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "clientNames":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-boolean v2, p0, Lcom/android/car/vms/VmsClientManager;->mSystemUserUnlocked:Z

    if-nez v2, :cond_0

    .line 352
    monitor-exit v1

    return-void

    .line 354
    :cond_0
    const-string v2, "VmsClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " system client(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 356
    .local v4, "clientName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/car/vms/VmsClientManager;->mSystemClients:Ljava/util/Map;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {p0, v5, v4, v6}, Lcom/android/car/vms/VmsClientManager;->bind(Ljava/util/Map;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 355
    .end local v4    # "clientName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 358
    :cond_1
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private bindToUserClients()V
    .locals 7

    .line 362
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget v1, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    if-nez v1, :cond_0

    .line 367
    const-string v1, "VmsClientManager"

    const-string v2, "System user in foreground. Userspace clients will not be bound."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    monitor-exit v0

    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "clientNames":[Ljava/lang/String;
    const-string v2, "VmsClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " user client(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v2, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 375
    .local v2, "currentUserHandle":Landroid/os/UserHandle;
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 376
    .local v5, "clientName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUserClients:Ljava/util/Map;

    invoke-direct {p0, v6, v5, v2}, Lcom/android/car/vms/VmsClientManager;->bind(Ljava/util/Map;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 375
    .end local v5    # "clientName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "clientNames":[Ljava/lang/String;
    .end local v2    # "currentUserHandle":Landroid/os/UserHandle;
    :cond_1
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpConnections(Ljava/io/PrintWriter;Ljava/util/Map;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/vms/VmsClientManager$PublisherConnection;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p2, "connectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/vms/VmsClientManager$PublisherConnection;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/vms/VmsClientManager$PublisherConnection;

    .line 341
    .local v1, "connection":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 342
    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->access$1200(Lcom/android/car/vms/VmsClientManager$PublisherConnection;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 343
    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager$PublisherConnection;->access$1300(Lcom/android/car/vms/VmsClientManager$PublisherConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "connected"

    goto :goto_1

    :cond_0
    const-string v4, "disconnected"

    :goto_1
    aput-object v4, v2, v3

    .line 341
    const-string v3, "\t%s: %s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 344
    .end local v1    # "connection":Lcom/android/car/vms/VmsClientManager$PublisherConnection;
    goto :goto_0

    .line 345
    :cond_1
    return-void
.end method

.method private getCallingPackage()Ljava/lang/String;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mGetCallingUid:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 555
    const-string v1, "UnknownPackage"

    return-object v1

    .line 557
    :cond_0
    return-object v0
.end method

.method static synthetic lambda$getAllSubscribers$1(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Landroid/car/vms/IVmsSubscriberClient;
    .locals 1
    .param p0, "subscriber"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 290
    invoke-static {p0}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->access$2000(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Landroid/car/vms/IVmsSubscriberClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onHalDisconnected$2(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Z
    .locals 2
    .param p0, "subscriber"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 331
    invoke-static {p0}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->access$1100(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HalClient"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onHalDisconnected$3(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-object v0
.end method

.method private terminate(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/vms/VmsClientManager$PublisherConnection;",
            ">;)V"
        }
    .end annotation

    .line 419
    .local p1, "connectionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/car/vms/VmsClientManager$PublisherConnection;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;->INSTANCE:Lcom/android/car/vms/-$$Lambda$QPGcmArSOeHNXADDYqsSrHQJnSo;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 420
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 421
    return-void
.end method

.method private terminate(Ljava/util/stream/Stream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "Lcom/android/car/vms/VmsClientManager$SubscriberConnection;",
            ">;)V"
        }
    .end annotation

    .line 548
    .local p1, "subscribers":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/android/car/vms/VmsClientManager$SubscriberConnection;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;->INSTANCE:Lcom/android/car/vms/-$$Lambda$dN9fi-L-CKhct4e48nsf5mt2pSw;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 549
    return-void
.end method


# virtual methods
.method public addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 8
    .param p1, "subscriberClient"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 242
    if-eqz p1, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 249
    .local v1, "subscriberBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    monitor-exit v0

    return-void

    .line 254
    :cond_0
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager;->mGetCallingUid:Ljava/util/function/IntSupplier;

    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 255
    .local v2, "subscriberUserId":I
    iget v3, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller must be foreground user or system"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager;
    .end local p1    # "subscriberClient":Landroid/car/vms/IVmsSubscriberClient;
    throw v3

    .line 259
    .restart local p0    # "this":Lcom/android/car/vms/VmsClientManager;
    .restart local p1    # "subscriberClient":Landroid/car/vms/IVmsSubscriberClient;
    :cond_2
    :goto_0
    new-instance v3, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 260
    invoke-direct {p0}, Lcom/android/car/vms/VmsClientManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, v2}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;-><init>(Lcom/android/car/vms/VmsClientManager;Landroid/car/vms/IVmsSubscriberClient;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .local v3, "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    nop

    .line 267
    :try_start_2
    iget-object v4, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    nop

    .end local v1    # "subscriberBinder":Landroid/os/IBinder;
    .end local v2    # "subscriberUserId":I
    .end local v3    # "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    monitor-exit v0

    .line 269
    return-void

    .line 264
    .restart local v1    # "subscriberBinder":Landroid/os/IBinder;
    .restart local v2    # "subscriberUserId":I
    .restart local v3    # "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    :catch_0
    move-exception v4

    .line 265
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subscriber already dead: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/car/vms/VmsClientManager;
    .end local p1    # "subscriberClient":Landroid/car/vms/IVmsSubscriberClient;
    throw v5

    .line 268
    .end local v1    # "subscriberBinder":Landroid/os/IBinder;
    .end local v2    # "subscriberUserId":I
    .end local v3    # "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/car/vms/VmsClientManager;
    .restart local p1    # "subscriberClient":Landroid/car/vms/IVmsSubscriberClient;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 243
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to add a null subscriber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/car/vms/VmsClientManager;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VmsClientManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subscriber cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/car/vms/VmsClientManager;->dumpMetrics(Ljava/io/PrintWriter;)V

    .line 208
    return-void
.end method

.method public dumpMetrics(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHalClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager;->mHalClient:Landroid/car/vms/IVmsPublisherClient;

    if-eqz v2, :cond_0

    const-string v2, "connected"

    goto :goto_0

    :cond_0
    const-string v2, "disconnected"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    const-string v1, "mSystemClients:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSystemClients:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/android/car/vms/VmsClientManager;->dumpConnections(Ljava/io/PrintWriter;Ljava/util/Map;)V

    .line 219
    const-string v1, "mCurrentUserClients:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUserClients:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lcom/android/car/vms/VmsClientManager;->dumpConnections(Ljava/io/PrintWriter;Ljava/util/Map;)V

    .line 222
    const-string v1, "mSubscribers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 224
    .local v2, "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    const-string v5, "\t%s\n"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {p1, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 225
    nop

    .end local v2    # "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    goto :goto_1

    .line 226
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mRebindCounts:Ljava/util/Map;

    monitor-enter v1

    .line 228
    :try_start_1
    const-string v0, "mRebindCounts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mRebindCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 230
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;>;"
    const-string v5, "\t%s: %s\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 231
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;>;"
    goto :goto_2

    .line 232
    :cond_2
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 226
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getAllSubscribers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/vms/-$$Lambda$VmsClientManager$oA4IgIma_VtPc__6JGugXh1SNi8;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$oA4IgIma_VtPc__6JGugXh1SNi8;

    .line 290
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 291
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 289
    return-object v0
.end method

.method public getPackageName(Landroid/car/vms/IVmsSubscriberClient;)Ljava/lang/String;
    .locals 3
    .param p1, "subscriberClient"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 298
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 300
    .local v1, "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->access$1100(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "UnknownPackage"

    :goto_0
    monitor-exit v0

    return-object v2

    .line 301
    .end local v1    # "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 7

    .line 183
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mUserService:Lcom/android/car/user/CarUserService;

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSystemUserUnlockedListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/car/user/CarUserService;->runOnUser0Unlock(Ljava/lang/Runnable;)V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    .local v0, "userSwitchFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public synthetic lambda$new$0$VmsClientManager()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/car/vms/VmsClientManager;->mSystemUserUnlocked:Z

    .line 109
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-direct {p0}, Lcom/android/car/vms/VmsClientManager;->bindToSystemClients()V

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onHalConnected(Landroid/car/vms/IVmsPublisherClient;Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 6
    .param p1, "publisherClient"    # Landroid/car/vms/IVmsPublisherClient;
    .param p2, "subscriberClient"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 312
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iput-object p1, p0, Lcom/android/car/vms/VmsClientManager;->mHalClient:Landroid/car/vms/IVmsPublisherClient;

    .line 314
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mPublisherService:Lcom/android/car/VmsPublisherService;

    const-string v2, "HalClient"

    iget-object v3, p0, Lcom/android/car/vms/VmsClientManager;->mHalClient:Landroid/car/vms/IVmsPublisherClient;

    invoke-virtual {v1, v2, v3}, Lcom/android/car/VmsPublisherService;->onClientConnected(Ljava/lang/String;Landroid/car/vms/IVmsPublisherClient;)V

    .line 315
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {p2}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    const-string v4, "HalClient"

    const/4 v5, 0x0

    invoke-direct {v3, p0, p2, v4, v5}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;-><init>(Lcom/android/car/vms/VmsClientManager;Landroid/car/vms/IVmsSubscriberClient;Ljava/lang/String;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHalDisconnected()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mHalClient:Landroid/car/vms/IVmsPublisherClient;

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mPublisherService:Lcom/android/car/VmsPublisherService;

    const-string v2, "HalClient"

    invoke-virtual {v1, v2}, Lcom/android/car/VmsPublisherService;->onClientDisconnected(Ljava/lang/String;)V

    .line 329
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mHalClient:Landroid/car/vms/IVmsPublisherClient;

    .line 330
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$t4wPaJRGBPId2--C_iiuZUaPfxw;

    .line 331
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 330
    invoke-direct {p0, v1}, Lcom/android/car/vms/VmsClientManager;->terminate(Ljava/util/stream/Stream;)V

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 333
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mRebindCounts:Ljava/util/Map;

    monitor-enter v1

    .line 334
    :try_start_1
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mRebindCounts:Ljava/util/Map;

    const-string v2, "HalClient"

    sget-object v3, Lcom/android/car/vms/-$$Lambda$VmsClientManager$c_t7hoE_EfLPm4unRt7LlfXVRWg;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsClientManager$c_t7hoE_EfLPm4unRt7LlfXVRWg;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 332
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public release()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mHalClient:Landroid/car/vms/IVmsPublisherClient;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mPublisherService:Lcom/android/car/VmsPublisherService;

    const-string v2, "HalClient"

    invoke-virtual {v1, v2}, Lcom/android/car/VmsPublisherService;->onClientDisconnected(Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSystemClients:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/car/vms/VmsClientManager;->terminate(Ljava/util/Map;)V

    .line 200
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mCurrentUserClients:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/android/car/vms/VmsClientManager;->terminate(Ljava/util/Map;)V

    .line 201
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/vms/VmsClientManager;->terminate(Ljava/util/stream/Stream;)V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriberClient"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 277
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager;->mSubscribers:Ljava/util/Map;

    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 279
    .local v1, "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    if-eqz v1, :cond_0

    .line 280
    invoke-virtual {v1}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->terminate()V

    .line 282
    .end local v1    # "subscriber":Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
    :cond_0
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPublisherService(Lcom/android/car/VmsPublisherService;)V
    .locals 2
    .param p1, "publisherService"    # Lcom/android/car/VmsPublisherService;

    .line 176
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iput-object p1, p0, Lcom/android/car/vms/VmsClientManager;->mPublisherService:Lcom/android/car/VmsPublisherService;

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
