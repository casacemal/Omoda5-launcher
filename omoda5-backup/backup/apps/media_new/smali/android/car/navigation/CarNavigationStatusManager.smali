.class public final Landroid/car/navigation/CarNavigationStatusManager;
.super Ljava/lang/Object;
.source "CarNavigationStatusManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CAR.L.NAV"


# instance fields
.field private final mService:Landroid/car/cluster/renderer/IInstrumentClusterNavigation;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    move-result-object p1

    iput-object p1, p0, Landroid/car/navigation/CarNavigationStatusManager;->mService:Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    return-void
.end method


# virtual methods
.method public getInstrumentClusterInfo()Landroid/car/navigation/CarNavigationInstrumentCluster;
    .locals 0

    .line 84
    :try_start_0
    iget-object p0, p0, Landroid/car/navigation/CarNavigationStatusManager;->mService:Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    invoke-interface {p0}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation;->getInstrumentClusterInfo()Landroid/car/navigation/CarNavigationInstrumentCluster;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 86
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 1

    const-string p0, "CAR.L.NAV"

    const-string v0, "Car service disconnected"

    .line 77
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendEvent(ILandroid/os/Bundle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-virtual {p0, p2}, Landroid/car/navigation/CarNavigationStatusManager;->sendNavigationStateChange(Landroid/os/Bundle;)V

    return-void
.end method

.method public sendNavigationStateChange(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    :try_start_0
    iget-object p0, p0, Landroid/car/navigation/CarNavigationStatusManager;->mService:Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    invoke-interface {p0, p1}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation;->onNavigationStateChanged(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
