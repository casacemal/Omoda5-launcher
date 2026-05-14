.class public Lcom/chery/caradapter/server/CarAdapterBaseManager;
.super Ljava/lang/Object;
.source "CarAdapterBaseManager.java"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/server/CarAdapterBaseManager;


# instance fields
.field private mCarApi:Landroid/car/Car;

.field private mCarAudioManager:Landroid/car/media/CarAudioManager;

.field private mCarInfoManager:Landroid/car/CarInfoManager;

.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private mCarPropertyManager:Landroid/car/hardware/property/CarPropertyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/chery/caradapter/server/CarAdapterBaseManager;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->sInstance:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-nez v0, :cond_1

    .line 27
    invoke-static {p1}, Landroid/car/Car;->createCar(Landroid/content/Context;)Landroid/car/Car;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/car/Car;->isConnected()Z

    move-result p1

    .line 30
    sget-object v0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarAdapterBaseManager: isCarApiConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    const-string v0, "property"

    .line 32
    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/property/CarPropertyManager;

    iput-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    .line 33
    iget-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/media/CarAudioManager;

    iput-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    .line 34
    iget-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    const-string v0, "info"

    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/CarInfoManager;

    iput-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarInfoManager:Landroid/car/CarInfoManager;

    .line 35
    iget-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/power/CarPowerManager;

    iput-object p1, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    goto :goto_0

    .line 38
    :cond_0
    sget-object p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->TAG:Ljava/lang/String;

    const-string p1, "CarAdapterBaseManager: mCarApi == null"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/chery/caradapter/server/CarAdapterBaseManager;
    .locals 2

    .line 49
    sget-object v0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->sInstance:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/chery/caradapter/server/CarAdapterBaseManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/server/CarAdapterBaseManager;->sInstance:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/chery/caradapter/server/CarAdapterBaseManager;

    invoke-direct {v1, p0}, Lcom/chery/caradapter/server/CarAdapterBaseManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/chery/caradapter/server/CarAdapterBaseManager;->sInstance:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->sInstance:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/car/Car;->disconnect()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    :cond_0
    return-void
.end method

.method public getCarAudioManager()Landroid/car/media/CarAudioManager;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-eqz v0, :cond_0

    const-string v1, "audio"

    .line 72
    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/media/CarAudioManager;

    iput-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarAudioManager:Landroid/car/media/CarAudioManager;

    return-object p0
.end method

.method public getCarInfoManager()Landroid/car/CarInfoManager;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarInfoManager:Landroid/car/CarInfoManager;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-eqz v0, :cond_0

    const-string v1, "info"

    .line 81
    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarInfoManager;

    iput-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarInfoManager:Landroid/car/CarInfoManager;

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarInfoManager:Landroid/car/CarInfoManager;

    return-object p0
.end method

.method public getCarPowerManager()Landroid/car/hardware/power/CarPowerManager;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-eqz v0, :cond_0

    const-string v1, "power"

    .line 90
    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/power/CarPowerManager;

    iput-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-object p0
.end method

.method public getCarPropertyManager()Landroid/car/hardware/property/CarPropertyManager;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarApi:Landroid/car/Car;

    if-eqz v0, :cond_0

    const-string v1, "property"

    .line 63
    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/property/CarPropertyManager;

    iput-object v0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->mCarPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-object p0
.end method

.method public onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 1

    .line 106
    sget-object p0, Lcom/chery/caradapter/server/CarAdapterBaseManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLifecycleChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
