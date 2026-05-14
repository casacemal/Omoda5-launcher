.class public Lcom/chery/caradapter/carapi/CarAdapterClient;
.super Ljava/lang/Object;
.source "CarAdapterClient.java"


# static fields
.field private static volatile sInstance:Lcom/chery/caradapter/carapi/CarAdapterClient;


# instance fields
.field private carAdapterBaseManager:Lcom/chery/caradapter/server/CarAdapterBaseManager;

.field private carAudioManager:Landroid/car/media/CarAudioManager;

.field private carInfoManager:Landroid/car/CarInfoManager;

.field private carPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/caradapter/server/CarAdapterBaseManager;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/server/CarAdapterBaseManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carAdapterBaseManager:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    .line 38
    invoke-virtual {p1}, Lcom/chery/caradapter/server/CarAdapterBaseManager;->getCarPropertyManager()Landroid/car/hardware/property/CarPropertyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    .line 39
    iget-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carAdapterBaseManager:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    invoke-virtual {p1}, Lcom/chery/caradapter/server/CarAdapterBaseManager;->getCarAudioManager()Landroid/car/media/CarAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    .line 40
    iget-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carAdapterBaseManager:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    invoke-virtual {p1}, Lcom/chery/caradapter/server/CarAdapterBaseManager;->getCarInfoManager()Landroid/car/CarInfoManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carInfoManager:Landroid/car/CarInfoManager;

    .line 41
    iget-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carAdapterBaseManager:Lcom/chery/caradapter/server/CarAdapterBaseManager;

    invoke-virtual {p1}, Lcom/chery/caradapter/server/CarAdapterBaseManager;->getCarPowerManager()Landroid/car/hardware/power/CarPowerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;
    .locals 2

    .line 51
    sget-object v0, Lcom/chery/caradapter/carapi/CarAdapterClient;->sInstance:Lcom/chery/caradapter/carapi/CarAdapterClient;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/chery/caradapter/carapi/CarAdapterClient;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/CarAdapterClient;->sInstance:Lcom/chery/caradapter/carapi/CarAdapterClient;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/chery/caradapter/carapi/CarAdapterClient;

    invoke-direct {v1, p0}, Lcom/chery/caradapter/carapi/CarAdapterClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/chery/caradapter/carapi/CarAdapterClient;->sInstance:Lcom/chery/caradapter/carapi/CarAdapterClient;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->sInstance:Lcom/chery/caradapter/carapi/CarAdapterClient;

    return-object p0
.end method


# virtual methods
.method public getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 105
    :pswitch_0
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarAvmClient;

    move-result-object p1

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    move-result-object p1

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object p1

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    goto :goto_0

    .line 93
    :pswitch_4
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarDriveClient;

    move-result-object p1

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarBasicClient;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_3
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    move-result-object p1

    goto :goto_0

    .line 75
    :cond_4
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarLampClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarLampClient;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_5
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_6
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->getInstance()Lcom/chery/caradapter/carapi/client/CarHvacClient;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 112
    iget-object v0, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p1, v0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;->setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V

    .line 113
    iget-object v0, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    invoke-virtual {p1, v0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;->setAudioManager(Landroid/car/media/CarAudioManager;)V

    .line 114
    iget-object v0, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carInfoManager:Landroid/car/CarInfoManager;

    invoke-virtual {p1, v0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;->setInfoManager(Landroid/car/CarInfoManager;)V

    .line 115
    iget-object p0, p0, Lcom/chery/caradapter/carapi/CarAdapterClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p1, p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;->setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V

    .line 116
    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarBaseClient;->init()V

    :cond_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
