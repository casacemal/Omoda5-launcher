.class public Lcom/chery/media/util/CarAdapterUse;
.super Ljava/lang/Object;
.source "CarAdapterUse.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static avmEngineListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;",
            ">;"
        }
    .end annotation
.end field

.field private static basicListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/caradapter/carapi/interfaces/IBasicListener;",
            ">;"
        }
    .end annotation
.end field

.field private static carAvmEngineClient:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

.field private static carBasicClient:Lcom/chery/caradapter/carapi/client/CarBasicClient;

.field private static carConfigInfoClient:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

.field private static carPowerClient:Lcom/chery/caradapter/carapi/client/CarPowerClient;

.field private static carVolumeClient:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

.field private static configListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/caradapter/carapi/interfaces/IConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static handler:Landroid/os/Handler;

.field private static powerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/caradapter/carapi/interfaces/IPowerListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volumeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/chery/media/util/CarAdapterUse;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->TAG:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->basicListeners:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->volumeListeners:Ljava/util/List;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->powerListeners:Ljava/util/List;

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->configListeners:Ljava/util/List;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->avmEngineListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->basicListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->volumeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerStateString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->powerListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carConfigInfoClient:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .line 26
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->avmEngineListeners:Ljava/util/List;

    return-object v0
.end method

.method public static addAvmEngineListener(Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;)V
    .locals 1

    .line 412
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->avmEngineListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->avmEngineListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addCarBasicClientListener(Lcom/chery/caradapter/carapi/interfaces/IBasicListener;)V
    .locals 1

    .line 159
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->basicListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->basicListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V
    .locals 1

    .line 304
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->powerListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->powerListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addCarVolumeClientListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V
    .locals 1

    .line 201
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->volumeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->volumeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addConfigListener(Lcom/chery/caradapter/carapi/interfaces/IConfigListener;)V
    .locals 1

    .line 330
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->configListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->configListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getCarAvmEngineClient()Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;
    .locals 2

    .line 340
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carAvmEngineClient:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    if-nez v0, :cond_0

    .line 341
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->carAvmEngineClient:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    .line 342
    new-instance v1, Lcom/chery/media/util/CarAdapterUse$5;

    invoke-direct {v1}, Lcom/chery/media/util/CarAdapterUse$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->setListener(Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;)V

    .line 408
    :cond_0
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carAvmEngineClient:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    return-object v0
.end method

.method public static getCarBasicClient()Lcom/chery/caradapter/carapi/client/CarBasicClient;
    .locals 2

    .line 43
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carBasicClient:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    if-nez v0, :cond_0

    .line 44
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->carBasicClient:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 45
    new-instance v1, Lcom/chery/media/util/CarAdapterUse$1;

    invoke-direct {v1}, Lcom/chery/media/util/CarAdapterUse$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setListener(Lcom/chery/caradapter/carapi/interfaces/IBasicListener;)V

    .line 155
    :cond_0
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carBasicClient:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    return-object v0
.end method

.method public static getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;
    .locals 2

    .line 314
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carConfigInfoClient:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->carConfigInfoClient:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    .line 316
    new-instance v1, Lcom/chery/media/util/CarAdapterUse$4;

    invoke-direct {v1}, Lcom/chery/media/util/CarAdapterUse$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->setListener(Lcom/chery/caradapter/carapi/interfaces/IConfigListener;)V

    .line 326
    :cond_0
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carConfigInfoClient:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    return-object v0
.end method

.method public static getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;
    .locals 2

    .line 283
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carPowerClient:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    if-nez v0, :cond_0

    .line 284
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->carPowerClient:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    .line 285
    new-instance v1, Lcom/chery/media/util/CarAdapterUse$3;

    invoke-direct {v1}, Lcom/chery/media/util/CarAdapterUse$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->setListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    .line 300
    :cond_0
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carPowerClient:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    return-object v0
.end method

