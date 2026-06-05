.class public Lcom/android/car/PerUserCarServiceHelper;
.super Ljava/lang/Object;
.source "PerUserCarServiceHelper.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;,
        Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field private static final TAG:Ljava/lang/String; = "PerUserCarSvcHelper"


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mServiceBindLock"
        }
    .end annotation
.end field

.field private mCarUserService:Landroid/car/ICarUserService;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;

.field private final mServiceBindLock:Ljava/lang/Object;

.field private mServiceCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserServiceConnection:Landroid/content/ServiceConnection;

.field private mUserSwitchFilter:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceBindLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mBound:Z

    .line 124
    new-instance v0, Lcom/android/car/PerUserCarServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/car/PerUserCarServiceHelper$1;-><init>(Lcom/android/car/PerUserCarServiceHelper;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mUserServiceConnection:Landroid/content/ServiceConnection;

    .line 57
    iput-object p1, p0, Lcom/android/car/PerUserCarServiceHelper;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceCallbacks:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;-><init>(Lcom/android/car/PerUserCarServiceHelper;)V

    iput-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mReceiver:Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;

    .line 60
    invoke-direct {p0}, Lcom/android/car/PerUserCarServiceHelper;->setupUserSwitchListener()V

    .line 61
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/car/PerUserCarServiceHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 42
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/PerUserCarServiceHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/car/PerUserCarServiceHelper;->unbindFromPerUserCarService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/PerUserCarServiceHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 42
    invoke-direct {p0}, Lcom/android/car/PerUserCarServiceHelper;->bindToPerUserCarService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/PerUserCarServiceHelper;)Landroid/car/ICarUserService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 42
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mCarUserService:Landroid/car/ICarUserService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/car/PerUserCarServiceHelper;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/PerUserCarServiceHelper;
    .param p1, "x1"    # Landroid/car/ICarUserService;

    .line 42
    iput-object p1, p0, Lcom/android/car/PerUserCarServiceHelper;->mCarUserService:Landroid/car/ICarUserService;

    return-object p1
.end method

.method private bindToPerUserCarService()V
    .locals 6

    .line 168
    sget-boolean v0, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "Binding to User service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/car/PerUserCarService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "startIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceBindLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/car/PerUserCarServiceHelper;->mBound:Z

    .line 174
    iget-object v3, p0, Lcom/android/car/PerUserCarServiceHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/PerUserCarServiceHelper;->mUserServiceConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Lcom/android/car/PerUserCarServiceHelper;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 177
    .local v2, "bindSuccess":Z
    if-nez v2, :cond_1

    .line 178
    const-string v3, "PerUserCarSvcHelper"

    const-string v4, "bindToPerUserCarService() failed to get valid connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/car/PerUserCarServiceHelper;->unbindFromPerUserCarService()V

    .line 181
    .end local v2    # "bindSuccess":Z
    :cond_1
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setupUserSwitchListener()V
    .locals 3

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mUserSwitchFilter:Landroid/content/IntentFilter;

    .line 79
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mUserSwitchFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper;->mReceiver:Lcom/android/car/PerUserCarServiceHelper$UserSwitchBroadcastReceiver;

    iget-object v2, p0, Lcom/android/car/PerUserCarServiceHelper;->mUserSwitchFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    sget-boolean v0, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "UserSwitch Listener Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method private unbindFromPerUserCarService()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceBindLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/PerUserCarServiceHelper;->mBound:Z

    if-eqz v1, :cond_1

    .line 191
    sget-boolean v1, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "PerUserCarSvcHelper"

    const-string v2, "Unbinding from User Service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/android/car/PerUserCarServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/PerUserCarServiceHelper;->mUserServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/PerUserCarServiceHelper;->mBound:Z

    .line 197
    :cond_1
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 246
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/PerUserCarServiceHelper;->bindToPerUserCarService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    .end local p0    # "this":Lcom/android/car/PerUserCarServiceHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 206
    if-eqz p1, :cond_1

    .line 207
    sget-boolean v0, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "Registering PerUserCarService Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 214
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/PerUserCarServiceHelper;->unbindFromPerUserCarService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    .end local p0    # "this":Lcom/android/car/PerUserCarServiceHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 221
    sget-boolean v0, Lcom/android/car/PerUserCarServiceHelper;->DBG:Z

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "PerUserCarSvcHelper"

    const-string v1, "Unregistering PerUserCarService Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/car/PerUserCarServiceHelper;->mServiceCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :cond_1
    :goto_0
    return-void
.end method
