.class public Lcom/chery/media/model/business/RadioBusiness;
.super Ljava/lang/Object;
.source "RadioBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;,
        Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;,
        Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;
    }
.end annotation


# static fields
.field private static final ACTION_ENTER_ENGINEERING_MODE:Ljava/lang/String; = "com.yfve.engineeringmode.enter"

.field private static final ACTION_EXIT_ENGINEERING_MODE:Ljava/lang/String; = "com.yfve.engineeringmode.exit"

.field public static final ALREADY_NO_SAVED:Ljava/lang/String; = "ALREADY_NO_SAVED"

.field public static final ALREADY_SAVED:Ljava/lang/String; = "ALREADY_SAVED"

.field private static final COLLECTION_MAX:I = 0x14

.field public static final FAIL_LIST_FULL:Ljava/lang/String; = "FAIL_LIST_FULL"

.field public static final FREQ_DIVIDE_BAND:Ljava/lang/Integer;

.field private static final RADIO_MAX:I = 0x28

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/chery/media/model/business/RadioBusiness;


# instance fields
.field private amAudioFocus:I

.field private amAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private amCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private amScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocusRequestAm:Landroid/media/AudioFocusRequest;

.field private audioFocusRequestFm:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private cb:Landroid/hardware/radio/RadioTuner$Callback;

.field private context:Landroid/content/Context;

.field private currentBand:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentChannel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation
.end field

.field private fmAudioFocus:I

.field private fmAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private fmCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fmScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private hwHandler:Landroid/os/Handler;

.field private list:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;>;"
        }
    .end annotation
.end field

.field private listRadio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation
.end field

.field listRadio_autoStore:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation
.end field

.field private mAmConfig:Landroid/hardware/radio/RadioManager$AmBandConfig;

.field private mAmDescriptor:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

.field private mArea:Ljava/lang/Integer;

.field private mCurrentBand:I

.field private mCurrentChannel:I

.field private mCurrentTunerState:Ljava/lang/Integer;

.field private mFmConfig:Landroid/hardware/radio/RadioManager$FmBandConfig;

.field private mFmDescriptor:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

.field private mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

.field private mModules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mProgramList:Landroid/hardware/radio/ProgramList;

.field private final mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

.field private mProgramListSnapshot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioManager:Landroid/hardware/radio/RadioManager;

.field private mRadioTuner:Landroid/hardware/radio/RadioTuner;

.field private mSignalStrength:I

.field private mTunerListSp:Landroid/content/SharedPreferences;

.field private m_LiveDateArea:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mbPlayStatusRecover:Z

.field private mbRestoreFrequency:Z

.field private mbScanByVr:Z

.field private mbSettingBand:Z

.field private playingState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private runAreaChanged:Ljava/lang/Runnable;

.field private runCollectionCanceled:Ljava/lang/Runnable;

.field private runMarkedSuccess:Ljava/lang/Runnable;

.field private runSaveRestoreInfo:Ljava/lang/Runnable;

.field private runSetMute:Ljava/lang/Runnable;

.field private runShowNoSpace:Ljava/lang/Runnable;

.field private runShowNoValidRadio:Ljava/lang/Runnable;

