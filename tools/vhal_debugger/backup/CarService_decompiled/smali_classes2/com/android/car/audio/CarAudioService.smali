.class public Lcom/android/car/audio/CarAudioService;
.super Landroid/car/media/ICarAudio$Stub;
.source "CarAudioService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;,
        Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;
    }
.end annotation


# static fields
.field private static final AUDIO_CONFIGURATION_PATHS:[Ljava/lang/String;

.field private static final DEBUG:Z = true

.field private static final LOADSHED_MAX_INDEX:I = 0xa

.field private static final LOUD_SPEAKER_NUM_2:I = 0x3

.field private static final LOUD_SPEAKER_NUM_4:I = 0x0

.field private static final LOUD_SPEAKER_NUM_6:I = 0x1

.field private static final LOUD_SPEAKER_NUM_8:I = 0x2

.field private static final MEDIA_ATTENUATION_GAIN_INDEX:I = 0x6

.field private static final NAVI_ATTENUATION_GAIN_INDEX:I = 0x2

.field private static final NORMAL_MAX_INDEX:I = 0x6

.field private static final VOLUME_SETTINGS_KEY_FOR_GROUP_PREFIX:Ljava/lang/String; = "android.car.VOLUME_GROUP/"

.field private static final VOLUME_SETTINGS_KEY_MASTER_MUTE:Ljava/lang/String; = "android.car.MASTER_MUTE"

.field private static sUseCarAudioFocus:Z


# instance fields
.field private isCarplayDucking:Z

.field private isCarplayEnhancedSiri:Z

.field private isCarplayNavi:Z

.field private final mActivityLaunchListener:Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private final mAudioPolicyVolumeCallback:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

.field private final mAudioSettingCallbackContainer:Lcom/android/car/BinderInterfaceContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer<",
            "Landroid/car/media/ICarAudioSettingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCar:Landroid/car/Car;

.field private mCarAudioConfigurationPath:Ljava/lang/String;

.field private mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

.field private final mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

.field private mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

.field private final mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

.field private mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mImplLock:Ljava/lang/Object;

.field private mIncomingPrompt:Z

.field private mIsAAMediaFocus:Z

.field private final mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLoadShedAttenState:Z

.field private mNaviAttenState:Z

.field private final mPersistMasterMuteState:Z

.field private mPhoneAttenState:Z

.field private mReverseAttenState:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTopTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/car/SystemActivityMonitoringService$TopTaskInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidToZoneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseDynamicRouting:Z

.field private final mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/BinderInterfaceContainer<",
            "Landroid/car/media/ICarVolumeCallback;",
            ">;"
        }
    .end annotation
.end field

.field mainStackFocusInfo:Landroid/media/AudioFocusInfo;

.field mainStackFocusLock:Ljava/lang/Object;

.field mixStackFocusInfo:Landroid/media/AudioFocusInfo;

