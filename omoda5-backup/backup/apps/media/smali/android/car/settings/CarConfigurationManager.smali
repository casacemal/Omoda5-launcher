.class public Landroid/car/settings/CarConfigurationManager;
.super Ljava/lang/Object;
.source "CarConfigurationManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarConfigurationManager"


# instance fields
.field private final mConfigurationService:Landroid/car/settings/ICarConfigurationManager;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/car/settings/ICarConfigurationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/settings/ICarConfigurationManager;

    move-result-object p1

    iput-object p1, p0, Landroid/car/settings/CarConfigurationManager;->mConfigurationService:Landroid/car/settings/ICarConfigurationManager;

    return-void
.end method


# virtual methods
.method public getSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;
    .locals 0

    .line 43
    :try_start_0
    iget-object p0, p0, Landroid/car/settings/CarConfigurationManager;->mConfigurationService:Landroid/car/settings/ICarConfigurationManager;

    invoke-interface {p0}, Landroid/car/settings/ICarConfigurationManager;->getSpeedBumpConfiguration()Landroid/car/settings/SpeedBumpConfiguration;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
