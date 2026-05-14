.class public Lcom/chery/media/model/business/VrRadioBusiness;
.super Ljava/lang/Object;
.source "VrRadioBusiness.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/VrRadioBusiness;


# instance fields
.field private context:Landroid/content/Context;

.field mDabInfo:Lcom/chery/media/model/business/DabInfo;

.field mDabPlaying:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mRadioTool:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;

.field private mVrRadioManager:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

.field m_bPlaying:Ljava/lang/Boolean;

.field m_lastTunerState:Ljava/lang/Integer;

.field m_radioInfo:Lcom/chery/media/model/business/RadioDef;

.field m_tunerState:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lcom/chery/media/model/business/VrRadioBusiness;

    const-string v1, "TUNER"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_lastTunerState:Ljava/lang/Integer;

    .line 62
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/chery/media/model/business/VrRadioBusiness$1;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrRadioBusiness$1;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/chery/media/model/business/VrRadioBusiness$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/VrRadioBusiness$2;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    iput-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mRadioTool:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/VrRadioBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->handleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/VrRadioBusiness;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private duringNaviActivity()Z
    .locals 1

    .line 699
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/avn/tools/activity/ActivityUtils;->getTopActivityComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 703
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.astrob.turbodog"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/chery/media/model/business/VrRadioBusiness;
    .locals 1

    .line 56
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->instance:Lcom/chery/media/model/business/VrRadioBusiness;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/VrRadioBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->instance:Lcom/chery/media/model/business/VrRadioBusiness;

    .line 59
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->instance:Lcom/chery/media/model/business/VrRadioBusiness;

    return-object v0
.end method