.field mixStackFocusLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/car/audio/CarAudioService;->sUseCarAudioFocus:Z

    .line 118
    const-string v0, "/vendor/etc/car_audio_configuration.xml"

    const-string v1, "/system/etc/car_audio_configuration.xml"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/audio/CarAudioService;->AUDIO_CONFIGURATION_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/SystemActivityMonitoringService;Lcom/android/car/CarPowerManagementService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemActivityMonitoringService"    # Lcom/android/car/SystemActivityMonitoringService;
    .param p3, "carPowerManagementService"    # Lcom/android/car/CarPowerManagementService;

    .line 282
    invoke-direct {p0}, Landroid/car/media/ICarAudio$Stub;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    .line 148
    new-instance v0, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;-><init>(Lcom/android/car/audio/CarAudioService;Lcom/android/car/audio/CarAudioService$1;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mActivityLaunchListener:Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusLock:Ljava/lang/Object;

    .line 161
    new-instance v0, Lcom/android/car/audio/CarAudioService$1;

    invoke-direct {v0, p0}, Lcom/android/car/audio/CarAudioService$1;-><init>(Lcom/android/car/audio/CarAudioService;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 189
    new-instance v0, Lcom/android/car/audio/CarAudioService$2;

    invoke-direct {v0, p0}, Lcom/android/car/audio/CarAudioService$2;-><init>(Lcom/android/car/audio/CarAudioService;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicyVolumeCallback:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 235
    new-instance v0, Lcom/android/car/BinderInterfaceContainer;

    invoke-direct {v0}, Lcom/android/car/BinderInterfaceContainer;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    .line 237
    new-instance v0, Lcom/android/car/BinderInterfaceContainer;

    invoke-direct {v0}, Lcom/android/car/BinderInterfaceContainer;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mAudioSettingCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    .line 244
    new-instance v0, Lcom/android/car/audio/CarAudioService$3;

    invoke-direct {v0, p0}, Lcom/android/car/audio/CarAudioService$3;-><init>(Lcom/android/car/audio/CarAudioService;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mTopTasks:Ljava/util/ArrayList;

    .line 1505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    .line 1506
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mPhoneAttenState:Z

    .line 1507
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    .line 1508
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mLoadShedAttenState:Z

    .line 1509
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mIncomingPrompt:Z

    .line 1512
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mIsAAMediaFocus:Z

    .line 283
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    .line 284
    iput-object p2, p0, Lcom/android/car/audio/CarAudioService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    .line 285
    iput-object p3, p0, Lcom/android/car/audio/CarAudioService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    .line 286
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 288
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 289
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 290
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f040004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    .line 291
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f040003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mPersistMasterMuteState:Z

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    .line 294
    new-instance v0, Lcom/android/car/audio/CarAudioControl;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/car/audio/CarAudioControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    .line 295
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CAR.AUDIO"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 296
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 297
    new-instance v0, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;-><init>(Lcom/android/car/audio/CarAudioService;Landroid/os/Looper;Lcom/android/car/audio/CarAudioService$1;)V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    .line 298
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCar:Landroid/car/Car;

    .line 299
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 300
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/audio/CarAudioService;)Landroid/car/Car;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;

    .line 99
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/car/audio/CarAudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;

    .line 99
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/car/audio/CarAudioService;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;

    .line 99
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/car/audio/CarAudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->onNaviChannelLocked(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/car/audio/CarAudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->onSetPhoneAttenuationLocked(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/car/audio/CarAudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->onSetNaviAttenuationLocked(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/car/audio/CarAudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->onSetRingtoneAttenuationLocked(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/audio/CarAudioService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # Z

    .line 99
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->setupVolumeTables(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/audio/CarAudioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;

    .line 99
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->getSuggestedAudioUsageForChery()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/car/audio/CarAudioService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # I

    .line 99
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForStreamType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/car/audio/CarAudioService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/audio/CarAudioService;->callbackGroupVolumeChange(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/audio/CarAudioService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->callbackMasterMuteChange(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/car/audio/CarAudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioService;

    .line 99
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mTopTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private callbackAudioSettingChange(Landroid/media/AudioSetting;)V
    .locals 5
    .param p1, "param"    # Landroid/media/AudioSetting;

    .line 563
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mAudioSettingCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 565
    .local v1, "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarAudioSettingCallback;>;"
    :try_start_0
    iget-object v2, v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v2, Landroid/car/media/ICarAudioSettingCallback;

    invoke-interface {v2, p1}, Landroid/car/media/ICarAudioSettingCallback;->onAudioSettingChanged(Landroid/media/AudioSetting;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto :goto_1

    .line 566
    :catch_0
    move-exception v2

    .line 567
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "Failed to callback onAudioSettingChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v1    # "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarAudioSettingCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 570
    :cond_0
    return-void
.end method

.method private callbackGroupMuteChange(III)V
    .locals 5
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "flags"    # I

    .line 585
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 587
    .local v1, "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    :try_start_0
    iget-object v2, v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v2, Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/car/media/ICarVolumeCallback;->onGroupMuteChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_1

    .line 588
    :catch_0
    move-exception v2

    .line 589
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "Failed to callback onGroupMuteChange"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v1    # "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 592
    :cond_0
    return-void
.end method

.method private callbackGroupVolumeChange(III)V
    .locals 5
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "flags"    # I

    .line 574
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 576
    .local v1, "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    :try_start_0
    iget-object v2, v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v2, Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v2, p1, p2, p3}, Landroid/car/media/ICarVolumeCallback;->onGroupVolumeChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    goto :goto_1

    .line 577
    :catch_0
    move-exception v2

    .line 578
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "Failed to callback onGroupVolumeChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    .end local v1    # "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 581
    :cond_0
    return-void
.end method

.method private callbackMasterMuteChange(II)V
    .locals 5
    .param p1, "zoneId"    # I
    .param p2, "flags"    # I

    .line 606
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v0}, Lcom/android/car/BinderInterfaceContainer;->getInterfaces()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;

    .line 608
    .local v1, "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    :try_start_0
    iget-object v2, v1, Lcom/android/car/BinderInterfaceContainer$BinderInterface;->binderInterface:Landroid/os/IInterface;

    check-cast v2, Landroid/car/media/ICarVolumeCallback;

    invoke-interface {v2, p1, p2}, Landroid/car/media/ICarVolumeCallback;->onMasterMuteChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    goto :goto_1

    .line 609
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "Failed to callback onMasterMuteChanged"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v1    # "callback":Lcom/android/car/BinderInterfaceContainer$BinderInterface;, "Lcom/android/car/BinderInterfaceContainer$BinderInterface<Landroid/car/media/ICarVolumeCallback;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 615
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mPersistMasterMuteState:Z

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 618
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    .line 616
    const-string v2, "android.car.MASTER_MUTE"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 620
    :cond_1
    return-void
.end method

.method private checkAndRemoveUidLocked(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 1223
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1224
    .local v0, "zoneId":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndRemoveUid removing Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from zone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.AUDIO"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v2, p1}, Landroid/media/audiopolicy/AudioPolicy;->removeUidDeviceAffinity(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1229
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    return v1

    .line 1233
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndRemoveUid Failed remove device affinity for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v1, 0x0

    return v1

    .line 1238
    :cond_1
    return v1
.end method

.method private createAudioPatchLocked(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;
    .locals 16
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "usage"    # I
    .param p3, "gainInMillibels"    # I

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 909
    .local v3, "sourcePortInfo":Landroid/media/AudioDeviceInfo;
    iget-object v4, v0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    .line 910
    .local v4, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    array-length v6, v4

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    aget-object v9, v4, v8

    .line 911
    .local v9, "info":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v9}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 913
    move-object v3, v9

    .line 914
    goto :goto_1

    .line 910
    .end local v9    # "info":Landroid/media/AudioDeviceInfo;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 917
    :cond_1
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Specified source is not available: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-direct {v0, v2}, Lcom/android/car/audio/CarAudioService;->getAudioPort(I)Landroid/media/AudioDevicePort;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sink not available for usage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-static/range {p2 .. p2}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 921
    invoke-static {v6, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioDevicePort;

    .line 928
    .local v6, "sinkPort":Landroid/media/AudioDevicePort;
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v5, v8}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v9

    .line 930
    .local v9, "sinkConfig":Landroid/media/AudioPortConfig;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createAudioPatch sinkConfig: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CAR.AUDIO"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v10, Lcom/android/car/audio/CarAudioDeviceInfo;

    invoke-direct {v10, v3}, Lcom/android/car/audio/CarAudioDeviceInfo;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 934
    .local v10, "helper":Lcom/android/car/audio/CarAudioDeviceInfo;
    invoke-virtual {v10}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v12

    const-string v13, "Gain controller not available for source port"

    invoke-static {v12, v13}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioGain;

    .line 938
    .local v12, "audioGain":Landroid/media/AudioGain;
    nop

    .line 939
    invoke-virtual {v12}, Landroid/media/AudioGain;->channelMask()I

    move-result v13

    new-array v14, v5, [I

    aput p3, v14, v7

    .line 938
    invoke-virtual {v12, v5, v13, v14, v7}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v13

    .line 943
    .local v13, "audioGainConfig":Landroid/media/AudioGainConfig;
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v14

    invoke-virtual {v14, v7, v5, v5, v13}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v14

    .line 947
    .local v14, "sourceConfig":Landroid/media/AudioPortConfig;
    new-array v15, v5, [Landroid/media/AudioPatch;

    aput-object v8, v15, v7

    move-object v8, v15

    .line 948
    .local v8, "patch":[Landroid/media/AudioPatch;
    new-array v15, v5, [Landroid/media/AudioPortConfig;

    aput-object v14, v15, v7

    new-array v5, v5, [Landroid/media/AudioPortConfig;

    aput-object v9, v5, v7

    invoke-static {v8, v15, v5}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    move-result v5

    .line 951
    .local v5, "result":I
    if-nez v5, :cond_2

    .line 955
    aget-object v15, v8, v7

    const-string v7, "createAudioPatch didn\'t provide expected single handle"

    invoke-static {v15, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Audio patch created: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    aget-object v1, v8, v15

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0, v15, v2}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v1

    .line 961
    .local v1, "groupId":I
    nop

    .line 962
    invoke-virtual {v0, v15, v1}, Lcom/android/car/audio/CarAudioService;->getGroupVolume(II)I

    move-result v7

    .line 961
    invoke-virtual {v0, v15, v1, v7, v15}, Lcom/android/car/audio/CarAudioService;->setGroupVolume(IIII)V

    .line 964
    new-instance v7, Landroid/car/media/CarAudioPatchHandle;

    aget-object v11, v8, v15

    invoke-direct {v7, v11}, Landroid/car/media/CarAudioPatchHandle;-><init>(Landroid/media/AudioPatch;)V

    return-object v7

    .line 952
    .end local v1    # "groupId":I
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createAudioPatch failed with code "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1300
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    return-void

    .line 1302
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requires permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final focusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .line 1518
    packed-switch p0, :pswitch_data_0

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown focus "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1523
    :pswitch_0
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    return-object v0

    .line 1522
    :pswitch_1
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    return-object v0

    .line 1521
    :pswitch_2
    const-string v0, "GAIN_TRANSIENT"

    return-object v0

    .line 1520
    :pswitch_3
    const-string v0, "GAIN"

    return-object v0

    .line 1519
    :pswitch_4
    const-string v0, "NONE"

    return-object v0

    .line 1524
    :pswitch_5
    const-string v0, "LOSS"

    return-object v0

    .line 1525
    :pswitch_6
    const-string v0, "LOSS_TRANSIENT"

    return-object v0

    .line 1526
    :pswitch_7
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
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

.method private getAudioConfigurationPath()Ljava/lang/String;
    .locals 7

    .line 776
    const-string v0, "ro.boot.hwid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.AUDIO"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    const-string v1, "/vendor/etc/car_audio_configuration_ms.xml"

    return-object v1

    .line 781
    :cond_0
    sget-object v1, Lcom/android/car/audio/CarAudioService;->AUDIO_CONFIGURATION_PATHS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 782
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 783
    .local v5, "configuration":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 784
    return-object v4

    .line 781
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "configuration":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 787
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getAudioControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 3

    .line 1437
    const-string v0, "CAR.AUDIO"

    :try_start_0
    invoke-static {}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->getService()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1440
    :catch_0
    move-exception v1

    .line 1441
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "IAudioControl service not registered yet"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1438
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v1

    .line 1439
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get IAudioControl service"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1442
    .end local v1    # "e":Landroid/os/RemoteException;
    nop

    .line 1443
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAudioPort(I)Landroid/media/AudioDevicePort;
    .locals 5
    .param p1, "usage"    # I

    .line 1311
    const/4 v0, 0x0

    .line 1312
    .local v0, "zoneId":I
    invoke-virtual {p0, v0, p1}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v1

    .line 1313
    .local v1, "groupId":I
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v2, v2, v0

    .line 1314
    invoke-virtual {v2, v1}, Lcom/android/car/audio/CarAudioZone;->getVolumeGroup(I)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not find CarVolumeGroup by usage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1313
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/audio/CarVolumeGroup;

    .line 1317
    .local v2, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {p0, p1}, Lcom/android/car/audio/CarAudioService;->getContextForUsage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/car/audio/CarVolumeGroup;->getAudioDevicePortForContext(I)Landroid/media/AudioDevicePort;

    move-result-object v3

    return-object v3
.end method

.method private getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 694
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoneId out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/car/audio/CarAudioZone;->getVolumeGroup(I)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestedAudioUsage()I
    .locals 4

    .line 1324
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1325
    .local v0, "callState":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1326
    const/4 v1, 0x6

    return v1

    .line 1327
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1328
    return v2

    .line 1330
    :cond_1
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    .line 1331
    invoke-virtual {v2}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v2

    .line 1332
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;->INSTANCE:Lcom/android/car/audio/-$$Lambda$GmcZA0zXB8mu4enjpmQnD7hZdQI;

    .line 1333
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 1334
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1335
    .local v2, "playbacks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1337
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    return v1

    .line 1340
    :cond_2
    return v1
.end method

.method private getSuggestedAudioUsageForChery()I
    .locals 6

    .line 1349
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1350
    .local v0, "callState":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.AUDIO"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1352
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mIncomingPrompt:Z

    if-eqz v1, :cond_0

    .line 1353
    const/16 v1, 0x10

    return v1

    .line 1355
    :cond_0
    const/4 v1, 0x6

    return v1

    .line 1356
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1357
    return v2

    .line 1359
    :cond_2
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1360
    :try_start_0
    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    if-eqz v3, :cond_4

    .line 1361
    const-string v3, "CAR.AUDIO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mixStackFocusInfo clientId= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    .line 1362
    invoke-virtual {v5}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1361
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    iget-boolean v3, p0, Lcom/android/car/audio/CarAudioService;->isCarplayNavi:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/car/audio/CarAudioService;->isCarplayDucking:Z

    if-nez v3, :cond_3

    .line 1364
    const-string v3, "CAR.AUDIO"

    const-string v4, "Carplay Navi no ducking, don\'t adjust it"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1366
    :cond_3
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    monitor-exit v2

    return v1

    .line 1369
    :cond_4
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1370
    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1371
    :try_start_1
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    if-eqz v2, :cond_5

    .line 1372
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mainStackFocusInfo clientId= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    .line 1373
    invoke-virtual {v4}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    monitor-exit v3

    return v1

    .line 1376
    :cond_5
    monitor-exit v3

    .line 1377
    return v1

    .line 1376
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1369
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private getVolumeGroupIdForStreamType(I)I
    .locals 3
    .param p1, "streamType"    # I

    .line 1385
    const/4 v0, -0x1

    .line 1386
    .local v0, "groupId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1387
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 1388
    move v0, v1

    .line 1389
    goto :goto_1

    .line 1386
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1392
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method static getVolumeSettingsKeyForGroup(II)Ljava/lang/String;
    .locals 3
    .param p0, "zoneId"    # I
    .param p1, "groupId"    # I

    .line 136
    shl-int/lit8 v0, p0, 0x8

    add-int/2addr v0, p1

    .line 137
    .local v0, "maskedGroupId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.car.VOLUME_GROUP/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getUsagesForVolumeGroupId$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 1055
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getZoneIdForDisplayPortId$1(BLandroid/view/DisplayAddress$Physical;)Z
    .locals 1
    .param p0, "displayPortId"    # B
    .param p1, "displayAddress"    # Landroid/view/DisplayAddress$Physical;

    .line 1255
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onNaviAttenuationLocked()V
    .locals 3

    .line 1583
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1584
    :try_start_0
    const-string v1, "CAR.AUDIO"

    const-string v2, "onNaviAttenuationLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setNaviAttenuation()V

    .line 1586
    monitor-exit v0

    .line 1587
    return-void

    .line 1586
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onNaviChannelLocked(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .line 1590
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1591
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNaviChannelLocked mute = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v1, 0x0

    .line 1593
    .local v1, "zoneId":I
    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v2

    .line 1595
    .local v2, "naviId":I
    invoke-direct {p0, v1, v2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v3

    .line 1596
    .local v3, "group":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v4, v3, p1}, Lcom/android/car/audio/CarAudioControl;->setSourceMute(Lcom/android/car/audio/CarVolumeGroup;Z)V

    .line 1597
    .end local v1    # "zoneId":I
    .end local v2    # "naviId":I
    .end local v3    # "group":Lcom/android/car/audio/CarVolumeGroup;
    monitor-exit v0

    .line 1598
    return-void

    .line 1597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetNaviAttenuationLocked(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1544
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1545
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetNaviAttenuationLocked: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    if-eq v1, p1, :cond_0

    .line 1547
    iput-boolean p1, p0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    .line 1548
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setMediaAttenuation()V

    .line 1550
    :cond_0
    monitor-exit v0

    .line 1551
    return-void

    .line 1550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetPhoneAttenuationLocked(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1554
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1555
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetPhoneAttenuationLocked: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mPhoneAttenState:Z

    if-eq v1, p1, :cond_0

    .line 1557
    iput-boolean p1, p0, Lcom/android/car/audio/CarAudioService;->mPhoneAttenState:Z

    .line 1558
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setNaviAttenuation()V

    .line 1560
    :cond_0
    monitor-exit v0

    .line 1561
    return-void

    .line 1560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetReverseAttenuationLocked(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1532
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1533
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetReverseAttenuationLock: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    if-eq v1, p1, :cond_0

    .line 1535
    iput-boolean p1, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    .line 1536
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setMediaAttenuation()V

    .line 1537
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setNaviAttenuation()V

    .line 1538
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setVRAttenuation()V

    .line 1540
    :cond_0
    monitor-exit v0

    .line 1541
    return-void

    .line 1540
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onSetRingtoneAttenuationLocked(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 1564
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1565
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetRingtoneAttenuationLocked: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mIncomingPrompt:Z

    if-eq v1, p1, :cond_0

    .line 1567
    iput-boolean p1, p0, Lcom/android/car/audio/CarAudioService;->mIncomingPrompt:Z

    .line 1568
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setRingtoneAttenuation()V

    .line 1570
    :cond_0
    monitor-exit v0

    .line 1571
    return-void

    .line 1570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUpdateAttenuationLocked()V
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1575
    :try_start_0
    const-string v1, "CAR.AUDIO"

    const-string v2, "onUpdateAttenuationLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setMediaAttenuation()V

    .line 1577
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setNaviAttenuation()V

    .line 1578
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setVRAttenuation()V

    .line 1579
    monitor-exit v0

    .line 1580
    return-void

    .line 1579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseAudioPatchLocked(Landroid/car/media/CarAudioPatchHandle;)V
    .locals 6
    .param p1, "carPatch"    # Landroid/car/media/CarAudioPatchHandle;

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v0, "patches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPatch;>;"
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPatches(Ljava/util/ArrayList;[I)I

    move-result v1

    .line 975
    .local v1, "result":I
    if-nez v1, :cond_3

    .line 980
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPatch;

    .line 981
    .local v3, "patch":Landroid/media/AudioPatch;
    invoke-virtual {p1, v3}, Landroid/car/media/CarAudioPatchHandle;->represents(Landroid/media/AudioPatch;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 983
    invoke-static {v3}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    move-result v1

    .line 984
    if-nez v1, :cond_0

    .line 987
    return-void

    .line 985
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAudioPatch failed with code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 989
    .end local v3    # "patch":Landroid/media/AudioPatch;
    :cond_1
    goto :goto_0

    .line 992
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAudioPatch found no match for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.AUDIO"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 976
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listAudioPatches failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setMasterMute(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "flags"    # I

    .line 595
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setMasterMute(ZI)V

    .line 599
    if-eqz p1, :cond_0

    const/16 v0, 0x7f

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    .line 600
    .local v0, "keycode":I
    :goto_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 601
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 602
    return-void
.end method

.method private setMediaAttenuation()V
    .locals 19

    .line 1601
    move-object/from16 v0, p0

    const/16 v1, 0x42

    .line 1602
    .local v1, "attenuationGain":I
    const/16 v2, 0x42

    .line 1603
    .local v2, "nGain":I
    const/16 v3, 0x42

    .line 1604
    .local v3, "bGain":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v5

    .line 1606
    .local v5, "mediaGroupId":I
    const/4 v6, 0x4

    invoke-virtual {v0, v4, v6}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v6

    .line 1608
    .local v6, "btMusicGroupId":I
    invoke-direct {v0, v4, v5}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v7

    .line 1610
    .local v7, "btMusicGroup":Lcom/android/car/audio/CarVolumeGroup;
    invoke-direct {v0, v4, v6}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v4

    .line 1612
    .local v4, "mediaGroup":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v8, v0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getTableId()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/car/audio/CarVolumeTable;->getPoints()[Lcom/android/car/audio/CarVolumePoint;

    move-result-object v8

    .line 1613
    .local v8, "mediaPoints":[Lcom/android/car/audio/CarVolumePoint;
    iget-object v9, v0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    invoke-virtual {v7}, Lcom/android/car/audio/CarVolumeGroup;->getTableId()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/android/car/audio/CarVolumeTable;->getPoints()[Lcom/android/car/audio/CarVolumePoint;

    move-result-object v9

    .line 1614
    .local v9, "btMusicPoints":[Lcom/android/car/audio/CarVolumePoint;
    const/4 v10, 0x6

    aget-object v10, v8, v10

    iget v10, v10, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1615
    .local v10, "attenIndex":I
    iget-boolean v11, v0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    const-string v12, "CAR.AUDIO"

    if-eqz v11, :cond_0

    iget-boolean v11, v0, Lcom/android/car/audio/CarAudioService;->mIsAAMediaFocus:Z

    if-eqz v11, :cond_1

    :cond_0
    iget-boolean v11, v0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    if-eqz v11, :cond_4

    .line 1616
    :cond_1
    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v11

    aget-object v11, v8, v11

    iget v11, v11, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1617
    .local v11, "mediaIndex":I
    const-string v15, " ->"

    if-le v11, v10, :cond_2

    .line 1618
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MediaAttenuation: mediaIndex="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    sub-int v13, v11, v10

    int-to-double v13, v13

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v13, v13, v16

    double-to-int v13, v13

    .line 1621
    .local v13, "offset":I
    rsub-int/lit8 v2, v13, 0x42

    .line 1623
    .end local v13    # "offset":I
    :cond_2
    invoke-virtual {v7}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v13

    aget-object v13, v9, v13

    iget v13, v13, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1624
    .local v13, "btMusicIndex":I
    if-le v13, v10, :cond_3

    .line 1625
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1    # "attenuationGain":I
    .local v18, "attenuationGain":I
    const-string v1, "MediaAttenuation: btMusicIndex="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    sub-int v1, v13, v10

    int-to-double v14, v1

    const-wide/high16 v16, 0x3fd0000000000000L    # 0.25

    mul-double v14, v14, v16

    double-to-int v1, v14

    .line 1628
    .local v1, "offset":I
    rsub-int/lit8 v3, v1, 0x42

    goto :goto_0

    .line 1624
    .end local v18    # "attenuationGain":I
    .local v1, "attenuationGain":I
    :cond_3
    move/from16 v18, v1

    .end local v1    # "attenuationGain":I
    .restart local v18    # "attenuationGain":I
    goto :goto_0

    .line 1615
    .end local v11    # "mediaIndex":I
    .end local v13    # "btMusicIndex":I
    .end local v18    # "attenuationGain":I
    .restart local v1    # "attenuationGain":I
    :cond_4
    move/from16 v18, v1

    .line 1632
    .end local v1    # "attenuationGain":I
    .restart local v18    # "attenuationGain":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setMediaAttenuation: nGain="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mNaviAttenState="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " mReverseAttenState="

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getChannelGain()I

    move-result v1

    const/16 v14, 0xf

    if-eq v1, v2, :cond_5

    .line 1635
    invoke-virtual {v4, v2}, Lcom/android/car/audio/CarVolumeGroup;->setChannelGain(I)V

    .line 1636
    iget-object v1, v0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v1, v4, v2, v14}, Lcom/android/car/audio/CarAudioControl;->setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V

    .line 1640
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setMediaAttenuation: bGain="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual {v7}, Lcom/android/car/audio/CarVolumeGroup;->getChannelGain()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 1643
    invoke-virtual {v7, v3}, Lcom/android/car/audio/CarVolumeGroup;->setChannelGain(I)V

    .line 1644
    iget-object v1, v0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v1, v7, v3, v14}, Lcom/android/car/audio/CarAudioControl;->setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V

    .line 1647
    :cond_6
    return-void
.end method

.method private setNaviAttenuation()V
    .locals 13

    .line 1650
    const/16 v0, 0x42

    .line 1651
    .local v0, "attenuationGain":I
    const/16 v1, 0x42

    .line 1652
    .local v1, "nGain":I
    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p0, v2, v3}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v3

    .line 1654
    .local v3, "naviGroupId":I
    invoke-direct {p0, v2, v3}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v2

    .line 1656
    .local v2, "naviGroup":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    invoke-virtual {v2}, Lcom/android/car/audio/CarVolumeGroup;->getTableId()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeTable;->getPoints()[Lcom/android/car/audio/CarVolumePoint;

    move-result-object v4

    .line 1657
    .local v4, "naviPoints":[Lcom/android/car/audio/CarVolumePoint;
    invoke-virtual {v2}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v5

    aget-object v5, v4, v5

    iget v5, v5, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1658
    .local v5, "naviIndex":I
    const/4 v6, 0x2

    aget-object v6, v4, v6

    iget v6, v6, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1659
    .local v6, "defaultIndex":I
    iget-boolean v7, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    const-string v8, "CAR.AUDIO"

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/car/audio/CarAudioService;->mPhoneAttenState:Z

    if-eqz v7, :cond_1

    .line 1660
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NaviAttenuation: naviIndex="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ->"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    if-le v5, v6, :cond_1

    .line 1663
    sub-int v7, v5, v6

    int-to-double v9, v7

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v9, v11

    double-to-int v7, v9

    .line 1664
    .local v7, "offset":I
    rsub-int/lit8 v1, v7, 0x42

    .line 1669
    .end local v7    # "offset":I
    :cond_1
    if-ge v1, v0, :cond_2

    .line 1670
    move v0, v1

    .line 1673
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNaviAttenuation: Gain="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mReverseAttenState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    invoke-virtual {v2}, Lcom/android/car/audio/CarVolumeGroup;->getChannelGain()I

    move-result v7

    if-eq v7, v0, :cond_3

    .line 1676
    invoke-virtual {v2, v0}, Lcom/android/car/audio/CarVolumeGroup;->setChannelGain(I)V

    .line 1677
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    const/16 v8, 0xf

    invoke-virtual {v7, v2, v0, v8}, Lcom/android/car/audio/CarAudioControl;->setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V

    .line 1680
    :cond_3
    return-void
.end method

.method private setRingtoneAttenuation()V
    .locals 5

    .line 1716
    const/16 v0, 0x42

    .line 1717
    .local v0, "attenuationGain":I
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v2

    .line 1719
    .local v2, "ringGroupId":I
    invoke-direct {p0, v1, v2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 1721
    .local v1, "ringGroup":Lcom/android/car/audio/CarVolumeGroup;
    iget-boolean v3, p0, Lcom/android/car/audio/CarAudioService;->mIncomingPrompt:Z

    if-eqz v3, :cond_0

    .line 1722
    const/4 v0, 0x0

    .line 1725
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRingtoneAttenuation: Gain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIncomingPrompt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioService;->mIncomingPrompt:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.AUDIO"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getChannelGain()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 1728
    invoke-virtual {v1, v0}, Lcom/android/car/audio/CarVolumeGroup;->setChannelGain(I)V

    .line 1729
    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    const/16 v4, 0xf

    invoke-virtual {v3, v1, v0, v4}, Lcom/android/car/audio/CarAudioControl;->setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V

    .line 1732
    :cond_1
    return-void
.end method

.method private setVRAttenuation()V
    .locals 13

    .line 1683
    const/16 v0, 0x42

    .line 1684
    .local v0, "attenuationGain":I
    const/16 v1, 0x42

    .line 1685
    .local v1, "nGain":I
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {p0, v2, v3}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v3

    .line 1687
    .local v3, "vrGroupId":I
    invoke-direct {p0, v2, v3}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v4

    .line 1689
    .local v4, "vrGroup":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getTableId()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/car/audio/CarVolumeTable;->getPoints()[Lcom/android/car/audio/CarVolumePoint;

    move-result-object v5

    .line 1690
    .local v5, "vrPoints":[Lcom/android/car/audio/CarVolumePoint;
    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v6

    aget-object v6, v5, v6

    iget v6, v6, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1691
    .local v6, "vrIndex":I
    aget-object v2, v5, v2

    iget v2, v2, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 1692
    .local v2, "defaultIndex":I
    iget-boolean v7, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    const-string v8, "CAR.AUDIO"

    if-eqz v7, :cond_0

    .line 1693
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vrAttenuation: vrIndex="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ->"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    if-le v6, v2, :cond_0

    .line 1696
    sub-int v7, v6, v2

    int-to-double v9, v7

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v9, v11

    double-to-int v7, v9

    .line 1697
    .local v7, "offset":I
    rsub-int/lit8 v1, v7, 0x42

    .line 1702
    .end local v7    # "offset":I
    :cond_0
    if-ge v1, v0, :cond_1

    .line 1703
    move v0, v1

    .line 1706
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setVRAttenuation: Gain="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mReverseAttenState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getChannelGain()I

    move-result v7

    if-eq v7, v0, :cond_2

    .line 1709
    invoke-virtual {v4, v0}, Lcom/android/car/audio/CarVolumeGroup;->setChannelGain(I)V

    .line 1710
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    const/16 v8, 0xf

    invoke-virtual {v7, v4, v0, v8}, Lcom/android/car/audio/CarAudioControl;->setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V

    .line 1713
    :cond_2
    return-void
.end method

.method private setZoneIdForUidNoCheckLocked(II)Z
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "uid"    # I

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoneIdForUidNoCheck Calling uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mapped to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.AUDIO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/car/audio/CarAudioZone;->getAudioDeviceInfos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/media/audiopolicy/AudioPolicy;->setUidDeviceAffinity(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const/4 v0, 0x1

    return v0

    .line 1212
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoneIdForUidNoCheck Failed set device affinity for uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in zone "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v0, 0x0

    return v0
.end method

.method private setupDynamicRouting(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/car/audio/CarAudioDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 708
    .local p1, "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 709
    .local v0, "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 711
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->getAudioConfigurationPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioConfigurationPath:Ljava/lang/String;

    .line 712
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioConfigurationPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 713
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 714
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Lcom/android/car/audio/CarAudioZonesHelper;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Lcom/android/car/audio/CarAudioZonesHelper;-><init>(Landroid/content/Context;Ljava/io/InputStream;Landroid/util/SparseArray;)V

    .line 716
    .local v2, "zonesHelper":Lcom/android/car/audio/CarAudioZonesHelper;
    invoke-virtual {v2}, Lcom/android/car/audio/CarAudioZonesHelper;->loadAudioZones()[Lcom/android/car/audio/CarAudioZone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    .end local v2    # "zonesHelper":Lcom/android/car/audio/CarAudioZonesHelper;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 719
    .end local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 713
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioService;
    .end local p1    # "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 717
    .restart local v0    # "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioService;
    .restart local p1    # "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioService;
    .end local p1    # "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    :goto_0
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioService;
    .restart local p1    # "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    :catch_0
    move-exception v1

    .line 718
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to parse audio zone configuration"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 722
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/android/car/audio/CarAudioService;->getAudioControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1

    .line 723
    .local v1, "audioControl":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_6

    .line 727
    new-instance v2, Lcom/android/car/audio/CarAudioZonesHelperLegacy;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    const v4, 0x7f120004

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/android/car/audio/CarAudioZonesHelperLegacy;-><init>(Landroid/content/Context;ILandroid/util/SparseArray;Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;)V

    .line 729
    .local v2, "legacyHelper":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    invoke-virtual {v2}, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->loadAudioZones()[Lcom/android/car/audio/CarAudioZone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    .line 731
    .end local v1    # "audioControl":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "legacyHelper":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    :goto_1
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 732
    .local v4, "zone":Lcom/android/car/audio/CarAudioZone;
    invoke-virtual {v4}, Lcom/android/car/audio/CarAudioZone;->validateVolumeGroups()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 736
    invoke-virtual {v4}, Lcom/android/car/audio/CarAudioZone;->synchronizeCurrentGainIndex()V

    .line 737
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processed audio zone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CAR.AUDIO"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v4    # "zone":Lcom/android/car/audio/CarAudioZone;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 733
    .restart local v4    # "zone":Lcom/android/car/audio/CarAudioZone;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid volume groups configuration"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    .end local v4    # "zone":Lcom/android/car/audio/CarAudioZone;
    :cond_2
    new-instance v1, Lcom/android/car/audio/CarAudioDynamicRouting;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-direct {v1, v2}, Lcom/android/car/audio/CarAudioDynamicRouting;-><init>([Lcom/android/car/audio/CarAudioZone;)V

    .line 742
    .local v1, "dynamicRouting":Lcom/android/car/audio/CarAudioDynamicRouting;
    invoke-virtual {v1, v0}, Lcom/android/car/audio/CarAudioDynamicRouting;->setupAudioDynamicRouting(Landroid/media/audiopolicy/AudioPolicy$Builder;)V

    .line 745
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicyVolumeCallback:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    invoke-virtual {v0, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setAudioPolicyVolumeCallback(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 747
    sget-boolean v2, Lcom/android/car/audio/CarAudioService;->sUseCarAudioFocus:Z

    if-eqz v2, :cond_3

    .line 751
    new-instance v2, Lcom/android/car/audio/CarZonesAudioFocus;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    .line 752
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/car/audio/CarZonesAudioFocus;-><init>(Landroid/media/AudioManager;Landroid/content/pm/PackageManager;[Lcom/android/car/audio/CarAudioZone;)V

    iput-object v2, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    .line 754
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    invoke-virtual {v0, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setAudioPolicyFocusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;)V

    .line 755
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->setIsAudioFocusPolicy(Z)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 758
    :cond_3
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 759
    sget-boolean v2, Lcom/android/car/audio/CarAudioService;->sUseCarAudioFocus:Z

    if-eqz v2, :cond_4

    .line 761
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v2, p0, v3}, Lcom/android/car/audio/CarZonesAudioFocus;->setOwningPolicy(Lcom/android/car/audio/CarAudioService;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 764
    :cond_4
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v2

    .line 765
    .local v2, "r":I
    if-nez v2, :cond_5

    .line 768
    return-void

    .line 766
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAudioPolicy failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 724
    .end local v2    # "r":I
    .local v1, "audioControl":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Dynamic routing requested but audioControl HAL not available"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setupLegacyVolumeChangedListener()V
    .locals 3

    .line 701
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 702
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 705
    return-void
.end method

.method private setupVolumeTables(Z)V
    .locals 8
    .param p1, "isNew"    # Z

    .line 791
    new-instance v0, Lcom/android/car/audio/CarVolumeTablesHelper;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    .line 792
    if-eqz p1, :cond_0

    const v2, 0x7f120005

    goto :goto_0

    :cond_0
    const v2, 0x7f120006

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/car/audio/CarVolumeTablesHelper;-><init>(Landroid/content/Context;I)V

    .line 793
    .local v0, "helper":Lcom/android/car/audio/CarVolumeTablesHelper;
    invoke-virtual {v0}, Lcom/android/car/audio/CarVolumeTablesHelper;->loadVolumeTables()[Lcom/android/car/audio/CarVolumeTable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    .line 794
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 795
    .local v5, "table":Lcom/android/car/audio/CarVolumeTable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Group: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/car/audio/CarVolumeTable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CAR.AUDIO"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v5    # "table":Lcom/android/car/audio/CarVolumeTable;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v1, v1, v3

    .line 799
    invoke-virtual {v1}, Lcom/android/car/audio/CarAudioZone;->getVolumeGroups()[Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 800
    .local v1, "groups":[Lcom/android/car/audio/CarVolumeGroup;
    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 801
    .local v4, "group":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getTableId()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/car/audio/CarVolumeTable;->getPoints()[Lcom/android/car/audio/CarVolumePoint;

    move-result-object v5

    .line 802
    .local v5, "points":[Lcom/android/car/audio/CarVolumePoint;
    invoke-virtual {v4}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v6

    aget-object v6, v5, v6

    iget v6, v6, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 803
    .local v6, "indexDb":I
    iget-object v7, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v7, v4, v6}, Lcom/android/car/audio/CarAudioControl;->setVolume(Lcom/android/car/audio/CarVolumeGroup;I)V

    .line 800
    .end local v4    # "group":Lcom/android/car/audio/CarVolumeGroup;
    .end local v5    # "points":[Lcom/android/car/audio/CarVolumePoint;
    .end local v6    # "indexDb":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 805
    :cond_2
    return-void
.end method


# virtual methods
.method public clearZoneIdForUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 1190
    const-string v0, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->checkAndRemoveUidLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public createAudioPatch(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "usage"    # I
    .param p3, "gainInMillibels"    # I

    .line 891
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 893
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/audio/CarAudioService;->createAudioPatchLocked(Ljava/lang/String;II)Landroid/car/media/CarAudioPatchHandle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 894
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 375
    const-string v0, "*CarAudioService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tRun in legacy mode? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tPersist master mute state? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mPersistMasterMuteState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tMaster muted? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioConfigurationPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tCar audio configuration path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioConfigurationPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 384
    iget-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "\t"

    if-ge v4, v1, :cond_1

    aget-object v6, v0, v4

    .line 386
    .local v6, "zone":Lcom/android/car/audio/CarAudioZone;
    invoke-virtual {v6, v5, p1}, Lcom/android/car/audio/CarAudioZone;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 385
    .end local v6    # "zone":Lcom/android/car/audio/CarAudioZone;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 389
    const-string v0, "\tUID to Zone Mapping:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 391
    .local v1, "callingId":I
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 392
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    .line 393
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    .line 391
    const-string v6, "\t\tUID %d mapped to zone %d\n"

    invoke-virtual {p1, v6, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 394
    .end local v1    # "callingId":I
    goto :goto_1

    .line 396
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 397
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    invoke-virtual {v0, v5, p1}, Lcom/android/car/audio/CarZonesAudioFocus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 400
    :cond_3
    return-void
.end method

.method public getAudioSetting(Landroid/media/AudioSetting;)I
    .locals 2
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1405
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1407
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v1, p1}, Lcom/android/car/audio/CarAudioControl;->getAudioSetting(Landroid/media/AudioSetting;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioZoneIds()[I
    .locals 4

    .line 1066
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCarAudioZones="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pls check audio device or config !!!!!!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CAR.AUDIO"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    new-array v0, v1, [I

    const/4 v1, -0x1

    aput v1, v0, v2

    return-object v0

    .line 1070
    :cond_0
    const-string v0, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1071
    iget-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v0, :cond_1

    new-array v0, v1, [I

    aput v2, v0, v2

    return-object v0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/audio/-$$Lambda$A6-s85SDLQPJZMlz96mntxABBu0;->INSTANCE:Lcom/android/car/audio/-$$Lambda$A6-s85SDLQPJZMlz96mntxABBu0;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getContextForUsage(I)I
    .locals 1
    .param p1, "audioUsage"    # I

    .line 811
    sget-object v0, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public getEQBand(I)[I
    .locals 2
    .param p1, "type"    # I

    .line 1412
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1414
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v1, p1}, Lcom/android/car/audio/CarAudioControl;->getEQBand(I)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExternalSources()[Ljava/lang/String;
    .locals 11

    .line 849
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 851
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v1, "sourceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 854
    .local v2, "devices":[Landroid/media/AudioDeviceInfo;
    array-length v3, v2

    if-nez v3, :cond_0

    .line 855
    const-string v3, "CAR.AUDIO"

    const-string v4, "getExternalSources, no input devices found."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 860
    .local v6, "info":Landroid/media/AudioDeviceInfo;
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 874
    :pswitch_1
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 875
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 876
    const-string v8, "CAR.AUDIO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Discarded device with empty address, type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v6}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 876
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 879
    :cond_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    .end local v6    # "info":Landroid/media/AudioDeviceInfo;
    .end local v7    # "address":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 884
    :cond_2
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    monitor-exit v0

    return-object v3

    .line 885
    .end local v1    # "sourceAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "devices":[Landroid/media/AudioDeviceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupMaxVolume(II)I
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 627
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 631
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 636
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 637
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getMaxGainIndex()I

    move-result v2

    monitor-exit v0

    return v2

    .line 638
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGroupMinVolume(II)I
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 646
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 647
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 650
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 655
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 656
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getMinGainIndex()I

    move-result v2

    monitor-exit v0

    return v2

    .line 657
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGroupMute(II)Z
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 680
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 684
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 688
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 689
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->isMute()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 690
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGroupVolume(II)I
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 665
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 669
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 674
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 675
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v2

    monitor-exit v0

    return v2

    .line 676
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOnVolumeMax(II)I
    .locals 6
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 542
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 544
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getOnVolumeMaxIndex()I

    move-result v2

    .line 545
    .local v2, "index":I
    const-string v3, "CAR.AUDIO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOnVolumeMax: zoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    monitor-exit v0

    return v2

    .line 548
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    .end local v2    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOnVolumeMin(II)I
    .locals 6
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 552
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 554
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getOnVolumeMinIndex()I

    move-result v2

    .line 555
    .local v2, "index":I
    const-string v3, "CAR.AUDIO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOnVolumeMin: zoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    monitor-exit v0

    return v2

    .line 558
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    .end local v2    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUsagesForVolumeGroupId(II)[I
    .locals 6
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 1038
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1039
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1042
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1043
    const/4 v1, 0x1

    new-array v1, v1, [I

    sget-object v3, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPE_USAGES:[I

    aget v3, v3, p2

    aput v3, v1, v2

    monitor-exit v0

    return-object v1

    .line 1046
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 1047
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    nop

    .line 1048
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getContexts()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1049
    .local v3, "contexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    .local v4, "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1051
    sget-object v5, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1052
    sget-object v5, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1055
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v5, Lcom/android/car/audio/-$$Lambda$CarAudioService$7jfwuw0AKCFjAyMehOdgt6SmieI;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioService$7jfwuw0AKCFjAyMehOdgt6SmieI;

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1056
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    .end local v3    # "contexts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVolumeGroupCount(I)I
    .locals 5
    .param p1, "zoneId"    # I

    .line 997
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 998
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v1, v1

    if-gt v1, p1, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    array-length v1, v1

    monitor-exit v0

    return v1

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoneId out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1008
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/car/audio/CarAudioZone;->getVolumeGroupCount()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1000
    :cond_2
    :goto_0
    const-string v1, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCarAudioZones="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", zoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pls check audio device or config !!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    monitor-exit v0

    return v2

    .line 1009
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVolumeGroupIdForUsage(II)I
    .locals 10
    .param p1, "zoneId"    # I
    .param p2, "usage"    # I

    .line 1014
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 1017
    const-string v1, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCarAudioZones="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pls check audio device or config !!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    monitor-exit v0

    return v2

    .line 1020
    :cond_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoneId out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1023
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/car/audio/CarAudioZone;->getVolumeGroups()[Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 1024
    .local v1, "groups":[Lcom/android/car/audio/CarVolumeGroup;
    move v3, v4

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 1025
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lcom/android/car/audio/CarVolumeGroup;->getContexts()[I

    move-result-object v5

    .line 1026
    .local v5, "contexts":[I
    array-length v6, v5

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    .line 1027
    .local v8, "context":I
    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->getContextForUsage(I)I

    move-result v9

    if-ne v9, v8, :cond_1

    .line 1028
    monitor-exit v0

    return v3

    .line 1026
    .end local v8    # "context":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1024
    .end local v5    # "contexts":[I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1032
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return v2

    .line 1033
    .end local v1    # "groups":[Lcom/android/car/audio/CarVolumeGroup;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getZoneIdForDisplayPortId(B)I
    .locals 7
    .param p1, "displayPortId"    # B

    .line 1249
    const-string v0, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1251
    const/4 v1, 0x0

    move v2, v1

    .local v2, "index":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1252
    iget-object v3, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    aget-object v3, v3, v2

    .line 1253
    .local v3, "zone":Lcom/android/car/audio/CarAudioZone;
    invoke-virtual {v3}, Lcom/android/car/audio/CarAudioZone;->getPhysicalDisplayAddresses()Ljava/util/List;

    move-result-object v4

    .line 1254
    .local v4, "displayAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayAddress$Physical;>;"
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/car/audio/-$$Lambda$CarAudioService$g5877h_ygc54gR2giA7qVhrBkGo;

    invoke-direct {v6, p1}, Lcom/android/car/audio/-$$Lambda$CarAudioService$g5877h_ygc54gR2giA7qVhrBkGo;-><init>(B)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1256
    monitor-exit v0

    return v2

    .line 1251
    .end local v3    # "zone":Lcom/android/car/audio/CarAudioZone;
    .end local v4    # "displayAddresses":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayAddress$Physical;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1261
    .end local v2    # "index":I
    :cond_1
    monitor-exit v0

    return v1

    .line 1262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getZoneIdForUid(I)I
    .locals 4
    .param p1, "uid"    # I

    .line 1087
    const-string v0, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1090
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZoneIdForUid uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a zone. Defaulting to PRIMARY_AUDIO_ZONE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-direct {p0, v3, p1}, Lcom/android/car/audio/CarAudioService;->setZoneIdForUidNoCheckLocked(II)Z

    .line 1100
    :cond_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 13

    .line 308
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 313
    .local v1, "deviceInfos":[Landroid/media/AudioDeviceInfo;
    array-length v5, v1

    if-nez v5, :cond_0

    .line 314
    const-string v2, "CAR.AUDIO"

    const-string v3, "No output device available, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit v0

    return-void

    .line 317
    :cond_0
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v5}, Lcom/android/car/audio/CarAudioControl;->loadAllTables()V

    .line 319
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v5}, Lcom/android/car/audio/CarAudioControl;->init()V

    .line 320
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 321
    .local v5, "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    array-length v6, v1

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v7

    .line 322
    .local v8, "info":Landroid/media/AudioDeviceInfo;
    const-string v9, "CAR.AUDIO"

    const-string v10, "output id=%d address=%s type=%s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 323
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    .line 322
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v9

    const/16 v10, 0x15

    if-ne v9, v10, :cond_1

    .line 325
    new-instance v9, Lcom/android/car/audio/CarAudioDeviceInfo;

    invoke-direct {v9, v8}, Lcom/android/car/audio/CarAudioDeviceInfo;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 328
    .local v9, "carInfo":Lcom/android/car/audio/CarAudioDeviceInfo;
    invoke-virtual {v9}, Lcom/android/car/audio/CarAudioDeviceInfo;->getBusNumber()I

    move-result v10

    if-ltz v10, :cond_1

    .line 329
    invoke-virtual {v9}, Lcom/android/car/audio/CarAudioDeviceInfo;->getBusNumber()I

    move-result v10

    invoke-virtual {v5, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    const-string v10, "CAR.AUDIO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Valid bus found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v8    # "info":Landroid/media/AudioDeviceInfo;
    .end local v9    # "carInfo":Lcom/android/car/audio/CarAudioDeviceInfo;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 334
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/car/audio/CarAudioService;->setupDynamicRouting(Landroid/util/SparseArray;)V

    .line 335
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mActivityLaunchListener:Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;

    invoke-virtual {v4, v6}, Lcom/android/car/SystemActivityMonitoringService;->registerActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V

    .line 337
    .end local v1    # "deviceInfos":[Landroid/media/AudioDeviceInfo;
    .end local v5    # "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    goto :goto_1

    .line 338
    :cond_3
    const-string v1, "CAR.AUDIO"

    const-string v4, "Audio dynamic routing not enabled, run in legacy mode"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->setupLegacyVolumeChangedListener()V

    .line 343
    :goto_1
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mPersistMasterMuteState:Z

    if-eqz v1, :cond_5

    .line 344
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "android.car.MASTER_MUTE"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    move v1, v2

    .line 346
    .local v1, "storedMasterMute":Z
    invoke-direct {p0, v1, v3}, Lcom/android/car/audio/CarAudioService;->setMasterMute(ZI)V

    .line 349
    .end local v1    # "storedMasterMute":Z
    :cond_5
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarPowerManagementService:Lcom/android/car/CarPowerManagementService;

    invoke-virtual {v1}, Lcom/android/car/CarPowerManagementService;->checkStandbyMode()V

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBTMusicGroupId(I)Z
    .locals 2
    .param p1, "groupId"    # I

    .line 413
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDynamicRoutingEnabled()Z
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    return v0
.end method

.method isMediaGroupId(I)Z
    .locals 3
    .param p1, "groupId"    # I

    .line 408
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method isMixSource(Landroid/media/AudioFocusInfo;)Z
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 423
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 424
    return v0

    .line 426
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    .line 427
    .local v1, "usage":I
    const/16 v2, 0xc

    const/4 v3, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_2

    .line 432
    :cond_1
    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 445
    :cond_2
    return v0

    .line 434
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 435
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    const-string v4, "key_car_source_type"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 436
    :cond_4
    move v4, v0

    :goto_1
    nop

    .line 437
    .local v4, "source":I
    const/16 v5, 0x1e

    if-eq v4, v5, :cond_5

    const/16 v5, 0x27

    if-eq v4, v5, :cond_5

    .line 442
    return v0

    .line 440
    :cond_5
    return v3

    .line 429
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "source":I
    :cond_6
    :goto_2
    return v3
.end method

.method isNaviGroupId(I)Z
    .locals 2
    .param p1, "groupId"    # I

    .line 418
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/android/car/audio/CarAudioService;->getVolumeGroupIdForUsage(II)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method regainAudioFocusLocked(Ljava/util/ArrayList;I)V
    .locals 4
    .param p2, "zoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioFocusInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1170
    .local p1, "afiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    .line 1171
    .local v1, "info":Landroid/media/AudioFocusInfo;
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    invoke-virtual {v2, v1}, Lcom/android/car/audio/CarZonesAudioFocus;->reevaluateAndRegainAudioFocus(Landroid/media/AudioFocusInfo;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Focus could not be granted for entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->getClientUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in zone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1173
    const-string v3, "CAR.AUDIO"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    .end local v1    # "info":Landroid/media/AudioFocusInfo;
    :cond_0
    goto :goto_0

    .line 1180
    :cond_1
    return-void
.end method

.method public registerAudioSettingCallback(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1285
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioSettingCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    .line 1287
    invoke-static {p1}, Landroid/car/media/ICarAudioSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudioSettingCallback;

    move-result-object v2

    .line 1286
    invoke-virtual {v1, v2}, Lcom/android/car/BinderInterfaceContainer;->addBinder(Landroid/os/IInterface;)V

    .line 1288
    monitor-exit v0

    .line 1289
    return-void

    .line 1288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVolumeCallback(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1267
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1268
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-static {p1}, Landroid/car/media/ICarVolumeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarVolumeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/BinderInterfaceContainer;->addBinder(Landroid/os/IInterface;)V

    .line 1271
    monitor-exit v0

    .line 1272
    return-void

    .line 1271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 359
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 360
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    invoke-virtual {v2, v1, v1}, Lcom/android/car/audio/CarZonesAudioFocus;->setOwningPolicy(Lcom/android/car/audio/CarAudioService;Landroid/media/audiopolicy/AudioPolicy;)V

    .line 361
    iput-object v1, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mSystemActivityMonitoringService:Lcom/android/car/SystemActivityMonitoringService;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mActivityLaunchListener:Lcom/android/car/audio/CarAudioService$ActivityLaunchListener;

    invoke-virtual {v1, v2}, Lcom/android/car/SystemActivityMonitoringService;->unRegisterActivityLaunchListener(Lcom/android/car/SystemActivityMonitoringService$ActivityLaunchListener;)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mLegacyVolumeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v1}, Lcom/android/car/BinderInterfaceContainer;->clear()V

    .line 369
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioSettingCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-virtual {v1}, Lcom/android/car/BinderInterfaceContainer;->clear()V

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method releaseAudioDSPSource(Landroid/media/AudioFocusInfo;)V
    .locals 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 1816
    if-nez p1, :cond_0

    .line 1817
    return-void

    .line 1820
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAudioDSPSource : afi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v1

    invoke-static {v1}, Lcom/android/car/audio/CarAudioService;->focusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getLossReceived()I

    move-result v1

    invoke-static {v1}, Lcom/android/car/audio/CarAudioService;->focusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1820
    const-string v1, "CAR.AUDIO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    .line 1827
    .local v0, "abanUsage":I
    const/16 v1, 0x3e7

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    .line 1831
    :cond_1
    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_2

    .line 1832
    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioService;->onSetReverseAttenuationLocked(Z)V

    goto/16 :goto_5

    .line 1834
    :cond_2
    const/4 v1, 0x0

    .line 1835
    .local v1, "isNeedToRelease":Z
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 1836
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Lcom/android/car/audio/CarAudioService;->isMixSource(Landroid/media/AudioFocusInfo;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 1837
    if-eqz v3, :cond_3

    const-string v4, "key_car_source_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1838
    :cond_3
    move v4, v2

    :goto_0
    nop

    .line 1839
    .local v4, "source":I
    if-eqz v3, :cond_4

    const-string v6, "key_car_source_type"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x34

    if-ne v6, v7, :cond_4

    .line 1841
    const-string v6, "CAR.AUDIO"

    const-string v7, "Carplay Navi Release"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioService;->isCarplayNavi:Z

    goto :goto_1

    .line 1843
    :cond_4
    const/16 v6, 0x1e

    if-ne v4, v6, :cond_5

    .line 1844
    const-string v6, "CAR.AUDIO"

    const-string v7, "Carplay Enhanced Siri Release"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioService;->isCarplayEnhancedSiri:Z

    goto :goto_1

    .line 1846
    :cond_5
    const/16 v6, 0x27

    if-ne v4, v6, :cond_6

    .line 1847
    const-string v6, "CAR.AUDIO"

    const-string v7, "Incoming Prompt Release"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v6, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$1300(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    goto :goto_1

    .line 1850
    :cond_6
    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v6, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$800(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1852
    :goto_1
    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1853
    :try_start_0
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    invoke-virtual {v2}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 1854
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1855
    iput-object v5, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    .line 1856
    const/4 v1, 0x1

    .line 1858
    :cond_7
    monitor-exit v6

    .line 1859
    .end local v4    # "source":I
    goto :goto_3

    .line 1858
    .restart local v4    # "source":I
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1860
    .end local v4    # "source":I
    :cond_8
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1861
    :try_start_1
    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    invoke-virtual {v6}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 1862
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v7

    .line 1861
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1863
    iput-object v5, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    .line 1864
    const/4 v1, 0x1

    .line 1865
    if-eqz v3, :cond_a

    .line 1866
    const-string v5, "key_car_source_type"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1867
    .local v5, "source":I
    const/16 v6, 0x46

    if-eq v5, v6, :cond_9

    goto :goto_2

    .line 1869
    :cond_9
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioService;->mIsAAMediaFocus:Z

    .line 1870
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->onUpdateAttenuationLocked()V

    .line 1878
    .end local v5    # "source":I
    :cond_a
    :goto_2
    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    const/4 v5, 0x6

    if-ne v0, v5, :cond_c

    .line 1880
    :cond_b
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v5, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$1400(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1882
    :cond_c
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1885
    :goto_3
    if-nez v1, :cond_d

    .line 1886
    const-string v2, "CAR.AUDIO"

    const-string v4, "onAudioFocusLoss no need to release audio!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return-void

    .line 1890
    :cond_d
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1891
    .local v2, "contextNumber":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v4, v2}, Lcom/android/car/audio/CarAudioControl;->getBusForContext(I)I

    move-result v5

    .line 1892
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 1891
    invoke-virtual {v4, v5, v6}, Lcom/android/car/audio/CarAudioControl;->releaseAudio(ILandroid/media/AudioAttributes;)V

    goto :goto_5

    .line 1882
    .end local v2    # "contextNumber":I
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1829
    .end local v1    # "isNeedToRelease":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_e
    :goto_4
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v1, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$1200(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1894
    :goto_5
    return-void
.end method

.method public releaseAudioPatch(Landroid/car/media/CarAudioPatchHandle;)V
    .locals 2
    .param p1, "carPatch"    # Landroid/car/media/CarAudioPatchHandle;

    .line 899
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 901
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->releaseAudioPatchLocked(Landroid/car/media/CarAudioPatchHandle;)V

    .line 902
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestAudioDSPSource(Landroid/media/AudioFocusInfo;)V
    .locals 8
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 1735
    if-nez p1, :cond_0

    .line 1736
    return-void

    .line 1739
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestAudioDSPSource afi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result v1

    invoke-static {v1}, Lcom/android/car/audio/CarAudioService;->focusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getLossReceived()I

    move-result v1

    invoke-static {v1}, Lcom/android/car/audio/CarAudioService;->focusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1739
    const-string v1, "CAR.AUDIO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    .line 1746
    .local v0, "reqUsage":I
    const/16 v1, 0x3e7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_10

    const/16 v1, 0x3e5

    if-ne v0, v1, :cond_1

    goto/16 :goto_4

    .line 1750
    :cond_1
    const/16 v1, 0x3e6

    if-ne v0, v1, :cond_2

    .line 1751
    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioService;->onSetReverseAttenuationLocked(Z)V

    goto/16 :goto_5

    .line 1753
    :cond_2
    const/4 v1, 0x0

    .line 1754
    .local v1, "isNeedToRequest":Z
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    .line 1755
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Lcom/android/car/audio/CarAudioService;->isMixSource(Landroid/media/AudioFocusInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1756
    if-eqz v3, :cond_3

    const-string v4, "key_car_source_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1757
    :cond_3
    const/4 v4, 0x0

    :goto_0
    nop

    .line 1758
    .local v4, "source":I
    const/16 v5, 0x34

    if-ne v4, v5, :cond_4

    .line 1759
    const-string v5, "CAR.AUDIO"

    const-string v6, "Carplay Navi Request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioService;->isCarplayNavi:Z

    goto :goto_1

    .line 1761
    :cond_4
    const/16 v5, 0x1e

    if-ne v4, v5, :cond_5

    .line 1762
    const-string v5, "CAR.AUDIO"

    const-string v6, "Carplay Enhanced Siri Request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioService;->isCarplayEnhancedSiri:Z

    goto :goto_1

    .line 1764
    :cond_5
    const/16 v5, 0x27

    if-ne v4, v5, :cond_6

    .line 1765
    const-string v5, "CAR.AUDIO"

    const-string v6, "Incoming Prompt Request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v5, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$1300(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    goto :goto_1

    .line 1768
    :cond_6
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v5, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$800(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1769
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->onNaviAttenuationLocked()V

    .line 1771
    :goto_1
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1772
    :try_start_0
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    invoke-virtual {v2}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 1773
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 1772
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1774
    :cond_7
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService;->mixStackFocusInfo:Landroid/media/AudioFocusInfo;

    .line 1775
    const/4 v1, 0x1

    .line 1777
    :cond_8
    monitor-exit v5

    .line 1778
    .end local v4    # "source":I
    goto :goto_3

    .line 1777
    .restart local v4    # "source":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1779
    .end local v4    # "source":I
    :cond_9
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1780
    :try_start_1
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    invoke-virtual {v5}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v5

    .line 1781
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 1780
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1782
    :cond_a
    iput-object p1, p0, Lcom/android/car/audio/CarAudioService;->mainStackFocusInfo:Landroid/media/AudioFocusInfo;

    .line 1783
    const/4 v1, 0x1

    .line 1784
    if-eqz v3, :cond_c

    .line 1785
    const-string v5, "key_car_source_type"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1786
    .local v5, "source":I
    const/16 v6, 0x46

    if-eq v5, v6, :cond_b

    goto :goto_2

    .line 1788
    :cond_b
    const-string v6, "CAR.AUDIO"

    const-string v7, "AA Media ducking by mobile!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioService;->mIsAAMediaFocus:Z

    .line 1790
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->onUpdateAttenuationLocked()V

    .line 1797
    .end local v5    # "source":I
    :cond_c
    :goto_2
    const/4 v5, 0x2

    if-eq v0, v5, :cond_d

    const/4 v5, 0x6

    if-ne v0, v5, :cond_e

    .line 1799
    :cond_d
    iget-object v5, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v5, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$1400(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1802
    :cond_e
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1804
    :goto_3
    if-nez v1, :cond_f

    .line 1805
    const-string v2, "CAR.AUDIO"

    const-string v4, "onAudioFocusGrant no need to request audio!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    return-void

    .line 1809
    :cond_f
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1810
    .local v2, "contextNumber":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v4, v2}, Lcom/android/car/audio/CarAudioControl;->getBusForContext(I)I

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/android/car/audio/CarAudioControl;->requestAudio(ILandroid/media/AudioFocusInfo;)V

    goto :goto_5

    .line 1802
    .end local v2    # "contextNumber":I
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1748
    .end local v1    # "isNeedToRequest":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_10
    :goto_4
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    invoke-static {v1, v2}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$1200(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1813
    :goto_5
    return-void
.end method

.method public setAudioSetting(Landroid/media/AudioSetting;)V
    .locals 2
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1396
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1398
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v1, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetting(Landroid/media/AudioSetting;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioService;->callbackAudioSettingChange(Landroid/media/AudioSetting;)V

    .line 1401
    :cond_0
    monitor-exit v0

    .line 1402
    return-void

    .line 1401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBalanceTowardRight(F)V
    .locals 5
    .param p1, "value"    # F

    .line 831
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 832
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/android/car/audio/CarAudioService;->getAudioControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .local v1, "audioControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 836
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setBalanceTowardRight(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    goto :goto_0

    .line 837
    :catch_0
    move-exception v2

    .line 838
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setBalanceTowardRight failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v1    # "audioControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setFadeTowardFront(F)V
    .locals 5
    .param p1, "value"    # F

    .line 816
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 818
    invoke-static {}, Lcom/android/car/audio/CarAudioService;->getAudioControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    .local v1, "audioControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 821
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setFadeTowardFront(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    goto :goto_0

    .line 822
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setFadeTowardFront failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    .end local v1    # "audioControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 827
    return-void

    .line 826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setGroupChannelGain(IIII)V
    .locals 4
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "gain"    # I
    .param p4, "flags"    # I

    .line 515
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGroupChannelGain zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 519
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/car/audio/CarAudioControl;->setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V

    .line 520
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    monitor-exit v0

    .line 521
    return-void

    .line 520
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGroupMute(IIZI)V
    .locals 4
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "state"    # Z
    .param p4, "flags"    # I

    .line 485
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 488
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGroupMute zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2, p3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 493
    monitor-exit v0

    return-void

    .line 496
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 497
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->isMute()Z

    move-result v2

    if-eq v2, p3, :cond_1

    .line 498
    invoke-direct {p0, p1, p2, p4}, Lcom/android/car/audio/CarAudioService;->callbackGroupMuteChange(III)V

    .line 499
    invoke-virtual {v1, p3}, Lcom/android/car/audio/CarVolumeGroup;->setMute(Z)Z

    .line 502
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :cond_1
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGroupVolume(IIII)V
    .locals 5
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .line 453
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 457
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioService;->mUseDynamicRouting:Z

    if-nez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioManager:Landroid/media/AudioManager;

    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2, p3, p4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 460
    monitor-exit v0

    return-void

    .line 463
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 464
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v2

    if-eq v2, p3, :cond_4

    .line 465
    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/android/car/audio/CarVolumeGroup;->setCurrentGainIndex(IZ)V

    .line 466
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mCarVolumeTables:[Lcom/android/car/audio/CarVolumeTable;

    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->getTableId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/car/audio/CarVolumeTable;->getPoints()[Lcom/android/car/audio/CarVolumePoint;

    move-result-object v2

    .line 467
    .local v2, "points":[Lcom/android/car/audio/CarVolumePoint;
    aget-object v3, v2, p3

    iget v3, v3, Lcom/android/car/audio/CarVolumePoint;->mIndex:I

    .line 468
    .local v3, "indexDb":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v4, v1, v3}, Lcom/android/car/audio/CarAudioControl;->setVolume(Lcom/android/car/audio/CarVolumeGroup;I)V

    .line 470
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioService;->mReverseAttenState:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isMediaGroupId(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isNaviGroupId(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isBTMusicGroupId(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioService;->mNaviAttenState:Z

    if-eqz v4, :cond_2

    .line 472
    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isMediaGroupId(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioService;->mPhoneAttenState:Z

    if-eqz v4, :cond_4

    .line 473
    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isNaviGroupId(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 474
    :cond_3
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioService;->onUpdateAttenuationLocked()V

    .line 477
    .end local v2    # "points":[Lcom/android/car/audio/CarVolumePoint;
    .end local v3    # "indexDb":I
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/car/audio/CarAudioService;->callbackGroupVolumeChange(III)V

    .line 478
    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isMediaGroupId(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/car/audio/CarAudioService;->isBTMusicGroupId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/android/car/audio/CarVolumeGroup;->isMute()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 479
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/android/car/audio/CarAudioService;->setGroupMute(IIZI)V

    .line 481
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :cond_6
    monitor-exit v0

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNaviDucking(Z)V
    .locals 2
    .param p1, "isDucking"    # Z

    .line 1425
    iput-boolean p1, p0, Lcom/android/car/audio/CarAudioService;->isCarplayDucking:Z

    .line 1426
    if-eqz p1, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$800(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    goto :goto_0

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioServiceHandler:Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;->access$800(Lcom/android/car/audio/CarAudioService$CarAudioServiceHandler;Z)V

    .line 1431
    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "true"

    goto :goto_1

    :cond_1
    const-string v0, "false"

    :goto_1
    const-string v1, "sys.carplay_ducking"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method public setPresetEQForSmart(I)V
    .locals 2
    .param p1, "type"    # I

    .line 1419
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v1, p1}, Lcom/android/car/audio/CarAudioControl;->setPresetEQForSmart(I)V

    .line 1421
    monitor-exit v0

    .line 1422
    return-void

    .line 1421
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSourceMute(IIZ)V
    .locals 4
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "state"    # Z

    .line 506
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSourceMute zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 510
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    iget-object v2, p0, Lcom/android/car/audio/CarAudioService;->mCarAudioControl:Lcom/android/car/audio/CarAudioControl;

    invoke-virtual {v2, v1, p3}, Lcom/android/car/audio/CarAudioControl;->setSourceMute(Lcom/android/car/audio/CarVolumeGroup;Z)V

    .line 511
    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setZoneIdForUid(II)Z
    .locals 6
    .param p1, "zoneId"    # I
    .param p2, "uid"    # I

    .line 1112
    const-string v0, "android.car.permission.CAR_CONTROL_AUDIO_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoneIdForUid Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mapped to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mUidToZoneMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1121
    .local v1, "currentZoneId":Ljava/lang/Integer;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v2, "currentFocusHoldersForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v3, "currentFocusLosersForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    if-eqz v1, :cond_1

    .line 1124
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    .line 1125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1124
    invoke-virtual {v4, p2, v5}, Lcom/android/car/audio/CarZonesAudioFocus;->getAudioFocusHoldersForUid(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object v2, v4

    .line 1126
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    .line 1127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1126
    invoke-virtual {v4, p2, v5}, Lcom/android/car/audio/CarZonesAudioFocus;->getAudioFocusLosersForUid(II)Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 1128
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1133
    :cond_0
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    .line 1134
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1133
    invoke-virtual {v4, v3, v5}, Lcom/android/car/audio/CarZonesAudioFocus;->transientlyLoseInFocusInZone(Ljava/util/ArrayList;I)V

    .line 1136
    iget-object v4, p0, Lcom/android/car/audio/CarAudioService;->mFocusHandler:Lcom/android/car/audio/CarZonesAudioFocus;

    .line 1137
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1136
    invoke-virtual {v4, v2, v5}, Lcom/android/car/audio/CarZonesAudioFocus;->transientlyLoseInFocusInZone(Ljava/util/ArrayList;I)V

    .line 1144
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/car/audio/CarAudioService;->checkAndRemoveUidLocked(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1145
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->setZoneIdForUidNoCheckLocked(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1150
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1151
    invoke-virtual {p0, v3, p1}, Lcom/android/car/audio/CarAudioService;->regainAudioFocusLocked(Ljava/util/ArrayList;I)V

    .line 1154
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1155
    invoke-virtual {p0, v2, p1}, Lcom/android/car/audio/CarAudioService;->regainAudioFocusLocked(Ljava/util/ArrayList;I)V

    .line 1157
    :cond_3
    const/4 v4, 0x1

    monitor-exit v0

    return v4

    .line 1160
    :cond_4
    const/4 v4, 0x0

    monitor-exit v0

    return v4

    .line 1161
    .end local v1    # "currentZoneId":Ljava/lang/Integer;
    .end local v2    # "currentFocusHoldersForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    .end local v3    # "currentFocusLosersForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioFocusInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupOnVolumeMax(III)V
    .locals 4
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "index"    # I

    .line 524
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupOnVolumeMax: zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 528
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1, p3}, Lcom/android/car/audio/CarVolumeGroup;->setOnVolumeMaxIndex(I)I

    .line 529
    nop

    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setupOnVolumeMin(III)V
    .locals 4
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I
    .param p3, "index"    # I

    .line 533
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupOnVolumeMin: zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-direct {p0, p1, p2}, Lcom/android/car/audio/CarAudioService;->getCarVolumeGroup(II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 537
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v1, p3}, Lcom/android/car/audio/CarVolumeGroup;->setOnVolumeMinIndex(I)I

    .line 538
    nop

    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    monitor-exit v0

    .line 539
    return-void

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAudioSettingCallback(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1293
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1294
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mAudioSettingCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    .line 1295
    invoke-static {p1}, Landroid/car/media/ICarAudioSettingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarAudioSettingCallback;

    move-result-object v2

    .line 1294
    invoke-virtual {v1, v2}, Lcom/android/car/BinderInterfaceContainer;->removeBinder(Landroid/os/IInterface;)V

    .line 1296
    monitor-exit v0

    .line 1297
    return-void

    .line 1296
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterVolumeCallback(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1276
    iget-object v0, p0, Lcom/android/car/audio/CarAudioService;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1277
    :try_start_0
    const-string v1, "android.car.permission.CAR_CONTROL_AUDIO_VOLUME"

    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioService;->enforcePermission(Ljava/lang/String;)V

    .line 1279
    iget-object v1, p0, Lcom/android/car/audio/CarAudioService;->mVolumeCallbackContainer:Lcom/android/car/BinderInterfaceContainer;

    invoke-static {p1}, Landroid/car/media/ICarVolumeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarVolumeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/car/BinderInterfaceContainer;->removeBinder(Landroid/os/IInterface;)V

    .line 1280
    monitor-exit v0

    .line 1281
    return-void

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
