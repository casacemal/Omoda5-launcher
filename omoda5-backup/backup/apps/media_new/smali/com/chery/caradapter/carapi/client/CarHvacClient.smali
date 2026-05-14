.class public Lcom/chery/caradapter/carapi/client/CarHvacClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarHvacClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IHvacManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarHvacClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

.field private mAcModeCustomSts:I

.field private mAutoDefrostOnSts:I

.field private mAutoSts:I

.field private mBeepState:I

.field private mBlowAdvanceOnSts:I

.field private mBlowDelayOffSts:I

.field private mBlowSpeedLevelSts:I

.field private mCirculationModeSts:I

.field private mClmOn:I

.field private mCompressorSts:I

.field private mDisplay:I

.field private mElecClimateTemp:I

.field private mFGHeatSts:I

.field private mFragranceWelcomeModeSts:I

.field private mFrontDeforestMaxSts:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

.field private mModeAdjustSts:I

.field private mPm25AutoRunSetSts:I

.field private mRefreshFunctionSts:I

.field private mSeatHeatDriver:I

.field private mSeatHeatPassenger:I

.field private mSeatVentDriver:I

.field private mSeatVentPassenger:I

.field private mSelfTestActive:I

.field private mSelfTestResult:I

.field private mT1eBlowSpeedLevelSts:I

.field private mT1eDriverTemp:F

.field private mT1ePassengerTemp:F

.field private mTemperatureLeftC:I

.field private mTemperatureLeftF:I

.field private mTemperatureRightC:I

.field private mTemperatureRightF:I

.field private mTemperatureUnit:I

.field private mZoneSelectionSts:I

.field private proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mDisplay:I

    .line 29
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    .line 30
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCompressorSts:I

    .line 31
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCirculationModeSts:I

    .line 32
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowSpeedLevelSts:I

    .line 33
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mModeAdjustSts:I

    .line 34
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoSts:I

    const/4 v1, -0x1

    .line 35
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

    .line 36
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightC:I

    .line 37
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftF:I

    .line 38
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightF:I

    .line 39
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mElecClimateTemp:I

    .line 40
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureUnit:I

    .line 41
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFGHeatSts:I

    .line 42
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mZoneSelectionSts:I

    .line 43
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFrontDeforestMaxSts:I

    const/4 v1, 0x1

    .line 44
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowDelayOffSts:I

    .line 45
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowAdvanceOnSts:I

    .line 46
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAcModeCustomSts:I

    .line 47
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoDefrostOnSts:I

    .line 48
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mPm25AutoRunSetSts:I

    .line 49
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFragranceWelcomeModeSts:I

    .line 50
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mRefreshFunctionSts:I

    .line 52
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestActive:I

    .line 53
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestResult:I

    .line 54
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatDriver:I

    .line 55
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatPassenger:I

    .line 56
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentDriver:I

    .line 57
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentPassenger:I

    .line 59
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBeepState:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 61
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eDriverTemp:F

    .line 62
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1ePassengerTemp:F

    .line 63
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eBlowSpeedLevelSts:I

    .line 68
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarHvacClient;Lcom/chery/caradapter/carapi/client/CarHvacClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mDisplay:I

    return p0
.end method

.method static synthetic access$1000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

    return p0
.end method

