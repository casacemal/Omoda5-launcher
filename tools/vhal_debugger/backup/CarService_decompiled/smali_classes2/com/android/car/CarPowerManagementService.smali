.class public Lcom/android/car/CarPowerManagementService;
.super Landroid/car/hardware/power/ICarPower$Stub;
.source "CarPowerManagementService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/PowerHalService$PowerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarPowerManagementService$CpmsState;,
        Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;,
        Lcom/android/car/CarPowerManagementService$PowerHandler;,
        Lcom/android/car/CarPowerManagementService$MyBroadcastReceiver;,
        Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEART_BEAT_TIME:J = 0xbb8L

.field private static final MCUAppMode:I = 0x2

.field private static final MCUBootMode:I = 0x1

.field private static final MIN_MAX_GARAGE_MODE_DURATION_MS:I = 0xdbba0

.field private static final PROP_MAX_GARAGE_MODE_DURATION_OVERRIDE:Ljava/lang/String; = "android.car.garagemodeduration"

.field private static final PWR_MODE_ABNORMAL:I = 0x5

.field private static final PWR_MODE_NONE:I = 0x0

.field private static final PWR_MODE_OFF:I = 0x1

.field private static final PWR_MODE_OFF_USER:I = 0x7

.field private static final PWR_MODE_PARTIALRUN:I = 0x8

.field private static final PWR_MODE_PROTECTION:I = 0xa

.field private static final PWR_MODE_RUN:I = 0x3

.field private static final PWR_MODE_SLEEP:I = 0x4

.field private static final PWR_MODE_STANDBY:I = 0x2

.field private static final PWR_MODE_TEMPRUN_ENDING:I = 0x13

.field private static final PWR_MODE_TEMP_ON:I = 0x6

.field private static final PWR_REQ_SYSTEM_OFF:I = 0x14

.field private static final PWR_SCREEN_OFF:I = 0x16

.field private static final PWR_SCREEN_ON:I = 0x15

.field private static final SHUTDOWN_EXTEND_MAX_MS:I = 0x1388

.field private static final SHUTDOWN_POLLING_INTERVAL_MS:I = 0x7d0

.field private static backlight_on:Z

.field private static sShutdownPrepareTimeMs:I


# instance fields
.field private final FactoryResetRequest:Ljava/lang/String;

.field private SUPPORT_YF_POWER_MODULE:Z

.field attributes:Landroid/media/AudioAttributes;

.field focusRequest:Landroid/media/AudioFocusRequest;

.field heartBeatRunnable:Ljava/lang/Runnable;

.field isStandby:Z

.field listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBootReason:I

.field private final mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mHal:Lcom/android/car/hal/PowerHalService;

.field private mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mInSimulatedDeepSleepMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSimulationSleepObject"
        }
    .end annotation
.end field

.field private mIsBooting:Z

.field private mLastSleepEntryTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mListenersWeAreWaitingFor:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mMCUVersion:Ljava/lang/String;

.field private mMCUVersionForApp:Ljava/lang/String;

.field private mNextWakeupSec:I

.field private final mPendingPowerStates:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/CarPowerManagementService$CpmsState;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/os/PowerManager;

.field private final mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

.field private final mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

.field private mProcessingStartTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mShutdownOnFinish:Z

.field private final mSimulationSleepObject:Ljava/lang/Object;

.field private final mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

.field private mTempRunTime:I

.field private mTimer:Ljava/util/Timer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mTimerActive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mVoltageInfo:F