.field private tunerInfoListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private tunerState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-class v0, Lcom/chery/media/model/business/RadioBusiness;

    const-string v1, "TUNER"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const/16 v0, 0x1388

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    invoke-direct {v0}, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 77
    iput v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mSignalStrength:I

    const v2, 0x155cc

    .line 84
    iput v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    const/4 v2, 0x1

    .line 85
    iput v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    const/4 v3, -0x1

    .line 91
    iput v3, p0, Lcom/chery/media/model/business/RadioBusiness;->fmAudioFocus:I

    .line 93
    iput v3, p0, Lcom/chery/media/model/business/RadioBusiness;->amAudioFocus:I

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio_autoStore:Ljava/util/List;

    .line 96
    iput-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    .line 101
    iput-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->fmScanList:Ljava/util/List;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->amScanList:Ljava/util/List;

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    .line 108
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbRestoreFrequency:Z

    .line 111
    iput-boolean v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    .line 113
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    .line 115
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    .line 122
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->currentChannel:Landroidx/lifecycle/MutableLiveData;

    .line 123
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->currentBand:Landroidx/lifecycle/MutableLiveData;

    .line 124
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->list:Landroidx/lifecycle/MutableLiveData;

    .line 125
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerState:Landroidx/lifecycle/MutableLiveData;

    .line 126
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    .line 127
    new-instance v3, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v3}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->m_LiveDateArea:Landroidx/lifecycle/MutableLiveData;

    .line 318
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$4;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$4;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->runSetMute:Ljava/lang/Runnable;

    .line 777
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$5;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$5;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->runShowNoValidRadio:Ljava/lang/Runnable;

    .line 783
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$6;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$6;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->runShowNoSpace:Ljava/lang/Runnable;

    .line 790
    new-instance v3, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$v41xOYTAJys7RoHh8gKlD3AZnek;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$v41xOYTAJys7RoHh8gKlD3AZnek;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    .line 828
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$7;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$7;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->cb:Landroid/hardware/radio/RadioTuner$Callback;

    .line 958
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$8;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$8;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->fmAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 978
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$9;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$9;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->amAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1055
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$14;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$14;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->runMarkedSuccess:Ljava/lang/Runnable;

    .line 1061
    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$15;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$15;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->runCollectionCanceled:Ljava/lang/Runnable;

    .line 1206
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerInfoListeners:Ljava/util/List;

    .line 137
    sget-object v3, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v4, "RadioBusiness()"

    invoke-static {v3, v4}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->m_LiveDateArea:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 140
    new-instance v1, Lcom/chery/media/model/business/RadioDef;

    invoke-direct {v1}, Lcom/chery/media/model/business/RadioDef;-><init>()V

    .line 141
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/chery/media/model/business/RadioBusiness;->getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    move-result-object v3

    iget v3, v3, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    iput v3, v1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 142
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->currentChannel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 144
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->currentBand:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private RestoreFrequence()V
    .locals 4

    .line 1238
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    const-string v1, "radio_frequency_save.txt"

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->readFromInternalFile(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1239
    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1243
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1244
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreFrequence : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/chery/media/model/business/RadioBusiness$17;

    invoke-direct {v2, p0}, Lcom/chery/media/model/business/RadioBusiness$17;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    invoke-virtual {v2}, Lcom/chery/media/model/business/RadioBusiness$17;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 1240
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    const v0, 0x155cc

    iput v0, p0, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->FmFrequency:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->m_LiveDateArea:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->saveCollection()V

    return-void
.end method

.method static synthetic access$102(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerInfoListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->recoverSource()V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/model/business/RadioBusiness;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->openSignalReport()V

    return-void
.end method

.method static synthetic access$1500(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->closeSignalReport()V

    return-void
.end method

.method static synthetic access$1600(Lcom/chery/media/model/business/RadioBusiness;)Landroid/hardware/radio/RadioTuner;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/chery/media/model/business/RadioBusiness;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/chery/media/model/business/RadioBusiness;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    return p0
.end method

.method static synthetic access$1802(Lcom/chery/media/model/business/RadioBusiness;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->currentChannel:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/chery/media/model/business/RadioBusiness;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mSignalStrength:I

    return p0
.end method

.method static synthetic access$2002(Lcom/chery/media/model/business/RadioBusiness;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mSignalStrength:I

    return p1
.end method

.method static synthetic access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->list:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/chery/media/model/business/RadioBusiness;)Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/chery/media/model/business/RadioBusiness;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbRestoreFrequency:Z

    return p0
.end method

.method static synthetic access$2502(Lcom/chery/media/model/business/RadioBusiness;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbRestoreFrequency:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/chery/media/model/business/RadioBusiness;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->saveRestoreInfo(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->runAreaChanged:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/chery/media/model/business/RadioBusiness;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    return p1
.end method

.method static synthetic access$300(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmScanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->amScanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/model/business/RadioBusiness;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    return p0
.end method

.method static synthetic access$702(Lcom/chery/media/model/business/RadioBusiness;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    return p1
.end method

.method static synthetic access$800(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->currentBand:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$900(Lcom/chery/media/model/business/RadioBusiness;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->updateList(I)V

    return-void
.end method

.method private closeSignalReport()V
    .locals 3

    .line 305
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "closeSignalReport"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "signal_report"

    const-string v2, "false"

    .line 310
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/chery/media/model/business/RadioBusiness;
    .locals 1

    .line 130
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->instance:Lcom/chery/media/model/business/RadioBusiness;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {v0}, Lcom/chery/media/model/business/RadioBusiness;-><init>()V

    sput-object v0, Lcom/chery/media/model/business/RadioBusiness;->instance:Lcom/chery/media/model/business/RadioBusiness;

    .line 133
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->instance:Lcom/chery/media/model/business/RadioBusiness;

    return-object v0
.end method

.method private getRadioTuner()Landroid/hardware/radio/RadioTuner;
    .locals 9

    .line 235
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    if-nez v0, :cond_6

    .line 237
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    const-class v1, Landroid/hardware/radio/RadioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager;

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioManager:Landroid/hardware/radio/RadioManager;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mModules:Ljava/util/List;

    .line 239
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioManager:Landroid/hardware/radio/RadioManager;

    invoke-virtual {v1, v0}, Landroid/hardware/radio/RadioManager;->listModules(Ljava/util/List;)I

    .line 240
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modules.size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mModules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mModules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mModules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 244
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->hwHandler:Landroid/os/Handler;

    .line 245
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mModules:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioManager$ModuleProperties;

    .line 247
    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mModules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioManager$ModuleProperties;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getBands()[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 248
    iget-object v5, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmDescriptor:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->isFmBand()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
    move-object v5, v4

    check-cast v5, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    iput-object v5, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmDescriptor:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 252
    :cond_1
    iget-object v5, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmDescriptor:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/hardware/radio/RadioManager$BandDescriptor;->isAmBand()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 253
    check-cast v4, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    iput-object v4, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmDescriptor:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_3
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmDescriptor:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmDescriptor:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    if-nez v1, :cond_4

    .line 258
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "No AM and FM radio bands could be loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 262
    :cond_4
    new-instance v1, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmDescriptor:Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    invoke-direct {v1, v2}, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;-><init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v1, v2}, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->build()Landroid/hardware/radio/RadioManager$FmBandConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmConfig:Landroid/hardware/radio/RadioManager$FmBandConfig;

    .line 265
    new-instance v1, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;

    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmDescriptor:Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    invoke-direct {v1, v3}, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;-><init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V

    .line 266
    invoke-virtual {v1, v2}, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->setStereo(Z)Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;->build()Landroid/hardware/radio/RadioManager$AmBandConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmConfig:Landroid/hardware/radio/RadioManager$AmBandConfig;

    .line 269
    sget-object v1, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v2, "openTuner begin"

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioManager:Landroid/hardware/radio/RadioManager;

    .line 271
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ModuleProperties;->getId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/chery/media/model/business/RadioBusiness;->cb:Landroid/hardware/radio/RadioTuner$Callback;

    iget-object v8, p0, Lcom/chery/media/model/business/RadioBusiness;->hwHandler:Landroid/os/Handler;

    .line 270
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/radio/RadioManager;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    .line 276
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "openTuner end"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, v1}, Landroid/hardware/radio/RadioTuner;->getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v1, :cond_5

    .line 281
    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-virtual {v1, v2}, Landroid/hardware/radio/ProgramList;->removeOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    .line 283
    :cond_5
    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramList:Landroid/hardware/radio/ProgramList;

    if-eqz v0, :cond_6

    .line 285
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramListCompleteListener:Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-virtual {v0, v1}, Landroid/hardware/radio/ProgramList;->addOnCompleteListener(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    .line 291
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    return-object p0
.end method

.method private initSource()V
    .locals 5

    .line 351
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "initSource"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    .line 354
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_car_source_type"

    const/4 v2, 0x1

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 357
    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    .line 358
    invoke-virtual {v4, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 357
    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->fmAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 359
    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioFocusRequestFm:Landroid/media/AudioFocusRequest;

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    .line 363
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 365
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 366
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 365
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->amAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 367
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioFocusRequestAm:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$0(Lcom/chery/media/model/business/RadioDef;Lcom/chery/media/model/business/RadioDef;)I
    .locals 0

    .line 814
    iget p0, p0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private openSignalReport()V
    .locals 3

    .line 295
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "openSignalReport"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "signal_report"

    const-string v2, "true"

    .line 300
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method private recoverRadioList()V
    .locals 5

    .line 1000
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    const-string v1, "collectListSp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mTunerListSp:Landroid/content/SharedPreferences;

    const-string v1, "area"

    .line 1002
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    .line 1003
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mTunerListSp:Landroid/content/SharedPreferences;

    const-string v1, "fmCollect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/chery/media/model/business/RadioBusiness$10;

    invoke-direct {v4, p0}, Lcom/chery/media/model/business/RadioBusiness$10;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    invoke-virtual {v4}, Lcom/chery/media/model/business/RadioBusiness$10;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1009
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1012
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mTunerListSp:Landroid/content/SharedPreferences;

    const-string v1, "amCollect"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1015
    :try_start_1
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/chery/media/model/business/RadioBusiness$11;

    invoke-direct {v4, p0}, Lcom/chery/media/model/business/RadioBusiness$11;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    invoke-virtual {v4}, Lcom/chery/media/model/business/RadioBusiness$11;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1021
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mTunerListSp:Landroid/content/SharedPreferences;

    const-string v1, "fmScan"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1024
    :try_start_2
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->fmScanList:Ljava/util/List;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/chery/media/model/business/RadioBusiness$12;

    invoke-direct {v4, p0}, Lcom/chery/media/model/business/RadioBusiness$12;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    invoke-virtual {v4}, Lcom/chery/media/model/business/RadioBusiness$12;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1030
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mTunerListSp:Landroid/content/SharedPreferences;

    const-string v1, "amScan"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1033
    :try_start_3
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->amScanList:Ljava/util/List;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/chery/media/model/business/RadioBusiness$13;

    invoke-direct {v3, p0}, Lcom/chery/media/model/business/RadioBusiness$13;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    invoke-virtual {v3}, Lcom/chery/media/model/business/RadioBusiness$13;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 1036
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method private recoverSource()V
    .locals 6

    .line 373
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->initSource()V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentSource()I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getLastSource()I

    move-result v1

    .line 378
    sget-object v2, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init recover radio currentSource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",lastSource:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    const/16 v5, 0x64

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    .line 388
    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_5

    .line 390
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_1

    :cond_3
    :goto_0
    if-ne v1, v4, :cond_4

    .line 383
    invoke-virtual {p0, v4}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_1

    :cond_4
    if-ne v1, v3, :cond_5

    .line 385
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private saveCollection()V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mTunerListSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "area"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1044
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fmCollect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1045
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "amCollect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1046
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmScanList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fmScan"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1047
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->amScanList:Ljava/util/List;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "amScan"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1048
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveRestoreInfo(Z)V
    .locals 3

    .line 1220
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "saveRestoreInfo force:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1225
    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1226
    new-instance v0, Lcom/chery/media/model/business/RadioBusiness$16;

    invoke-direct {v0, p0, p1}, Lcom/chery/media/model/business/RadioBusiness$16;-><init>(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->runSaveRestoreInfo:Ljava/lang/Runnable;

    .line 1234
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateList(I)V
    .locals 8

    .line 1154
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1156
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    :goto_0
    if-ne p1, v0, :cond_1

    .line 1157
    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmScanList:Ljava/util/List;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->amScanList:Ljava/util/List;

    :goto_1
    const/4 v3, 0x0

    move v4, v3

    .line 1159
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1160
    new-instance v5, Lcom/chery/media/model/business/RadioDef;

    invoke-direct {v5}, Lcom/chery/media/model/business/RadioDef;-><init>()V

    .line 1161
    iput p1, v5, Lcom/chery/media/model/business/RadioDef;->band:I

    .line 1162
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 1163
    iput-boolean v0, v5, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    .line 1164
    iget-object v6, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 1168
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x28

    if-ge v5, v6, :cond_6

    .line 1170
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1171
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_3

    move v5, v0

    goto :goto_4

    :cond_4
    move v5, v3

    :goto_4
    if-nez v5, :cond_5

    .line 1178
    new-instance v5, Lcom/chery/media/model/business/RadioDef;

    invoke-direct {v5}, Lcom/chery/media/model/business/RadioDef;-><init>()V

    .line 1179
    iput p1, v5, Lcom/chery/media/model/business/RadioDef;->band:I

    .line 1180
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 1181
    iput-boolean v3, v5, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    .line 1182
    iget-object v6, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1186
    :cond_6
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_8

    move p1, v3

    .line 1187
    :goto_5
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 1188
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iget v1, v1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    if-ne v1, v2, :cond_7

    .line 1189
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v0, v1, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    .line 1190
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    goto :goto_6

    .line 1192
    :cond_7
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v3, v1, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    .line 1193
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v3, v1, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 1198
    :cond_8
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->list:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCollection(IZ)Ljava/lang/String;
    .locals 10

    .line 1068
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  frequencyKhz: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    const-string p0, ""

    return-object p0

    .line 1074
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "ALREADY_SAVED"

    const-string v2, "collect: ALREADY_SAVED"

    const-string v3, "FAIL_LIST_FULL"

    const/4 v4, 0x0

    const-string v5, "ALREADY_NO_SAVED"

    const-string v6, "collect: ALREADY_NO_SAVED"

    const/16 v7, 0x14

    const-wide/16 v8, 0x0

    if-le p1, v0, :cond_6

    if-eqz p2, :cond_3

    .line 1076
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v7, :cond_1

    .line 1077
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->runShowNoSpace:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v3

    .line 1080
    :cond_1
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1081
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->runMarkedSuccess:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 1084
    :cond_2
    sget-object p0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1089
    :cond_3
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1090
    :goto_0
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_b

    .line 1091
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1092
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1093
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->runCollectionCanceled:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1098
    :cond_5
    sget-object p0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_6
    if-eqz p2, :cond_9

    .line 1105
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v7, :cond_7

    .line 1106
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->runShowNoSpace:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v3

    .line 1109
    :cond_7
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1110
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->runMarkedSuccess:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 1113
    :cond_8
    sget-object p0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1118
    :cond_9
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1119
    :goto_1
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_b

    .line 1120
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1121
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1122
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness;->runCollectionCanceled:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1132
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->saveCollection()V

    .line 1133
    iget p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    invoke-direct {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->updateList(I)V

    const-string p0, "SUCCESS"

    return-object p0

    .line 1127
    :cond_c
    sget-object p0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public addTunerInfoListener(Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;)V
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerInfoListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2

    .line 691
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 697
    :cond_1
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/radio/RadioTuner;->cancel()I

    return-void
.end method

.method public close()V
    .locals 1

    .line 569
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/radio/RadioTuner;->close()V

    :cond_0
    return-void
.end method

.method public getArea()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 775
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->m_LiveDateArea:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getAreaParam()I
    .locals 3

    .line 635
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 638
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "area"

    .line 639
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->getParameters(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 641
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 642
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAreaParam :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getChannel()I
    .locals 0

    .line 1352
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    return p0
.end method

.method public getCurrentBand()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 770
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->currentBand:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getCurrentChannel()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;"
        }
    .end annotation

    .line 769
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->currentChannel:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getCurrentState()Ljava/lang/Integer;
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    return-object p0
.end method

.method public getMute()Z
    .locals 1

    .line 344
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/radio/RadioTuner;->getMute()Z

    move-result p0

    return p0
.end method

.method public getPlayingState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 774
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getRadioList()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/RadioDef;",
            ">;>;"
        }
    .end annotation

    .line 771
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->list:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;
    .locals 10

    .line 1265
    new-instance v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    const/16 p0, 0x9

    const/16 v1, 0x65d

    const/16 v2, 0x213

    const/16 v3, 0x64

    const v4, 0x1a5e0

    const v5, 0x155cc

    if-nez p1, :cond_0

    .line 1267
    iput v5, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    .line 1268
    iput v4, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    .line 1269
    iput v3, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    .line 1270
    iput v2, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    .line 1271
    iput v1, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    .line 1272
    iput p0, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    const/16 v7, 0xa

    const/16 v8, 0x6ae

    const/16 v9, 0x212

    if-ne p1, v6, :cond_1

    .line 1275
    iput v5, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    const p0, 0x1a57c

    .line 1276
    iput p0, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    const/16 p0, 0xc8

    .line 1277
    iput p0, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    .line 1278
    iput v9, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    .line 1279
    iput v8, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    .line 1280
    iput v7, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_2

    .line 1283
    iput v5, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    .line 1284
    iput v4, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    const/16 p1, 0x32

    .line 1285
    iput p1, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    .line 1286
    iput v2, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    .line 1287
    iput v1, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    .line 1288
    iput p0, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    if-ne p1, v6, :cond_3

    .line 1291
    iput v5, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    .line 1292
    iput v4, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    .line 1293
    iput v3, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    .line 1294
    iput v9, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    .line 1295
    iput v8, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    .line 1296
    iput v7, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    if-ne p1, v6, :cond_4

    const p0, 0x128e0

    .line 1298
    iput p0, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    .line 1299
    iput v4, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    .line 1300
    iput v3, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    .line 1301
    iput v9, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    .line 1302
    iput v8, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    .line 1303
    iput v7, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    goto :goto_0

    .line 1305
    :cond_4
    iput v5, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    .line 1306
    iput v4, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    .line 1307
    iput v3, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmStep:I

    .line 1308
    iput v2, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    .line 1309
    iput v1, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    .line 1310
    iput p0, v0, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amStep:I

    :goto_0
    return-object v0
.end method

.method public getSignalStrength()I
    .locals 0

    .line 315
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mSignalStrength:I

    return p0
.end method

.method public getTunerState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 772
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public indexOfCollection(I)I
    .locals 1

    .line 1141
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1142
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 1144
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    if-gez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    .line 148
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->recoverRadioList()V

    const/4 p1, 0x1

    .line 151
    invoke-direct {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->updateList(I)V

    .line 152
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->setMute(Z)V

    .line 154
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->RestoreFrequence()V

    .line 155
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->initSource()V

    .line 156
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->recoverSource()V

    .line 157
    new-instance p1, Lcom/chery/media/model/business/RadioBusiness$1;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/RadioBusiness$1;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->runAreaChanged:Ljava/lang/Runnable;

    .line 185
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    new-instance p1, Lcom/chery/media/model/business/RadioBusiness$2;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/RadioBusiness$2;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    .line 208
    new-instance p1, Lcom/chery/media/model/business/RadioBusiness$3;

    invoke-direct {p1, p0}, Lcom/chery/media/model/business/RadioBusiness$3;-><init>(Lcom/chery/media/model/business/RadioBusiness;)V

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yfve.engineeringmode.enter"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yfve.engineeringmode.exit"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->context:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAmAudioFocus()Z
    .locals 1

    .line 462
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->amAudioFocus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public isFmAudioFocus()Z
    .locals 1

    .line 395
    iget p0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmAudioFocus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public synthetic lambda$new$1$RadioBusiness()V
    .locals 6

    .line 791
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCompleteListener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v2}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramList:Landroid/hardware/radio/ProgramList;

    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramListSnapshot:Ljava/util/List;

    .line 793
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio_autoStore:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 794
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mbSettingBand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    if-nez v0, :cond_5

    .line 796
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramListSnapshot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->runShowNoValidRadio:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mProgramListSnapshot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 801
    sget-object v3, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProgramList info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v3, Lcom/chery/media/model/business/RadioDef;

    invoke-direct {v3}, Lcom/chery/media/model/business/RadioDef;-><init>()V

    .line 803
    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 805
    iget v1, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    sget-object v4, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    if-le v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    iput v1, v3, Lcom/chery/media/model/business/RadioDef;->band:I

    .line 806
    iput-boolean v5, v3, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    .line 807
    iput-boolean v5, v3, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    .line 808
    iput-boolean v2, v3, Lcom/chery/media/model/business/RadioDef;->isValid:Z

    .line 809
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio_autoStore:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 812
    :cond_2
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmScanList:Ljava/util/List;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->amScanList:Ljava/util/List;

    .line 813
    :goto_2
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio_autoStore:Ljava/util/List;

    sget-object v2, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;->INSTANCE:Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$VmvcACx1s_J7beo6Dyuo5SHgXH4;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 816
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 817
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio_autoStore:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 818
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 819
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/RadioDef;

    .line 820
    iget v2, v2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 822
    :cond_4
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->saveCollection()V

    .line 824
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    invoke-direct {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->updateList(I)V

    :cond_5
    return-void
.end method

.method public removeTunerInfoListener(Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;)V
    .locals 0

    .line 1213
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->tunerInfoListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 3

    .line 530
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFmAudioFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAmAudioFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 535
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    if-nez v0, :cond_1

    .line 536
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    move-result v2

    goto :goto_0

    .line 538
    :cond_1
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    move-result v2

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public requestAudioFocus(I)Z
    .locals 5

    .line 546
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioFocusRequestAm:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    .line 549
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAudioFocus am result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_0

    .line 551
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->setAmAudioFocus(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    .line 556
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->audioFocusRequestFm:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    .line 557
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestAudioFocus fm result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_3

    .line 559
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->setFmAudioFocus(I)V

    goto :goto_0

    :cond_2
    move p1, v1

    :cond_3
    :goto_0
    if-ne p1, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public scan(IZ)I
    .locals 2

    .line 601
    sget-object p1, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string p2, "auto store   "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    return p2

    .line 606
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    return p2

    :cond_1
    const/4 p1, 0x0

    .line 610
    iput-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    .line 611
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "function"

    const-string v1, "auto_store"

    .line 612
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    return p1
.end method

.method public scanByVr()V
    .locals 1

    const/4 v0, 0x1

    .line 1342
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    .line 1343
    invoke-virtual {p0, v0, v0}, Lcom/chery/media/model/business/RadioBusiness;->scan(IZ)I

    return-void
.end method

.method public seek(IZ)V
    .locals 2

    .line 576
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "function"

    const-string v1, "seek"

    .line 577
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "direction"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    goto :goto_0

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    :goto_0
    return-void
.end method

.method public setAmAudioFocus(I)V
    .locals 4

    .line 471
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness;->amAudioFocus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 474
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmAudioFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iput p1, p0, Lcom/chery/media/model/business/RadioBusiness;->amAudioFocus:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 478
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    iget p1, p1, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->AmFrequency:I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbRestoreFrequency:Z

    if-nez p1, :cond_1

    .line 480
    iput v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    .line 481
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->currentBand:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 482
    invoke-direct {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->updateList(I)V

    .line 483
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    iget p1, p1, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->AmFrequency:I

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    .line 484
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmConfig:Landroid/hardware/radio/RadioManager$AmBandConfig;

    invoke-virtual {p1, p0}, Landroid/hardware/radio/RadioTuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I

    return-void

    .line 487
    :cond_1
    sget-object p1, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioSourceChanged am "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mbScanByVr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    if-nez p1, :cond_2

    .line 490
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 491
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    goto :goto_1

    .line 492
    :cond_2
    iget-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    if-eqz p1, :cond_4

    .line 493
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 494
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 496
    :cond_3
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    goto :goto_1

    .line 499
    :cond_4
    iget p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    if-nez p1, :cond_5

    .line 501
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_1

    .line 503
    :cond_5
    sget-object p1, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v0, "setAmAudioFocus setConfiguration AM"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    .line 505
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mAmConfig:Landroid/hardware/radio/RadioManager$AmBandConfig;

    invoke-virtual {p1, p0}, Landroid/hardware/radio/RadioTuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    .line 510
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 513
    :cond_7
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_8

    .line 514
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    .line 516
    :cond_8
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    .line 517
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_1

    .line 519
    :cond_9
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_a

    .line 520
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    goto :goto_0

    .line 522
    :cond_a
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    .line 524
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_1
    return-void
.end method

.method public setArea(I)V
    .locals 3

    .line 620
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setArea   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 630
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "area"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    return-void

    .line 625
    :cond_2
    :goto_0
    sget-object p0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string p1, "setArea out of range !"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setConfigure(I)V
    .locals 4

    .line 676
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConfigure :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string v3, "fm"

    goto :goto_0

    :cond_0
    const-string v3, "am"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    :cond_1
    if-ne p1, v2, :cond_2

    .line 683
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 685
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    :goto_1
    return-void
.end method

.method public setFmAudioFocus(I)V
    .locals 4

    .line 404
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmAudioFocus:I

    if-ne p1, v0, :cond_0

    return-void

    .line 407
    :cond_0
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFmAudioFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iput p1, p0, Lcom/chery/media/model/business/RadioBusiness;->fmAudioFocus:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 411
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    iget p1, p1, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->FmFrequency:I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbRestoreFrequency:Z

    if-nez p1, :cond_1

    .line 413
    iput v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    .line 414
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->currentBand:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 415
    invoke-direct {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->updateList(I)V

    .line 416
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mFrequencySave:Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    iget p1, p1, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->FmFrequency:I

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    .line 417
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmConfig:Landroid/hardware/radio/RadioManager$FmBandConfig;

    invoke-virtual {p1, p0}, Landroid/hardware/radio/RadioTuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I

    return-void

    .line 421
    :cond_1
    sget-object p1, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioSourceChanged  fm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mbScanByVr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    if-nez p1, :cond_2

    .line 423
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 424
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    goto :goto_1

    .line 425
    :cond_2
    iget-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    if-eqz p1, :cond_4

    .line 426
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    .line 427
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 429
    :cond_3
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbScanByVr:Z

    goto :goto_1

    .line 432
    :cond_4
    iget p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    if-ne p1, v1, :cond_5

    .line 434
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_1

    .line 436
    :cond_5
    sget-object p1, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v0, "setFmAudioFocus setConfiguration FM"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbSettingBand:Z

    .line 438
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->mFmConfig:Landroid/hardware/radio/RadioManager$FmBandConfig;

    invoke-virtual {p1, p0}, Landroid/hardware/radio/RadioTuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    .line 443
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 446
    :cond_7
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_8

    .line 447
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    .line 449
    :cond_8
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    .line 450
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_1

    .line 452
    :cond_9
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_a

    .line 453
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    goto :goto_0

    .line 455
    :cond_a
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    .line 457
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_1
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    .line 328
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET MUTE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->runSetMute:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET MUTE remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->runSetMute:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 337
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioTuner;->setMute(Z)I

    goto :goto_0

    .line 339
    :cond_2
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness;->runSetMute:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setPlayingState(Z)V
    .locals 3

    .line 647
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->playingState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setMute(Z)V

    .line 651
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getVolumeGroupIdForUsage(I)I

    move-result p0

    .line 652
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->getGroupMute(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 653
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarVolumeClient()Lcom/chery/caradapter/carapi/client/CarVolumeClient;

    move-result-object p1

    invoke-virtual {p1, p0, v1, v1}, Lcom/chery/caradapter/carapi/client/CarVolumeClient;->setGroupMute(IZI)V

    goto :goto_1

    .line 656
    :cond_0
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->audioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 660
    :cond_1
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setMute(Z)V

    goto :goto_1

    .line 658
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->setMute(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPlayingStateByVr(Z)V
    .locals 3

    .line 1347
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayingStateByVr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iput-boolean p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    return-void
.end method

.method public step(I)V
    .locals 1

    .line 590
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    goto :goto_0

    .line 596
    :cond_1
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/radio/RadioTuner;->step(IZ)I

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 667
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "function"

    const-string v2, "stop"

    .line 671
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/hardware/radio/RadioTuner;->setParameters(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public tune(I)V
    .locals 3

    .line 702
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 703
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tune  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 710
    :cond_1
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    goto :goto_1

    .line 708
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 713
    :goto_1
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ne v0, v1, :cond_5

    .line 715
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    move-result-object v1

    iget v1, v1, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMinValue:I

    if-lt p1, v1, :cond_4

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    .line 716
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    move-result-object v1

    iget v1, v1, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->fmMaxValue:I

    if-le p1, v1, :cond_6

    :cond_4
    return-void

    .line 720
    :cond_5
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    move-result-object v1

    iget v1, v1, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMinValue:I

    if-lt p1, v1, :cond_7

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mArea:Ljava/lang/Integer;

    .line 721
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->getScaleParam(I)Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;

    move-result-object v1

    iget v1, v1, Lcom/chery/media/model/business/RadioBusiness$RadioScaleParam;->amMaxValue:I

    if-le p1, v1, :cond_6

    goto :goto_3

    .line 725
    :cond_6
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-static {v0, p1}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(II)Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioTuner;->tune(Landroid/hardware/radio/ProgramSelector;)V

    nop

    :cond_7
    :goto_3
    return-void
.end method

.method public tuneByList(I)V
    .locals 5

    .line 730
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 731
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentTunerState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->cancel()V

    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 741
    :cond_2
    iput-boolean v1, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    goto :goto_1

    .line 739
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_1
    const/4 v0, 0x0

    move v2, v0

    .line 745
    :goto_2
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 746
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/RadioDef;

    iget v3, v3, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget v4, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    if-ne v3, v4, :cond_7

    if-ne p1, v1, :cond_5

    if-nez v2, :cond_4

    .line 749
    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/RadioDef;

    iget v2, v2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    sub-int/2addr v2, v1

    .line 750
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/RadioDef;

    iget v2, v2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 749
    :goto_3
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    goto :goto_5

    .line 752
    :cond_5
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/RadioDef;

    iget v2, v2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    add-int/2addr v2, v1

    .line 753
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chery/media/model/business/RadioDef;

    iget v2, v2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 752
    :goto_4
    invoke-virtual {p0, v2}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    :goto_5
    move v2, v1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v2, v0

    :goto_6
    if-nez v2, :cond_a

    if-nez p1, :cond_9

    .line 761
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/RadioDef;

    iget p1, p1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    goto :goto_7

    .line 763
    :cond_9
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness;->listRadio:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/chery/media/model/business/RadioDef;

    iget p1, p1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    :cond_a
    :goto_7
    return-void
.end method

.method public tuneByListByVr()Ljava/lang/String;
    .locals 3

    .line 1330
    iget v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->fmCollection:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->amCollection:Ljava/util/List;

    .line 1331
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1332
    iget v2, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentChannel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1333
    invoke-virtual {p0, v1}, Lcom/chery/media/model/business/RadioBusiness;->tuneByList(I)V

    :cond_1
    const-string p0, "SUCCESS"

    return-object p0

    :cond_2
    const-string p0, "NO_DATA"

    return-object p0
.end method

.method public tuneByVr(II)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1317
    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1319
    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_0

    .line 1321
    :cond_1
    iget p1, p0, Lcom/chery/media/model/business/RadioBusiness;->mCurrentBand:I

    invoke-virtual {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    .line 1323
    :goto_0
    iput-boolean v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mbPlayStatusRecover:Z

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 1325
    invoke-virtual {p0, p2}, Lcom/chery/media/model/business/RadioBusiness;->tune(I)V

    :cond_2
    return-void
.end method

.method public uninit()V
    .locals 2

    .line 227
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/chery/media/model/business/RadioBusiness;->TAG:Ljava/lang/String;

    const-string v1, "uninit"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/chery/media/model/business/RadioBusiness;->getRadioTuner()Landroid/hardware/radio/RadioTuner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/radio/RadioTuner;->close()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/chery/media/model/business/RadioBusiness;->mRadioTuner:Landroid/hardware/radio/RadioTuner;

    :cond_0
    return-void
.end method