.method private handleControlCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 270
    const-class v0, Lcom/chery/libvr/bean/action/ActionRadio;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionRadio;

    .line 271
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 272
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x37a563bb

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x258334

    if-eq v0, v1, :cond_1

    const v1, 0x6362ed0a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "COLLECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "PLAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "CANCEL_COLLECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_2

    .line 281
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockPlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockCancelCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleControlPlayState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 397
    const-class v0, Lcom/chery/libvr/bean/action/ActionRadio;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionRadio;

    .line 398
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 399
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "PAUSE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "PLAY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "NEXT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "PREVIOUS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 410
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockRadioNextResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 407
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockRadioPreviousResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 404
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockRadioResumePlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 401
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockRadioStopResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1d465509 -> :sswitch_3
        0x2482f3 -> :sswitch_2
        0x258334 -> :sswitch_1
        0x4862dd6 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleControlPlayingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 240
    const-class v0, Lcom/chery/libvr/bean/action/ActionRadio;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionRadio;

    .line 241
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x251e4a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OPEN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 244
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockShowRadioListResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handlePlayByBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 508
    const-class v0, Lcom/chery/libvr/bean/action/ActionRadio;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionRadio;

    .line 509
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getType()Ljava/lang/String;

    move-result-object v5

    .line 510
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x258334

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "PLAY"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    .line 515
    invoke-direct/range {v1 .. v6}, Lcom/chery/media/model/business/VrRadioBusiness;->mockRadioPlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 213
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequest key -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ; value -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "controlPlayState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_1
    const-string v0, "controlCollection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "playByBand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "controlPlayingList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "scanBand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 233
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->handleControlPlayingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->handleControlCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->handleScanBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 221
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->handleControlPlayState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 217
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->handlePlayByBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x351c45ae -> :sswitch_4
        0x3273644f -> :sswitch_3
        0x418cc380 -> :sswitch_2
        0x60999fdb -> :sswitch_1
        0x64589ce0 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleScanBand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 353
    const-class v0, Lcom/chery/libvr/bean/action/ActionRadio;

    invoke-static {p2, v0}, Lcom/avn/tools/json/JsonUtil;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/libvr/bean/action/ActionRadio;

    .line 354
    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio;->getSemantic()Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/chery/libvr/bean/action/ActionRadio$SemanticBean;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 356
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x251e4a

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x3d3e5d8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CLOSE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "OPEN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 361
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockStopScanResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 358
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->mockScanResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private mockCancelCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 306
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALREADY_NO_SAVED"

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->cancelFavor(Lcom/chery/media/model/business/DabInfo;)V

    const-string v0, "SUCCESS"

    goto :goto_0

    .line 313
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    iget v1, v1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/model/business/RadioBusiness;->addCollection(IZ)Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 317
    new-instance v2, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 318
    invoke-virtual {v2, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2, v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 322
    invoke-static {v1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 329
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    .line 331
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v1, v2}, Lcom/chery/media/model/business/DabBusiness;->isFavor(Lcom/chery/media/model/business/DabInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ALREADY_SAVED"

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/DabBusiness;->getFavorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_1

    const-string v0, "FAIL_LIST_FULL"

    goto :goto_0

    .line 336
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabInfo:Lcom/chery/media/model/business/DabInfo;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->addFavor(Lcom/chery/media/model/business/DabInfo;)V

    const-string v0, "SUCCESS"

    goto :goto_0

    .line 339
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    iget v1, v1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/model/business/RadioBusiness;->addCollection(IZ)Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 343
    new-instance v2, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 344
    invoke-virtual {v2, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2, v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 349
    invoke-static {v1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockDabPlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p3, "DAB"

    .line 523
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 524
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p3

    invoke-virtual {p3}, Lcom/chery/media/model/business/DabBusiness;->requestAudioFocus()Z

    .line 525
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/chery/media/model/business/DabBusiness;->setPlayStateByVr(Z)V

    .line 526
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->moveToDab()Z

    .line 529
    :cond_0
    new-instance p3, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {p3}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 530
    new-instance p4, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {p4}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 531
    invoke-virtual {p4, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "SUCCESS"

    .line 532
    invoke-virtual {p4, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p3, p4}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 535
    invoke-static {p3}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockPlayCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 289
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->tuneByListByVr()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->moveToRadio()Z

    .line 292
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 293
    new-instance v2, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 294
    invoke-virtual {v2, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2, v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 298
    invoke-static {v1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockRadioNextResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 416
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->setPlayStateByVr(Z)V

    .line 418
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabBusiness;->playNext()V

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingStateByVr(Z)V

    .line 421
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    .line 424
    :goto_0
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 425
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 426
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "SUCCESS"

    .line 427
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 431
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockRadioPlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p4

    .line 543
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 553
    :goto_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v4

    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chery/media/model/business/RadioBusiness;->getArea()Landroidx/lifecycle/LiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/chery/media/model/business/RadioBusiness;->getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    move-result-object v4

    const-string v5, "AM"

    .line 555
    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "SIMILAR_FREQ:"

    const-string v7, "ALREADY_EXPECT"

    const-string v8, "OUT_RANGE"

    const-string v9, "SUCCESS"

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    .line 557
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    move-object v2, v9

    :goto_2
    move v10, v3

    move v3, v1

    move v1, v10

    goto/16 :goto_7

    .line 559
    :cond_1
    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    if-lt v2, v3, :cond_5

    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    if-le v2, v3, :cond_2

    goto :goto_5

    .line 561
    :cond_2
    iget-object v3, v0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    iget v3, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    if-ne v2, v3, :cond_3

    :goto_3
    move v3, v1

    move v1, v2

    move-object v2, v7

    goto/16 :goto_7

    .line 564
    :cond_3
    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    sub-int v3, v2, v3

    iget v5, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    rem-int/2addr v3, v5

    if-nez v3, :cond_4

    :goto_4
    move v3, v1

    move v1, v2

    goto/16 :goto_6

    .line 567
    :cond_4
    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    sub-int v3, v2, v3

    iget v4, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    rem-int/2addr v3, v4

    sub-int v3, v2, v3

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    :goto_5
    move v3, v1

    move v1, v2

    move-object v2, v8

    goto/16 :goto_7

    :cond_6
    const-string v5, "FM"

    .line 573
    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v1, 0x1

    .line 575
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    .line 577
    :cond_7
    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    if-lt v2, v3, :cond_5

    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    if-le v2, v3, :cond_8

    goto :goto_5

    .line 579
    :cond_8
    iget-object v3, v0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    iget v3, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    if-ne v2, v3, :cond_9

    goto :goto_3

    .line 582
    :cond_9
    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    sub-int v3, v2, v3

    iget v5, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    rem-int/2addr v3, v5

    if-nez v3, :cond_a

    goto :goto_4

    .line 585
    :cond_a
    iget v3, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    sub-int v3, v2, v3

    iget v4, v4, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    rem-int/2addr v3, v4

    sub-int v3, v2, v3

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_b
    const-string v2, "DAB"

    .line 589
    invoke-static {v2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 590
    invoke-direct/range {p0 .. p5}, Lcom/chery/media/model/business/VrRadioBusiness;->mockDabPlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 594
    :cond_c
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v4, "DAB"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p5

    .line 595
    invoke-direct/range {v0 .. v5}, Lcom/chery/media/model/business/VrRadioBusiness;->mockDabPlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    move v1, v3

    :goto_6
    move-object v2, v9

    :goto_7
    if-eq v2, v8, :cond_e

    .line 605
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/chery/media/model/business/RadioBusiness;->tuneByVr(II)V

    .line 608
    :cond_e
    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 609
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "SIMILAR_FREQ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 610
    :cond_f
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 612
    :cond_10
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->moveToRadio()Z

    .line 615
    :cond_11
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 616
    new-instance v3, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v3}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    move-object v4, p2

    .line 617
    invoke-virtual {v3, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v3, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v1, v3}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 621
    invoke-static {v1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p5

    invoke-direct {p0, p1, v1, v3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockRadioPreviousResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 436
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 437
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->setPlayStateByVr(Z)V

    .line 438
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/DabBusiness;->playPrevious()V

    goto :goto_0

    .line 440
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingStateByVr(Z)V

    .line 441
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/chery/media/model/business/RadioBusiness;->seek(IZ)V

    .line 444
    :goto_0
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 445
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 446
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "SUCCESS"

    .line 447
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 451
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockRadioResumePlayResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 457
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    const-string v1, "ALREADY_EXPECT"

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chery/media/model/business/DabBusiness;->setPlayStateByVr(Z)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_bPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 468
    :cond_2
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingStateByVr(Z)V

    :goto_0
    move-object v1, v2

    .line 472
    :goto_1
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 473
    new-instance v2, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 474
    invoke-virtual {v2, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v2, v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 479
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockRadioStopResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 484
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "mockRadioStopResponse"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/MediaBusiness;->isDabLastPlayed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/DabBusiness;->setPlayStateByVr(Z)V

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingStateByVr(Z)V

    .line 496
    :goto_0
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 497
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 498
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "SUCCESS"

    .line 499
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 503
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockScanResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 367
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->scanByVr()V

    .line 368
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->moveToRadio()Z

    .line 370
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 371
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 372
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "SUCCESS"

    .line 373
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 377
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockShowRadioListResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 254
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->moveToRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string v0, "ALREADY_SHOWN"

    .line 260
    :goto_0
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 261
    new-instance v2, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 262
    invoke-virtual {v2, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2, v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1, v2}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 266
    invoke-static {v1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private mockStopScanResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 383
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    .line 385
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    .line 386
    new-instance v1, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 387
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    const-string p2, "SUCCESS"

    .line 388
    invoke-virtual {v1, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 392
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/chery/media/model/business/VrRadioBusiness;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private moveToDab()Z
    .locals 6

    .line 680
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "MediaPageId"

    const-string v4, "PAGE_DAB_PLAYER"

    .line 681
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chery/common/PageManager;->isPageShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 686
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->duringNaviActivity()Z

    move-result p0

    if-nez p0, :cond_1

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    const-string v4, "MediaPageId"

    const-string v5, "PAGE_DAB_PLAYER"

    .line 687
    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private moveToRadio()Z
    .locals 6

    .line 661
    new-instance v0, Lcom/chery/common/PageManager;

    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chery/common/PageManager;-><init>(Landroid/content/Context;)V

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "MediaPageId"

    const-string v4, "PAGE_RADIO_PLAYER"

    .line 662
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chery/common/PageManager;->isPageShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 667
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->duringNaviActivity()Z

    move-result p0

    if-nez p0, :cond_1

    const-string v1, "com.chery.media"

    const-string v2, "com.chery.media.view.activity.MediaActivity"

    const-string v3, "com.chery.media.ACTION_OPEN"

    const-string v4, "MediaPageId"

    const-string v5, "PAGE_RADIO_PLAYER"

    .line 668
    invoke-virtual/range {v0 .. v5}, Lcom/chery/common/PageManager;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 649
    new-instance v0, Lcom/chery/libvr/bean/action/Response;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/Response;-><init>()V

    const/4 v1, 0x0

    .line 650
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/Response;->setResultCode(I)V

    .line 651
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setDetail(Ljava/lang/String;)V

    const-string p2, "com.chery.media"

    .line 652
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setPkgName(Ljava/lang/String;)V

    .line 654
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 655
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse value -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mVrRadioManager:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 636
    new-instance v0, Lcom/chery/libvr/bean/action/Response;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/Response;-><init>()V

    const/4 v1, 0x4

    .line 637
    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/Response;->setResultCode(I)V

    .line 638
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setDetail(Ljava/lang/String;)V

    const-string p2, "com.chery.media"

    .line 639
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/Response;->setPkgName(Ljava/lang/String;)V

    .line 641
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 642
    sget-object v0, Lcom/chery/media/model/business/VrRadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUploadResponse value -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mVrRadioManager:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->onResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 628
    new-instance v0, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;

    invoke-direct {v0}, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;-><init>()V

    .line 629
    invoke-virtual {v0, p1}, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->setBand(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->setFrequency(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, p3}, Lcom/chery/libvr/bean/responsedetail/RadioResDetail;->setPlayState(Ljava/lang/String;)V

    .line 632
    invoke-static {v0}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "notifyRadioPlayInfo"

    invoke-direct {p0, p2, p1}, Lcom/chery/media/model/business/VrRadioBusiness;->sendUploadResponse(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    .line 94
    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    .line 95
    invoke-static {}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->getInstance()Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mVrRadioManager:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    .line 97
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mRadioTool:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;

    invoke-virtual {p1, v0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->setRadioTool(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V

    .line 98
    iget-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mVrRadioManager:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    invoke-virtual {p1}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->init()V

    .line 100
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentChannel()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/RadioDef;

    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    .line 101
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_bPlaying:Ljava/lang/Boolean;

    .line 102
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->getTunerState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_tunerState:Ljava/lang/Integer;

    .line 104
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabBusiness;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/DabInfo;

    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabInfo:Lcom/chery/media/model/business/DabInfo;

    .line 105
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabPlaying:Ljava/lang/Boolean;

    .line 107
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabBusiness;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleService;

    new-instance v1, Lcom/chery/media/model/business/VrRadioBusiness$3;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrRadioBusiness$3;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 115
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->getInstance()Lcom/chery/media/model/business/DabBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/DabBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleService;

    new-instance v1, Lcom/chery/media/model/business/VrRadioBusiness$4;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrRadioBusiness$4;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 124
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->getCurrentChannel()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleService;

    new-instance v1, Lcom/chery/media/model/business/VrRadioBusiness$5;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrRadioBusiness$5;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 132
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleService;

    new-instance v1, Lcom/chery/media/model/business/VrRadioBusiness$6;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrRadioBusiness$6;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 141
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->getTunerState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->context:Landroid/content/Context;

    check-cast v0, Landroidx/lifecycle/LifecycleService;

    new-instance v1, Lcom/chery/media/model/business/VrRadioBusiness$7;

    invoke-direct {v1, p0}, Lcom/chery/media/model/business/VrRadioBusiness$7;-><init>(Lcom/chery/media/model/business/VrRadioBusiness;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 150
    invoke-virtual {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadStatus()V

    return-void
.end method

.method public unInit()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mVrRadioManager:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;

    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mRadioTool:Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;

    invoke-virtual {v0, p0}, Lcom/chery/libvr/manager/funtionmanager/VrRadioManager;->releaseRadioTool(Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;)V

    return-void
.end method

.method public uploadDabStatus()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_bPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabInfo:Lcom/chery/media/model/business/DabInfo;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/chery/media/model/business/DabInfo;->serviceName:Ljava/lang/String;

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabPlaying:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PLAYING"

    goto :goto_1

    :cond_2
    const-string v1, "STOP"

    :goto_1
    const-string v2, "DAB"

    .line 167
    invoke-direct {p0, v2, v0, v1}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public uploadStatus()V
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_bPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->mDabPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    iget v0, v0, Lcom/chery/media/model/business/RadioDef;->band:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "FM"

    goto :goto_0

    :cond_1
    const-string v0, "AM"

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_radioInfo:Lcom/chery/media/model/business/RadioDef;

    iget v1, v1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_lastTunerState:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_tunerState:Ljava/lang/Integer;

    const-string v4, "PLAYING"

    const-string v5, "STOP"

    if-ne v2, v3, :cond_3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_7

    .line 185
    iget-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_bPlaying:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 190
    :goto_1
    invoke-direct {p0, v0, v1, v4}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 193
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_tunerState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    goto :goto_2

    .line 196
    :cond_4
    iget-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_bPlaying:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v5

    goto :goto_3

    :cond_6
    :goto_2
    const-string v4, "SCANING"

    .line 202
    :goto_3
    iget-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_tunerState:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/chery/media/model/business/VrRadioBusiness;->m_lastTunerState:Ljava/lang/Integer;

    .line 203
    invoke-direct {p0, v0, v1, v4}, Lcom/chery/media/model/business/VrRadioBusiness;->uploadStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method
