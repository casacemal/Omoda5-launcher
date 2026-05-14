.class public Lcom/chery/caradapter/carapi/client/CarDriveClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarDriveClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IDriveManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarDriveClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

.field private mAEBOnOffSts:I

.field private mAssistanceStyleSts:I

.field private mAssociWithDriverModeSts:I

.field private mBSDLCARCTAOnOffSts:I

.field private mDAIOnOffSts:I

.field private mDOWOnOffSts:I

.field private mDriveModeSetSts:I

.field private mDriveModeSts:I

.field private mELKOnOffSts:I

.field private mESPSwitchStatus:I

.field private mFCWOnOffSts:I

.field private mFCWSnvtySts:I

.field private mHDCCtrlSts:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

.field private mIESOnOffSts:I

.field private mLDPOnOffSts:I

.field private mLDWLDPSnvtySts:I

.field private mLDWOnOffSts:I

.field private mOverSpeed:I

.field private mRCTBOnOffSts:I

.field private mRCWOnOffSts:I

.field private mScfSts:I

.field private mSlaSts:I

.field private mTJAICAExitTextInfoSts:I

.field private mTLIOnOffSts:I

.field private mTSIOnOffSts:I

.field private mWarnModSts:I

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 587
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 28
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarDriveClient;Lcom/chery/caradapter/carapi/client/CarDriveClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    .line 34
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    .line 35
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWSnvtySts:I

    .line 36
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTJAICAExitTextInfoSts:I

    const/4 v1, 0x0

    .line 37
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mOverSpeed:I

    .line 38
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    .line 39
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWOnOffSts:I

    const/4 v2, 0x3

    .line 40
    iput v2, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mWarnModSts:I

    const/4 v2, 0x2

    .line 41
    iput v2, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDPOnOffSts:I

    .line 42
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWLDPSnvtySts:I

    .line 43
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

    .line 44
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mESPSwitchStatus:I

    .line 45
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDAIOnOffSts:I

    .line 46
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mIESOnOffSts:I

    .line 47
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssociWithDriverModeSts:I

    .line 48
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssistanceStyleSts:I

    .line 49
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTSIOnOffSts:I

    .line 50
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTLIOnOffSts:I

    .line 51
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCTBOnOffSts:I

    .line 52
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCWOnOffSts:I

    .line 53
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mBSDLCARCTAOnOffSts:I

    .line 54
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDOWOnOffSts:I

    .line 55
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mScfSts:I

    .line 56
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSts:I

    .line 57
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSetSts:I

    .line 58
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mSlaSts:I

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onAEBOnOffSts(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onLDWLDPSnvtySts(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onHDCCtrlSts(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onESPSwitchStatus(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onDAIOnOffSts(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onIESOnOffSts(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onEPSAssociWithDriverModeSts(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onEPSAssistanceStyleSts(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onRCTBOnOffSts(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onRCWOnOffSts(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onBSDLCARCTAOnOffSts(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onFCWOnOffSts(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onDOWOnOffSts(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onSCFSwtSts(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onTLIOnOffSts(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onTSIOnOffSts(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onDriveModeKey(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onDriveModeKeySet(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onSlaSts(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    return p0
.end method

.method static synthetic access$2702(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    return p1
.end method

.method static synthetic access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$2900()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onFCWSnvtySts(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    return p0
.end method

.method static synthetic access$3002(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    return p1
.end method

.method static synthetic access$3100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWSnvtySts:I

    return p0
.end method

.method static synthetic access$3102(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWSnvtySts:I

    return p1
.end method

.method static synthetic access$3200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTJAICAExitTextInfoSts:I

    return p0
.end method

.method static synthetic access$3202(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTJAICAExitTextInfoSts:I

    return p1
.end method

.method static synthetic access$3300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mOverSpeed:I

    return p0
.end method

.method static synthetic access$3302(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mOverSpeed:I

    return p1
.end method

.method static synthetic access$3400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    return p0
.end method

.method static synthetic access$3402(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    return p1
.end method

.method static synthetic access$3500(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWOnOffSts:I

    return p0
.end method

.method static synthetic access$3502(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWOnOffSts:I

    return p1
.end method

.method static synthetic access$3600(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mWarnModSts:I

    return p0
.end method

.method static synthetic access$3602(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mWarnModSts:I

    return p1
.end method

.method static synthetic access$3700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDPOnOffSts:I

    return p0
.end method

.method static synthetic access$3702(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDPOnOffSts:I

    return p1
.end method

.method static synthetic access$3800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWLDPSnvtySts:I

    return p0
.end method

.method static synthetic access$3802(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWLDPSnvtySts:I

    return p1
.end method

.method static synthetic access$3900(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

    return p0
.end method

.method static synthetic access$3902(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

    return p1
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onTJAICAExitTextInfoSts(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mESPSwitchStatus:I

    return p0
.end method

.method static synthetic access$4002(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mESPSwitchStatus:I

    return p1
.end method

.method static synthetic access$4100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDAIOnOffSts:I

    return p0
.end method

.method static synthetic access$4102(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDAIOnOffSts:I

    return p1
.end method

.method static synthetic access$4200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mIESOnOffSts:I

    return p0
.end method

.method static synthetic access$4202(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mIESOnOffSts:I

    return p1
.end method

.method static synthetic access$4300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssociWithDriverModeSts:I

    return p0
.end method

.method static synthetic access$4302(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssociWithDriverModeSts:I

    return p1
.end method

.method static synthetic access$4400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssistanceStyleSts:I

    return p0
.end method

.method static synthetic access$4402(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssistanceStyleSts:I

    return p1
.end method

.method static synthetic access$4500(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCTBOnOffSts:I

    return p0
.end method

.method static synthetic access$4502(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCTBOnOffSts:I

    return p1
.end method

.method static synthetic access$4600(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCWOnOffSts:I

    return p0
.end method

.method static synthetic access$4602(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCWOnOffSts:I

    return p1
.end method

.method static synthetic access$4700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mBSDLCARCTAOnOffSts:I

    return p0
.end method

.method static synthetic access$4702(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mBSDLCARCTAOnOffSts:I

    return p1
.end method

.method static synthetic access$4800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDOWOnOffSts:I

    return p0
.end method

.method static synthetic access$4802(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDOWOnOffSts:I

    return p1
.end method

.method static synthetic access$4900(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mScfSts:I

    return p0
.end method

.method static synthetic access$4902(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mScfSts:I

    return p1
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onOverSpeed(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTSIOnOffSts:I

    return p0
.end method

.method static synthetic access$5002(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTSIOnOffSts:I

    return p1
.end method

.method static synthetic access$5100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTLIOnOffSts:I

    return p0
.end method

.method static synthetic access$5102(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTLIOnOffSts:I

    return p1
.end method

.method static synthetic access$5200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSts:I

    return p0
.end method

.method static synthetic access$5202(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSts:I

    return p1
.end method

.method static synthetic access$5300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSetSts:I

    return p0
.end method

.method static synthetic access$5302(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSetSts:I

    return p1
.end method

.method static synthetic access$5400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mSlaSts:I

    return p0
.end method

.method static synthetic access$5402(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mSlaSts:I

    return p1
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onELKOnOffSts(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onLDWOnOffSts(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onWarnModSts(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->onLDPOnOffSts(I)V

    return-void
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarDriveClient;
    .locals 2

    .line 596
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    if-nez v0, :cond_1

    .line 597
    const-class v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;

    monitor-enter v0

    .line 598
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarDriveClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    if-nez v1, :cond_0

    .line 599
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarDriveClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 601
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 603
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    return-object v0
.end method

.method private onAEBOnOffSts(I)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 339
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onAEBOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onBSDLCARCTAOnOffSts(I)V
    .locals 0

    .line 464
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 465
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onBSDLCARCTAOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onDAIOnOffSts(I)V
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 417
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onDAIOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onDOWOnOffSts(I)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 471
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onDOWOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onDriveModeKey(I)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 477
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onDriveModeKey(I)V

    :cond_0
    return-void
.end method

.method private onDriveModeKeySet(I)V
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 483
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onDriveModeKeySet(I)V

    :cond_0
    return-void
.end method

.method private onELKOnOffSts(I)V
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 375
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onELKOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onEPSAssistanceStyleSts(I)V
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 435
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onEPSAssistanceStyleSts(I)V

    :cond_0
    return-void
.end method

.method private onEPSAssociWithDriverModeSts(I)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 429
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onEPSAssociWithDriverModeSts(I)V

    :cond_0
    return-void
.end method

.method private onESPSwitchStatus(I)V
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 411
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onESPSwitchStatus(I)V

    :cond_0
    return-void
.end method

.method private onFCWOnOffSts(I)V
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 345
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onFCWOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onFCWSnvtySts(I)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 351
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onFCWSnvtySts(I)V

    :cond_0
    return-void
.end method

.method private onHDCCtrlSts(I)V
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 405
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onHDCCtrlSts(I)V

    :cond_0
    return-void
.end method

.method private onIESOnOffSts(I)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 423
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onIESOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onLDPOnOffSts(I)V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 393
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onLDPOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onLDWLDPSnvtySts(I)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 399
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onLDWLDPSnvtySts(I)V

    :cond_0
    return-void
.end method

.method private onLDWOnOffSts(I)V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 381
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onLDWOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onOverSpeed(I)V
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 369
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onOverSpeed(I)V

    :cond_0
    return-void
.end method

.method private onRCTBOnOffSts(I)V
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 453
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onRCTBOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onRCWOnOffSts(I)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 459
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onRCWOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onSCFSwtSts(I)V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 363
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onSCFSwtSts(I)V

    :cond_0
    return-void
.end method

.method private onSlaSts(I)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 489
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onSlaSet(I)V

    :cond_0
    return-void
.end method

.method private onTJAICAExitTextInfoSts(I)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 357
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onTJAICAExitTextInfoSts(I)V

    :cond_0
    return-void
.end method

.method private onTLIOnOffSts(I)V
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 441
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onTLIOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onTSIOnOffSts(I)V
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 447
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onTSIOnOffSts(I)V

    :cond_0
    return-void
.end method

.method private onWarnModSts(I)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    if-eqz p0, :cond_0

    .line 387
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IDriveListener;->onWarnModSts(I)V

    :cond_0
    return-void
.end method

.method private setIntProperty(II)V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 785
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAEBOnOffSts()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    return p0
.end method

.method public getBSDLCARCTAOnOffSts()I
    .locals 0

    .line 306
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mBSDLCARCTAOnOffSts:I

    return p0
.end method

.method public getDAIOnOffSts()I
    .locals 0

    .line 217
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDAIOnOffSts:I

    return p0
.end method

.method public getDOWOnOffSts()I
    .locals 0

    .line 317
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDOWOnOffSts:I

    return p0
.end method

.method public getELKOnOffSts()I
    .locals 0

    .line 140
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    return p0
.end method

.method public getEPSAssistanceStyleSts()I
    .locals 0

    .line 250
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssistanceStyleSts:I

    return p0
.end method

.method public getEPSAssociWithDriverModeSts()I
    .locals 0

    .line 239
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssociWithDriverModeSts:I

    return p0
.end method

.method public getESPSwitchStatus()I
    .locals 0

    .line 206
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mESPSwitchStatus:I

    return p0
.end method

.method public getFCWOnOffSts()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    return p0
.end method

.method public getFCWSnvtySts()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWSnvtySts:I

    return p0
.end method

.method public getHDCCtrlSts()I
    .locals 0

    .line 195
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

    return p0
.end method

.method public getIESOnOffSts()I
    .locals 0

    .line 228
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mIESOnOffSts:I

    return p0
.end method

.method public getLDPOnOffSts()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDPOnOffSts:I

    return p0
.end method

.method public getLDWLDPSnvtySts()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWLDPSnvtySts:I

    return p0
.end method

.method public getLDWOnOffSts()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWOnOffSts:I

    return p0
.end method

.method public getOverSpeed()I
    .locals 0

    .line 129
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mOverSpeed:I

    return p0
.end method

.method public getRCTBOnOffSts()I
    .locals 0

    .line 284
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCTBOnOffSts:I

    return p0
.end method

.method public getRCWOnOffSts()I
    .locals 0

    .line 295
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCWOnOffSts:I

    return p0
.end method

.method public getSCFSwtSts()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mScfSts:I

    return p0
.end method

.method public getSla()I
    .locals 0

    .line 334
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mSlaSts:I

    return p0
.end method

.method public getTJAICAExitTextInfoSts()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTJAICAExitTextInfoSts:I

    return p0
.end method

.method public getTLIOnOffSts()I
    .locals 0

    .line 262
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTLIOnOffSts:I

    return p0
.end method

.method public getTSIOnOffSts()I
    .locals 0

    .line 273
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTSIOnOffSts:I

    return p0
.end method

.method public getWarnModSts()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mWarnModSts:I

    return p0
.end method

.method public init()V
    .locals 16

    move-object/from16 v0, p0

    .line 608
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->handlerThread:Landroid/os/HandlerThread;

    .line 609
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 610
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarDriveClient;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    .line 612
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v2, 0x21403008

    const/4 v3, 0x0

    .line 613
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    .line 614
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x21403009

    .line 615
    invoke-virtual {v1, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    .line 616
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x2140300a

    .line 617
    invoke-virtual {v1, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWSnvtySts:I

    .line 619
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v6, 0x2140300b

    .line 620
    invoke-virtual {v1, v6, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTJAICAExitTextInfoSts:I

    .line 621
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v7, 0x2140300c

    .line 622
    invoke-virtual {v1, v7, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mOverSpeed:I

    .line 624
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v8, 0x2140300d

    .line 625
    invoke-virtual {v1, v8, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    .line 626
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v9, 0x2140300e

    .line 627
    invoke-virtual {v1, v9, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWOnOffSts:I

    .line 628
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v10, 0x2140300f

    .line 629
    invoke-virtual {v1, v10, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mWarnModSts:I

    .line 631
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v11, 0x21403010

    .line 632
    invoke-virtual {v1, v11, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDPOnOffSts:I

    .line 633
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v12, 0x21403011

    .line 634
    invoke-virtual {v1, v12, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWLDPSnvtySts:I

    .line 636
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v13, 0x21403012

    .line 637
    invoke-virtual {v1, v13, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

    .line 638
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v14, 0x21403013

    .line 639
    invoke-virtual {v1, v14, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mESPSwitchStatus:I

    .line 641
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403014

    .line 642
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDAIOnOffSts:I

    .line 643
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403015

    .line 644
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mIESOnOffSts:I

    .line 645
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403016

    .line 646
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssociWithDriverModeSts:I

    .line 648
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403017

    .line 649
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssistanceStyleSts:I

    .line 651
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403018

    .line 652
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCTBOnOffSts:I

    .line 654
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403019

    .line 655
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCWOnOffSts:I

    .line 656
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x2140301a

    .line 657
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mBSDLCARCTAOnOffSts:I

    .line 659
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x2140301b

    .line 660
    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDOWOnOffSts:I

    .line 662
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403037

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mScfSts:I

    .line 663
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403038

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTSIOnOffSts:I

    .line 664
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403039

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTLIOnOffSts:I

    .line 665
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403041

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSts:I

    .line 666
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403049

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSetSts:I

    .line 667
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v15, 0x21403055

    invoke-virtual {v1, v15, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v1

    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mSlaSts:I

    .line 669
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CarDriveClient init: mAEBOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mFCWOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mFCWSnvtySts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWSnvtySts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mTJAICAExitTextInfoSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTJAICAExitTextInfoSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mOverSpeed:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mOverSpeed:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mELKOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mLDPOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDPOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mELKOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mELKOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mLDWOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mLDWLDPSnvtySts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mLDWLDPSnvtySts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mHDCCtrlSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mESPSwitchStatus:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mESPSwitchStatus:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mDAIOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDAIOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mIESOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mIESOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mAssociWithDriverModeSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssociWithDriverModeSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mAssistanceStyleSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAssistanceStyleSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mRCTBOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mRCWOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mBSDLCARCTAOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mBSDLCARCTAOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mTSIOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTSIOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mTLIOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mTLIOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mDOWOnOffSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDOWOnOffSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mScfSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mScfSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mDriveModeSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mDriveModeSetSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mDriveModeSetSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",mSlaSts:"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mSlaSts:I

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v3, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 685
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v4, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 688
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v5, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 691
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v6, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 694
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v7, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 697
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v8, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 700
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v9, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 703
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v10, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 706
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v11, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 709
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v12, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 712
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v13, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 715
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    invoke-virtual {v1, v2, v14, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 719
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403014

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 722
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403015

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 725
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403016

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 728
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403017

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 731
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403018

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 734
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403019

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 737
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x2140301a

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 740
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x2140301b

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 743
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403037

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 746
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403038

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 749
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403039

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 752
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403041

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 755
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v3, 0x21403049

    invoke-virtual {v1, v2, v3, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 758
    iget-object v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v0, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;

    const v2, 0x21403055

    invoke-virtual {v1, v0, v2, v15}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAEBSwt(I)V
    .locals 3

    .line 67
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAEBSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403008

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setBSDSwitchSts(I)V
    .locals 3

    .line 300
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBSDSwitchSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140301a

    .line 301
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setDAISwt(I)V
    .locals 3

    .line 211
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDAISwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403014

    .line 212
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setDOW(I)V
    .locals 3

    .line 311
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDOW:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140301b

    .line 312
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setDriveMode(I)V
    .locals 3

    .line 322
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDriveMode:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140303a

    .line 323
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setELKSwt(I)V
    .locals 3

    .line 134
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setELKSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140300d

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setEPSAssistanceStyle(I)V
    .locals 3

    .line 244
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPSAssistanceStyle:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403017

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setEPSAssociWithDriverMode(I)V
    .locals 3

    .line 233
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEPSAssociWithDriverMode:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403016

    .line 234
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setESPFunctionSts(I)V
    .locals 3

    .line 200
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setESPFunctionSts:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403013

    .line 201
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setFCWSnvty(I)V
    .locals 3

    .line 89
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFCWSnvty:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140300a

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setFCWSwt(I)V
    .locals 3

    .line 78
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFCWSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403009

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setHDCOnOff(I)V
    .locals 3

    .line 189
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHDCOnOff:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403012

    .line 190
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setIESSwtSet(I)V
    .locals 3

    .line 222
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIESSwtSet:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403015

    .line 223
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setLDPSwt(I)V
    .locals 3

    .line 167
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLDPSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403010

    .line 168
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setLDWLDPSnvty(I)V
    .locals 3

    .line 178
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLDWLDPSnvty:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403011

    .line 179
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setLDWSwt(I)V
    .locals 3

    .line 145
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLDWSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140300e

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IDriveListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IDriveListener;

    return-void
.end method

.method public setOverSpeed(I)V
    .locals 3

    .line 123
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverSpeed:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140300c

    .line 124
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setRCTBSwt(I)V
    .locals 3

    .line 278
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRCTBSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403018

    .line 279
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setRCW(I)V
    .locals 3

    .line 289
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRCW:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403019

    .line 290
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setSCFSwt(I)V
    .locals 3

    .line 112
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSCFSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403037

    .line 113
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setSla(I)V
    .locals 3

    .line 328
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSla:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403055

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setTJAICAExitTextInfoSwt(I)V
    .locals 3

    .line 101
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTJAICAExitTextInfoSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140300b

    .line 102
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setTLISwt(I)V
    .locals 3

    .line 256
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTLISwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403039

    .line 257
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setTSISwt(I)V
    .locals 3

    .line 267
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTSISwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x21403038

    .line 268
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method

.method public setWarnModSwt(I)V
    .locals 3

    .line 156
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWarnModSwt:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2140300f

    .line 157
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->setIntProperty(II)V

    return-void
.end method
