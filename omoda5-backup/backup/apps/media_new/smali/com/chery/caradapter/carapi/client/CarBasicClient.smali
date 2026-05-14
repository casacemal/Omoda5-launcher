.class public Lcom/chery/caradapter/carapi/client/CarBasicClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarBasicClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IBasicManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarBasicClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

.field private mAutoFoldSts:I

.field private mAutoLockSts:I

.field private mBCM_4_KeySts:I

.field private mCWC_ChargingSts:I

.field private mCWC_PhoneForgotten:I

.field private mCWC_PhoneForgottenMsg:I

.field private mCWC_workingSts:I

.field private mDMSSts:I

.field private mDayNightModeLight:I

.field private mDayNightModeLightByCan:I

.field private mFDWindowSts:I

.field private mFPWindowSts:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

.field private mICM_BrightnessLevel:I

.field private mIcmTime:Ljava/lang/String;

.field private mLightDetectedSts:I

.field private mPLGMaxPosition:I

.field private mRLWindowSts:I

.field private mRRWindowSts:I

.field private mRemoteLockFeedbackSts:I

.field private mSSMStatus:I

.field private mScreenOverTemperatureSts:I

.field private mSrfSts:I

.field private mTrunkSts:I

.field private mVehicleSpeed:F

.field private mVehicleSpeedVSOSig:F