.method private static getCarPowerStateString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto :goto_0

    :pswitch_1
    const-string p0, "PWR_SCREEN_OFF"

    goto :goto_0

    :pswitch_2
    const-string p0, "PWR_SCREEN_ON"

    goto :goto_0

    :pswitch_3
    const-string p0, "PWR_REQ_SYSTEM_OFF"

    goto :goto_0

    :pswitch_4
    const-string p0, "PWR_MODE_TEMPRUN_ENDING"

    goto :goto_0

    :pswitch_5
    const-string p0, "PWR_MODE_PROTECTION"

    goto :goto_0

    :pswitch_6
    const-string p0, "PWR_MODE_PARTIALRUN"

    goto :goto_0

    :pswitch_7
    const-string p0, "PWR_MODE_OFF_USER"

    goto :goto_0

    :pswitch_8
    const-string p0, "PWR_MODE_TEMP_ON"

    goto :goto_0

    :pswitch_9
    const-string p0, "PWR_MODE_ABNORMAL"

    goto :goto_0

    :pswitch_a
    const-string p0, "PWR_MODE_SLEEP"

    goto :goto_0

    :pswitch_b
    const-string p0, "PWR_MODE_RUN"

    goto :goto_0

    :pswitch_c
    const-string p0, "PWR_MODE_STANDBY"

    goto :goto_0

    :pswitch_d
    const-string p0, "PWR_MODE_OFF"

    goto :goto_0

    :pswitch_e
    const-string p0, "PWR_MODE_NONE"

    goto :goto_0

    :pswitch_f
    const-string p0, "SHUTDOWN_CANCELLED"

    goto :goto_0

    :pswitch_10
    const-string p0, "SHUTDOWN_PREPARE"

    goto :goto_0

    :pswitch_11
    const-string p0, "ON"

    goto :goto_0

    :pswitch_12
    const-string p0, "SHUTDOWN_ENTER"

    goto :goto_0

    :pswitch_13
    const-string p0, "SUSPEND_EXIT"

    goto :goto_0

    :pswitch_14
    const-string p0, "SUSPEND_ENTER"

    goto :goto_0

    :pswitch_15
    const-string p0, "WAIT_FOR_VHAL"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;
    .locals 2

    .line 169
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carVolumeClient:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    if-nez v0, :cond_0

    .line 170
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getInstance(Landroid/content/Context;)Lcom/chery/caradapter/carapi/CarAdapterClient;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/CarAdapterClient;->getCarClient(I)Lcom/chery/caradapter/carapi/client/CarBaseClient;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    sput-object v0, Lcom/chery/media/util/CarAdapterUse;->carVolumeClient:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    .line 171
    new-instance v1, Lcom/chery/media/util/CarAdapterUse$2;

    invoke-direct {v1}, Lcom/chery/media/util/CarAdapterUse$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V

    .line 197
    :cond_0
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->carVolumeClient:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 32
    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->context:Landroid/content/Context;

    .line 33
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->handler:Landroid/os/Handler;

    .line 34
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarBasicClient()Lcom/chery/caradapter/carapi/client/CarBasicClient;

    move-result-object p0

    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->carBasicClient:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 35
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p0

    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->carVolumeClient:Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    .line 36
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarPowerClient()Lcom/chery/caradapter/carapi/client/CarPowerClient;

    move-result-object p0

    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->carPowerClient:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    .line 37
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p0

    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->carConfigInfoClient:Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    .line 38
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarAvmEngineClient()Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    move-result-object p0

    sput-object p0, Lcom/chery/media/util/CarAdapterUse;->carAvmEngineClient:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    return-void
.end method

.method public static removeAvmEngineListener(Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;)V
    .locals 1

    .line 417
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->avmEngineListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeCarBasicClientListener(Lcom/chery/caradapter/carapi/interfaces/IBasicListener;)V
    .locals 1

    .line 164
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->basicListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V
    .locals 1

    .line 309
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->powerListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeCarVolumeClientListener(Lcom/chery/caradapter/carapi/interfaces/IVolumeListener;)V
    .locals 1

    .line 206
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->volumeListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeConfigListener(Lcom/chery/caradapter/carapi/interfaces/IConfigListener;)V
    .locals 1

    .line 335
    sget-object v0, Lcom/chery/media/util/CarAdapterUse;->configListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