.field private mWakeFromSimulatedSleep:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSimulationSleepObject"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    .line 150
    const v0, 0xdbba0

    sput v0, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    invoke-direct {p0}, Landroid/car/hardware/power/ICarPower$Stub;-><init>()V

    .line 78
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/car/CarPowerManagementService;->mTempRunTime:I

    .line 84
    const/4 v0, 0x1

    const-string v1, "ro.feature.yfpower.module"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->SUPPORT_YF_POWER_MODULE:Z

    .line 85
    const-string v1, "com.yfve.factory.reset.mcu"

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->FactoryResetRequest:Ljava/lang/String;

    .line 109
    new-instance v1, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 111
    new-instance v1, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-direct {v1, p0, v2}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    .line 114
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mInSimulatedDeepSleepMode:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mWakeFromSimulatedSleep:Z

    .line 136
    iput v1, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    .line 137
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsBooting:Z

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarPowerManagementService;->mVoltageInfo:F

    .line 606
    new-instance v0, Lcom/android/car/CarPowerManagementService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarPowerManagementService$2;-><init>(Lcom/android/car/CarPowerManagementService;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->heartBeatRunnable:Ljava/lang/Runnable;

    .line 211
    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    .line 212
    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    .line 213
    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 214
    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 215
    new-instance v0, Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;-><init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 216
    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/PowerHalService;Lcom/android/car/systeminterface/SystemInterface;Landroid/car/userlib/CarUserManagerHelper;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerHal"    # Lcom/android/car/hal/PowerHalService;
    .param p3, "systemInterface"    # Lcom/android/car/systeminterface/SystemInterface;
    .param p4, "carUserManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;

    .line 170
    invoke-direct {p0}, Landroid/car/hardware/power/ICarPower$Stub;-><init>()V

    .line 78
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/car/CarPowerManagementService;->mTempRunTime:I

    .line 84
    const/4 v0, 0x1

    const-string v1, "ro.feature.yfpower.module"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->SUPPORT_YF_POWER_MODULE:Z

    .line 85
    const-string v1, "com.yfve.factory.reset.mcu"

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->FactoryResetRequest:Ljava/lang/String;

    .line 109
    new-instance v1, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 111
    new-instance v1, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-direct {v1, p0, v2}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    .line 114
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    .line 124
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mInSimulatedDeepSleepMode:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mWakeFromSimulatedSleep:Z

    .line 136
    iput v1, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    .line 137
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsBooting:Z

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/CarPowerManagementService;->mVoltageInfo:F

    .line 606
    new-instance v1, Lcom/android/car/CarPowerManagementService$2;

    invoke-direct {v1, p0}, Lcom/android/car/CarPowerManagementService$2;-><init>(Lcom/android/car/CarPowerManagementService;)V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->heartBeatRunnable:Ljava/lang/Runnable;

    .line 171
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    .line 173
    iput-object p3, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 174
    iput-object p4, p0, Lcom/android/car/CarPowerManagementService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 175
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    .line 177
    sget v1, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    const v2, 0xdbba0

    if-ge v1, v2, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxGarageModeRunningDurationInSecs smaller than minimum required, resource:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(ms) while should exceed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(ms), Ignore resource."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CAR.POWER"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sput v2, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPm:Landroid/os/PowerManager;

    .line 186
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mAudioManager:Landroid/media/AudioManager;

    .line 187
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 188
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->attributes:Landroid/media/AudioAttributes;

    .line 190
    new-instance v1, Lcom/android/car/CarPowerManagementService$1;

    invoke-direct {v1, p0}, Lcom/android/car/CarPowerManagementService$1;-><init>(Lcom/android/car/CarPowerManagementService;)V

    iput-object v1, p0, Lcom/android/car/CarPowerManagementService;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 198
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->attributes:Landroid/media/AudioAttributes;

    .line 199
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->listener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->focusRequest:Landroid/media/AudioFocusRequest;

    .line 203
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarPowerManagementService;Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doUnregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandlePowerStateChange()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/car/CarPowerManagementService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doHandleDisplayBrightnessChange(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/car/CarPowerManagementService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # Z

    .line 67
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doHandleMainDisplayStateChange(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleProcessingComplete()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doRestartNow()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleReEnterTempRun()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/car/CarPowerManagementService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doHandleSetTempRunTime(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleCheckStandbyMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleMCUFactoryReset()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandleVoltageInfoRes()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/car/CarPowerManagementService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mTimerActive:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/hal/PowerHalService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPowerManagementService;

    .line 67
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    return-object v0
.end method

.method private doDisableHardKey(Z)V
    .locals 2
    .param p1, "disable"    # Z

    .line 532
    monitor-enter p0

    .line 534
    if-eqz p1, :cond_0

    .line 535
    :try_start_0
    const-string v0, "persist.sys.disable_hardkey"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :cond_0
    const-string v0, "persist.sys.disable_hardkey"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :goto_0
    goto :goto_1

    .line 542
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    .line 543
    return-void

    .line 542
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doEnterStandbyMode(Z)V
    .locals 2
    .param p1, "standby"    # Z

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doEnterStandbyMode standby="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    monitor-enter p0

    .line 553
    :try_start_0
    iput-boolean p1, p0, Lcom/android/car/CarPowerManagementService;->isStandby:Z

    .line 554
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 555
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->requestAudioFocus(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 557
    invoke-virtual {p0, v1}, Lcom/android/car/CarPowerManagementService;->setBackLightEnable(Z)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/car/CarPowerManagementService;->requestAudioFocus(Z)V

    .line 561
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v1, v1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-direct {p0, v1}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 562
    invoke-virtual {p0, v0}, Lcom/android/car/CarPowerManagementService;->setBackLightEnable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :goto_0
    goto :goto_1

    .line 568
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    .line 569
    return-void

    .line 568
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doHandleCheckStandbyMode()V
    .locals 2

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doHandleCheckStandbyMode isStandby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->isStandby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->isStandby:Z

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->requestAudioFocus(Z)V

    .line 648
    return-void
.end method

.method private doHandleDeepSleep(Z)V
    .locals 4
    .param p1, "simulatedMode"    # Z

    .line 1100
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->switchToPartialWakeLock()V

    .line 1102
    monitor-enter p0

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1104
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1105
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$600(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 1106
    monitor-enter p0

    .line 1107
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    .line 1108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->simulateSleepByLooping()V

    .line 1112
    const/16 v1, 0x8

    .local v1, "nextListenerState":I
    goto :goto_0

    .line 1114
    .end local v1    # "nextListenerState":I
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface;->enterDeepSleep()Z

    move-result v1

    .line 1115
    .local v1, "sleepSucceeded":Z
    if-nez v1, :cond_1

    .line 1117
    const-string v2, "CAR.POWER"

    const-string v3, "Sleep did not succeed. Now attempting to shut down."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->shutdown()V

    .line 1120
    :cond_1
    const/4 v1, 0x3

    .line 1123
    .local v1, "nextListenerState":I
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    .line 1124
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v3}, Lcom/android/car/systeminterface/SystemInterface;->refreshDisplayBrightness()V

    .line 1125
    invoke-direct {p0, v2, v1}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(II)V

    .line 1126
    return-void

    .line 1108
    .end local v1    # "nextListenerState":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1104
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private doHandleDisplayBrightnessChange(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 1199
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0, p1}, Lcom/android/car/systeminterface/SystemInterface;->setDisplayBrightness(I)V

    .line 1200
    return-void
.end method

.method private doHandleMCUFactoryReset()V
    .locals 2

    .line 689
    const-string v0, "CAR.POWER"

    const-string v1, "doHandleMCUFactoryReset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PowerHalService;->sendFactoryResetToMCU(Z)V

    .line 691
    return-void
.end method

.method private doHandleMainDisplayStateChange(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented:  doHandleMainDisplayStateChange() - on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return-void
.end method

.method private doHandlePowerStateChange()V
    .locals 4

    .line 423
    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 425
    .local v0, "state":Lcom/android/car/CarPowerManagementService$CpmsState;
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 426
    if-nez v0, :cond_0

    .line 427
    monitor-exit p0

    return-void

    .line 429
    :cond_0
    const-string v1, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doHandlePowerStateChange-- newState yfpowermode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/car/CarPowerManagementService$CpmsState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->needPowerStateChangeLocked(Lcom/android/car/CarPowerManagementService$CpmsState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 431
    const-string v1, "CAR.POWER"

    const-string v2, "doHandlePowerStateChange no need to change"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit p0

    return-void

    .line 435
    :cond_1
    const-string v1, "CAR.POWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needPowerStateChangeLocked status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->needPowerStateChangeLocked(Lcom/android/car/CarPowerManagementService$CpmsState;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 437
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 438
    .local v1, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$600(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 441
    iget-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->SUPPORT_YF_POWER_MODULE:Z

    if-eqz v2, :cond_2

    .line 442
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->setCurrentState(Lcom/android/car/CarPowerManagementService$CpmsState;)V

    .line 443
    iget v2, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    invoke-direct {p0, v2}, Lcom/android/car/CarPowerManagementService;->processYFPowerEvent(I)V

    .line 444
    return-void

    .line 449
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/car/CarPowerManagementService$CpmsState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.POWER"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v2, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    invoke-static {v2}, Lcom/android/car/CarStatsLog;->logPowerState(I)V

    .line 451
    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 452
    iget v2, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 463
    :cond_3
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->simulateShutdownPrepare()V

    .line 464
    goto :goto_0

    .line 470
    :cond_4
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->handleFinish()V

    .line 471
    goto :goto_0

    .line 466
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->handleWaitForFinish(Lcom/android/car/CarPowerManagementService$CpmsState;)V

    .line 467
    goto :goto_0

    .line 460
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->handleShutdownPrepare(Lcom/android/car/CarPowerManagementService$CpmsState;)V

    .line 461
    goto :goto_0

    .line 457
    :cond_7
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->handleOn()V

    .line 458
    goto :goto_0

    .line 454
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->handleWaitForVhal(Lcom/android/car/CarPowerManagementService$CpmsState;)V

    .line 455
    nop

    .line 477
    :goto_0
    return-void

    .line 438
    .end local v0    # "state":Lcom/android/car/CarPowerManagementService$CpmsState;
    .end local v1    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doHandlePreprocessing()V
    .locals 9

    .line 964
    sget v0, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    div-int/lit16 v0, v0, 0x7d0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 965
    .local v0, "pollingCount":I
    sget-boolean v2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    if-eqz v2, :cond_1

    .line 966
    :cond_0
    const/4 v2, -0x1

    .line 967
    const-string v3, "android.car.garagemodeduration"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 968
    .local v2, "shutdownPrepareTimeOverrideInSecs":I
    if-ltz v2, :cond_1

    .line 969
    mul-int/lit16 v3, v2, 0x3e8

    div-int/lit16 v3, v3, 0x7d0

    add-int/lit8 v0, v3, 0x1

    .line 972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garage mode duration overridden secs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.POWER"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local v2    # "shutdownPrepareTimeOverrideInSecs":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing before shutdown expected for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms, adding polling:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.POWER"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    monitor-enter p0

    .line 980
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    .line 981
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 982
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    .line 983
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mTimerActive:Z

    .line 984
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    new-instance v4, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v0, v1}, Lcom/android/car/CarPowerManagementService$ShutdownProcessingTimerTask;-><init>(Lcom/android/car/CarPowerManagementService;ILcom/android/car/CarPowerManagementService$1;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x7d0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 988
    monitor-exit p0

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doHandleProcessingComplete()V
    .locals 4

    .line 1173
    monitor-enter p0

    .line 1174
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 1175
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    iget-wide v2, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1177
    const-string v0, "CAR.POWER"

    const-string v1, "Duplicate sleep entry request, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    monitor-exit p0

    return-void

    .line 1180
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 1183
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(II)V

    goto :goto_0

    .line 1185
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(II)V

    .line 1187
    :goto_0
    return-void

    .line 1180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doHandleReEnterTempRun()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendReEnterTempRun()V

    .line 627
    return-void
.end method

.method private doHandleSetTempRunTime(I)V
    .locals 2
    .param p1, "tempTime"    # I

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doHandleSetTempRunTime tempTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 636
    return-void

    .line 638
    :cond_0
    iput p1, p0, Lcom/android/car/CarPowerManagementService;->mTempRunTime:I

    .line 639
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PowerHalService;->setTempRunTime(I)V

    .line 640
    return-void
.end method

.method private doHandleVoltageInfoRes()V
    .locals 2

    .line 694
    const-string v0, "CAR.POWER"

    const-string v1, "doHandleVoltageInfoRes"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendVoltageInfoQuery()V

    .line 696
    return-void
.end method

.method private doRestartNow()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendRestartNow()V

    .line 620
    return-void
.end method

.method private doUnregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1257
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1258
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 1259
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 1261
    invoke-interface {p1}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/CarPowerManagementService;->finishedImpl(Landroid/os/IBinder;)V

    .line 1263
    :cond_0
    return-void
.end method

.method private finishedImpl(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1298
    const/4 v0, 0x0

    .line 1299
    .local v0, "allAreComplete":Z
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    monitor-enter v1

    .line 1300
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1301
    .local v2, "oneWasRemoved":Z
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 1302
    .end local v2    # "oneWasRemoved":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    if-eqz v0, :cond_1

    .line 1304
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->signalComplete()V

    .line 1306
    :cond_1
    return-void

    .line 1302
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private handleFinish()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mInSimulatedDeepSleepMode:Z

    .line 942
    .local v1, "simulatedMode":Z
    iget-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 943
    .local v2, "mustShutDown":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    if-eqz v2, :cond_1

    .line 946
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->shutdown()V

    goto :goto_1

    .line 948
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/car/CarPowerManagementService;->doHandleDeepSleep(Z)V

    .line 950
    :goto_1
    return-void

    .line 943
    .end local v1    # "simulatedMode":Z
    .end local v2    # "mustShutDown":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleOn()V
    .locals 3

    .line 877
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsBooting:Z

    if-eqz v0, :cond_0

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsBooting:Z

    goto :goto_0

    .line 880
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getInitialUser()I

    move-result v0

    .line 881
    .local v0, "targetUserId":I
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 882
    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desired user changed, switching to user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1, v0}, Landroid/car/userlib/CarUserManagerHelper;->switchToUserId(I)Z

    .line 887
    .end local v0    # "targetUserId":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->setDisplayState(Z)V

    .line 888
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 889
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendOn()V

    .line 890
    return-void
.end method

.method private handleShutdownPrepare(Lcom/android/car/CarPowerManagementService$CpmsState;)V
    .locals 3
    .param p1, "newState"    # Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 893
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->setDisplayState(Z)V

    .line 895
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v2}, Lcom/android/car/hal/PowerHalService;->isDeepSleepAllowed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    .line 896
    invoke-virtual {v2}, Lcom/android/car/systeminterface/SystemInterface;->isSystemSupportingDeepSleep()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanSleep:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    .line 898
    iget-boolean v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    if-eqz v0, :cond_2

    .line 899
    const-string v0, "CAR.POWER"

    const-string v1, "starting shutdown prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 901
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendShutdownPrepare()V

    .line 902
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandlePreprocessing()V

    goto :goto_2

    .line 904
    :cond_2
    const-string v0, "CAR.POWER"

    const-string v2, "starting shutdown immediately"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    monitor-enter p0

    .line 906
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 907
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PowerHalService;->sendShutdownStart(I)V

    .line 912
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->shutdown()V

    .line 914
    :goto_2
    return-void

    .line 907
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleWaitForFinish(Lcom/android/car/CarPowerManagementService$CpmsState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 926
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 927
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    iget v1, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PowerHalService;->sendShutdownStart(I)V

    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    iget v1, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PowerHalService;->sendSleepEntry(I)V

    .line 930
    nop

    .line 935
    :goto_0
    return-void
.end method

.method private handleWaitForVhal(Lcom/android/car/CarPowerManagementService$CpmsState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 859
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    .line 860
    .local v0, "carPowerStateListenerState":I
    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 862
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/PowerHalService;->sendShutdownCancel()V

    .line 868
    goto :goto_0

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/PowerHalService;->sendSleepExit()V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/PowerHalService;->sendWaitForVhal()V

    .line 865
    nop

    .line 873
    :goto_0
    return-void
.end method

.method private initBroadcastReceiver()V
    .locals 3

    .line 702
    new-instance v0, Lcom/android/car/CarPowerManagementService$MyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/car/CarPowerManagementService$MyBroadcastReceiver;-><init>(Lcom/android/car/CarPowerManagementService;)V

    .line 703
    .local v0, "mMyBroadcastReceiver":Lcom/android/car/CarPowerManagementService$MyBroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.yfve.factory.reset.mcu"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 704
    .local v1, "mIntentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 705
    return-void
.end method

.method private needPowerStateChangeLocked(Lcom/android/car/CarPowerManagementService$CpmsState;)Z
    .locals 6
    .param p1, "newState"    # Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 1129
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->SUPPORT_YF_POWER_MODULE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1130
    monitor-enter p0

    .line 1131
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$CpmsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    .line 1132
    monitor-exit p0

    return v1

    .line 1134
    :cond_0
    monitor-exit p0

    return v2

    .line 1135
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1137
    :cond_1
    if-nez p1, :cond_2

    .line 1138
    return v1

    .line 1139
    :cond_2
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    if-nez v0, :cond_3

    .line 1140
    return v2

    .line 1141
    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$CpmsState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1142
    return v1

    .line 1146
    :cond_4
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    const/4 v3, 0x2

    if-eqz v0, :cond_11

    const/4 v4, 0x5

    if-eq v0, v2, :cond_e

    const/4 v5, 0x3

    if-eq v0, v3, :cond_a

    const/4 v3, 0x4

    if-eq v0, v5, :cond_8

    if-eq v0, v3, :cond_6

    if-eq v0, v4, :cond_5

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled state transition:  currentState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 1166
    invoke-virtual {v2}, Lcom/android/car/CarPowerManagementService$CpmsState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/CarPowerManagementService$CpmsState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    const-string v2, "CAR.POWER"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return v1

    .line 1161
    :cond_5
    return v2

    .line 1151
    :cond_6
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-nez v0, :cond_7

    move v1, v2

    :cond_7
    return v1

    .line 1163
    :cond_8
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-ne v0, v3, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 1157
    :cond_a
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-ne v0, v3, :cond_b

    iget-boolean v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mCanPostpone:Z

    if-eqz v0, :cond_c

    :cond_b
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-eq v0, v5, :cond_c

    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-nez v0, :cond_d

    :cond_c
    move v1, v2

    :cond_d
    return v1

    .line 1153
    :cond_e
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-eq v0, v3, :cond_f

    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-ne v0, v4, :cond_10

    :cond_f
    move v1, v2

    :cond_10
    return v1

    .line 1148
    :cond_11
    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-eq v0, v2, :cond_12

    iget v0, p1, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    if-ne v0, v3, :cond_13

    :cond_12
    move v1, v2

    :cond_13
    return v1
.end method

.method private notifyListeners(Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;I)V
    .locals 6
    .param p1, "listenerList"    # Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;
    .param p2, "newState"    # I

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyListeners: newState:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/car/CarPowerManagementService;->toManagerStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->beginBroadcast()I

    move-result v0

    .line 1030
    .local v0, "idx":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .end local v0    # "idx":I
    .local v2, "idx":I
    if-lez v0, :cond_0

    .line 1031
    invoke-virtual {p1, v2}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1033
    .local v0, "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CPMS call back power status to app,new state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/car/CarPowerManagementService;->toManagerStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-interface {v0, p2}, Landroid/car/hardware/power/ICarPowerStateListener;->onStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    goto :goto_1

    .line 1035
    :catch_0
    move-exception v3

    .line 1037
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStateChanged() call failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    .end local v0    # "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    move v0, v2

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->finishBroadcast()V

    .line 1041
    return-void
.end method

.method private onApPowerStateChange(II)V
    .locals 2
    .param p1, "apState"    # I
    .param p2, "carPowerStateListenerState"    # I

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpms onApPowerStateChange apState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  carPowerStateListenerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Lcom/android/car/CarPowerManagementService$CpmsState;

    invoke-direct {v0, p1, p2}, Lcom/android/car/CarPowerManagementService$CpmsState;-><init>(II)V

    .line 413
    .local v0, "newState":Lcom/android/car/CarPowerManagementService$CpmsState;
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 415
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 416
    .local v1, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$400(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 418
    return-void

    .line 416
    .end local v1    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processYFPowerEvent(I)V
    .locals 4
    .param p1, "mode"    # I

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yfpower mode change to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ;CPMS has processed yfpower logic inside"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    goto :goto_0

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 502
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->sendShutDownBroadcast()V

    .line 504
    goto :goto_0

    .line 506
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/car/CarPowerManagementService;->requestAudioFocus(Z)V

    .line 507
    invoke-direct {p0, v2}, Lcom/android/car/CarPowerManagementService;->doDisableHardKey(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PWR_MODE_PROTECTION: backlight_on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    sget-boolean v0, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    if-nez v0, :cond_4

    .line 511
    invoke-virtual {p0, v2}, Lcom/android/car/CarPowerManagementService;->setBackLightEnable(Z)V

    goto :goto_0

    .line 496
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/car/CarPowerManagementService;->doEnterStandbyMode(Z)V

    .line 497
    invoke-direct {p0, v3}, Lcom/android/car/CarPowerManagementService;->doDisableHardKey(Z)V

    .line 499
    goto :goto_0

    .line 490
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/car/CarPowerManagementService;->doEnterStandbyMode(Z)V

    .line 491
    invoke-direct {p0, v2}, Lcom/android/car/CarPowerManagementService;->doDisableHardKey(Z)V

    .line 493
    nop

    .line 519
    :cond_4
    :goto_0
    return-void
.end method

.method private releaseTimerLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 954
    monitor-enter p0

    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 958
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mTimer:Ljava/util/Timer;

    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mTimerActive:Z

    .line 960
    monitor-exit p0

    .line 961
    return-void

    .line 960
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private requestAudioFocus(Z)V
    .locals 2
    .param p1, "request"    # Z

    .line 596
    if-eqz p1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->focusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->focusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 601
    :goto_0
    return-void
.end method

.method private sendPowerManagerEvent(I)V
    .locals 8
    .param p1, "newState"    # I

    .line 993
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-direct {p0, v0, p1}, Lcom/android/car/CarPowerManagementService;->notifyListeners(Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;I)V

    .line 996
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1002
    .local v0, "allowCompletion":Z
    :goto_0
    const/4 v1, 0x0

    .line 1003
    .local v1, "haveSomeCompleters":Z
    new-instance v2, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;-><init>(Lcom/android/car/CarPowerManagementService;Lcom/android/car/CarPowerManagementService$1;)V

    .line 1004
    .local v2, "completingListeners":Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;
    iget-object v3, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    monitor-enter v3

    .line 1005
    :try_start_0
    iget-object v4, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1006
    iget-object v4, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v4}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->beginBroadcast()I

    move-result v4

    .line 1007
    .local v4, "idx":I
    :goto_1
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "idx":I
    .local v5, "idx":I
    if-lez v4, :cond_2

    .line 1008
    iget-object v4, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    .line 1009
    invoke-virtual {v4, v5}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1010
    .local v4, "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    invoke-virtual {v2, v4}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1011
    if-eqz v0, :cond_1

    .line 1012
    iget-object v6, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    invoke-interface {v4}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1013
    const/4 v1, 0x1

    .line 1015
    .end local v4    # "listener":Landroid/car/hardware/power/ICarPowerStateListener;
    :cond_1
    move v4, v5

    goto :goto_1

    .line 1016
    :cond_2
    iget-object v4, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v4}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->finishBroadcast()V

    .line 1017
    .end local v5    # "idx":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    invoke-direct {p0, v2, p1}, Lcom/android/car/CarPowerManagementService;->notifyListeners(Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;I)V

    .line 1021
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 1023
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->signalComplete()V

    .line 1025
    :cond_3
    return-void

    .line 1017
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private sendShutDownBroadcast()V
    .locals 11

    .line 525
    const-string v0, "CAR.POWER"

    const-string v1, "sending shutdown broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 528
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 529
    return-void
.end method

.method private declared-synchronized setCurrentState(Lcom/android/car/CarPowerManagementService$CpmsState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/car/CarPowerManagementService$CpmsState;

    monitor-enter p0

    .line 654
    :try_start_0
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    monitor-exit p0

    return-void

    .line 653
    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    .end local p1    # "state":Lcom/android/car/CarPowerManagementService$CpmsState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected static setShutdownPrepareTimeout(I)V
    .locals 1
    .param p0, "timeoutMs"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 222
    const/16 v0, 0x1388

    if-ge p0, v0, :cond_0

    .line 223
    sput v0, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    goto :goto_0

    .line 225
    :cond_0
    sput p0, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    .line 227
    :goto_0
    return-void
.end method

.method private signalComplete()V
    .locals 4

    .line 1309
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1313
    :cond_0
    monitor-enter p0

    .line 1314
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    if-nez v0, :cond_1

    .line 1315
    iget-wide v0, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    iget-wide v2, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    .line 1316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1317
    const-string v0, "CAR.POWER"

    const-string v1, "signalComplete: Already slept!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    monitor-exit p0

    return-void

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1322
    .local v0, "powerHandler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    const-string v1, "CAR.POWER"

    const-string v2, "Apps are finished, call handleProcessingComplete()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1700(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 1326
    .end local v0    # "powerHandler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :cond_2
    return-void

    .line 1322
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private simulateShutdownPrepare()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/systeminterface/SystemInterface;->setDisplayState(Z)V

    .line 919
    const-string v0, "CAR.POWER"

    const-string v1, "starting shutdown prepare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 921
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendShutdownPrepare()V

    .line 922
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->doHandlePreprocessing()V

    .line 923
    return-void
.end method

.method private simulateSleepByLooping()V
    .locals 2

    .line 1769
    const-string v0, "CAR.POWER"

    const-string v1, "Starting to simulate Deep Sleep by looping"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1771
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mWakeFromSimulatedSleep:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1773
    :try_start_1
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1774
    :catch_0
    move-exception v1

    .line 1775
    :goto_1
    goto :goto_0

    .line 1777
    :cond_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mInSimulatedDeepSleepMode:Z

    .line 1778
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1779
    const-string v0, "CAR.POWER"

    const-string v1, "Exit Deep Sleep simulation loop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    return-void

    .line 1778
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private turnOnBluetooth(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 576
    if-eqz p1, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 580
    :cond_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 589
    :goto_0
    return-void

    .line 586
    :cond_2
    return-void
.end method


# virtual methods
.method public checkStandbyMode()V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkStandbyMode isStandby = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->isStandby:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$500(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 399
    return-void
.end method

.method protected clearIsBooting()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mIsBooting:Z

    .line 404
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 295
    const-string v0, "*PowerManagementService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mProcessingStartTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mProcessingStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mLastSleepEntryTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/car/CarPowerManagementService;->mLastSleepEntryTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mNextWakeupSec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",mShutdownOnFinish:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ",sShutdownPrepareTimeMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/car/CarPowerManagementService;->sShutdownPrepareTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public finished(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1273
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Lcom/android/car/ICarImpl;->assertCallingFromSystemProcessOrSelf()V

    .line 1275
    invoke-interface {p1}, Landroid/car/hardware/power/ICarPowerStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/CarPowerManagementService;->finishedImpl(Landroid/os/IBinder;)V

    .line 1276
    return-void
.end method

.method public forceSimulatedResume()V
    .locals 4

    .line 1729
    monitor-enter p0

    .line 1731
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/car/CarPowerManagementService$CpmsState;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/android/car/CarPowerManagementService$CpmsState;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1733
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1734
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1735
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$400(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 1737
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1738
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->mWakeFromSimulatedSleep:Z

    .line 1739
    iget-object v2, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1740
    monitor-exit v1

    .line 1741
    return-void

    .line 1740
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1734
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public forceSimulatedSuspend()V
    .locals 4

    .line 1750
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSimulationSleepObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mInSimulatedDeepSleepMode:Z

    .line 1752
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/CarPowerManagementService;->mWakeFromSimulatedSleep:Z

    .line 1753
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1755
    monitor-enter p0

    .line 1756
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/car/CarPowerManagementService$CpmsState;

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/car/CarPowerManagementService$CpmsState;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1758
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1759
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1760
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$400(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 1761
    return-void

    .line 1759
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1753
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getBackLightStatus()Z
    .locals 3

    .line 731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 732
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackLightStatus callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-boolean v1, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getBootReason()I
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBootReason mBootReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarPowerManagementService;->mBootReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget v0, p0, Lcom/android/car/CarPowerManagementService;->mBootReason:I

    return v0
.end method

.method public getCurrentPowerMode()I
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    if-eqz v0, :cond_0

    .line 812
    iget v0, v0, Lcom/android/car/CarPowerManagementService$CpmsState;->mCarPowerStateListenerState:I

    return v0

    .line 814
    :cond_0
    const/16 v0, 0x9

    return v0
.end method

.method public declared-synchronized getHandler()Landroid/os/Handler;
    .locals 1

    monitor-enter p0

    .line 1225
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMCUVersion()Ljava/lang/String;
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMCUVersion mMCUVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mMCUVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mMCUVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMCUVersionForApp()Ljava/lang/String;
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMCUVersionForApp mMCUVersionForApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mMCUVersionForApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mMCUVersionForApp:Ljava/lang/String;

    return-object v0
.end method

.method public getTempRunTime()I
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 802
    const-string v0, "CAR.POWER"

    const-string v1, "getTempRunTime "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget v0, p0, Lcom/android/car/CarPowerManagementService;->mTempRunTime:I

    return v0
.end method

.method public handleBootModeBacklight(I)V
    .locals 2
    .param p1, "bootModeValue"    # I

    .line 375
    const-string v0, "CAR.POWER"

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/car/CarPowerManagementService;->setBackLightEnable(Z)V

    .line 377
    const-string v1, "MCU MODE is Boot, open backlight for update service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 379
    const-string v1, "MCU MODE is APP, backlight control by power mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    :goto_0
    return-void
.end method

.method public handleMainDisplayChanged(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpms handleMainDisplayChanged on:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    monitor-enter p0

    .line 1210
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1211
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1600(Lcom/android/car/CarPowerManagementService$PowerHandler;Z)V

    .line 1213
    return-void

    .line 1211
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 4

    .line 231
    monitor-enter p0

    .line 232
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CAR.POWER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 233
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 234
    new-instance v0, Lcom/android/car/CarPowerManagementService$PowerHandler;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/car/CarPowerManagementService$PowerHandler;-><init>(Lcom/android/car/CarPowerManagementService;Landroid/os/Looper;Lcom/android/car/CarPowerManagementService$1;)V

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 235
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->initBroadcastReceiver()V

    .line 236
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0, p0}, Lcom/android/car/hal/PowerHalService;->setListener(Lcom/android/car/hal/PowerHalService$PowerEventListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->isPowerStateSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->getCurrentPowerState()Lcom/android/car/hal/PowerHalService$PowerState;

    move-result-object v0

    .line 243
    .local v0, "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    if-eqz v0, :cond_1

    .line 244
    iget-boolean v2, p0, Lcom/android/car/CarPowerManagementService;->SUPPORT_YF_POWER_MODULE:Z

    if-eqz v2, :cond_0

    .line 246
    const-string v1, "CAR.POWER"

    const-string v2, "YFCPMS init commready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(II)V

    goto :goto_0

    .line 251
    :cond_1
    const-string v1, "CAR.POWER"

    const-string v2, "unable to get current power state during initialzation"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1}, Lcom/android/car/hal/PowerHalService;->getMcuBootMode()I

    move-result v1

    .line 254
    .local v1, "mcuMode":I
    invoke-virtual {p0, v1}, Lcom/android/car/CarPowerManagementService;->handleBootModeBacklight(I)V

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YFCPMS init handle mcuMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.POWER"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v0    # "currentState":Lcom/android/car/hal/PowerHalService$PowerState;
    .end local v1    # "mcuMode":I
    goto :goto_1

    .line 257
    :cond_2
    const-string v0, "CAR.POWER"

    const-string v2, "Vehicle hal does not support power state yet."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/car/CarPowerManagementService;->onApPowerStateChange(II)V

    .line 260
    :goto_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v0, p0}, Lcom/android/car/systeminterface/SystemInterface;->startDisplayStateMonitoring(Lcom/android/car/CarPowerManagementService;)V

    .line 266
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->handleOn()V

    .line 268
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->heartBeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CarPowerManagementService$PowerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    return-void

    .line 236
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onApPowerStateChange(Lcom/android/car/hal/PowerHalService$PowerState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/car/hal/PowerHalService$PowerState;

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApPowerStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/hal/PowerHalService$PowerState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPendingPowerStates:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/car/CarPowerManagementService$CpmsState;

    invoke-direct {v1, p1}, Lcom/android/car/CarPowerManagementService$CpmsState;-><init>(Lcom/android/car/hal/PowerHalService$PowerState;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 392
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$400(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 394
    return-void

    .line 392
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBootReasonReceived(I)V
    .locals 0
    .param p1, "bootReason"    # I

    .line 310
    iput p1, p0, Lcom/android/car/CarPowerManagementService;->mBootReason:I

    .line 311
    return-void
.end method

.method public onDayNightModeReceived(Z)V
    .locals 2
    .param p1, "day"    # Z

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDayNightModeReceived day="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public onDisplayBrightnessChange(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 1192
    monitor-enter p0

    .line 1193
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 1194
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1500(Lcom/android/car/CarPowerManagementService$PowerHandler;I)V

    .line 1196
    return-void

    .line 1194
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onMCUVersionForAppReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "MCUVersionForApp"    # Ljava/lang/String;

    .line 328
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService;->mMCUVersionForApp:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public onMCUVersionReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "MCUVersion"    # Ljava/lang/String;

    .line 319
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService;->mMCUVersion:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public onMcuBootModeReceived(I)V
    .locals 2
    .param p1, "bootMode"    # I

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpms onMcuBootModeReceived mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/car/CarPowerManagementService;->handleBootModeBacklight(I)V

    .line 358
    return-void
.end method

.method public onTempRunTimeReceived(I)V
    .locals 0
    .param p1, "time"    # I

    .line 337
    iput p1, p0, Lcom/android/car/CarPowerManagementService;->mTempRunTime:I

    .line 338
    return-void
.end method

.method public onVoltageInfo(F)V
    .locals 2
    .param p1, "voltageInfo"    # F

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpms onVoltageInfo voltageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iput p1, p0, Lcom/android/car/CarPowerManagementService;->mVoltageInfo:F

    .line 368
    return-void
.end method

.method public reEnterTempRunMode()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 773
    const-string v0, "CAR.POWER"

    const-string v1, "reEnterTempRunMode "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    monitor-enter p0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 777
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1100(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 779
    return-void

    .line 777
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1232
    const-string v0, "CAR.POWER"

    const-string v1, "cpms registerListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1235
    return-void
.end method

.method public registerListenerWithCompletion(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1241
    const-string v0, "CAR.POWER"

    const-string v1, "cpms registerListenerWithCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1243
    invoke-static {}, Lcom/android/car/ICarImpl;->assertCallingFromSystemProcessOrSelf()V

    .line 1245
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListenersWithCompletion:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1248
    return-void
.end method

.method public release()V
    .locals 4

    .line 275
    monitor-enter p0

    .line 276
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarPowerManagementService;->releaseTimerLocked()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarPowerManagementService;->mCurrentState:Lcom/android/car/CarPowerManagementService$CpmsState;

    .line 278
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 279
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 280
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 283
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "CAR.POWER"

    const-string v3, "Timeout while joining for handler thread to join."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface;->stopDisplayStateMonitoring()V

    .line 288
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPowerManagerListeners:Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;

    invoke-virtual {v1}, Lcom/android/car/CarPowerManagementService$PowerManagerCallbackList;->kill()V

    .line 289
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mListenersWeAreWaitingFor:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 290
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mSystemInterface:Lcom/android/car/systeminterface/SystemInterface;

    invoke-virtual {v1}, Lcom/android/car/systeminterface/SystemInterface;->releaseAllWakeLocks()V

    .line 291
    return-void

    .line 280
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestMCUDoFactoryReset()V
    .locals 3

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 678
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestMCUDoFactoryReset from APP seBackLightEnable callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$900(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 681
    return-void
.end method

.method public requestRestartNow()V
    .locals 1

    .line 741
    monitor-enter p0

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 743
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    invoke-static {v0}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1000(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 745
    return-void

    .line 743
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestShutdownOnNextSuspend()V
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarPowerManagementService;->mShutdownOnFinish:Z

    .line 1269
    return-void
.end method

.method public declared-synchronized scheduleNextWakeupTime(I)V
    .locals 2
    .param p1, "seconds"    # I

    monitor-enter p0

    .line 1280
    if-gez p1, :cond_0

    .line 1281
    :try_start_0
    const-string v0, "CAR.POWER"

    const-string v1, "Next wake up can not be in negative time. Ignoring!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    monitor-exit p0

    return-void

    .line 1284
    .end local p0    # "this":Lcom/android/car/CarPowerManagementService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->isTimedWakeupAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1285
    const-string v0, "CAR.POWER"

    const-string v1, "Setting timed wakeups are disabled in HAL. Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    monitor-exit p0

    return-void

    .line 1289
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I

    if-le v0, p1, :cond_2

    goto :goto_0

    .line 1292
    :cond_2
    const-string v0, "CAR.POWER"

    const-string v1, "Tried to schedule next wake up, but already had shorter scheduled time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1290
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/car/CarPowerManagementService;->mNextWakeupSec:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1295
    :goto_1
    monitor-exit p0

    return-void

    .line 1279
    .end local p1    # "seconds":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendDisplayBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpms sendDisplayBrightness brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.POWER"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PowerHalService;->sendDisplayBrightness(I)V

    .line 1222
    return-void
.end method

.method public sendEventToMCU(Z)V
    .locals 3
    .param p1, "hasEvent"    # Z

    .line 842
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 844
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPMS send event to MCU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PowerHalService;->sendPowerEventToMCU(Z)V

    .line 846
    return-void
.end method

.method public sendPROModeExit(Z)V
    .locals 3
    .param p1, "isExit"    # Z

    .line 850
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 852
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPMS send exit protection mode to MCU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "call:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHal:Lcom/android/car/hal/PowerHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PowerHalService;->sendPROModeExit(Z)V

    .line 854
    return-void
.end method

.method public setBackLightEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 664
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seBackLightEnable callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager;->setScreenBrightnessEnable(Z)V

    .line 666
    sput-boolean p1, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    .line 667
    sget-boolean v1, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x15

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/car/CarPowerManagementService;->sendPowerManagerEvent(I)V

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback screen status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/car/CarPowerManagementService;->backlight_on:Z

    if-eqz v3, :cond_1

    const-string v3, "on"

    goto :goto_1

    :cond_1
    const-string v3, "off"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    return-void
.end method

.method public setTempRunTime(I)V
    .locals 2
    .param p1, "time"    # I

    .line 787
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 788
    const-string v0, "CAR.POWER"

    const-string v1, "handleSetTempRunTime "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    .line 792
    .local v0, "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-static {v0, p1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1200(Lcom/android/car/CarPowerManagementService$PowerHandler;I)V

    .line 794
    return-void

    .line 792
    .end local v0    # "handler":Lcom/android/car/CarPowerManagementService$PowerHandler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toManagerStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .line 1049
    packed-switch p1, :pswitch_data_0

    .line 1093
    const-string v0, "power mode not in manager enum"

    return-object v0

    .line 1090
    :pswitch_0
    const-string v0, "PWR_SCREEN_OFF"

    return-object v0

    .line 1087
    :pswitch_1
    const-string v0, "PWR_SCREEN_ON"

    return-object v0

    .line 1081
    :pswitch_2
    const-string v0, "PWR_REQ_SYSTEM_OFF"

    return-object v0

    .line 1078
    :pswitch_3
    const-string v0, "PWR_MODE_TEMPRUN_ENDING"

    return-object v0

    .line 1084
    :pswitch_4
    const-string v0, "PWR_MODE_PROTECTION"

    return-object v0

    .line 1075
    :pswitch_5
    const-string v0, "PWR_MODE_PARTIALRUN"

    return-object v0

    .line 1072
    :pswitch_6
    const-string v0, "PWR_MODE_OFF_USER"

    return-object v0

    .line 1069
    :pswitch_7
    const-string v0, "PWR_MODE_TEMP_ON"

    return-object v0

    .line 1066
    :pswitch_8
    const-string v0, "PWR_MODE_ABNORMAL"

    return-object v0

    .line 1063
    :pswitch_9
    const-string v0, "PWR_MODE_SLEEP"

    return-object v0

    .line 1060
    :pswitch_a
    const-string v0, "PWR_MODE_RUN"

    return-object v0

    .line 1057
    :pswitch_b
    const-string v0, "PWR_MODE_STANDBY"

    return-object v0

    .line 1054
    :pswitch_c
    const-string v0, "PWR_MODE_OFF"

    return-object v0

    .line 1051
    :pswitch_d
    const-string v0, "PWR_MODE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x9
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
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/car/hardware/power/ICarPowerStateListener;

    .line 1252
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/car/CarPowerManagementService;->doUnregisterListener(Landroid/car/hardware/power/ICarPowerStateListener;)V

    .line 1254
    return-void
.end method

.method public voltageInfoQuery()F
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_POWER"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 821
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voltageInfoQuery callingUid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.POWER"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Lcom/android/car/CarPowerManagementService;->mHandler:Lcom/android/car/CarPowerManagementService$PowerHandler;

    invoke-static {v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->access$1300(Lcom/android/car/CarPowerManagementService$PowerHandler;)V

    .line 826
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    goto :goto_0

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 830
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget v1, p0, Lcom/android/car/CarPowerManagementService;->mVoltageInfo:F

    return v1
.end method
