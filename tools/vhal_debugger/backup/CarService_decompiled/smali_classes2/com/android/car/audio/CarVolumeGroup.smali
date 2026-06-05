.class final Lcom/android/car/audio/CarVolumeGroup;
.super Ljava/lang/Object;
.source "CarVolumeGroup.java"


# instance fields
.field private final mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/audio/CarAudioDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelGain:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContextToBus:Landroid/util/SparseIntArray;

.field private mCurrentGainIndex:I

.field private mDefaultGain:I

.field private final mId:I

.field private mIsMute:Z

.field private mMaxGain:I

.field private mMinGain:I

.field private mOnVolume:Z

.field private mOnVolumeMaxIndex:I

.field private mOnVolumeMaxIndexDefault:I

.field private final mOnVolumeMaxStringKey:Ljava/lang/String;

.field private mOnVolumeMinIndex:I

.field private mOnVolumeMinIndexDefault:I

.field private final mOnVolumeMinStringKey:Ljava/lang/String;

.field private mStepSize:I

.field private mStoredGainIndex:I

.field private mTableId:I

.field private final mZoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zoneId"    # I
    .param p3, "id"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mTableId:I

    .line 51
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    .line 52
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    .line 54
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mDefaultGain:I

    .line 55
    iput v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    .line 56
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    .line 57
    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStepSize:I

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    .line 60
    const/16 v2, 0x42

    iput v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mChannelGain:I

    .line 61
    iput-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mIsMute:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolume:Z

    .line 64
    const-string v2, "andoird.car.onVolumeMax/"

    iput-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxStringKey:Ljava/lang/String;

    .line 65
    const-string v2, "andoird.car.onVolumeMin/"

    iput-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinStringKey:Ljava/lang/String;

    .line 66
    const/16 v2, 0xf

    iput v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndexDefault:I

    .line 67
    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndexDefault:I

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    iput p2, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    .line 81
    iput p3, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 82
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 83
    invoke-static {v2, v3}, Lcom/android/car/audio/CarAudioService;->getVolumeSettingsKeyForGroup(II)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    .line 84
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 85
    invoke-virtual {p0, v1, v2}, Lcom/android/car/audio/CarVolumeGroup;->getOnVolumeMaxKeyForGroup(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndexDefault:I

    .line 84
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    .line 86
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 87
    invoke-virtual {p0, v1, v2}, Lcom/android/car/audio/CarVolumeGroup;->getOnVolumeMinKeyForGroup(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndexDefault:I

    .line 86
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;II[I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zoneId"    # I
    .param p3, "id"    # I
    .param p4, "contexts"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/audio/CarVolumeGroup;-><init>(Landroid/content/Context;II)V

    .line 102
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p4, v1

    .line 103
    .local v2, "audioContext":I
    iget-object v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    .end local v2    # "audioContext":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method private applyOnVolume(ZZ)V
    .locals 8
    .param p1, "store"    # Z
    .param p2, "apply"    # Z

    .line 336
    iget-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolume:Z

    if-eqz v0, :cond_1

    .line 337
    if-eqz p1, :cond_1

    .line 338
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    const-string v2, ")"

    const-string v3, "->"

    const-string v4, ") mStoredGainIndex("

    const-string v5, ") onVolume: StoredGainIndex("

    const-string v6, "CarVolumeGroup("

    const-string v7, "CAR.AUDIO"

    if-le v0, v1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")>OnVolumeMaxIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    .line 344
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 345
    invoke-static {v1, v2}, Lcom/android/car/audio/CarAudioService;->getVolumeSettingsKeyForGroup(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    .line 344
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 347
    :cond_0
    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    if-ge v0, v1, :cond_1

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")<OnVolumeMinIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    .line 353
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 354
    invoke-static {v1, v2}, Lcom/android/car/audio/CarAudioService;->getVolumeSettingsKeyForGroup(II)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    .line 353
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    :cond_1
    :goto_0
    return-void
.end method

.method private getDefaultGainIndex()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mDefaultGain:I

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    return v0
.end method

.method private getGainForIndex(I)I
    .locals 2
    .param p1, "gainIndex"    # I

    .line 269
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mStepSize:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getIndexForGain(I)I
    .locals 2
    .param p1, "gainInMillibel"    # I

    .line 276
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mStepSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$getContextsForBus$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method bind(IILcom/android/car/audio/CarAudioDeviceInfo;)V
    .locals 4
    .param p1, "contextNumber"    # I
    .param p2, "busNumber"    # I
    .param p3, "info"    # Lcom/android/car/audio/CarAudioDeviceInfo;

    .line 180
    if-nez p3, :cond_0

    .line 181
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioGain;->stepValue()I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStepSize:I

    goto :goto_1

    .line 186
    :cond_1
    nop

    .line 187
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioGain;->stepValue()I

    move-result v0

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mStepSize:I

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 186
    :goto_0
    const-string v3, "Gain controls within one group must have same step value"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 191
    :goto_1
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getDefaultGain()I

    move-result v0

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mDefaultGain:I

    if-le v0, v3, :cond_3

    .line 196
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getDefaultGain()I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mDefaultGain:I

    .line 198
    :cond_3
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getMaxGain()I

    move-result v0

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    if-le v0, v3, :cond_4

    .line 199
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getMaxGain()I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    .line 201
    :cond_4
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getMinGain()I

    move-result v0

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    if-ge v0, v3, :cond_5

    .line 202
    invoke-virtual {p3}, Lcom/android/car/audio/CarAudioDeviceInfo;->getMinGain()I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    .line 204
    :cond_5
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMinGainIndex()I

    move-result v3

    if-lt v0, v3, :cond_7

    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMaxGainIndex()I

    move-result v3

    if-le v0, v3, :cond_6

    goto :goto_2

    .line 212
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/car/audio/CarVolumeGroup;->applyOnVolume(ZZ)V

    .line 213
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mStoredGainIndex:I

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    goto :goto_3

    .line 208
    :cond_7
    :goto_2
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mDefaultGain:I

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    .line 215
    :goto_3
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 406
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mTableId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 407
    iget-boolean v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mIsMute:Z

    if-eqz v3, :cond_0

    const-string v3, "true"

    goto :goto_0

    :cond_0
    const-string v3, "false"

    :goto_0
    const/4 v6, 0x3

    aput-object v3, v1, v6

    .line 406
    const-string v3, "%sCarVolumeGroup(%d) TableId(%d) Mute(%s)\n"

    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 408
    const/4 v1, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget v7, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    .line 409
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    iget v7, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    iget v7, p0, Lcom/android/car/audio/CarVolumeGroup;->mDefaultGain:I

    .line 410
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    iget v7, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    invoke-direct {p0, v7}, Lcom/android/car/audio/CarVolumeGroup;->getGainForIndex(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    .line 408
    const-string v7, "%sGain values (min / max / default/ current): %d %d %d %d\n"

    invoke-virtual {p2, v7, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 411
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 412
    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMinGainIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMaxGainIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 413
    invoke-direct {p0}, Lcom/android/car/audio/CarVolumeGroup;->getDefaultGainIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 411
    const-string v0, "%sGain indexes (min / max / default / current): %d %d %d %d\n"

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 415
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    .line 416
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/hardware/automotive/audiocontrol/V1_0/ContextNumber;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    .line 415
    const-string v3, "%sContext: %s -> Bus: %d\n"

    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/audio/CarAudioDeviceInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/audio/CarAudioDeviceInfo;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 422
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 423
    return-void
.end method

.method getAudioDevicePortForContext(I)Landroid/media/AudioDevicePort;
    .locals 2
    .param p1, "contextNumber"    # I

    .line 284
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 285
    .local v0, "busNumber":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/audio/CarAudioDeviceInfo;

    invoke-virtual {v1}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioDevicePort()Landroid/media/AudioDevicePort;

    move-result-object v1

    return-object v1

    .line 286
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method getBusNumber()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    return v0
.end method

.method getBusNumbers()[I
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 158
    .local v0, "busNumbers":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method getCarAudioDeviceInfoForBus(I)Lcom/android/car/audio/CarAudioDeviceInfo;
    .locals 1
    .param p1, "busNumber"    # I

    .line 112
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/audio/CarAudioDeviceInfo;

    return-object v0
.end method

.method public getChannelGain()I
    .locals 1

    .line 369
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mChannelGain:I

    return v0
.end method

.method getContexts()[I
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 132
    .local v0, "contextNumbers":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method getContextsForBus(I)[I
    .locals 4
    .param p1, "busNumber"    # I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "contextNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 146
    .local v2, "value":I
    if-ne v2, p1, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v2    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/audio/-$$Lambda$CarVolumeGroup$azkpj2FcIJoM7Mcs4-9AI3-iB1E;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarVolumeGroup$azkpj2FcIJoM7Mcs4-9AI3-iB1E;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method getCurrentGainIndex()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    return v0
.end method

.method getId()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    return v0
.end method

.method getMaxGainIndex()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    return v0
.end method

.method getMinGainIndex()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarVolumeGroup;->getIndexForGain(I)I

    move-result v0

    return v0
.end method

.method public getOnVolumeMaxIndex()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    return v0
.end method

.method getOnVolumeMaxKeyForGroup(II)Ljava/lang/String;
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 386
    shl-int/lit8 v0, p1, 0x8

    add-int/2addr v0, p2

    .line 387
    .local v0, "maskedGroupId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "andoird.car.onVolumeMax/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOnVolumeMinIndex()I
    .locals 1

    .line 328
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    return v0
.end method

.method getOnVolumeMinKeyForGroup(II)Ljava/lang/String;
    .locals 3
    .param p1, "zoneId"    # I
    .param p2, "groupId"    # I

    .line 391
    shl-int/lit8 v0, p1, 0x8

    add-int/2addr v0, p2

    .line 392
    .local v0, "maskedGroupId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "andoird.car.onVolumeMin/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getTableId()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mTableId:I

    return v0
.end method

.method public isMute()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mIsMute:Z

    return v0
.end method

.method public setChannelGain(I)V
    .locals 0
    .param p1, "gain"    # I

    .line 365
    iput p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mChannelGain:I

    .line 366
    return-void
.end method

.method setCurrentGainIndex(I)V
    .locals 1
    .param p1, "gainIndex"    # I

    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/car/audio/CarVolumeGroup;->setCurrentGainIndex(IZ)V

    .line 240
    return-void
.end method

.method setCurrentGainIndex(IZ)V
    .locals 4
    .param p1, "gainIndex"    # I
    .param p2, "isStore"    # Z

    .line 243
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarVolumeGroup;->getGainForIndex(I)I

    move-result v0

    .line 245
    .local v0, "gainInMillibels":I
    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gain out of range ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mMinGain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mMaxGain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/audio/CarAudioDeviceInfo;

    .line 255
    .local v2, "info":Lcom/android/car/audio/CarAudioDeviceInfo;
    invoke-virtual {v2, v0}, Lcom/android/car/audio/CarAudioDeviceInfo;->setCurrentGain(I)V

    .line 253
    .end local v2    # "info":Lcom/android/car/audio/CarAudioDeviceInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    .end local v1    # "i":I
    :cond_1
    iput p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    .line 259
    if-eqz p2, :cond_2

    .line 260
    iget-object v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 261
    invoke-static {v2, v3}, Lcom/android/car/audio/CarAudioService;->getVolumeSettingsKeyForGroup(II)Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :cond_2
    return-void
.end method

.method public setMute(Z)Z
    .locals 1
    .param p1, "state"    # Z

    .line 378
    iget-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mIsMute:Z

    if-eq v0, p1, :cond_0

    .line 379
    iput-boolean p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mIsMute:Z

    .line 380
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnVolume(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 332
    iput-boolean p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolume:Z

    .line 333
    return-void
.end method

.method public setOnVolumeMaxIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .line 292
    iget-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMinGainIndex()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMaxGainIndex()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 299
    invoke-virtual {p0, v2, v3}, Lcom/android/car/audio/CarVolumeGroup;->getOnVolumeMaxKeyForGroup(II)Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    iput p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMaxIndex:I

    .line 301
    invoke-direct {p0, v1, v1}, Lcom/android/car/audio/CarVolumeGroup;->applyOnVolume(ZZ)V

    goto :goto_1

    .line 294
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarVolumeGroup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") setOnVolumeMaxIndex: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.AUDIO"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, -0x1

    return v0

    .line 304
    :cond_2
    :goto_1
    return v1
.end method

.method public setOnVolumeMinIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .line 312
    iget-boolean v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMinGainIndex()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getMaxGainIndex()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/car/audio/CarVolumeGroup;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/car/audio/CarVolumeGroup;->mZoneId:I

    iget v3, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    .line 319
    invoke-virtual {p0, v2, v3}, Lcom/android/car/audio/CarVolumeGroup;->getOnVolumeMinKeyForGroup(II)Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iput p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mOnVolumeMinIndex:I

    .line 321
    invoke-direct {p0, v1, v1}, Lcom/android/car/audio/CarVolumeGroup;->applyOnVolume(ZZ)V

    goto :goto_1

    .line 314
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarVolumeGroup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") setOnVolumeMinIndex: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.AUDIO"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, -0x1

    return v0

    .line 324
    :cond_2
    :goto_1
    return v1
.end method

.method setTableId(I)V
    .locals 0
    .param p1, "tableId"    # I

    .line 120
    iput p1, p0, Lcom/android/car/audio/CarVolumeGroup;->mTableId:I

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarVolumeGroup id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Table id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mTableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentGainIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarVolumeGroup;->mCurrentGainIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contexts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getContexts()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " buses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumbers()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    return-object v0
.end method