.field private mVehicleSpeedVSOSigValid:I

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 541
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 26
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarBasicClient;Lcom/chery/caradapter/carapi/client/CarBasicClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    .line 32
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    .line 33
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRemoteLockFeedbackSts:I

    const/16 v1, 0x64

    .line 34
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mPLGMaxPosition:I

    .line 35
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSSMStatus:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_workingSts:I

    .line 37
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_ChargingSts:I

    .line 38
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgotten:I

    .line 39
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgottenMsg:I

    .line 40
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mBCM_4_KeySts:I

    const/16 v2, 0xa

    .line 41
    iput v2, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mICM_BrightnessLevel:I

    .line 42
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    const/4 v2, 0x0

    .line 43
    iput v2, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    .line 44
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    .line 45
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    .line 46
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mLightDetectedSts:I

    .line 47
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mTrunkSts:I

    .line 48
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSrfSts:I

    .line 49
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFDWindowSts:I

    .line 50
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFPWindowSts:I

    .line 51
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRLWindowSts:I

    .line 52
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRRWindowSts:I

    .line 53
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mScreenOverTemperatureSts:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 54
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    const-string v0, "20210101000000"

    .line 55
    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mIcmTime:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDMSSts:I

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onAutoLockSts(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/caradapter/carapi/client/CarBasicClient;F)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onVehicleSpeed(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onVehicleSpeedValid(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onICMBrightness(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onSSMStatus(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onDayNightModeLight(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onDayNightModeLightByCan(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onLightDetectedSts(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onCWCPhoneForgottenMsg(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mIcmTime:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/chery/caradapter/carapi/client/CarBasicClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mIcmTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/chery/caradapter/carapi/client/CarBasicClient;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onIcmTimeChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onAutoFoldSts(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onTrunkSts(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onSrfSts(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/chery/caradapter/carapi/client/CarBasicClient;II)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onWindowSts(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onScreenOverTemperature(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onCtpKeyVoiceRemind(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onDMSSts(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    return p0
.end method

.method static synthetic access$2602(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    return p1
.end method

.method static synthetic access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    return p0
.end method

.method static synthetic access$2902(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    return p1
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onRemoteLockFeedbackSts(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRemoteLockFeedbackSts:I

    return p0
.end method

.method static synthetic access$3002(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRemoteLockFeedbackSts:I

    return p1
.end method

.method static synthetic access$3100(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mPLGMaxPosition:I

    return p0
.end method

.method static synthetic access$3102(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mPLGMaxPosition:I

    return p1
.end method

.method static synthetic access$3200(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_workingSts:I

    return p0
.end method

.method static synthetic access$3202(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_workingSts:I

    return p1
.end method

.method static synthetic access$3300(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_ChargingSts:I

    return p0
.end method

.method static synthetic access$3302(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_ChargingSts:I

    return p1
.end method

.method static synthetic access$3400(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgotten:I

    return p0
.end method

.method static synthetic access$3402(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgotten:I

    return p1
.end method

.method static synthetic access$3500(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mBCM_4_KeySts:I

    return p0
.end method

.method static synthetic access$3502(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mBCM_4_KeySts:I

    return p1
.end method

.method static synthetic access$3600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    return p0
.end method

.method static synthetic access$3602(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    return p1
.end method

.method static synthetic access$3700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mICM_BrightnessLevel:I

    return p0
.end method

.method static synthetic access$3702(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mICM_BrightnessLevel:I

    return p1
.end method

.method static synthetic access$3800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSSMStatus:I

    return p0
.end method

.method static synthetic access$3802(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSSMStatus:I

    return p1
.end method

.method static synthetic access$3900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    return p0
.end method

.method static synthetic access$3902(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    return p1
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onPLGMaxPosition(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    return p0
.end method

.method static synthetic access$4002(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    return p1
.end method

.method static synthetic access$4100(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mLightDetectedSts:I

    return p0
.end method

.method static synthetic access$4102(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mLightDetectedSts:I

    return p1
.end method

.method static synthetic access$4200(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgottenMsg:I

    return p0
.end method

.method static synthetic access$4202(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgottenMsg:I

    return p1
.end method

.method static synthetic access$4300(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mTrunkSts:I

    return p0
.end method

.method static synthetic access$4302(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mTrunkSts:I

    return p1
.end method

.method static synthetic access$4400(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSrfSts:I

    return p0
.end method

.method static synthetic access$4402(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSrfSts:I

    return p1
.end method

.method static synthetic access$4500(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFDWindowSts:I

    return p0
.end method

.method static synthetic access$4502(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFDWindowSts:I

    return p1
.end method

.method static synthetic access$4600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFPWindowSts:I

    return p0
.end method

.method static synthetic access$4602(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFPWindowSts:I

    return p1
.end method

.method static synthetic access$4700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRLWindowSts:I

    return p0
.end method

.method static synthetic access$4702(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRLWindowSts:I

    return p1
.end method

.method static synthetic access$4800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRRWindowSts:I

    return p0
.end method

.method static synthetic access$4802(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRRWindowSts:I

    return p1
.end method

.method static synthetic access$4900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mScreenOverTemperatureSts:I

    return p0
.end method

.method static synthetic access$4902(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mScreenOverTemperatureSts:I

    return p1
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onCWCWorkingSts(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDMSSts:I

    return p0
.end method

.method static synthetic access$5002(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDMSSts:I

    return p1
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onCWChargingSts(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onCWCPhoneForgottenSts(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->onKeySts(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    return p0
.end method

.method static synthetic access$902(Lcom/chery/caradapter/carapi/client/CarBasicClient;F)F
    .locals 0

    .line 22
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    return p1
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarBasicClient;
    .locals 2

    .line 550
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    if-nez v0, :cond_1

    .line 551
    const-class v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;

    monitor-enter v0

    .line 552
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarBasicClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    if-nez v1, :cond_0

    .line 553
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarBasicClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 555
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 557
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    return-object v0
.end method

.method private onAutoFoldSts(I)V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 293
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onAutoFoldSts(I)V

    :cond_0
    return-void
.end method

.method private onAutoLockSts(I)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 287
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onAutoLockSts(I)V

    :cond_0
    return-void
.end method

.method private onCWCPhoneForgottenMsg(I)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 335
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onCWCPhoneForgottenMsg(I)V

    :cond_0
    return-void
.end method

.method private onCWCPhoneForgottenSts(I)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 329
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onCWCPhoneForgottenSts(I)V

    :cond_0
    return-void
.end method

.method private onCWCWorkingSts(I)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 317
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onCWCWorkingSts(I)V

    :cond_0
    return-void
.end method

.method private onCWChargingSts(I)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 323
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onCWCChargingSts(I)V

    :cond_0
    return-void
.end method

.method private onCtpKeyVoiceRemind(I)V
    .locals 0

    .line 436
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 437
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onCtpKeyVoiceRemind(I)V

    :cond_0
    return-void
.end method

.method private onDMSSts(I)V
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 443
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onDMSSts(I)V

    :cond_0
    return-void
.end method

.method private onDayNightModeLight(I)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 403
    iget p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 407
    invoke-interface {v0, p0}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onDayNightModeLight(I)V

    goto :goto_1

    .line 404
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    invoke-interface {p0, v1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onDayNightModeLight(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onDayNightModeLightByCan(I)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 414
    iget p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 418
    invoke-interface {v0, p0}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onDayNightModeLight(I)V

    goto :goto_1

    .line 415
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    invoke-interface {p0, v1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onDayNightModeLight(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onICMBrightness(I)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 397
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onICMBrightness(I)V

    :cond_0
    return-void
.end method

.method private onIcmTimeChanged(Ljava/lang/String;)V
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 425
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onIcmTimeChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onKeySts(I)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onKeySts(I)V

    :cond_0
    return-void
.end method

.method private onLightDetectedSts(I)V
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 341
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onLightDetectedSts(I)V

    :cond_0
    return-void
.end method

.method private onPLGMaxPosition(I)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 305
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onPLGMaxPosition(I)V

    :cond_0
    return-void
.end method

.method private onRemoteLockFeedbackSts(I)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 299
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onRemoteLockFeedbackSts(I)V

    :cond_0
    return-void
.end method

.method private onSSMStatus(I)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 311
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onSSMStatus(I)V

    :cond_0
    return-void
.end method

.method private onScreenOverTemperature(I)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 431
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onScreenOverTemperature(I)V

    :cond_0
    return-void
.end method

.method private onSrfSts(I)V
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 353
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onSrfSts(I)V

    :cond_0
    return-void
.end method

.method private onTrunkSts(I)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 347
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onTrunkSts(I)V

    :cond_0
    return-void
.end method

.method private onVehicleSpeed(F)V
    .locals 1

    .line 370
    iget v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    if-nez v0, :cond_0

    .line 371
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    .line 372
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 373
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onVehicleSpeed(F)V

    :cond_0
    return-void
.end method

.method private onVehicleSpeedValid(I)V
    .locals 2

    .line 380
    iget v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 385
    :cond_0
    iget p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 386
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    .line 387
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_1

    .line 388
    invoke-interface {p0, v0}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onVehicleSpeed(F)V

    :cond_1
    return-void
.end method

.method private onWindowSts(II)V
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    if-eqz p0, :cond_0

    .line 359
    invoke-interface {p0, p1, p2}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onWindowSts(II)V

    :cond_0
    return-void
.end method

.method private setIntProperty(II)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 732
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAutoFoldSts()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    return p0
.end method

.method public getAutoLockSts()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    return p0
.end method

.method public getCWCChargingSts()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_ChargingSts:I

    return p0
.end method

.method public getCWCPhoneForgottenMsg()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgottenMsg:I

    return p0
.end method

.method public getCWCPhoneForgottenSts()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgotten:I

    return p0
.end method

.method public getCWCWorkingSts()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_workingSts:I

    return p0
.end method

.method public getDMSSts()I
    .locals 0

    .line 282
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDMSSts:I

    return p0
.end method

.method public getDayNightModeLightSts()I
    .locals 2

    .line 179
    iget v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public getICMBrightness()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mICM_BrightnessLevel:I

    return p0
.end method

.method public getIcmTime()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mIcmTime:Ljava/lang/String;

    return-object p0
.end method

.method public getKeySts()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mBCM_4_KeySts:I

    return p0
.end method

.method public getLightDetectedSts()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mLightDetectedSts:I

    return p0
.end method

.method public getPLGMaxPosition()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mPLGMaxPosition:I

    return p0
.end method

.method public getRemoteLockFeedbackSts()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRemoteLockFeedbackSts:I

    return p0
.end method

.method public getSSMStatus()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSSMStatus:I

    return p0
.end method

.method public getScreenOverTemperatureSts()I
    .locals 0

    .line 271
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mScreenOverTemperatureSts:I

    return p0
.end method

.method public getSrfSts()I
    .locals 0

    .line 211
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSrfSts:I

    return p0
.end method

.method public getTrunkSts()I
    .locals 0

    .line 200
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mTrunkSts:I

    return p0
.end method

.method public getVehicleSpeed()F
    .locals 0

    .line 163
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    return p0
.end method

.method public getWindowSts(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 234
    :cond_0
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRRWindowSts:I

    goto :goto_0

    .line 231
    :cond_1
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRLWindowSts:I

    goto :goto_0

    .line 228
    :cond_2
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFPWindowSts:I

    goto :goto_0

    .line 225
    :cond_3
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFDWindowSts:I

    :goto_0
    return p0
.end method

.method public init()V
    .locals 16

    move-object/from16 v0, p0

    .line 562
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->handlerThread:Landroid/os/HandlerThread;

    .line 563
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 564
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarBasicClient;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    .line 566
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21403001

    const/4 v3, 0x0

    .line 567
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    .line 569
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x21403002

    .line 570
    invoke-virtual {v1, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    .line 572
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x21403003

    .line 573
    invoke-virtual {v1, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRemoteLockFeedbackSts:I

    .line 575
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v6, 0x21403005

    .line 576
    invoke-virtual {v1, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mPLGMaxPosition:I

    .line 578
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v7, 0x21403006

    .line 579
    invoke-virtual {v1, v7, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_workingSts:I

    .line 581
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x21403036

    .line 582
    invoke-virtual {v1, v8, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_ChargingSts:I

    .line 584
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v9, 0x21403007

    .line 585
    invoke-virtual {v1, v9, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgotten:I

    .line 586
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140303c

    .line 587
    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgottenMsg:I

    .line 588
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v11, 0x21402000

    .line 589
    invoke-virtual {v1, v11, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mBCM_4_KeySts:I

    .line 590
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v12, 0x21602023

    .line 591
    invoke-virtual {v1, v12, v3}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    .line 592
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v13, 0x21402024

    .line 593
    invoke-virtual {v1, v13, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    .line 594
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v14, 0x2140302c

    .line 595
    invoke-virtual {v1, v14, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mICM_BrightnessLevel:I

    .line 596
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403035

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSSMStatus:I

    .line 597
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140203b

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    .line 598
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140203c

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    .line 599
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140203d

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mLightDetectedSts:I

    .line 600
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21402016

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mTrunkSts:I

    .line 601
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21402018

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSrfSts:I

    .line 602
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21403042    # 6.5116E-19f

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFDWindowSts:I

    .line 603
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21403043

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFPWindowSts:I

    .line 604
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21403044

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRLWindowSts:I

    .line 605
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x21403045

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRRWindowSts:I

    .line 606
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140203e

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mScreenOverTemperatureSts:I

    .line 607
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140306d

    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDMSSts:I

    .line 609
    iget v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    if-nez v1, :cond_0

    .line 610
    iget v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 613
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeed:F

    .line 616
    :goto_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CarBasicClient init: mAutoLockSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mAutoFoldSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mRemoteLockFeedbackSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRemoteLockFeedbackSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mPLGMaxPosition:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mPLGMaxPosition:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mCWC_workingSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_workingSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mCWC_PhoneForgotten:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgotten:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mCWC_ChargingSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_ChargingSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mCWC_PhoneForgottenMsg:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mCWC_PhoneForgottenMsg:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mICM_BrightnessLevel:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mICM_BrightnessLevel:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mVehicleSpeedVSOSig:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ",mVehicleSpeedVSOSigValid:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSigValid:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mSSMStatus:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSSMStatus:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mDayNightModeLight:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLight:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mLightDetectedSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mLightDetectedSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mDayNightModeLightByCan:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDayNightModeLightByCan:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mBCM_4_KeySts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mBCM_4_KeySts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mFDWindowSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFDWindowSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mFPWindowSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mFPWindowSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mRLWindowSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRLWindowSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mRRWindowSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mRRWindowSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mTrunkSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mTrunkSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mSrfSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mSrfSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mScreenOverTemperatureSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mScreenOverTemperatureSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",mDMSSts:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mDMSSts:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v3, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 632
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v4, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 635
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v5, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 638
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v6, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 641
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v7, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 644
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v8, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 647
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v9, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 650
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v11, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 653
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v12, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 656
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v13, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 659
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v14, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 662
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v15, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 665
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x2140203b

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 668
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x2140203c

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 671
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x2140203d

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 674
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x2140303c

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 677
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21103034

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 680
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21402016

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 683
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21402018

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 686
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21403042    # 6.5116E-19f

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 689
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21403043

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 692
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21403044

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 695
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21403045

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 698
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x2140203e

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 701
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v3, 0x21402048

    invoke-virtual {v1, v2, v3, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 704
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;

    const v2, 0x2140306d

    invoke-virtual {v1, v0, v2, v10}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setAutoFoldSts(I)V
    .locals 3

    .line 76
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoFoldSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403002

    .line 77
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setAutoLockSts(I)V
    .locals 3

    .line 65
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoLockSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403001

    .line 66
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setCWCPhoneForgottenSts(I)V
    .locals 3

    .line 142
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCWCPhoneForgottenSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403007

    .line 143
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setCWCWorkingSts(I)V
    .locals 3

    .line 126
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCWCWorkingSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403006

    .line 127
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setDMSSwt(I)V
    .locals 3

    .line 276
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDMSSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140306d

    .line 277
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setICMBrightness(I)V
    .locals 3

    .line 168
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setICMBrightness:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140302c

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setIcmTheme(I)V
    .locals 3

    .line 244
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIcmTheme:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140303b

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setIcmTime(Ljava/lang/String;)V
    .locals 3

    .line 250
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIcmTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Time"

    .line 253
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0, v0}, Landroid/car/hardware/property/CarPropertyManager;->setIPCTime(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setIcmTimeFormat(I)V
    .locals 3

    .line 265
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIcmTimeFormat:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403047

    .line 266
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setIssSwitch(I)V
    .locals 3

    .line 115
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIssSwitch:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403035

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setLanguage(I)V
    .locals 3

    .line 98
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLanguage:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403004

    .line 99
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IBasicListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    return-void
.end method

.method public setPLGMaxPosition(I)V
    .locals 3

    .line 104
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPLGMaxPosition:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403005

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setRemoteLockFeedback(I)V
    .locals 3

    .line 87
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemoteLockFeedback:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403003

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setSrfSts(I)V
    .locals 3

    .line 205
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSrfSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140303e

    .line 206
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setTrunkSts(I)V
    .locals 3

    .line 194
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrunkSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140303d

    .line 195
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method

.method public setWindowSts(I)V
    .locals 3

    .line 216
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140303f

    .line 217
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->setIntProperty(II)V

    return-void
.end method
