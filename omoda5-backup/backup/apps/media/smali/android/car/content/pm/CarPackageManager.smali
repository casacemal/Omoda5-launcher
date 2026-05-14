.class public final Landroid/car/content/pm/CarPackageManager;
.super Ljava/lang/Object;
.source "CarPackageManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/content/pm/CarPackageManager$SetPolicyFlags;
    }
.end annotation


# static fields
.field public static final FLAG_SET_POLICY_ADD:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_SET_POLICY_REMOVE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_SET_POLICY_WAIT_FOR_CHANGE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarPackageManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/car/content/pm/ICarPackageManager;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/car/content/pm/ICarPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/content/pm/ICarPackageManager;

    move-result-object p1

    iput-object p1, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    .line 78
    iput-object p2, p0, Landroid/car/content/pm/CarPackageManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isActivityBackedBySafeActivity(Landroid/content/ComponentName;)Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 152
    :try_start_0
    iget-object p0, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    invoke-interface {p0, p1}, Landroid/car/content/pm/ICarPackageManager;->isActivityBackedBySafeActivity(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 182
    :try_start_0
    iget-object p0, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/car/content/pm/ICarPackageManager;->isActivityDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 184
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isServiceDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 198
    :try_start_0
    iget-object p0, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    invoke-interface {p0, p1, p2}, Landroid/car/content/pm/ICarPackageManager;->isServiceDistractionOptimized(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 200
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public restartTask(I)V
    .locals 0

    .line 129
    :try_start_0
    iget-object p0, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    invoke-interface {p0, p1}, Landroid/car/content/pm/ICarPackageManager;->restartTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FLAG_SET_POLICY_WAIT_FOR_CHANGE cannot be used in main thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/content/pm/ICarPackageManager;->setAppBlockingPolicy(Ljava/lang/String;Landroid/car/content/pm/CarAppBlockingPolicy;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setEnableActivityBlocking(Z)V
    .locals 0

    .line 166
    :try_start_0
    iget-object p0, p0, Landroid/car/content/pm/CarPackageManager;->mService:Landroid/car/content/pm/ICarPackageManager;

    invoke-interface {p0, p1}, Landroid/car/content/pm/ICarPackageManager;->setEnableActivityBlocking(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
