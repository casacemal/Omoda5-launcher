.class public final Landroid/car/test/CarTestManager;
.super Ljava/lang/Object;
.source "CarTestManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mService:Landroid/car/test/ICarTest;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "carServiceBinder"    # Landroid/os/IBinder;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Landroid/car/test/ICarTest$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/test/ICarTest;

    move-result-object v0

    iput-object v0, p0, Landroid/car/test/CarTestManager;->mService:Landroid/car/test/ICarTest;

    .line 37
    return-void
.end method

.method private static handleRemoteException(Landroid/os/RemoteException;)V
    .locals 1
    .param p0, "e"    # Landroid/os/RemoteException;

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 42
    return-void
.end method

.method public startCarService(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/car/test/CarTestManager;->mService:Landroid/car/test/ICarTest;

    invoke-interface {v0, p1}, Landroid/car/test/ICarTest;->startCarService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/car/test/CarTestManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 71
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public stopCarService(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 53
    :try_start_0
    iget-object v0, p0, Landroid/car/test/CarTestManager;->mService:Landroid/car/test/ICarTest;

    invoke-interface {v0, p1}, Landroid/car/test/ICarTest;->stopCarService(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Landroid/car/test/CarTestManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 57
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
