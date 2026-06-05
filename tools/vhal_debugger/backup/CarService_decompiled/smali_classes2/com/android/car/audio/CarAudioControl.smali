.class public Lcom/android/car/audio/CarAudioControl;
.super Ljava/lang/Object;
.source "CarAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;,
        Lcom/android/car/audio/CarAudioControl$CarAudioHandler;,
        Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;
    }
.end annotation


# static fields
.field private static final BT_PHONE_MIC_VOLUME:I = 0x108

.field private static final CP_PHONE_MIC_VOLUME:I = 0x108

.field private static final CP_SIRI_MIC_VOLUME:I = 0x108

.field private static final DEFAULT_MIC_VOLUME:I = 0x108

.field private static final EQ_BASE:I = 0x7

.field private static final FADER_TABLES:[I

.field private static final LOUDNESS_BASS_TABLES:[I

.field private static final LOUDNESS_TRIBLE_TABLES:[I

.field private static final TONE_CONTROL_BASS_OFFSET_TABLES:[[I

.field private static final TONE_CONTROL_MID_OFFSET_TABLES:[[I

.field private static final TONE_CONTROL_TREBLE_OFFSET_TABLES:[[I

.field private static final TUNER_HARDWAVE_TYPE:Ljava/lang/String;

.field private static final TYPE_DAB_BOX:Ljava/lang/String; = "DAB_BOX"

.field private static final TYPE_DSP:Ljava/lang/String; = "DSP"


# instance fields
.field private final DB_KEYS_EQ_BAND:[Ljava/lang/String;

.field private final DB_KEYS_TONE_CONTROL:[Ljava/lang/String;

.field private final EQ_BAND_NUM:I

.field private EQ_CLASSIC_TABLES:[I

.field private EQ_JAZZ_TABLES:[I

.field private EQ_OFFSET_CLASSIC_TABLES:[[I

.field private EQ_OFFSET_JAZZ_TABLES:[[I

.field private EQ_OFFSET_POPS_TABLES:[[I

.field private EQ_OFFSET_ROCK_TABLES:[[I

.field private EQ_OFFSET_USER_TABLES:[[I

.field private EQ_OFFSET_VOCAL_TABLES:[[I

.field private EQ_OFF_TABLES:[I

.field private EQ_POPS_TABLES:[I

.field private EQ_ROCK_TABLES:[I

.field private EQ_USER_TABLES:[I

.field private EQ_VOCAL_TABLES:[I

.field private final KEYS_EQ_BAND:[Ljava/lang/String;

.field private final KEYS_TONE_CONTROL:[Ljava/lang/String;

.field private forceLoudnessEnable:Z

.field private lastPrimaryChannelBus:I

.field private m3DSoundStage:I

.field private final mActiveBus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBOSESoundEffectType:I

.field private mBootMusicEnable:Z

.field mCallBack:Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;

.field private final mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

.field private mChimeVolume:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFader:I

.field private mCurrentPresetEQBand:[I

.field private mDuckingSwitch:Z

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mImplLock:Ljava/lang/Object;

.field private mLoudnessEnable:Z

.field private mLoudnessValue:[I

.field private mMediaVolumeLevel:I

.field private mMicVol:I

.field private mMusicLightEnable:Z

.field private mPresetEQBandAndOffset:[I

.field private mPresetEQSmartType:I

.field private mPresetEQType:I

.field private mRearQuietMode:Z

.field private mServiceDeathRecipient:Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;

.field private mStoreFader:I

.field private mStoreVirtualSubwoofer:Z

.field private mStoretBalance:I

.field private mSvcLevel:I

.field private mToneControlValue:[I

.field private mToneControlValueAndOffset:[I

.field private mUseMicSource:I

.field private mVRLightEnable:Z

.field private mVirtualSubwoofer:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 305
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 132
    const/16 v0, 0xf

    new-array v1, v0, [I

    sput-object v1, Lcom/android/car/audio/CarAudioControl;->FADER_TABLES:[I

    .line 134
    const/16 v1, 0x21

    new-array v2, v1, [I

    sput-object v2, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_BASS_TABLES:[I

    .line 136
    new-array v2, v1, [I

    sput-object v2, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_TRIBLE_TABLES:[I

    .line 138
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_BASS_OFFSET_TABLES:[[I

    .line 139
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_MID_OFFSET_TABLES:[[I

    .line 140
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_TREBLE_OFFSET_TABLES:[[I

    .line 167
    const-string v0, "ro.hardwave.tuner"

    const-string v1, "DSP"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/audio/CarAudioControl;->TUNER_HARDWAVE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    .line 72
    const-string v0, "tone_control_bass"

    const-string v1, "tone_control_midrange"

    const-string v2, "tone_control_trible"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/audio/CarAudioControl;->KEYS_TONE_CONTROL:[Ljava/lang/String;

    .line 78
    const-string v0, "geq_band1"

    const-string v1, "geq_band2"

    const-string v2, "geq_band3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/audio/CarAudioControl;->KEYS_EQ_BAND:[Ljava/lang/String;

    .line 84
    const-string v0, "audio_setting_tone_control_bass"

    const-string v1, "audio_setting_tone_control_midrange"

    const-string v2, "audio_setting_tone_control_treble"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/audio/CarAudioControl;->DB_KEYS_TONE_CONTROL:[Ljava/lang/String;

    .line 90
    const-string v0, "audio_setting_preset_eq_user_band1"

    const-string v1, "audio_setting_preset_eq_user_band2"

    const-string v2, "audio_setting_preset_eq_user_band3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/audio/CarAudioControl;->DB_KEYS_EQ_BAND:[Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    .line 97
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQSmartType:I

    .line 98
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/car/audio/CarAudioControl;->EQ_BAND_NUM:I

    .line 99
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    .line 100
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    .line 102
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    .line 103
    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    .line 104
    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->mStoretBalance:I

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    .line 107
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    .line 108
    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    .line 110
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mBOSESoundEffectType:I

    .line 112
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->forceLoudnessEnable:Z

    .line 114
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessValue:[I

    .line 116
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    .line 118
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mSvcLevel:I

    .line 120
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mDuckingSwitch:Z

    .line 122
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mChimeVolume:I

    .line 124
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    .line 126
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    .line 148
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFF_TABLES:[I

    .line 149
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    .line 150
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    .line 151
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    .line 152
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    .line 153
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    .line 154
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    .line 156
    const/16 v3, 0x21

    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_CLASSIC_TABLES:[[I

    .line 157
    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_POPS_TABLES:[[I

    .line 158
    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_VOCAL_TABLES:[[I

    .line 159
    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_JAZZ_TABLES:[[I

    .line 160
    filled-new-array {v3, v2}, [I

    move-result-object v4

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_ROCK_TABLES:[[I

    .line 161
    filled-new-array {v3, v2}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_USER_TABLES:[[I

    .line 163
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    .line 164
    new-instance v3, Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;-><init>(Lcom/android/car/audio/CarAudioControl;)V

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mServiceDeathRecipient:Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;

    .line 1129
    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->lastPrimaryChannelBus:I

    .line 1130
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mActiveBus:Landroid/util/SparseArray;

    .line 1131
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    .line 1132
    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->mMicVol:I

    .line 172
    iput-object p1, p0, Lcom/android/car/audio/CarAudioControl;->mContext:Landroid/content/Context;

    .line 174
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 175
    .local v0, "audioControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarAudioService get Audiocontrol service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CAR.AUDIO"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mAudioManager:Landroid/media/AudioManager;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 178
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "CarAudioControl"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 179
    iget-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v1, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;-><init>(Lcom/android/car/audio/CarAudioControl;Landroid/os/Looper;Lcom/android/car/audio/CarAudioControl$1;)V

    iput-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    .line 181
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private AudioAttributesToDSPSource(Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1896
    if-nez p1, :cond_0

    .line 1897
    const/4 v0, 0x4

    return v0

    .line 1899
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1900
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x4

    .line 1901
    .local v1, "dspSource":I
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "key_car_source_type"

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    .line 1986
    const/4 v1, 0x4

    goto :goto_1

    .line 1974
    :cond_1
    const/4 v1, 0x5

    .line 1975
    goto :goto_1

    .line 1971
    :cond_2
    const/16 v1, 0xd

    .line 1972
    goto :goto_1

    .line 1947
    :cond_3
    const/16 v1, 0x9

    .line 1948
    if-eqz v0, :cond_8

    .line 1949
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1950
    .local v2, "carSource":I
    const/16 v3, 0x35

    if-eq v2, v3, :cond_4

    const/16 v3, 0x49

    if-eq v2, v3, :cond_4

    packed-switch v2, :pswitch_data_0

    .line 1963
    const/16 v1, 0x9

    goto :goto_0

    .line 1960
    :pswitch_0
    const/4 v1, 0x0

    .line 1961
    goto :goto_0

    .line 1954
    :cond_4
    :pswitch_1
    const/16 v1, 0x9

    .line 1955
    nop

    .line 1966
    .end local v2    # "carSource":I
    :goto_0
    goto :goto_1

    .line 1903
    :cond_5
    const/4 v1, 0x4

    .line 1904
    if-eqz v0, :cond_8

    .line 1905
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1906
    .restart local v2    # "carSource":I
    const/16 v3, 0x32

    if-eq v2, v3, :cond_7

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_7

    const/16 v3, 0x46

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_1

    .line 1938
    const/4 v1, 0x4

    goto :goto_1

    .line 1928
    :pswitch_2
    sget-object v3, Lcom/android/car/audio/CarAudioControl;->TUNER_HARDWAVE_TYPE:Ljava/lang/String;

    const-string v4, "DSP"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1929
    const/4 v1, 0x1

    .line 1930
    goto :goto_1

    .line 1935
    :cond_6
    :pswitch_3
    const/4 v1, 0x3

    .line 1936
    goto :goto_1

    .line 1924
    :cond_7
    :pswitch_4
    const/4 v1, 0x4

    .line 1925
    nop

    .line 1989
    .end local v2    # "carSource":I
    :cond_8
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic access$502(Lcom/android/car/audio/CarAudioControl;Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;)Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl;
    .param p1, "x1"    # Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    .line 64
    iput-object p1, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/car/audio/CarAudioControl;)Lcom/android/car/audio/CarAudioControl$CarAudioHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl;

    .line 64
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/audio/CarAudioControl;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/audio/CarAudioControl;
    .param p1, "x1"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    .line 64
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->requestAudioLock(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V

    return-void
.end method

.method private getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .locals 6

    .line 1743
    const-string v0, "CAR.AUDIO"

    iget-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    if-eqz v1, :cond_0

    .line 1744
    return-object v1

    .line 1746
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->getService()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    .line 1747
    iget-object v2, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    if-eqz v2, :cond_1

    .line 1748
    iget-object v2, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    iget-object v3, p0, Lcom/android/car/audio/CarAudioControl;->mServiceDeathRecipient:Lcom/android/car/audio/CarAudioControl$AudioControlDeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    goto :goto_0

    .line 1750
    :cond_1
    const-string v2, "mAudioDSPControlHal == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1755
    :catch_0
    move-exception v2

    .line 1756
    .local v2, "e":Ljava/util/NoSuchElementException;
    iput-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    .line 1757
    const-string v1, "IAudioControl service not registered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1752
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v2

    .line 1753
    .local v2, "e":Landroid/os/RemoteException;
    iput-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    .line 1754
    const-string v1, "Failed to get IAudioControl service"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1759
    :goto_1
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mAudioControlHal:Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    return-object v0
.end method

.method private getAudioSettingInternal(Landroid/media/AudioSetting;)I
    .locals 6
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 899
    const/16 v0, 0xff

    .line 900
    .local v0, "returnvalue":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 901
    .local v1, "parameterValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v2

    .line 902
    .local v2, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v2, :cond_1

    .line 904
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v3, "kyes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    new-instance v4, Lcom/android/car/audio/-$$Lambda$CarAudioControl$k1MAls8UTOWlMKX1uO6nrPWOAaU;

    invoke-direct {v4, v1}, Lcom/android/car/audio/-$$Lambda$CarAudioControl$k1MAls8UTOWlMKX1uO6nrPWOAaU;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v2, v3, v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->getParameters(Ljava/util/ArrayList;Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl$getParametersCallback;)V

    .line 911
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 912
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    iget-object v4, v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 917
    .end local v3    # "kyes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 914
    :catch_0
    move-exception v3

    .line 915
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "CAR.AUDIO"

    const-string v5, "get AudioSetting failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    const/16 v0, 0xff

    .line 920
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return v0
.end method

.method private getCurrentUseMicSource(Landroid/media/AudioAttributes;)I
    .locals 4
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1874
    if-nez p1, :cond_0

    .line 1875
    const/4 v0, 0x0

    return v0

    .line 1878
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 1879
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1880
    .local v1, "source":I
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    .line 1889
    const/4 v1, 0x0

    goto :goto_0

    .line 1884
    :cond_1
    if-eqz v0, :cond_2

    .line 1885
    const-string v2, "key_car_source_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1892
    :cond_2
    :goto_0
    return v1
.end method

.method private initAudioSettings()V
    .locals 8

    .line 426
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, "para":Landroid/media/AudioSetting;
    :try_start_0
    const-string v2, "CAR.AUDIO"

    const-string v3, "initAudioSettings: START>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v2, Landroid/media/AudioSetting;

    const-string v3, "svc_level"

    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mSvcLevel:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v2

    .line 431
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    .line 433
    new-instance v2, Landroid/media/AudioSetting;

    const-string v3, "chime_volume"

    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mChimeVolume:I

    invoke-direct {v2, v3, v4, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v2

    .line 434
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    .line 436
    const/4 v2, 0x0

    .line 437
    .local v2, "value":I
    iget-boolean v3, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    if-eqz v3, :cond_0

    .line 438
    const/4 v2, 0x0

    goto :goto_0

    .line 440
    :cond_0
    iget v3, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    move v2, v3

    .line 442
    :goto_0
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "fader"

    invoke-direct {v3, v4, v2, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v3

    .line 443
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingFaderLock(Landroid/media/AudioSetting;)V

    .line 445
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "balance"

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mStoretBalance:I

    invoke-direct {v3, v4, v6, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v3

    .line 446
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    .line 448
    iget-boolean v3, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/car/audio/CarAudioControl;->forceLoudnessEnable:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 451
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingLoudnessLock(I)V

    goto :goto_2

    .line 449
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    invoke-direct {p0, v3}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingLoudnessLock(I)V

    .line 454
    :goto_2
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "preset_eq"

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    invoke-direct {v3, v4, v6, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v3

    .line 455
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingPresetEQLock(Landroid/media/AudioSetting;)V

    .line 457
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "sound_stage"

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    invoke-direct {v3, v4, v6, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v3

    .line 458
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSettting3DSoundStageLock(Landroid/media/AudioSetting;)V

    .line 460
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "music_light"

    iget-boolean v6, p0, Lcom/android/car/audio/CarAudioControl;->mMusicLightEnable:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    invoke-direct {v3, v4, v6, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v3

    .line 461
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    .line 463
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "boot_music"

    iget-boolean v6, p0, Lcom/android/car/audio/CarAudioControl;->mBootMusicEnable:Z

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move v7, v5

    :goto_4
    invoke-direct {v3, v4, v7, v5, v5}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v1, v3

    .line 464
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    .line 466
    const-string v3, "CAR.AUDIO"

    const-string v4, "initAudioSettings: END<<<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    nop

    .end local v1    # "para":Landroid/media/AudioSetting;
    .end local v2    # "value":I
    monitor-exit v0

    .line 468
    return-void

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isCarplayApp(Landroid/media/AudioFocusInfo;)Z
    .locals 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;

    .line 1123
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carplay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1126
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1124
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getAudioSettingInternal$0(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 2
    .param p0, "parameterValues"    # Ljava/util/ArrayList;
    .param p1, "ret"    # I
    .param p2, "parameters"    # Ljava/util/ArrayList;

    .line 907
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    .line 908
    .local v1, "p":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    .end local v1    # "p":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    goto :goto_0

    .line 910
    :cond_0
    return-void
.end method

.method private loadAudioSettingsTable()V
    .locals 7

    .line 372
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "audio_setting_rear_quiet_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    .line 376
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x7

    const-string v4, "audio_setting_fader"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    .line 378
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_balance"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mStoretBalance:I

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 382
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->DB_KEYS_TONE_CONTROL:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_bose_sound_effect"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mBOSESoundEffectType:I

    .line 388
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_sound_stage"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    .line 391
    iget v0, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->forceLoudnessEnable:Z

    .line 392
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_loudness"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    .line 394
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_preset_eq"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    .line 396
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x2

    const-string v5, "audio_setting_svc_level"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mSvcLevel:I

    .line 398
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x5

    const-string v5, "audio_setting_chime_volume"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mChimeVolume:I

    .line 400
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_navi_duck"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mDuckingSwitch:Z

    .line 402
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio_setting_subwoofer"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    .line 406
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFF_TABLES:[I

    array-length v5, v4

    if-ge v0, v5, :cond_6

    .line 407
    aget v5, v4, v0

    add-int/2addr v5, v3

    aput v5, v4, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 409
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    array-length v5, v4

    if-ge v0, v5, :cond_7

    .line 410
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->DB_KEYS_EQ_BAND:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v0

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 414
    .end local v0    # "i":I
    :cond_7
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "audio_setting_music_light"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/car/audio/CarAudioControl;->mMusicLightEnable:Z

    .line 417
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "audio_setting_boot_music"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, p0, Lcom/android/car/audio/CarAudioControl;->mBootMusicEnable:Z

    .line 419
    return-void
.end method

.method private loadEffectTablesXml()V
    .locals 16

    move-object/from16 v1, p0

    .line 242
    :try_start_0
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f120000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 243
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 246
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_0

    if-eq v5, v6, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    const-string v4, "effects"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 253
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .local v4, "outerDepth":I
    const-string v8, ""

    move-object v9, v8

    .line 255
    .local v9, "effectType":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move v5, v10

    if-eq v10, v7, :cond_11

    const/4 v10, 0x3

    if-ne v5, v10, :cond_2

    .line 256
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v4, :cond_11

    .line 257
    :cond_2
    if-ne v5, v10, :cond_3

    .line 258
    goto :goto_1

    .line 261
    :cond_3
    const-string v11, "effect"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 262
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 263
    invoke-interface {v2, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    .line 264
    .local v12, "value":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v12, v13, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 265
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, "values":[Ljava/lang/String;
    array-length v14, v13

    if-lez v14, :cond_10

    .line 267
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v14, 0x5

    const/4 v0, 0x4

    sparse-switch v15, :sswitch_data_0

    :cond_4
    goto :goto_2

    :sswitch_0
    const-string v15, "classic"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v11

    goto :goto_3

    :sswitch_1
    const-string v15, "vocal"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v6

    goto :goto_3

    :sswitch_2
    const-string v15, "user"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v14

    goto :goto_3

    :sswitch_3
    const-string v15, "rock"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v0

    goto :goto_3

    :sswitch_4
    const-string v15, "pops"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v7

    goto :goto_3

    :sswitch_5
    const-string v15, "jazz"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move v15, v10

    goto :goto_3

    :goto_2
    const/4 v15, -0x1

    :goto_3
    if-eqz v15, :cond_e

    if-eq v15, v7, :cond_c

    if-eq v15, v6, :cond_a

    if-eq v15, v10, :cond_8

    if-eq v15, v0, :cond_6

    if-eq v15, v14, :cond_5

    goto/16 :goto_9

    .line 299
    :cond_5
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_USER_TABLES:[[I

    invoke-direct {v1, v0, v2}, Lcom/android/car/audio/CarAudioControl;->parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    goto/16 :goto_9

    .line 293
    :cond_6
    move v0, v11

    .local v0, "i":I
    :goto_4
    array-length v10, v13

    if-ge v0, v10, :cond_7

    .line 294
    iget-object v10, v1, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    aget-object v11, v13, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    aput v11, v10, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 296
    .end local v0    # "i":I
    :cond_7
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_ROCK_TABLES:[[I

    invoke-direct {v1, v0, v2}, Lcom/android/car/audio/CarAudioControl;->parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    .line 297
    goto/16 :goto_9

    .line 287
    :cond_8
    move v0, v11

    .restart local v0    # "i":I
    :goto_5
    array-length v10, v13

    if-ge v0, v10, :cond_9

    .line 288
    iget-object v10, v1, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    aget-object v11, v13, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    aput v11, v10, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 290
    .end local v0    # "i":I
    :cond_9
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_JAZZ_TABLES:[[I

    invoke-direct {v1, v0, v2}, Lcom/android/car/audio/CarAudioControl;->parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    .line 291
    goto :goto_9

    .line 281
    :cond_a
    move v0, v11

    .restart local v0    # "i":I
    :goto_6
    array-length v10, v13

    if-ge v0, v10, :cond_b

    .line 282
    iget-object v10, v1, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    aget-object v11, v13, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    aput v11, v10, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 284
    .end local v0    # "i":I
    :cond_b
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_VOCAL_TABLES:[[I

    invoke-direct {v1, v0, v2}, Lcom/android/car/audio/CarAudioControl;->parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    .line 285
    goto :goto_9

    .line 275
    :cond_c
    move v0, v11

    .restart local v0    # "i":I
    :goto_7
    array-length v10, v13

    if-ge v0, v10, :cond_d

    .line 276
    iget-object v10, v1, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    aget-object v11, v13, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    aput v11, v10, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 278
    .end local v0    # "i":I
    :cond_d
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_POPS_TABLES:[[I

    invoke-direct {v1, v0, v2}, Lcom/android/car/audio/CarAudioControl;->parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    .line 279
    goto :goto_9

    .line 269
    :cond_e
    move v0, v11

    .restart local v0    # "i":I
    :goto_8
    array-length v10, v13

    if-ge v0, v10, :cond_f

    .line 270
    iget-object v10, v1, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    aget-object v11, v13, v0

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x7

    aput v11, v10, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 272
    .end local v0    # "i":I
    :cond_f
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_CLASSIC_TABLES:[[I

    invoke-direct {v1, v0, v2}, Lcom/android/car/audio/CarAudioControl;->parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "values":[Ljava/lang/String;
    :cond_10
    :goto_9
    goto/16 :goto_1

    .line 305
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "outerDepth":I
    .end local v5    # "type":I
    .end local v9    # "effectType":Ljava/lang/String;
    :cond_11
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0, v2}, Lcom/android/car/audio/CarAudioControl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 307
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_a

    .line 251
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "type":I
    :cond_12
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Meta-data does not start with volumeGroups tag"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 242
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :catchall_0
    move-exception v0

    move-object v3, v0

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 305
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_13

    :try_start_6
    invoke-static {v3, v2}, Lcom/android/car/audio/CarAudioControl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :cond_13
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CAR.AUDIO"

    const-string v3, "Error parsing volume groups configuration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x31aab7 -> :sswitch_5
        0x349842 -> :sswitch_4
        0x357f65 -> :sswitch_3
        0x36ebcb -> :sswitch_2
        0x6b2ca75 -> :sswitch_1
        0x32e13892 -> :sswitch_0
    .end sparse-switch
.end method

.method private loadOtherTablesXml()V
    .locals 16

    move-object/from16 v1, p0

    .line 311
    :try_start_0
    iget-object v0, v1, Lcom/android/car/audio/CarAudioControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 312
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 315
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_0

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    const-string v3, "tables"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 322
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .local v3, "outerDepth":I
    const-string v7, ""

    move-object v8, v7

    .line 324
    .local v8, "tableType":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v4, v9

    const/4 v10, 0x0

    if-eq v9, v6, :cond_f

    const/4 v9, 0x3

    if-ne v4, v9, :cond_2

    .line 325
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-le v11, v3, :cond_f

    .line 326
    :cond_2
    if-ne v4, v9, :cond_3

    .line 327
    goto :goto_1

    .line 330
    :cond_3
    const-string v11, "table"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 331
    const/4 v11, 0x0

    invoke-interface {v2, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 332
    const-string v12, "value"

    invoke-interface {v2, v10, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 333
    .local v10, "value":Ljava/lang/String;
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, "values":[Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 335
    const-string v13, " "

    invoke-virtual {v10, v13, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 336
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 338
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x5

    const/4 v13, 0x4

    sparse-switch v14, :sswitch_data_0

    :cond_5
    goto :goto_2

    :sswitch_0
    const-string v14, "tone_control_treble"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v15

    goto :goto_3

    :sswitch_1
    const-string v14, "tone_control_bass"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v9

    goto :goto_3

    :sswitch_2
    const-string v14, "fader"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v5

    goto :goto_3

    :sswitch_3
    const-string v14, "tone_control_midrange"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v13

    goto :goto_3

    :sswitch_4
    const-string v14, "bass"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v11

    goto :goto_3

    :sswitch_5
    const-string v14, "trible"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v6

    goto :goto_3

    :goto_2
    const/4 v14, -0x1

    :goto_3
    if-eqz v14, :cond_d

    if-eq v14, v6, :cond_b

    if-eq v14, v5, :cond_9

    if-eq v14, v9, :cond_8

    if-eq v14, v13, :cond_7

    if-eq v14, v15, :cond_6

    goto :goto_7

    .line 361
    :cond_6
    sget-object v9, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_TREBLE_OFFSET_TABLES:[[I

    invoke-direct {v1, v9, v2}, Lcom/android/car/audio/CarAudioControl;->parseToneControlOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    goto :goto_7

    .line 358
    :cond_7
    sget-object v9, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_MID_OFFSET_TABLES:[[I

    invoke-direct {v1, v9, v2}, Lcom/android/car/audio/CarAudioControl;->parseToneControlOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    .line 359
    goto :goto_7

    .line 355
    :cond_8
    sget-object v9, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_BASS_OFFSET_TABLES:[[I

    invoke-direct {v1, v9, v2}, Lcom/android/car/audio/CarAudioControl;->parseToneControlOffsetTable([[ILandroid/content/res/XmlResourceParser;)V

    .line 356
    goto :goto_7

    .line 350
    :cond_9
    move v9, v11

    .local v9, "i":I
    :goto_4
    array-length v11, v12

    if-ge v9, v11, :cond_a

    .line 351
    sget-object v11, Lcom/android/car/audio/CarAudioControl;->FADER_TABLES:[I

    aget-object v13, v12, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v9

    .line 350
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 353
    .end local v9    # "i":I
    :cond_a
    goto :goto_7

    .line 345
    :cond_b
    move v9, v11

    .restart local v9    # "i":I
    :goto_5
    array-length v11, v12

    if-ge v9, v11, :cond_c

    .line 346
    sget-object v11, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_TRIBLE_TABLES:[I

    aget-object v13, v12, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v9

    .line 345
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 348
    .end local v9    # "i":I
    :cond_c
    goto :goto_7

    .line 340
    :cond_d
    move v9, v11

    .restart local v9    # "i":I
    :goto_6
    array-length v11, v12

    if-ge v9, v11, :cond_e

    .line 341
    sget-object v11, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_BASS_TABLES:[I

    aget-object v13, v12, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v11, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 343
    .end local v9    # "i":I
    :cond_e
    nop

    .line 364
    .end local v10    # "value":Ljava/lang/String;
    .end local v12    # "values":[Ljava/lang/String;
    :goto_7
    goto/16 :goto_1

    .line 366
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "outerDepth":I
    .end local v4    # "type":I
    .end local v8    # "tableType":Ljava/lang/String;
    :cond_f
    :try_start_3
    invoke-static {v10, v2}, Lcom/android/car/audio/CarAudioControl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 368
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_8

    .line 320
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "type":I
    :cond_10
    :try_start_4
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Meta-data does not start with volumeGroups tag"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :catchall_0
    move-exception v0

    move-object v3, v0

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 366
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_11

    :try_start_6
    invoke-static {v3, v2}, Lcom/android/car/audio/CarAudioControl;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :cond_11
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioControl;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CAR.AUDIO"

    const-string v3, "Error parsing volume groups configuration"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x33962830 -> :sswitch_5
        0x2e06df -> :sswitch_4
        0x18d8fc4 -> :sswitch_3
        0x5caf976 -> :sswitch_2
        0x35da962e -> :sswitch_1
        0x492dfde3 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseEffectOffsetTable([[ILandroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "table"    # [[I
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 195
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 196
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 197
    :cond_1
    if-ne v2, v1, :cond_2

    .line 198
    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "offset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x0

    const-string v4, "volume"

    invoke-interface {p2, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 202
    .local v4, "volume":I
    invoke-interface {p2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "value":Ljava/lang/String;
    const-string v3, " "

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 206
    aget-object v6, p1, v4

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v5

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 208
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    .end local v4    # "volume":I
    .end local v5    # "i":I
    :cond_3
    goto :goto_0

    .line 210
    :cond_4
    return-void
.end method

.method private parseToneControlOffsetTable([[ILandroid/content/res/XmlResourceParser;)V
    .locals 8
    .param p1, "table"    # [[I
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 217
    .local v0, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 218
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 219
    :cond_1
    if-ne v2, v1, :cond_2

    .line 220
    goto :goto_0

    .line 222
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "offset"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    const-string v4, "volume"

    invoke-interface {p2, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 224
    .local v4, "volume":I
    invoke-interface {p2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "value":Ljava/lang/String;
    const-string v3, " "

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "values":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 228
    aget-object v6, p1, v4

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v5

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 230
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    .end local v4    # "volume":I
    .end local v5    # "i":I
    :cond_3
    goto :goto_0

    .line 232
    :cond_4
    return-void
.end method

.method private releaseAudioLock(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V
    .locals 5
    .param p1, "dspAttr"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    .line 1171
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseAudioLock start bus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->bus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1176
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->releaseAudioSource(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1179
    goto :goto_0

    .line 1177
    :catch_0
    move-exception v2

    .line 1178
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "releaseAudioLock failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1182
    const-string v0, "CAR.AUDIO"

    const-string v1, "releaseAudioLock end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    return-void

    .line 1181
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private requestAudioLock(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V
    .locals 5
    .param p1, "dspAttr"    # Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    .line 1108
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1109
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAudioLock start bus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->bus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1113
    :try_start_1
    invoke-interface {v1, p1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->requestAudioSource(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    goto :goto_0

    .line 1114
    :catch_0
    move-exception v2

    .line 1115
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "requestAudioLock failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1118
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1119
    const-string v0, "CAR.AUDIO"

    const-string v1, "requestAudioLock end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    return-void

    .line 1118
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private setAudioSettingEQBase(I)V
    .locals 6
    .param p1, "base"    # I

    .line 1642
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1643
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_1

    .line 1644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    new-instance v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v2}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    .line 1646
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    const-string v3, "eq_base"

    iput-object v3, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1647
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1648
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1652
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    :cond_0
    goto :goto_0

    .line 1654
    :catch_0
    move-exception v3

    .line 1655
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "CAR.AUDIO"

    const-string v5, "setAudioSettingEQBase failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1658
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method private setAudioSettting3DSoundStageLock(Landroid/media/AudioSetting;)V
    .locals 7
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1660
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1661
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_3

    .line 1662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 1664
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    .line 1665
    .local v3, "soundStageMode":I
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 1666
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1667
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1668
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    const-string v4, "subwoofer"

    if-nez v3, :cond_0

    .line 1670
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    .line 1671
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1672
    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1673
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1674
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1676
    :cond_0
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    if-eqz v5, :cond_1

    .line 1677
    iget-boolean v6, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    if-eq v5, v6, :cond_1

    .line 1678
    iput-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    .line 1679
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1680
    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1681
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1682
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1689
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    :cond_2
    goto :goto_1

    .line 1691
    :catch_0
    move-exception v4

    .line 1692
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "CAR.AUDIO"

    const-string v6, "setAudioSettting3DSoundStageLock failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1695
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "soundStageMode":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method private setAudioSetttingFaderLock(Landroid/media/AudioSetting;)V
    .locals 9
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1577
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1578
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_6

    .line 1579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 1581
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    .line 1582
    .local v3, "value":I
    const/4 v4, 0x0

    .line 1583
    .local v4, "mode":I
    const-string v5, "CAR.AUDIO"

    if-nez v3, :cond_0

    .line 1584
    const/4 v4, 0x1

    .line 1585
    const-string v6, "will in Rear Quiet Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1587
    :cond_0
    const/4 v4, 0x0

    .line 1588
    iget-boolean v6, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    if-eqz v6, :cond_1

    .line 1589
    const-string v6, "will leave Rear Quiet Mode"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    if-eq v6, v7, :cond_3

    .line 1593
    new-instance v6, Landroid/media/AudioSetting;

    const-string v7, "rear_quiet_mode"

    invoke-direct {v6, v7, v4, v8, v8}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    .line 1594
    .local v6, "as":Landroid/media/AudioSetting;
    invoke-direct {p0, v6}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingStore(Landroid/media/AudioSetting;)Z

    .line 1597
    .end local v6    # "as":Landroid/media/AudioSetting;
    :cond_3
    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    if-eq v6, v3, :cond_4

    .line 1598
    iput v3, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    .line 1599
    new-instance v6, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v6}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v6

    .line 1600
    const-string v6, "fader"

    iput-object v6, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1601
    sget-object v6, Lcom/android/car/audio/CarAudioControl;->FADER_TABLES:[I

    iget v7, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1602
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1607
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    :cond_5
    goto :goto_2

    .line 1609
    :catch_0
    move-exception v6

    .line 1610
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "setAudioSetttingFaderLock failed"

    invoke-static {v5, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "value":I
    .end local v4    # "mode":I
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    return-void
.end method

.method private setAudioSetttingLoudnessLock(I)V
    .locals 9
    .param p1, "step"    # I

    .line 1546
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1547
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_3

    .line 1548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 1550
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    .line 1551
    .local v3, "loudnessValues":[I
    const-string v4, "bass"

    const-string v5, "trible"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 1555
    .local v4, "loudnessKeys":[Ljava/lang/String;
    const/4 v5, 0x0

    sget-object v6, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_BASS_TABLES:[I

    aget v6, v6, p1

    aput v6, v3, v5

    .line 1556
    sget-object v5, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_TRIBLE_TABLES:[I

    aget v5, v5, p1

    const/4 v6, 0x1

    aput v5, v3, v6

    .line 1557
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessValue:[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 1558
    aget v7, v3, v5

    aget v8, v6, v5

    if-eq v7, v8, :cond_0

    aget v7, v3, v5

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 1559
    aget v7, v3, v5

    aput v7, v6, v5

    .line 1560
    new-instance v6, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v6}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v6

    .line 1561
    aget-object v6, v4, v5

    iput-object v6, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1562
    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessValue:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1563
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1567
    .end local v5    # "i":I
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1568
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1572
    :cond_2
    goto :goto_1

    .line 1570
    :catch_0
    move-exception v5

    .line 1571
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "CAR.AUDIO"

    const-string v7, "setAudioSetttingLoudnessLock failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "loudnessValues":[I
    .end local v4    # "loudnessKeys":[Ljava/lang/String;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V
    .locals 9
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 734
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 735
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_3

    .line 737
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 739
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v5, "boot_music"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "mic_volume"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "music_light"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "driver_headrest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "tone_control_trible"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "chime_volume"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "tone_control_bass"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v6

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "navi_duck"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x1d

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "driver_headrest_stage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "voice_partition"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "hrt_voice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "sound_quality"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "vr_light"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "hrt_voice_stage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "co_driver_headrest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x19

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "3d_chime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "protect_tone"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "tone_control_midrange"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v7

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "bass"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "bose_sound_effect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "balance"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v4, v8

    goto :goto_0

    :sswitch_15
    const-string v5, "dynamic_sound_quality"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x10

    goto :goto_0

    :sswitch_16
    const-string v5, "trible"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0xa

    goto :goto_0

    :sswitch_17
    const-string v5, "middle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x9

    goto :goto_0

    :sswitch_18
    const-string v5, "co_driver_headrest_stage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x1a

    goto :goto_0

    :sswitch_19
    const-string v5, "surround"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v5, "ambient_sound"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0x13

    goto :goto_0

    :sswitch_1b
    const-string v5, "auto_volume_compensate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0xe

    goto :goto_0

    :sswitch_1c
    const-string v5, "svc_level"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v4, 0xc

    goto :goto_0

    :sswitch_1d
    const-string v5, "pedestrian_warning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/16 v4, 0x11

    :goto_0
    const-string v3, ""

    packed-switch v4, :pswitch_data_0

    .line 806
    return-void

    .line 800
    :pswitch_0
    :try_start_1
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 801
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 803
    goto/16 :goto_1

    .line 766
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    sget-object v4, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_TREBLE_OFFSET_TABLES:[[I

    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v4, v4, v5

    .line 767
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 768
    .local v3, "toneControlTreble":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    aget v4, v4, v7

    if-eq v3, v4, :cond_1

    .line 769
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    aput v3, v4, v7

    .line 770
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 771
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 772
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    goto/16 :goto_1

    .line 756
    .end local v3    # "toneControlTreble":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    sget-object v4, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_MID_OFFSET_TABLES:[[I

    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v4, v4, v5

    .line 757
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 758
    .local v3, "toneControlMid":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    aget v4, v4, v6

    if-eq v3, v4, :cond_1

    .line 759
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    aput v3, v4, v6

    .line 760
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 761
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 762
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    goto :goto_1

    .line 746
    .end local v3    # "toneControlMid":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    sget-object v4, Lcom/android/car/audio/CarAudioControl;->TONE_CONTROL_BASS_OFFSET_TABLES:[[I

    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v4, v4, v5

    .line 747
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aget v4, v4, v5

    add-int/2addr v3, v4

    .line 748
    .local v3, "toneControlBass":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    aget v4, v4, v8

    if-eq v3, v4, :cond_1

    .line 749
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValueAndOffset:[I

    aput v3, v4, v8

    .line 750
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 751
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 752
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    goto :goto_1

    .line 741
    .end local v3    # "toneControlBass":I
    :pswitch_4
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 742
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/car/audio/CarAudioControl;->FADER_TABLES:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 744
    nop

    .line 808
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 809
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 814
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    :cond_2
    goto :goto_2

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.AUDIO"

    const-string v3, "set AudioSetting failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ee28568 -> :sswitch_1d
        -0x66308b1b -> :sswitch_1c
        -0x65919314 -> :sswitch_1b
        -0x65523358 -> :sswitch_1a
        -0x5f9c9ac2 -> :sswitch_19
        -0x4ba641e9 -> :sswitch_18
        -0x4009266b -> :sswitch_17
        -0x33962830 -> :sswitch_16
        -0x32e2f631 -> :sswitch_15
        -0x14379124 -> :sswitch_14
        -0xd8db05f -> :sswitch_13
        0x2e06df -> :sswitch_12
        0x18d8fc4 -> :sswitch_11
        0x2ad34e2 -> :sswitch_10
        0x38b6e0e -> :sswitch_f
        0xb2c8a18 -> :sswitch_e
        0x15171d9c -> :sswitch_d
        0x1890a9d3 -> :sswitch_c
        0x1d12b1cf -> :sswitch_b
        0x1f35315d -> :sswitch_a
        0x21f2981d -> :sswitch_9
        0x289dc9aa -> :sswitch_8
        0x2c6fcdb2 -> :sswitch_7
        0x35da962e -> :sswitch_6
        0x36cfd37d -> :sswitch_5
        0x492fcf5f -> :sswitch_4
        0x57f97feb -> :sswitch_3
        0x5e52967c -> :sswitch_2
        0x7085f012 -> :sswitch_1
        0x79120e98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setAudioSetttingPresetEQLock(Landroid/media/AudioSetting;)V
    .locals 8
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1379
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1380
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_15

    .line 1381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1382
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x3

    new-array v3, v2, [I

    .line 1383
    .local v3, "bands":[I
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_d

    .line 1456
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_11

    .line 1457
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v6, v5, v2

    aput v6, v4, v2

    .line 1458
    aget v4, v5, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_USER_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1456
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1450
    .end local v2    # "i":I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 1451
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    aget v6, v5, v2

    aput v6, v4, v2

    .line 1452
    aget v4, v5, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_ROCK_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1450
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1454
    .end local v2    # "i":I
    :cond_0
    goto/16 :goto_d

    .line 1444
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 1445
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    aget v6, v5, v2

    aput v6, v4, v2

    .line 1446
    aget v4, v5, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_JAZZ_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1444
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1448
    .end local v2    # "i":I
    :cond_1
    goto/16 :goto_d

    .line 1438
    :pswitch_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1439
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    aget v6, v5, v2

    aput v6, v4, v2

    .line 1440
    aget v4, v5, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_VOCAL_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1438
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1442
    .end local v2    # "i":I
    :cond_2
    goto/16 :goto_d

    .line 1432
    :pswitch_4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 1433
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    aget v6, v5, v2

    aput v6, v4, v2

    .line 1434
    aget v4, v5, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_POPS_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1432
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1436
    .end local v2    # "i":I
    :cond_3
    goto/16 :goto_d

    .line 1426
    :pswitch_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 1427
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    aget v6, v5, v2

    aput v6, v4, v2

    .line 1428
    aget v4, v5, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_CLASSIC_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1426
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1430
    .end local v2    # "i":I
    :cond_4
    goto/16 :goto_d

    .line 1391
    :pswitch_6
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQSmartType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    if-eq v4, v2, :cond_c

    const/4 v2, 0x4

    if-eq v4, v2, :cond_a

    const/4 v2, 0x5

    if-eq v4, v2, :cond_8

    const/4 v2, 0x6

    if-eq v4, v2, :cond_6

    .line 1419
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 1420
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_USER_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1419
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1422
    .end local v2    # "i":I
    :cond_5
    goto/16 :goto_d

    .line 1413
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7
    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 1414
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_ROCK_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1413
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1416
    .end local v2    # "i":I
    :cond_7
    goto/16 :goto_d

    .line 1408
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    array-length v4, v3

    if-ge v2, v4, :cond_9

    .line 1409
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_JAZZ_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1408
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1411
    .end local v2    # "i":I
    :cond_9
    goto :goto_d

    .line 1403
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    array-length v4, v3

    if-ge v2, v4, :cond_b

    .line 1404
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_VOCAL_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1403
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1406
    .end local v2    # "i":I
    :cond_b
    goto :goto_d

    .line 1398
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 1399
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_POPS_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1398
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1401
    .end local v2    # "i":I
    :cond_d
    goto :goto_d

    .line 1393
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_b
    array-length v4, v3

    if-ge v2, v4, :cond_f

    .line 1394
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_CLASSIC_TABLES:[[I

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 1393
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1396
    .end local v2    # "i":I
    :cond_f
    goto :goto_d

    .line 1385
    :pswitch_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c
    array-length v4, v3

    if-ge v2, v4, :cond_10

    .line 1386
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFF_TABLES:[I

    aget v5, v4, v2

    aput v5, v3, v2

    .line 1387
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    aget v4, v4, v2

    aput v4, v5, v2

    .line 1385
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1389
    .end local v2    # "i":I
    :cond_10
    nop

    .line 1463
    :cond_11
    :goto_d
    const/4 v2, 0x0

    .line 1464
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    array-length v5, v3

    if-ge v4, v5, :cond_13

    .line 1465
    aget v5, v3, v4

    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    aget v7, v6, v4

    if-eq v5, v7, :cond_12

    aget v5, v3, v4

    const/4 v7, -0x1

    if-eq v5, v7, :cond_12

    .line 1466
    aget v5, v3, v4

    aput v5, v6, v4

    .line 1467
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1468
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->KEYS_EQ_BAND:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1469
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1470
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1475
    .end local v4    # "i":I
    :cond_13
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    .line 1476
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :cond_14
    goto :goto_f

    .line 1478
    :catch_0
    move-exception v4

    .line 1479
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "CAR.AUDIO"

    const-string v6, "set AudioSetting failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "bands":[I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method private setAudioSetttingPresetEQUserBandLock(Landroid/media/AudioSetting;)V
    .locals 13
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1485
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1486
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_b

    .line 1487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 1489
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    const/4 v3, -0x1

    .line 1490
    .local v3, "bandId":I
    const/4 v4, -0x1

    .line 1491
    .local v4, "presetEQBand":I
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    packed-switch v6, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v6, "geq_band5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_1

    :pswitch_1
    const-string v6, "geq_band4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    goto :goto_1

    :pswitch_2
    const-string v6, "geq_band3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    goto :goto_1

    :pswitch_3
    const-string v6, "geq_band2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v10

    goto :goto_1

    :pswitch_4
    const-string v6, "geq_band1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v12

    goto :goto_1

    :goto_0
    move v5, v11

    :goto_1
    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    goto :goto_2

    .line 1509
    :cond_1
    const/4 v3, 0x4

    .line 1510
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    goto :goto_2

    .line 1505
    :cond_2
    const/4 v3, 0x3

    .line 1506
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1507
    goto :goto_2

    .line 1501
    :cond_3
    const/4 v3, 0x2

    .line 1502
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1503
    goto :goto_2

    .line 1497
    :cond_4
    const/4 v3, 0x1

    .line 1498
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1499
    goto :goto_2

    .line 1493
    :cond_5
    const/4 v3, 0x0

    .line 1494
    new-instance v5, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v5}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v5

    .line 1495
    nop

    .line 1513
    :goto_2
    if-eqz v2, :cond_b

    .line 1514
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    aput v6, v5, v3

    .line 1515
    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_8

    .line 1516
    iput v6, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    .line 1517
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    array-length v7, v6

    if-ge v5, v7, :cond_7

    .line 1518
    iget-object v7, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentPresetEQBand:[I

    aget v8, v7, v5

    aget v6, v6, v5

    if-eq v8, v6, :cond_6

    aget v6, v7, v5

    if-eq v6, v11, :cond_6

    .line 1519
    new-instance v6, Landroid/media/AudioSetting;

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->KEYS_EQ_BAND:[Ljava/lang/String;

    aget-object v8, v8, v5

    aget v7, v7, v5

    invoke-direct {v6, v8, v7, v12, v12}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    .line 1520
    .local v6, "as":Landroid/media/AudioSetting;
    invoke-direct {p0, v6}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingStore(Landroid/media/AudioSetting;)Z

    .line 1517
    .end local v6    # "as":Landroid/media/AudioSetting;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1523
    .end local v5    # "i":I
    :cond_7
    new-instance v5, Landroid/media/AudioSetting;

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    const-string v7, "preset_eq"

    invoke-direct {v5, v7, v6, v12, v12}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    .line 1524
    .local v5, "as":Landroid/media/AudioSetting;
    invoke-direct {p0, v5}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingPresetEQLock(Landroid/media/AudioSetting;)V

    .line 1525
    .end local v5    # "as":Landroid/media/AudioSetting;
    goto :goto_4

    .line 1526
    :cond_8
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v5, v5, v3

    iget-object v6, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_USER_TABLES:[[I

    iget v7, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v6, v6, v7

    aget v6, v6, v3

    add-int/2addr v5, v6

    .line 1527
    .end local v4    # "presetEQBand":I
    .local v5, "presetEQBand":I
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1528
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    aget v6, v4, v3

    if-eq v5, v6, :cond_9

    if-eq v5, v11, :cond_9

    .line 1529
    aput v5, v4, v3

    .line 1530
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1531
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    :cond_9
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 1535
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :cond_a
    goto :goto_4

    .line 1537
    :catch_0
    move-exception v4

    .line 1538
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "CAR.AUDIO"

    const-string v7, "set AudioSetting failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1543
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "bandId":I
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "presetEQBand":I
    :cond_b
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch -0x5b515750
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAudioSetttingRearQuietModeLock(Z)V
    .locals 6
    .param p1, "state"    # Z

    .line 1616
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1617
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_2

    .line 1618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 1620
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    const-string v3, "CAR.AUDIO"

    if-eqz p1, :cond_0

    .line 1621
    const-string v4, "in rear quiet mode, fader will be F7"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    goto :goto_0

    .line 1624
    :cond_0
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    .line 1627
    :goto_0
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 1628
    const-string v4, "fader"

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1629
    sget-object v4, Lcom/android/car/audio/CarAudioControl;->FADER_TABLES:[I

    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1630
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1634
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_1
    goto :goto_1

    .line 1636
    :catch_0
    move-exception v4

    .line 1637
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "setAudioSetttingRearQuietModeLock failed"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1640
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    return-void
.end method

.method private setAudioSetttingStore(Landroid/media/AudioSetting;)Z
    .locals 12
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "changed":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 474
    .local v1, "token":J
    const/4 v3, 0x0

    .line 476
    .local v3, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v6, :sswitch_data_0

    packed-switch v6, :pswitch_data_0

    :cond_0
    goto/16 :goto_0

    :pswitch_0
    const-string v6, "geq_band5"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x15

    goto/16 :goto_0

    :pswitch_1
    const-string v6, "geq_band4"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x14

    goto/16 :goto_0

    :pswitch_2
    const-string v6, "geq_band3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x13

    goto/16 :goto_0

    :pswitch_3
    const-string v6, "geq_band2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x12

    goto/16 :goto_0

    :pswitch_4
    const-string v6, "geq_band1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x11

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "boot_music"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v8

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "music_light"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v11

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "driver_headrest"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x23

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "tone_control_trible"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "chime_volume"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x17

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "tone_control_bass"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v6, "navi_duck"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "driver_headrest_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x24

    goto/16 :goto_0

    :sswitch_8
    const-string v6, "subwoofer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "voice_partition"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x27

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "hrt_voice"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "sound_quality"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1a

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "vr_light"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v9

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "hrt_voice_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x21

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "co_driver_headrest"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x25

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "rear_quiet_mode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v7

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "fader"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x5

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "3d_chime"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "protect_tone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "tone_control_midrange"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "bass"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x7

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "bose_sound_effect"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "balance"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x6

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "dynamic_sound_quality"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "trible"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "preset_eq"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x10

    goto :goto_0

    :sswitch_1a
    const-string v6, "middle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_1b
    const-string v6, "co_driver_headrest_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x26

    goto :goto_0

    :sswitch_1c
    const-string v6, "surround"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v10

    goto :goto_0

    :sswitch_1d
    const-string v6, "ambient_sound"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1f

    goto :goto_0

    :sswitch_1e
    const-string v6, "auto_volume_compensate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x19

    goto :goto_0

    :sswitch_1f
    const-string v6, "svc_level"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x16

    goto :goto_0

    :sswitch_20
    const-string v6, "loudness"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_21
    const-string v6, "sound_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0xf

    goto :goto_0

    :sswitch_22
    const-string v6, "pedestrian_warning"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x1c

    :goto_0
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_1

    .line 720
    :pswitch_5
    const-string v4, "audio_setting_co_driver_headrest_stage"

    move-object v3, v4

    .line 721
    goto/16 :goto_1

    .line 717
    :pswitch_6
    const-string v4, "audio_setting_co_driver_headrest"

    move-object v3, v4

    .line 718
    goto/16 :goto_1

    .line 714
    :pswitch_7
    const-string v4, "audio_setting_driver_headrest_stage"

    move-object v3, v4

    .line 715
    goto/16 :goto_1

    .line 711
    :pswitch_8
    const-string v4, "audio_setting_driver_headrest"

    move-object v3, v4

    .line 712
    goto/16 :goto_1

    .line 708
    :pswitch_9
    const-string v4, "audio_setting_3d_chime"

    move-object v3, v4

    .line 709
    goto/16 :goto_1

    .line 705
    :pswitch_a
    const-string v4, "audio_setting_hrt_voice_stage"

    move-object v3, v4

    .line 706
    goto/16 :goto_1

    .line 702
    :pswitch_b
    const-string v4, "audio_setting_hrt_voice"

    move-object v3, v4

    .line 703
    goto/16 :goto_1

    .line 699
    :pswitch_c
    const-string v4, "audio_setting_ambient_sound"

    move-object v3, v4

    .line 700
    goto/16 :goto_1

    .line 687
    :pswitch_d
    const-string v4, "audio_setting_subwoofer"

    move-object v3, v4

    .line 688
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_1

    move v10, v11

    :cond_1
    move v4, v10

    .line 689
    .local v4, "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    if-eq v5, v4, :cond_2

    .line 690
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 691
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    .line 692
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 693
    :cond_2
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    iget-boolean v6, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    if-eq v5, v6, :cond_b

    .line 694
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 684
    .end local v4    # "status":Z
    :pswitch_e
    const-string v4, "audio_setting_protect_tone"

    move-object v3, v4

    .line 685
    goto/16 :goto_1

    .line 681
    :pswitch_f
    const-string v4, "audio_setting_pedestrian_warning"

    move-object v3, v4

    .line 682
    goto/16 :goto_1

    .line 678
    :pswitch_10
    const-string v4, "audio_setting_dynamic_sound_quality"

    move-object v3, v4

    .line 679
    goto/16 :goto_1

    .line 675
    :pswitch_11
    const-string v4, "audio_setting_sound_quality"

    move-object v3, v4

    .line 676
    goto/16 :goto_1

    .line 672
    :pswitch_12
    const-string v4, "audio_setting_auto_volume_compensate"

    move-object v3, v4

    .line 673
    goto/16 :goto_1

    .line 662
    :pswitch_13
    const-string v4, "audio_setting_navi_duck"

    move-object v3, v4

    .line 663
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_3

    move v10, v11

    :cond_3
    move v4, v10

    .line 664
    .restart local v4    # "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mDuckingSwitch:Z

    if-eq v5, v4, :cond_b

    .line 665
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 666
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mDuckingSwitch:Z

    .line 667
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 654
    .end local v4    # "status":Z
    :pswitch_14
    const-string v4, "audio_setting_chime_volume"

    move-object v3, v4

    .line 655
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mChimeVolume:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 656
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mChimeVolume:I

    .line 658
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 646
    :pswitch_15
    const-string v4, "audio_setting_svc_level"

    move-object v3, v4

    .line 647
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mSvcLevel:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 648
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mSvcLevel:I

    .line 650
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 638
    :pswitch_16
    const-string v4, "audio_setting_preset_eq_user_band5"

    move-object v3, v4

    .line 639
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v7

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 640
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v7

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 630
    :pswitch_17
    const-string v4, "audio_setting_preset_eq_user_band4"

    move-object v3, v4

    .line 631
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v8

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 632
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 633
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v8

    .line 634
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 622
    :pswitch_18
    const-string v4, "audio_setting_preset_eq_user_band3"

    move-object v3, v4

    .line 623
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v9

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 624
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 625
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v9

    .line 626
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 614
    :pswitch_19
    const-string v4, "audio_setting_preset_eq_user_band2"

    move-object v3, v4

    .line 615
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v11

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 616
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v11

    .line 618
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 606
    :pswitch_1a
    const-string v4, "audio_setting_preset_eq_user_band1"

    move-object v3, v4

    .line 607
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v10

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 608
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v10

    .line 610
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 598
    :pswitch_1b
    const-string v4, "audio_setting_preset_eq"

    move-object v3, v4

    .line 599
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 600
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    .line 602
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 589
    :pswitch_1c
    const-string v4, "audio_setting_sound_stage"

    move-object v3, v4

    .line 590
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 591
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 592
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    .line 593
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->m3DSoundStage:I

    if-eqz v4, :cond_4

    move v10, v11

    :cond_4
    iput-boolean v10, p0, Lcom/android/car/audio/CarAudioControl;->forceLoudnessEnable:Z

    .line 594
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 581
    :pswitch_1d
    const-string v4, "audio_setting_bose_sound_effect"

    move-object v3, v4

    .line 582
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mBOSESoundEffectType:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 583
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mBOSESoundEffectType:I

    .line 585
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 573
    :pswitch_1e
    const-string v4, "audio_setting_tone_control_treble"

    move-object v3, v4

    .line 574
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    aget v4, v4, v9

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 575
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v9

    .line 577
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 565
    :pswitch_1f
    const-string v4, "audio_setting_tone_control_midrange"

    move-object v3, v4

    .line 566
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    aget v4, v4, v11

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 567
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 568
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v11

    .line 569
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 557
    :pswitch_20
    const-string v4, "audio_setting_tone_control_bass"

    move-object v3, v4

    .line 558
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    aget v4, v4, v10

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 559
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mToneControlValue:[I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    aput v5, v4, v10

    .line 561
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 547
    :pswitch_21
    const-string v4, "audio_setting_loudness"

    move-object v3, v4

    .line 548
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_5

    move v10, v11

    :cond_5
    move v4, v10

    .line 549
    .restart local v4    # "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    if-eq v5, v4, :cond_b

    .line 550
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    .line 552
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 544
    .end local v4    # "status":Z
    :pswitch_22
    const-string v4, "audio_setting_trible"

    move-object v3, v4

    .line 545
    goto/16 :goto_1

    .line 541
    :pswitch_23
    const-string v4, "audio_setting_middle"

    move-object v3, v4

    .line 542
    goto/16 :goto_1

    .line 538
    :pswitch_24
    const-string v4, "audio_setting_bass"

    move-object v3, v4

    .line 539
    goto/16 :goto_1

    .line 530
    :pswitch_25
    const-string v4, "audio_setting_balance"

    move-object v3, v4

    .line 531
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoretBalance:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_b

    .line 532
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoretBalance:I

    .line 534
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 520
    :pswitch_26
    const-string v4, "audio_setting_fader"

    move-object v3, v4

    .line 521
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 522
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 523
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    iput v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    .line 524
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 525
    :cond_6
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    if-ne v4, v5, :cond_b

    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreFader:I

    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    if-eq v4, v5, :cond_b

    .line 526
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 510
    :pswitch_27
    const-string v4, "audio_setting_rear_quiet_mode"

    move-object v3, v4

    .line 511
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_7

    move v10, v11

    :cond_7
    move v4, v10

    .line 512
    .restart local v4    # "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    if-eq v5, v4, :cond_b

    .line 513
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    .line 515
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 501
    .end local v4    # "status":Z
    :pswitch_28
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_8

    move v10, v11

    :cond_8
    move v4, v10

    .line 502
    .restart local v4    # "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mBootMusicEnable:Z

    if-eq v5, v4, :cond_b

    .line 503
    const-string v5, "audio_setting_boot_music"

    move-object v3, v5

    .line 504
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mBootMusicEnable:Z

    .line 506
    const/4 v0, 0x1

    goto :goto_1

    .line 492
    .end local v4    # "status":Z
    :pswitch_29
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_9

    move v10, v11

    :cond_9
    move v4, v10

    .line 493
    .restart local v4    # "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mVRLightEnable:Z

    if-eq v5, v4, :cond_b

    .line 494
    const-string v5, "audio_setting_vr_light"

    move-object v3, v5

    .line 495
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mVRLightEnable:Z

    .line 497
    const/4 v0, 0x1

    goto :goto_1

    .line 483
    .end local v4    # "status":Z
    :pswitch_2a
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    if-ne v4, v11, :cond_a

    move v10, v11

    :cond_a
    move v4, v10

    .line 484
    .restart local v4    # "status":Z
    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mMusicLightEnable:Z

    if-eq v5, v4, :cond_b

    .line 485
    const-string v5, "audio_setting_music_light"

    move-object v3, v5

    .line 486
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v6

    invoke-static {v5, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mMusicLightEnable:Z

    .line 488
    const/4 v0, 0x1

    goto :goto_1

    .line 479
    .end local v4    # "status":Z
    :pswitch_2b
    const-string v4, "audio_setting_sourround"

    move-object v3, v4

    .line 480
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v5

    invoke-static {v4, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    nop

    .line 727
    :cond_b
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    nop

    .line 730
    return v0

    .line 727
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee28568 -> :sswitch_22
        -0x78cd5832 -> :sswitch_21
        -0x6fd1a757 -> :sswitch_20
        -0x66308b1b -> :sswitch_1f
        -0x65919314 -> :sswitch_1e
        -0x65523358 -> :sswitch_1d
        -0x5f9c9ac2 -> :sswitch_1c
        -0x4ba641e9 -> :sswitch_1b
        -0x4009266b -> :sswitch_1a
        -0x36f151f4 -> :sswitch_19
        -0x33962830 -> :sswitch_18
        -0x32e2f631 -> :sswitch_17
        -0x14379124 -> :sswitch_16
        -0xd8db05f -> :sswitch_15
        0x2e06df -> :sswitch_14
        0x18d8fc4 -> :sswitch_13
        0x2ad34e2 -> :sswitch_12
        0x38b6e0e -> :sswitch_11
        0x5caf976 -> :sswitch_10
        0xb17da49 -> :sswitch_f
        0xb2c8a18 -> :sswitch_e
        0x15171d9c -> :sswitch_d
        0x1890a9d3 -> :sswitch_c
        0x1d12b1cf -> :sswitch_b
        0x1f35315d -> :sswitch_a
        0x21f2981d -> :sswitch_9
        0x262af1dc -> :sswitch_8
        0x289dc9aa -> :sswitch_7
        0x2c6fcdb2 -> :sswitch_6
        0x35da962e -> :sswitch_5
        0x36cfd37d -> :sswitch_4
        0x492fcf5f -> :sswitch_3
        0x57f97feb -> :sswitch_2
        0x5e52967c -> :sswitch_1
        0x79120e98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x5b515750
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
    .end packed-switch
.end method

.method private setAudioSetttingVirtualSubwooferLock(Landroid/media/AudioSetting;)V
    .locals 7
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 1698
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1699
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v0, :cond_3

    .line 1700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1701
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v2, 0x0

    .line 1702
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    .line 1703
    .local v3, "state":Z
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mStoreVirtualSubwoofer:Z

    iget-boolean v5, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    if-eq v4, v5, :cond_1

    .line 1704
    iput-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    .line 1705
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v4

    .line 1706
    const-string v4, "subwoofer"

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1707
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mVirtualSubwoofer:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1708
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1713
    invoke-interface {v0, v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    :cond_2
    goto :goto_1

    .line 1715
    :catch_0
    move-exception v4

    .line 1716
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "CAR.AUDIO"

    const-string v6, "setAudioSetttingVirtualSubwooferLock failed"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "state":Z
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void
.end method

.method private switchMicChannelGain(Landroid/media/AudioAttributes;Z)V
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "isRequest"    # Z

    .line 1836
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->getCurrentUseMicSource(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 1837
    .local v0, "useMicSource":I
    const/4 v1, -0x1

    .line 1838
    .local v1, "micVol":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useMicSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-static {v0}, Landroid/media/AudioAttributes;->carSourceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mUseMicSource = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    .line 1840
    invoke-static {v3}, Landroid/media/AudioAttributes;->carSourceTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1838
    const-string v3, "CAR.AUDIO"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    if-eq v0, v4, :cond_3

    .line 1842
    const/16 v3, 0x1e

    if-eq v0, v3, :cond_2

    const/16 v3, 0x28

    if-eq v0, v3, :cond_1

    const/16 v3, 0x33

    if-eq v0, v3, :cond_2

    const/16 v3, 0x35

    if-eq v0, v3, :cond_0

    .line 1857
    goto :goto_0

    .line 1853
    :cond_0
    const/16 v1, 0x108

    .line 1854
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    .line 1855
    goto :goto_0

    .line 1844
    :cond_1
    const/16 v1, 0x108

    .line 1845
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    .line 1846
    goto :goto_0

    .line 1849
    :cond_2
    const/16 v1, 0x108

    .line 1850
    iput v0, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    .line 1851
    goto :goto_0

    .line 1859
    :cond_3
    if-nez p2, :cond_4

    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    if-ne v0, v4, :cond_4

    .line 1860
    const/16 v1, 0x108

    .line 1861
    iput v2, p0, Lcom/android/car/audio/CarAudioControl;->mUseMicSource:I

    goto :goto_0

    .line 1863
    :cond_4
    const-string v4, "no need to change mic channel gain!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_5

    iget v3, p0, Lcom/android/car/audio/CarAudioControl;->mMicVol:I

    if-eq v3, v1, :cond_5

    .line 1867
    new-instance v3, Landroid/media/AudioSetting;

    const-string v4, "mic_volume"

    invoke-direct {v3, v4, v1, v2, v2}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    move-object v2, v3

    .line 1868
    .local v2, "para":Landroid/media/AudioSetting;
    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    .line 1869
    iput v1, p0, Lcom/android/car/audio/CarAudioControl;->mMicVol:I

    .line 1871
    .end local v2    # "para":Landroid/media/AudioSetting;
    :cond_5
    return-void
.end method


# virtual methods
.method public debugDump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 1763
    const-string v0, "CarAudioControl"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1766
    const-string v0, "Fader&Balance Table: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    sget-object v0, Lcom/android/car/audio/CarAudioControl;->FADER_TABLES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, " "

    if-ge v3, v1, :cond_0

    aget v5, v0, v3

    .line 1768
    .local v5, "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1767
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1770
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1772
    const-string v0, "Loudness bass Table: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    sget-object v0, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_BASS_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    .line 1774
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1776
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1778
    const-string v0, "Loudness trible Table: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    sget-object v0, Lcom/android/car/audio/CarAudioControl;->LOUDNESS_TRIBLE_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget v5, v0, v3

    .line 1780
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1782
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1784
    const-string v0, "classic: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_3

    aget v5, v0, v3

    .line 1786
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1788
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1790
    const-string v0, "pops: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_4

    aget v5, v0, v3

    .line 1792
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1791
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1794
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1796
    const-string v0, "vocal: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5

    aget v5, v0, v3

    .line 1798
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1800
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1802
    const-string v0, "jazz: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_6

    aget v5, v0, v3

    .line 1804
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1806
    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1808
    const-string v0, "rock: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    array-length v1, v0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_7

    aget v5, v0, v3

    .line 1810
    .restart local v5    # "a":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    .end local v5    # "a":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1812
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1814
    const-string v0, "user: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    array-length v1, v0

    :goto_8
    if-ge v2, v1, :cond_8

    aget v3, v0, v2

    .line 1816
    .local v3, "a":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    .end local v3    # "a":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1818
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1820
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1822
    const-string v0, ""

    .line 1823
    .local v0, "info":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1

    .line 1824
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_9

    .line 1826
    :try_start_0
    invoke-interface {v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->debugDump()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1829
    goto :goto_9

    .line 1827
    :catch_0
    move-exception v2

    .line 1828
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.AUDIO"

    const-string v4, "debugDump failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1830
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1832
    :cond_9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1833
    return-void
.end method

.method public getAudioSetting(Landroid/media/AudioSetting;)I
    .locals 12
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 924
    const/16 v0, 0xff

    .line 925
    .local v0, "returnvalue":I
    iget-object v1, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 926
    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v1

    return v0

    .line 927
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 928
    .local v2, "token":J
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v6, "boot_music"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    goto/16 :goto_0

    :sswitch_1
    const-string v6, "music_light"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v11

    goto/16 :goto_0

    :sswitch_2
    const-string v6, "driver_headrest"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x1e

    goto/16 :goto_0

    :sswitch_3
    const-string v6, "tone_control_trible"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v6, "chime_volume"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v6, "tone_control_bass"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v6, "navi_duck"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "driver_headrest_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x1f

    goto/16 :goto_0

    :sswitch_8
    const-string v6, "subwoofer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x19

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "voice_partition"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x22

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "hrt_voice"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x1b

    goto/16 :goto_0

    :sswitch_b
    const-string v6, "sound_quality"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x15

    goto/16 :goto_0

    :sswitch_c
    const-string v6, "vr_light"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v8

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "hrt_voice_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x1c

    goto/16 :goto_0

    :sswitch_e
    const-string v6, "co_driver_headrest"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x20

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "rear_quiet_mode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "fader"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v7

    goto/16 :goto_0

    :sswitch_11
    const-string v6, "3d_chime"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x1d

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "protect_tone"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x18

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "tone_control_midrange"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "bass"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v9

    goto/16 :goto_0

    :sswitch_15
    const-string v6, "bose_sound_effect"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v6, "balance"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x6

    goto/16 :goto_0

    :sswitch_17
    const-string v6, "dynamic_sound_quality"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x16

    goto/16 :goto_0

    :sswitch_18
    const-string v6, "trible"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "preset_eq"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x10

    goto :goto_0

    :sswitch_1a
    const-string v6, "middle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :sswitch_1b
    const-string v6, "co_driver_headrest_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x21

    goto :goto_0

    :sswitch_1c
    const-string v6, "surround"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v10

    goto :goto_0

    :sswitch_1d
    const-string v6, "ambient_sound"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x1a

    goto :goto_0

    :sswitch_1e
    const-string v6, "auto_volume_compensate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x14

    goto :goto_0

    :sswitch_1f
    const-string v6, "svc_level"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x11

    goto :goto_0

    :sswitch_20
    const-string v6, "loudness"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xa

    goto :goto_0

    :sswitch_21
    const-string v6, "sound_stage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0xf

    goto :goto_0

    :sswitch_22
    const-string v6, "pedestrian_warning"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v5, 0x17

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 1068
    :pswitch_0
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_co_driver_headrest_stage"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1070
    goto/16 :goto_1

    .line 1064
    :pswitch_1
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_co_driver_headrest"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1066
    goto/16 :goto_1

    .line 1060
    :pswitch_2
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_driver_headrest_stage"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1062
    goto/16 :goto_1

    .line 1056
    :pswitch_3
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_driver_headrest"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1058
    goto/16 :goto_1

    .line 1052
    :pswitch_4
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_3d_chime"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1054
    goto/16 :goto_1

    .line 1048
    :pswitch_5
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_hrt_voice_stage"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1050
    goto/16 :goto_1

    .line 1044
    :pswitch_6
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_hrt_voice"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1046
    goto/16 :goto_1

    .line 1040
    :pswitch_7
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_ambient_sound"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1042
    goto/16 :goto_1

    .line 1036
    :pswitch_8
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_subwoofer"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1038
    goto/16 :goto_1

    .line 1032
    :pswitch_9
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_protect_tone"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1034
    goto/16 :goto_1

    .line 1027
    :pswitch_a
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_pedestrian_warning"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1030
    goto/16 :goto_1

    .line 1023
    :pswitch_b
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_dynamic_sound_quality"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1025
    goto/16 :goto_1

    .line 1019
    :pswitch_c
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_sound_quality"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1021
    goto/16 :goto_1

    .line 1015
    :pswitch_d
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_auto_volume_compensate"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1017
    goto/16 :goto_1

    .line 1011
    :pswitch_e
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_navi_duck"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1013
    goto/16 :goto_1

    .line 1007
    :pswitch_f
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_chime_volume"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1009
    goto/16 :goto_1

    .line 1003
    :pswitch_10
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_svc_level"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 1005
    goto/16 :goto_1

    .line 1000
    :pswitch_11
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    move v0, v4

    .line 1001
    goto/16 :goto_1

    .line 996
    :pswitch_12
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_sound_stage"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 998
    goto/16 :goto_1

    .line 991
    :pswitch_13
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_bose_sound_effect"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 994
    goto/16 :goto_1

    .line 987
    :pswitch_14
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_tone_control_treble"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 989
    goto/16 :goto_1

    .line 983
    :pswitch_15
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_tone_control_midrange"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 985
    goto/16 :goto_1

    .line 979
    :pswitch_16
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_tone_control_bass"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 981
    goto/16 :goto_1

    .line 975
    :pswitch_17
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_loudness"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 977
    goto/16 :goto_1

    .line 971
    :pswitch_18
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_trible"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 973
    goto/16 :goto_1

    .line 967
    :pswitch_19
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_middle"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 969
    goto :goto_1

    .line 963
    :pswitch_1a
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_bass"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 965
    goto :goto_1

    .line 959
    :pswitch_1b
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_balance"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 961
    goto :goto_1

    .line 951
    :pswitch_1c
    iget-boolean v4, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    if-eqz v4, :cond_2

    .line 952
    iget v4, p0, Lcom/android/car/audio/CarAudioControl;->mCurrentFader:I

    move v0, v4

    goto :goto_1

    .line 954
    :cond_2
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_fader"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 957
    goto :goto_1

    .line 947
    :pswitch_1d
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_rear_quiet_mode"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 949
    goto :goto_1

    .line 943
    :pswitch_1e
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_boot_music"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 945
    goto :goto_1

    .line 939
    :pswitch_1f
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_vr_light"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 941
    goto :goto_1

    .line 935
    :pswitch_20
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_music_light"

    invoke-static {v4, v5, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 937
    goto :goto_1

    .line 931
    :pswitch_21
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "audio_setting_sourround"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    .line 933
    nop

    .line 1075
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1076
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAR.AUDIO"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    return v0

    .line 1076
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ee28568 -> :sswitch_22
        -0x78cd5832 -> :sswitch_21
        -0x6fd1a757 -> :sswitch_20
        -0x66308b1b -> :sswitch_1f
        -0x65919314 -> :sswitch_1e
        -0x65523358 -> :sswitch_1d
        -0x5f9c9ac2 -> :sswitch_1c
        -0x4ba641e9 -> :sswitch_1b
        -0x4009266b -> :sswitch_1a
        -0x36f151f4 -> :sswitch_19
        -0x33962830 -> :sswitch_18
        -0x32e2f631 -> :sswitch_17
        -0x14379124 -> :sswitch_16
        -0xd8db05f -> :sswitch_15
        0x2e06df -> :sswitch_14
        0x18d8fc4 -> :sswitch_13
        0x2ad34e2 -> :sswitch_12
        0x38b6e0e -> :sswitch_11
        0x5caf976 -> :sswitch_10
        0xb17da49 -> :sswitch_f
        0xb2c8a18 -> :sswitch_e
        0x15171d9c -> :sswitch_d
        0x1890a9d3 -> :sswitch_c
        0x1d12b1cf -> :sswitch_b
        0x1f35315d -> :sswitch_a
        0x21f2981d -> :sswitch_9
        0x262af1dc -> :sswitch_8
        0x289dc9aa -> :sswitch_7
        0x2c6fcdb2 -> :sswitch_6
        0x35da962e -> :sswitch_5
        0x36cfd37d -> :sswitch_4
        0x492fcf5f -> :sswitch_3
        0x57f97feb -> :sswitch_2
        0x5e52967c -> :sswitch_1
        0x79120e98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
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
        :pswitch_0
    .end packed-switch
.end method

.method public getBusForContext(I)I
    .locals 2
    .param p1, "contextNumber"    # I

    .line 1722
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v0

    .line 1724
    .local v0, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    :try_start_0
    invoke-interface {v0, p1}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->getBusForContext(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1725
    :catch_0
    move-exception v1

    .line 1726
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1728
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getEQBand(I)[I
    .locals 1
    .param p1, "type"    # I

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, "band":[I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1101
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    goto :goto_0

    .line 1098
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    .line 1099
    goto :goto_0

    .line 1095
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    .line 1096
    goto :goto_0

    .line 1092
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    .line 1093
    goto :goto_0

    .line 1089
    :pswitch_4
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    .line 1090
    goto :goto_0

    .line 1086
    :pswitch_5
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    .line 1087
    nop

    .line 1104
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->initAudioSettings()V

    .line 423
    return-void
.end method

.method public loadAllTables()V
    .locals 2

    .line 184
    const-string v0, "CAR.AUDIO"

    const-string v1, "loadAllTables: START>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->loadEffectTablesXml()V

    .line 186
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->loadOtherTablesXml()V

    .line 187
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->loadAudioSettingsTable()V

    .line 188
    const-string v1, "loadAllTables: END<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public releaseAudio(ILandroid/media/AudioAttributes;)V
    .locals 1
    .param p1, "bus"    # I
    .param p2, "aa"    # Landroid/media/AudioAttributes;

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/car/audio/CarAudioControl;->releaseAudio(ILandroid/media/AudioAttributes;I)V

    .line 1187
    return-void
.end method

.method public releaseAudio(ILandroid/media/AudioAttributes;I)V
    .locals 6
    .param p1, "bus"    # I
    .param p2, "aa"    # Landroid/media/AudioAttributes;
    .param p3, "flag"    # I

    .line 1190
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mActiveBus:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    return-void

    .line 1193
    :cond_0
    const/4 v0, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1204
    :cond_1
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    invoke-virtual {v4, v2}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 1205
    goto :goto_0

    .line 1198
    :cond_2
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 1199
    goto :goto_0

    .line 1195
    :cond_3
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 1196
    goto :goto_0

    .line 1201
    :cond_4
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    invoke-virtual {v4, v3}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->removeMessages(I)V

    .line 1202
    nop

    .line 1209
    :goto_0
    new-instance v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    invoke-direct {v4}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;-><init>()V

    .line 1210
    .local v4, "da":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    iput p1, v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->bus:I

    .line 1211
    invoke-direct {p0, p2}, Lcom/android/car/audio/CarAudioControl;->AudioAttributesToDSPSource(Landroid/media/AudioAttributes;)I

    move-result v5

    iput v5, v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->source:I

    .line 1212
    iput p3, v4, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->flag:I

    .line 1213
    invoke-direct {p0, v4}, Lcom/android/car/audio/CarAudioControl;->releaseAudioLock(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V

    .line 1215
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mActiveBus:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1216
    if-eq p1, v3, :cond_5

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    if-ne p1, v0, :cond_6

    .line 1219
    :cond_5
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "primary_bus=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1222
    :cond_6
    return-void
.end method

.method public requestAudio(ILandroid/media/AudioFocusInfo;)V
    .locals 8
    .param p1, "bus"    # I
    .param p2, "afi"    # Landroid/media/AudioFocusInfo;

    .line 1134
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mActiveBus:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    return-void

    .line 1137
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/media/AudioFocusInfo;->getAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1138
    .local v0, "aa":Landroid/media/AudioAttributes;
    :goto_0
    new-instance v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;

    invoke-direct {v1}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;-><init>()V

    .line 1139
    .local v1, "da":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;
    iput p1, v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->bus:I

    .line 1140
    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioControl;->AudioAttributesToDSPSource(Landroid/media/AudioAttributes;)I

    move-result v2

    iput v2, v1, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;->source:I

    .line 1141
    const/4 v2, 0x6

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 1155
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->requestAudioLock(Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;)V

    goto :goto_1

    .line 1152
    :cond_2
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->lastPrimaryChannelBus:I

    invoke-static {v5, v1, v6}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->access$400(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V

    .line 1153
    goto :goto_1

    .line 1146
    :cond_3
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->lastPrimaryChannelBus:I

    invoke-direct {p0, p2}, Lcom/android/car/audio/CarAudioControl;->isCarplayApp(Landroid/media/AudioFocusInfo;)Z

    move-result v7

    invoke-static {v5, v1, v6, v7}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->access$200(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V

    .line 1147
    goto :goto_1

    .line 1143
    :cond_4
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->lastPrimaryChannelBus:I

    invoke-static {v5, v1, v6}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->access$100(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;I)V

    .line 1144
    goto :goto_1

    .line 1149
    :cond_5
    iget-object v5, p0, Lcom/android/car/audio/CarAudioControl;->mCarAudioHandler:Lcom/android/car/audio/CarAudioControl$CarAudioHandler;

    iget v6, p0, Lcom/android/car/audio/CarAudioControl;->lastPrimaryChannelBus:I

    invoke-direct {p0, p2}, Lcom/android/car/audio/CarAudioControl;->isCarplayApp(Landroid/media/AudioFocusInfo;)Z

    move-result v7

    invoke-static {v5, v1, v6, v7}, Lcom/android/car/audio/CarAudioControl$CarAudioHandler;->access$300(Lcom/android/car/audio/CarAudioControl$CarAudioHandler;Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPAttribute;IZ)V

    .line 1150
    nop

    .line 1159
    :goto_1
    if-eq p1, v4, :cond_6

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    .line 1162
    :cond_6
    iput p1, p0, Lcom/android/car/audio/CarAudioControl;->lastPrimaryChannelBus:I

    .line 1163
    iget-object v2, p0, Lcom/android/car/audio/CarAudioControl;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primary_bus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1166
    :cond_7
    iget-object v2, p0, Lcom/android/car/audio/CarAudioControl;->mActiveBus:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1168
    return-void
.end method

.method public setAudioSetting(Landroid/media/AudioSetting;)Z
    .locals 9
    .param p1, "para"    # Landroid/media/AudioSetting;

    .line 821
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    const/4 v1, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit v0

    return v1

    .line 824
    :cond_0
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioSetting: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " group="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioSetting;->getGroup()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingStore(Landroid/media/AudioSetting;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "boot_music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "music_light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "driver_headrest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "tone_control_trible"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "chime_volume"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "tone_control_bass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "navi_duck"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "driver_headrest_stage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1f

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "subwoofer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "voice_partition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x22

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "hrt_voice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1b

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "sound_quality"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "vr_light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "hrt_voice_stage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "co_driver_headrest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "rear_quiet_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "fader"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "3d_chime"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "protect_tone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "tone_control_midrange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "bass"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_15
    const-string v3, "bose_sound_effect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_16
    const-string v3, "balance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_17
    const-string v3, "dynamic_sound_quality"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string v3, "trible"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_19
    const-string v3, "preset_eq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto/16 :goto_1

    :sswitch_1a
    const-string v3, "middle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_1b
    const-string v3, "co_driver_headrest_stage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x21

    goto :goto_1

    :sswitch_1c
    const-string v3, "surround"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_1d
    const-string v3, "ambient_sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_1

    :sswitch_1e
    const-string v3, "auto_volume_compensate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x15

    goto :goto_1

    :sswitch_1f
    const-string v3, "svc_level"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto :goto_1

    :sswitch_20
    const-string v3, "loudness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :sswitch_21
    const-string v3, "sound_stage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_22
    const-string v3, "pedestrian_warning"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x18

    goto :goto_1

    :goto_0
    move v2, v4

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 880
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingNormalLock(Landroid/media/AudioSetting;)V

    goto :goto_2

    .line 850
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingVirtualSubwooferLock(Landroid/media/AudioSetting;)V

    .line 851
    goto :goto_2

    .line 847
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSettting3DSoundStageLock(Landroid/media/AudioSetting;)V

    .line 848
    goto :goto_2

    .line 844
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingFaderLock(Landroid/media/AudioSetting;)V

    .line 845
    goto :goto_2

    .line 841
    :pswitch_4
    iget-boolean v2, p0, Lcom/android/car/audio/CarAudioControl;->mRearQuietMode:Z

    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingRearQuietModeLock(Z)V

    .line 842
    goto :goto_2

    .line 839
    :pswitch_5
    goto :goto_2

    .line 832
    :pswitch_6
    iget-boolean v2, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    if-eqz v2, :cond_2

    .line 833
    iget v2, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingLoudnessLock(I)V

    goto :goto_2

    .line 835
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingLoudnessLock(I)V

    .line 837
    goto :goto_2

    .line 829
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingPresetEQLock(Landroid/media/AudioSetting;)V

    .line 830
    nop

    .line 883
    :goto_2
    invoke-virtual {p1}, Landroid/media/AudioSetting;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :cond_3
    goto :goto_3

    :pswitch_8
    const-string v1, "geq_band5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_4

    :pswitch_9
    const-string v1, "geq_band4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_4

    :pswitch_a
    const-string v1, "geq_band3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_4

    :pswitch_b
    const-string v1, "geq_band2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v8

    goto :goto_4

    :pswitch_c
    const-string v3, "geq_band1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :goto_3
    move v1, v4

    :goto_4
    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v6, :cond_4

    if-eq v1, v7, :cond_4

    goto :goto_5

    .line 889
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingPresetEQUserBandLock(Landroid/media/AudioSetting;)V

    .line 892
    :goto_5
    monitor-exit v0

    return v8

    .line 894
    :cond_5
    monitor-exit v0

    return v1

    .line 895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7ee28568 -> :sswitch_22
        -0x78cd5832 -> :sswitch_21
        -0x6fd1a757 -> :sswitch_20
        -0x66308b1b -> :sswitch_1f
        -0x65919314 -> :sswitch_1e
        -0x65523358 -> :sswitch_1d
        -0x5f9c9ac2 -> :sswitch_1c
        -0x4ba641e9 -> :sswitch_1b
        -0x4009266b -> :sswitch_1a
        -0x36f151f4 -> :sswitch_19
        -0x33962830 -> :sswitch_18
        -0x32e2f631 -> :sswitch_17
        -0x14379124 -> :sswitch_16
        -0xd8db05f -> :sswitch_15
        0x2e06df -> :sswitch_14
        0x18d8fc4 -> :sswitch_13
        0x2ad34e2 -> :sswitch_12
        0x38b6e0e -> :sswitch_11
        0x5caf976 -> :sswitch_10
        0xb17da49 -> :sswitch_f
        0xb2c8a18 -> :sswitch_e
        0x15171d9c -> :sswitch_d
        0x1890a9d3 -> :sswitch_c
        0x1d12b1cf -> :sswitch_b
        0x1f35315d -> :sswitch_a
        0x21f2981d -> :sswitch_9
        0x262af1dc -> :sswitch_8
        0x289dc9aa -> :sswitch_7
        0x2c6fcdb2 -> :sswitch_6
        0x35da962e -> :sswitch_5
        0x36cfd37d -> :sswitch_4
        0x492fcf5f -> :sswitch_3
        0x57f97feb -> :sswitch_2
        0x5e52967c -> :sswitch_1
        0x79120e98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x5b515750
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setCallBack(Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;)V
    .locals 0
    .param p1, "callBack"    # Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;

    .line 238
    iput-object p1, p0, Lcom/android/car/audio/CarAudioControl;->mCallBack:Lcom/android/car/audio/CarAudioControl$CarAudioControlCallback;

    .line 239
    return-void
.end method

.method public setChannelGain(Lcom/android/car/audio/CarVolumeGroup;II)V
    .locals 5
    .param p1, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p2, "gain"    # I
    .param p3, "flags"    # I

    .line 1299
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1

    .line 1301
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1302
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setChannelGain: Group="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ChannelGain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :try_start_1
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setChannelGain(III)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    goto :goto_0

    .line 1305
    :catch_0
    move-exception v2

    .line 1306
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setChannelGain failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1310
    return-void

    .line 1309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setHMIMute(Lcom/android/car/audio/CarVolumeGroup;Z)V
    .locals 5
    .param p1, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p2, "mute"    # Z

    .line 1283
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1284
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/car/audio/CarVolumeGroup;->setMute(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1288
    :try_start_1
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHMIMute GroupID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    invoke-interface {v1, v2, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setHMIMute(IZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1292
    goto :goto_0

    .line 1290
    :catch_0
    move-exception v2

    .line 1291
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setHMIMute failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1295
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1296
    return-void

    .line 1295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setMute(Lcom/android/car/audio/CarVolumeGroup;Z)V
    .locals 5
    .param p1, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p2, "mute"    # Z

    .line 1255
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1256
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1259
    :try_start_1
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMute GroupID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    invoke-interface {v1, v2, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setMute(IZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1263
    goto :goto_0

    .line 1261
    :catch_0
    move-exception v2

    .line 1262
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setMute failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1266
    return-void

    .line 1265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setPresetEQForSmart(I)V
    .locals 11
    .param p1, "type"    # I

    .line 1313
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    const-string v1, "CAR.AUDIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPresetEQForSmart type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iput p1, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQSmartType:I

    .line 1316
    iget v1, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 1317
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1

    .line 1318
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_e

    .line 1319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    const/4 v4, 0x5

    new-array v5, v4, [I

    const/4 v6, -0x1

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v6, v5, v2

    const/4 v2, 0x2

    aput v6, v5, v2

    const/4 v8, 0x3

    aput v6, v5, v8

    const/4 v9, 0x4

    aput v6, v5, v9

    .line 1321
    .local v5, "bands":[I
    iget v10, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQSmartType:I

    if-eq v10, v2, :cond_8

    if-eq v10, v8, :cond_6

    if-eq v10, v9, :cond_4

    if-eq v10, v4, :cond_2

    const/4 v2, 0x6

    if-eq v10, v2, :cond_0

    .line 1349
    move v2, v7

    .local v2, "i":I
    :goto_0
    array-length v4, v5

    if-ge v2, v4, :cond_a

    .line 1350
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_USER_TABLES:[I

    aget v4, v4, v2

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_USER_TABLES:[[I

    iget v9, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    add-int/2addr v4, v8

    aput v4, v5, v2

    .line 1349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1343
    .end local v2    # "i":I
    :cond_0
    move v2, v7

    .restart local v2    # "i":I
    :goto_1
    array-length v4, v5

    if-ge v2, v4, :cond_1

    .line 1344
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_ROCK_TABLES:[I

    aget v4, v4, v2

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_ROCK_TABLES:[[I

    iget v9, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    add-int/2addr v4, v8

    aput v4, v5, v2

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1346
    .end local v2    # "i":I
    :cond_1
    goto :goto_6

    .line 1338
    :cond_2
    move v2, v7

    .restart local v2    # "i":I
    :goto_2
    array-length v4, v5

    if-ge v2, v4, :cond_3

    .line 1339
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_JAZZ_TABLES:[I

    aget v4, v4, v2

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_JAZZ_TABLES:[[I

    iget v9, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    add-int/2addr v4, v8

    aput v4, v5, v2

    .line 1338
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1341
    .end local v2    # "i":I
    :cond_3
    goto :goto_6

    .line 1333
    :cond_4
    move v2, v7

    .restart local v2    # "i":I
    :goto_3
    array-length v4, v5

    if-ge v2, v4, :cond_5

    .line 1334
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_VOCAL_TABLES:[I

    aget v4, v4, v2

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_VOCAL_TABLES:[[I

    iget v9, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    add-int/2addr v4, v8

    aput v4, v5, v2

    .line 1333
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1336
    .end local v2    # "i":I
    :cond_5
    goto :goto_6

    .line 1328
    :cond_6
    move v2, v7

    .restart local v2    # "i":I
    :goto_4
    array-length v4, v5

    if-ge v2, v4, :cond_7

    .line 1329
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_POPS_TABLES:[I

    aget v4, v4, v2

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_POPS_TABLES:[[I

    iget v9, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    add-int/2addr v4, v8

    aput v4, v5, v2

    .line 1328
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1331
    .end local v2    # "i":I
    :cond_7
    goto :goto_6

    .line 1323
    :cond_8
    move v2, v7

    .restart local v2    # "i":I
    :goto_5
    array-length v4, v5

    if-ge v2, v4, :cond_9

    .line 1324
    iget-object v4, p0, Lcom/android/car/audio/CarAudioControl;->EQ_CLASSIC_TABLES:[I

    aget v4, v4, v2

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->EQ_OFFSET_CLASSIC_TABLES:[[I

    iget v9, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    add-int/2addr v4, v8

    aput v4, v5, v2

    .line 1323
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1326
    .end local v2    # "i":I
    :cond_9
    nop

    .line 1355
    :cond_a
    :goto_6
    const/4 v2, 0x0

    .line 1356
    .local v2, "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    move v4, v7

    .local v4, "i":I
    :goto_7
    array-length v7, v5

    if-ge v4, v7, :cond_c

    .line 1357
    aget v7, v5, v4

    iget-object v8, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    aget v8, v8, v4

    if-eq v7, v8, :cond_b

    aget v7, v5, v4

    if-eq v7, v6, :cond_b

    .line 1358
    iget-object v7, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    aget v8, v5, v4

    aput v8, v7, v4

    .line 1359
    new-instance v7, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;

    invoke-direct {v7}, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;-><init>()V

    move-object v2, v7

    .line 1360
    iget-object v7, p0, Lcom/android/car/audio/CarAudioControl;->KEYS_EQ_BAND:[Ljava/lang/String;

    aget-object v7, v7, v4

    iput-object v7, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->key:Ljava/lang/String;

    .line 1361
    iget-object v7, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQBandAndOffset:[I

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;->value:Ljava/lang/String;

    .line 1362
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1367
    .end local v4    # "i":I
    :cond_c
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 1368
    invoke-interface {v1, v3}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setParameters(Ljava/util/ArrayList;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    :cond_d
    goto :goto_8

    .line 1370
    :catch_0
    move-exception v4

    .line 1371
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "CAR.AUDIO"

    const-string v7, "set AudioSetting failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "pv":Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;
    .end local v3    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/yfve/hardware/audiocontrol/V1_0/AudioDSPSetting;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "bands":[I
    :cond_e
    :goto_8
    monitor-exit v0

    .line 1376
    return-void

    .line 1375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setSourceMute(Lcom/android/car/audio/CarVolumeGroup;Z)V
    .locals 5
    .param p1, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p2, "mute"    # Z

    .line 1269
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1273
    :try_start_1
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSourceMute GroupID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    invoke-interface {v1, v2, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setSourceMute(IZ)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    goto :goto_0

    .line 1275
    :catch_0
    move-exception v2

    .line 1276
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setSourceMute failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 1280
    return-void

    .line 1279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setVolume(Lcom/android/car/audio/CarVolumeGroup;I)V
    .locals 6
    .param p1, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p2, "index"    # I

    .line 1224
    iget-object v0, p0, Lcom/android/car/audio/CarAudioControl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1225
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioControl;->getAudioDSPControl()Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    .local v1, "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    if-eqz v1, :cond_0

    .line 1228
    :try_start_1
    const-string v2, "CAR.AUDIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVolume GroupID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " step="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1228
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    invoke-interface {v1, v2, p2}, Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;->setVolume(II)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v2

    .line 1232
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CAR.AUDIO"

    const-string v4, "setVolume failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1236
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumber()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1237
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/audio/CarVolumeGroup;->getCurrentGainIndex()I

    move-result v2

    iput v2, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    .line 1239
    iget-boolean v2, p0, Lcom/android/car/audio/CarAudioControl;->mLoudnessEnable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/car/audio/CarAudioControl;->forceLoudnessEnable:Z

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1242
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingLoudnessLock(I)V

    goto :goto_2

    .line 1240
    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/car/audio/CarAudioControl;->mMediaVolumeLevel:I

    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingLoudnessLock(I)V

    .line 1246
    :goto_2
    iget v2, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    .line 1247
    new-instance v2, Landroid/media/AudioSetting;

    const-string v4, "preset_eq"

    iget v5, p0, Lcom/android/car/audio/CarAudioControl;->mPresetEQType:I

    invoke-direct {v2, v4, v5, v3, v3}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    .line 1248
    .local v2, "para":Landroid/media/AudioSetting;
    invoke-direct {p0, v2}, Lcom/android/car/audio/CarAudioControl;->setAudioSetttingPresetEQLock(Landroid/media/AudioSetting;)V

    .line 1251
    .end local v1    # "audioDSPControlHal":Lvendor/yfve/hardware/audiocontrol/V1_0/IAudioControl;
    .end local v2    # "para":Landroid/media/AudioSetting;
    :cond_4
    monitor-exit v0

    .line 1252
    return-void

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