.method static synthetic access$1002(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

    return p1
.end method

.method static synthetic access$102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mDisplay:I

    return p1
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightC:I

    return p0
.end method

.method static synthetic access$1102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightC:I

    return p1
.end method

.method static synthetic access$1200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftF:I

    return p0
.end method

.method static synthetic access$1202(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftF:I

    return p1
.end method

.method static synthetic access$1300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightF:I

    return p0
.end method

.method static synthetic access$1302(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightF:I

    return p1
.end method

.method static synthetic access$1400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mElecClimateTemp:I

    return p0
.end method

.method static synthetic access$1402(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mElecClimateTemp:I

    return p1
.end method

.method static synthetic access$1500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mZoneSelectionSts:I

    return p0
.end method

.method static synthetic access$1502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mZoneSelectionSts:I

    return p1
.end method

.method static synthetic access$1600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFrontDeforestMaxSts:I

    return p0
.end method

.method static synthetic access$1602(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFrontDeforestMaxSts:I

    return p1
.end method

.method static synthetic access$1700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowDelayOffSts:I

    return p0
.end method

.method static synthetic access$1702(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowDelayOffSts:I

    return p1
.end method

.method static synthetic access$1800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowAdvanceOnSts:I

    return p0
.end method

.method static synthetic access$1802(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowAdvanceOnSts:I

    return p1
.end method

.method static synthetic access$1900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAcModeCustomSts:I

    return p0
.end method

.method static synthetic access$1902(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAcModeCustomSts:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoDefrostOnSts:I

    return p0
.end method

.method static synthetic access$2002(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoDefrostOnSts:I

    return p1
.end method

.method static synthetic access$2100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mPm25AutoRunSetSts:I

    return p0
.end method

.method static synthetic access$2102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mPm25AutoRunSetSts:I

    return p1
.end method

.method static synthetic access$2200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFragranceWelcomeModeSts:I

    return p0
.end method

.method static synthetic access$2202(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFragranceWelcomeModeSts:I

    return p1
.end method

.method static synthetic access$2300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mRefreshFunctionSts:I

    return p0
.end method

.method static synthetic access$2302(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mRefreshFunctionSts:I

    return p1
.end method

.method static synthetic access$2400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestActive:I

    return p0
.end method

.method static synthetic access$2402(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestActive:I

    return p1
.end method

.method static synthetic access$2500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestResult:I

    return p0
.end method

.method static synthetic access$2502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestResult:I

    return p1
.end method

.method static synthetic access$2600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatDriver:I

    return p0
.end method

.method static synthetic access$2602(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatDriver:I

    return p1
.end method

.method static synthetic access$2700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatPassenger:I

    return p0
.end method

.method static synthetic access$2702(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatPassenger:I

    return p1
.end method

.method static synthetic access$2800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentDriver:I

    return p0
.end method

.method static synthetic access$2802(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentDriver:I

    return p1
.end method

.method static synthetic access$2900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentPassenger:I

    return p0
.end method

.method static synthetic access$2902(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentPassenger:I

    return p1
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureUnit:I

    return p0
.end method

.method static synthetic access$3002(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureUnit:I

    return p1
.end method

.method static synthetic access$3100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFGHeatSts:I

    return p0
.end method

.method static synthetic access$3102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFGHeatSts:I

    return p1
.end method

.method static synthetic access$3200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBeepState:I

    return p0
.end method

.method static synthetic access$3202(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBeepState:I

    return p1
.end method

.method static synthetic access$3300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eDriverTemp:F

    return p0
.end method

.method static synthetic access$3302(Lcom/chery/caradapter/carapi/client/CarHvacClient;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eDriverTemp:F

    return p1
.end method

.method static synthetic access$3400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)F
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1ePassengerTemp:F

    return p0
.end method

.method static synthetic access$3402(Lcom/chery/caradapter/carapi/client/CarHvacClient;F)F
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1ePassengerTemp:F

    return p1
.end method

.method static synthetic access$3500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eBlowSpeedLevelSts:I

    return p0
.end method

.method static synthetic access$3502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eBlowSpeedLevelSts:I

    return p1
.end method

.method static synthetic access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    return p0
.end method

.method static synthetic access$402(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    return p1
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCompressorSts:I

    return p0
.end method

.method static synthetic access$502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCompressorSts:I

    return p1
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCirculationModeSts:I

    return p0
.end method

.method static synthetic access$602(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCirculationModeSts:I

    return p1
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowSpeedLevelSts:I

    return p0
.end method

.method static synthetic access$702(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowSpeedLevelSts:I

    return p1
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mModeAdjustSts:I

    return p0
.end method

.method static synthetic access$802(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mModeAdjustSts:I

    return p1
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoSts:I

    return p0
.end method

.method static synthetic access$902(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoSts:I

    return p1
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarHvacClient;
    .locals 2

    .line 80
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    if-nez v0, :cond_1

    .line 81
    const-class v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    if-nez v1, :cond_0

    .line 83
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 87
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    return-object v0
.end method

.method private sendFloatPropertyData(IF)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 697
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    :cond_0
    return-void
.end method

.method private sendIntPropertyData(II)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 691
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAcModeCustomSts()I
    .locals 0

    .line 522
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAcModeCustomSts:I

    return p0
.end method

.method public getAcRequestKeySts()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCompressorSts:I

    return p0
.end method

.method public getAutoDefrostOnSts()I
    .locals 0

    .line 533
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoDefrostOnSts:I

    return p0
.end method

.method public getAutoDisplaySts()I
    .locals 0

    .line 412
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoSts:I

    return p0
.end method

.method public getBeepSts()I
    .locals 0

    .line 653
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBeepState:I

    return p0
.end method

.method public getBlowAdvanceOnSts()I
    .locals 0

    .line 511
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowAdvanceOnSts:I

    return p0
.end method

.method public getBlowDelayOffSts()I
    .locals 0

    .line 500
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowDelayOffSts:I

    return p0
.end method

.method public getBlowSpeedLevelDisplaySts()I
    .locals 0

    .line 390
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowSpeedLevelSts:I

    return p0
.end method

.method public getCirculationModeDisplaySts()I
    .locals 0

    .line 379
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCirculationModeSts:I

    return p0
.end method

.method public getClimateDisplaySts()I
    .locals 0

    .line 346
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mDisplay:I

    return p0
.end method

.method public getClmOn()I
    .locals 0

    .line 357
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    return p0
.end method

.method public getElecClimateTemp()I
    .locals 0

    .line 467
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mElecClimateTemp:I

    return p0
.end method

.method public getFGHeatSts()I
    .locals 0

    .line 642
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFGHeatSts:I

    return p0
.end method

.method public getFragranceWelcomeModeSts()I
    .locals 0

    .line 555
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFragranceWelcomeModeSts:I

    return p0
.end method

.method public getFrontDeforestMaxDisplaySts()I
    .locals 0

    .line 489
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFrontDeforestMaxSts:I

    return p0
.end method

.method public getModeAdjustDisplaySts()I
    .locals 0

    .line 401
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mModeAdjustSts:I

    return p0
.end method

.method public getPm25AutoRunSetSts()I
    .locals 0

    .line 544
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mPm25AutoRunSetSts:I

    return p0
.end method

.method public getRefreshFunctionSts()I
    .locals 0

    .line 566
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mRefreshFunctionSts:I

    return p0
.end method

.method public getSeatHeatDriver()I
    .locals 0

    .line 587
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatDriver:I

    return p0
.end method

.method public getSeatHeatPassenger()I
    .locals 0

    .line 598
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatPassenger:I

    return p0
.end method

.method public getSeatVentDriver()I
    .locals 0

    .line 609
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentDriver:I

    return p0
.end method

.method public getSeatVentPassenger()I
    .locals 0

    .line 620
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentPassenger:I

    return p0
.end method

.method public getSelfTestActive()I
    .locals 0

    .line 571
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestActive:I

    return p0
.end method

.method public getSelfTestResult()I
    .locals 0

    .line 576
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestResult:I

    return p0
.end method

.method public getT1eBlowSpeedLevelDisplaySts()I
    .locals 0

    .line 686
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eBlowSpeedLevelSts:I

    return p0
.end method

.method public getT1eDriverTemp()F
    .locals 0

    .line 664
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eDriverTemp:F

    return p0
.end method

.method public getT1ePassengerTemp()F
    .locals 0

    .line 675
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1ePassengerTemp:F

    return p0
.end method

.method public getTemperatureLeftC()I
    .locals 0

    .line 423
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

    return p0
.end method

.method public getTemperatureLeftF()I
    .locals 0

    .line 445
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftF:I

    return p0
.end method

.method public getTemperatureRightC()I
    .locals 0

    .line 434
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightC:I

    return p0
.end method

.method public getTemperatureRightF()I
    .locals 0

    .line 456
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightF:I

    return p0
.end method

.method public getTemperatureUnitSts()I
    .locals 0

    .line 631
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureUnit:I

    return p0
.end method

.method public getZoneSelectionDisplaySts()I
    .locals 0

    .line 478
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mZoneSelectionSts:I

    return p0
.end method

.method public init()V
    .locals 16

    move-object/from16 v0, p0

    .line 92
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CarHvac"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->handlerThread:Landroid/os/HandlerThread;

    .line 93
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarHvacClient;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    .line 96
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x2140101a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mDisplay:I

    .line 98
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x2140101d

    .line 99
    invoke-virtual {v1, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureUnit:I

    .line 101
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x21401002

    invoke-virtual {v1, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    .line 102
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v6, 0x21401003

    invoke-virtual {v1, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCompressorSts:I

    .line 104
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v7, 0x21401004

    .line 105
    invoke-virtual {v1, v7, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCirculationModeSts:I

    .line 107
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x21401005

    .line 108
    invoke-virtual {v1, v8, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowSpeedLevelSts:I

    .line 110
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v9, 0x21401006

    invoke-virtual {v1, v9, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mModeAdjustSts:I

    .line 112
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21401007

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoSts:I

    .line 114
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v11, 0x21401008

    .line 115
    invoke-virtual {v1, v11, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

    .line 117
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v12, 0x21401009

    .line 118
    invoke-virtual {v1, v12, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightC:I

    .line 120
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v13, 0x2140101b

    .line 121
    invoke-virtual {v1, v13, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftF:I

    .line 123
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v14, 0x2140101c

    .line 124
    invoke-virtual {v1, v14, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightF:I

    .line 126
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21401019

    .line 127
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mElecClimateTemp:I

    .line 129
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x2140101e

    .line 130
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFGHeatSts:I

    .line 132
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x2140100a

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mZoneSelectionSts:I

    .line 134
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v14, 0x2140100d

    .line 135
    invoke-virtual {v1, v14, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFrontDeforestMaxSts:I

    .line 137
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v13, 0x2140100e

    .line 138
    invoke-virtual {v1, v13, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowDelayOffSts:I

    .line 140
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x2140100f

    .line 141
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowAdvanceOnSts:I

    .line 143
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401010

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAcModeCustomSts:I

    .line 145
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401011

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoDefrostOnSts:I

    .line 148
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401012

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mPm25AutoRunSetSts:I

    .line 151
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401013

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFragranceWelcomeModeSts:I

    .line 154
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401014

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mRefreshFunctionSts:I

    .line 158
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x2140100b

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestActive:I

    .line 161
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x2140100c

    .line 162
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestResult:I

    .line 164
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401015

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatDriver:I

    .line 166
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401016

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatPassenger:I

    .line 169
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401017

    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentDriver:I

    .line 171
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401018

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentPassenger:I

    .line 175
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x2140101f

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBeepState:I

    .line 179
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21601037

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eDriverTemp:F

    .line 182
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21601038

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1ePassengerTemp:F

    .line 185
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21401036

    .line 186
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eBlowSpeedLevelSts:I

    .line 190
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarHvacClient init: mClmOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mCompressorSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCompressorSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mCirculationModeSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mCirculationModeSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mBlowSpeedLevelSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowSpeedLevelSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mModeAdjustSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mModeAdjustSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mAutoSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mTemperatureLeftC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mTemperatureRightC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureRightC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mTemperatureUnit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureUnit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mFGHeatSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFGHeatSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mZoneSelectionSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mZoneSelectionSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mFrontDeforestMaxSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFrontDeforestMaxSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mBlowDelayOffSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowDelayOffSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mBlowAdvanceOnSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mBlowAdvanceOnSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mAcModeCustomSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAcModeCustomSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mAutoDefrostOnSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mAutoDefrostOnSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mPm25AutoRunSetSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mPm25AutoRunSetSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mFragranceWelcomeModeSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mFragranceWelcomeModeSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mRefreshFunctionSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mRefreshFunctionSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSelfTestActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestActive:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSelfTestResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSelfTestResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSeatHeatDriver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatDriver:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSeatHeatPassenger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatHeatPassenger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSeatVentDriver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentDriver:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mSeatVentPassenger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mSeatVentPassenger:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mT1eDriverTemp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eDriverTemp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mT1ePassengerTemp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1ePassengerTemp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",mT1eBlowSpeedLevelSts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mT1eBlowSpeedLevelSts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 209
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 212
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 215
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v7, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 218
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v8, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 221
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v9, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 224
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 227
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v11, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 230
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v12, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 233
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 236
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v14, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 239
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v13, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 242
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140100f

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 245
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401010

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 248
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401011

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 251
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401012

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 254
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401013

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 257
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401014

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 261
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140100b

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 264
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140100c

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 271
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401015

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 274
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401016

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 277
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401017

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 280
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401018

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 283
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140101a

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 286
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140101b

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 289
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140101c

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 292
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21401019

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 295
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140101e

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 298
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x2140101f

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 301
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21601037

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 304
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v4, 0x21601038

    invoke-virtual {v1, v2, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 307
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;

    const v2, 0x21401036

    invoke-virtual {v1, v0, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAcModeCustom(I)V
    .locals 3

    .line 516
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcModeCustom:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401010

    .line 517
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setAcRequestKeySts(I)V
    .locals 3

    .line 362
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcRequestKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401003

    .line 363
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setAutoDefrostOnKeySts(I)V
    .locals 3

    .line 527
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoDefrostOnKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401011

    .line 528
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setAutoKeySts(I)V
    .locals 3

    .line 406
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401007

    .line 407
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setBeep(I)V
    .locals 3

    .line 647
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeep:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140101f

    .line 648
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setBlowAdvanceOnKeySts(I)V
    .locals 3

    .line 505
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlowAdvanceOnKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140100f

    .line 506
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setBlowDelayOffKeySts(I)V
    .locals 3

    .line 494
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlowDelayOffKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140100e

    .line 495
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setBlowSpeedLevelKeySts(I)V
    .locals 3

    .line 384
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlowSpeedLevelKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401005

    .line 385
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setCirculationModeKeySts(I)V
    .locals 3

    .line 373
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCirculationModeKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401004

    .line 374
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setClimateDisplay(I)V
    .locals 3

    .line 340
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClimateDisplay:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140101a

    .line 341
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setClmOn(I)V
    .locals 3

    .line 351
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClmOn:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401002

    .line 352
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setElecClimateTemp(I)V
    .locals 3

    .line 461
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setElecClimateTemp:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401019

    .line 462
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setFGHeat(I)V
    .locals 3

    .line 636
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFGHeat:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140101e

    .line 637
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setFragranceWelcomeMode(I)V
    .locals 3

    .line 549
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFragranceWelcomeMode:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401013

    .line 550
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IHvacListener;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    return-void
.end method

.method public setMaxFrontDeforestSts(I)V
    .locals 3

    .line 483
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFrontDeforestSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140100d

    .line 484
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setModeAdjustKeySts(I)V
    .locals 3

    .line 395
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeAdjustKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401006

    .line 396
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setPm25AutoRunSet(I)V
    .locals 3

    .line 538
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPm25AutoRunSet:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401012

    .line 539
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setRefreshFunction(I)V
    .locals 3

    .line 560
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRefreshFunction:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401014

    .line 561
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setSeatHeatDriver(I)V
    .locals 3

    .line 581
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeatHeatDriver:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401015

    .line 582
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setSeatHeatPassenger(I)V
    .locals 3

    .line 592
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeatHeatPassenger:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401016

    .line 593
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setSeatVentDriver(I)V
    .locals 3

    .line 603
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeatVentDriver:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401017

    .line 604
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setSeatVentPassenger(I)V
    .locals 3

    .line 614
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSeatVentPassenger:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401018

    .line 615
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setT1eBlowSpeedLevelKeySts(I)V
    .locals 3

    .line 680
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setT1eBlowSpeedLevelKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401036

    .line 681
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setT1eDriverTemp(F)V
    .locals 3

    .line 658
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setT1eDriverTemp:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21601037

    .line 659
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendFloatPropertyData(IF)V

    return-void
.end method

.method public setT1ePassengerTemp(F)V
    .locals 3

    .line 669
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setT1ePassengerTemp:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21601038

    .line 670
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendFloatPropertyData(IF)V

    return-void
.end method

.method public setTemperatureLeftC(I)V
    .locals 3

    .line 417
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperatureLeftC:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401008

    .line 418
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setTemperatureLeftF(I)V
    .locals 3

    .line 439
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperatureLeftF:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140101b

    .line 440
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setTemperatureRightC(I)V
    .locals 3

    .line 428
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperatureRightC:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21401009

    .line 429
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setTemperatureRightF(I)V
    .locals 3

    .line 450
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperatureRightF:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140101c

    .line 451
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setTemperatureUnit(I)V
    .locals 3

    .line 625
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemperatureUnit:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140101d

    .line 626
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method

.method public setZoneSelectionKeySts(I)V
    .locals 3

    .line 472
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoneSelectionKeySts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140100a

    .line 473
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->sendIntPropertyData(II)V

    return-void
.end method
