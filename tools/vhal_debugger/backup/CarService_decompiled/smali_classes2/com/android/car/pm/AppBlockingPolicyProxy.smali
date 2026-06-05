.class public Lcom/android/car/pm/AppBlockingPolicyProxy;
.super Ljava/lang/Object;
.source "AppBlockingPolicyProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;
    }
.end annotation


# static fields
.field private static final MAX_CRASH_RETRY:I = 0x2

.field private static final TIMEOUT_MS:J = 0x1388L


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCrashCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/car/pm/CarPackageManagerService;

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mSetter:Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/car/pm/CarPackageManagerService;Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .locals 2
    .param p1, "service"    # Lcom/android/car/pm/CarPackageManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mCrashCount:I

    .line 53
    iput-boolean v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mBound:Z

    .line 57
    new-instance v1, Lcom/android/car/pm/AppBlockingPolicyProxy$1;

    invoke-direct {v1, p0}, Lcom/android/car/pm/AppBlockingPolicyProxy$1;-><init>(Lcom/android/car/pm/AppBlockingPolicyProxy;)V

    iput-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 68
    iput-object p1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mService:Lcom/android/car/pm/CarPackageManagerService;

    .line 69
    iput-object p2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 71
    new-instance v1, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;

    invoke-direct {v1, p0, v0}, Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;-><init>(Lcom/android/car/pm/AppBlockingPolicyProxy;Lcom/android/car/pm/AppBlockingPolicyProxy$1;)V

    iput-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mSetter:Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;

    .line 72
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mService:Lcom/android/car/pm/CarPackageManagerService;

    invoke-virtual {v1}, Lcom/android/car/pm/CarPackageManagerService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/pm/AppBlockingPolicyProxy;)Landroid/content/pm/ServiceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 35
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/pm/AppBlockingPolicyProxy;)Lcom/android/car/pm/CarPackageManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 35
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mService:Lcom/android/car/pm/CarPackageManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/pm/AppBlockingPolicyProxy;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 35
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/pm/AppBlockingPolicyProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/AppBlockingPolicyProxy;

    .line 35
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public connect()V
    .locals 5

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/16 v3, 0x41

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 84
    monitor-enter p0

    .line 85
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mBound:Z

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 3

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mBound:Z

    if-nez v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mBound:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "CAR.PACKAGE"

    const-string v2, "unbind"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void

    .line 97
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "policy":Landroid/car/content/pm/ICarAppBlockingPolicy;
    const/4 v1, 0x0

    .line 110
    .local v1, "failed":Z
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-static {p2}, Landroid/car/content/pm/ICarAppBlockingPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/content/pm/ICarAppBlockingPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;

    .line 112
    iget-object v2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;

    move-object v0, v2

    .line 113
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x1

    .line 116
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v1, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy service connected with null binder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.PACKAGE"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mService:Lcom/android/car/pm/CarPackageManagerService;

    invoke-virtual {v2, p0}, Lcom/android/car/pm/CarPackageManagerService;->onPolicyConnectionFailure(Lcom/android/car/pm/AppBlockingPolicyProxy;)V

    .line 120
    return-void

    .line 123
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;

    iget-object v3, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mSetter:Lcom/android/car/pm/AppBlockingPolicyProxy$ICarAppBlockingPolicySetterImpl;

    invoke-interface {v2, v3}, Landroid/car/content/pm/ICarAppBlockingPolicy;->setAppBlockingPolicySetter(Landroid/car/content/pm/ICarAppBlockingPolicySetter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 127
    :goto_0
    return-void

    .line 116
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "failed":Z
    monitor-enter p0

    .line 133
    :try_start_0
    iget v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mCrashCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mCrashCount:I

    .line 134
    iget v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mCrashCount:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mPolicyService:Landroid/car/content/pm/ICarAppBlockingPolicy;

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy service keep crashing, giving up:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.PACKAGE"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mService:Lcom/android/car/pm/CarPackageManagerService;

    invoke-virtual {v1, p0}, Lcom/android/car/pm/CarPackageManagerService;->onPolicyConnectionFailure(Lcom/android/car/pm/AppBlockingPolicyProxy;)V

    .line 143
    :cond_1
    return-void

    .line 138
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppBlockingPolicyProxy [mServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCrashCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/pm/AppBlockingPolicyProxy;->mCrashCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
