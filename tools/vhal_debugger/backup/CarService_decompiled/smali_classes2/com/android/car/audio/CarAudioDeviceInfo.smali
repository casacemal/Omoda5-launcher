.class Lcom/android/car/audio/CarAudioDeviceInfo;
.super Ljava/lang/Object;
.source "CarAudioDeviceInfo.java"


# instance fields
.field private final mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field private final mBusNumber:I

.field private final mChannelCount:I

.field private mCurrentGain:I

.field private final mDefaultGain:I

.field private final mEncodingFormat:I

.field private final mMaxGain:I

.field private final mMinGain:I

.field private final mSampleRate:I


# direct methods
.method constructor <init>(Landroid/media/AudioDeviceInfo;)V
    .locals 3
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 79
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/audio/CarAudioDeviceInfo;->parseDeviceAddress(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mBusNumber:I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioDeviceInfo;->getMaxSampleRate(Landroid/media/AudioDeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mSampleRate:I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioDeviceInfo;->getEncodingFormat(Landroid/media/AudioDeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mEncodingFormat:I

    .line 82
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioDeviceInfo;->getMaxChannels(Landroid/media/AudioDeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mChannelCount:I

    .line 83
    nop

    .line 84
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No audio gain on device port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioGain;

    .line 85
    .local v0, "audioGain":Landroid/media/AudioGain;
    invoke-virtual {v0}, Landroid/media/AudioGain;->defaultValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mDefaultGain:I

    .line 86
    invoke-virtual {v0}, Landroid/media/AudioGain;->maxValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMaxGain:I

    .line 87
    invoke-virtual {v0}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    iput v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMinGain:I

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mCurrentGain:I

    .line 90
    return-void
.end method

.method private checkAudioGainConfiguration(Landroid/media/AudioGain;)Landroid/media/AudioGain;
    .locals 4
    .param p1, "audioGain"    # Landroid/media/AudioGain;

    .line 228
    invoke-virtual {p1}, Landroid/media/AudioGain;->maxValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 229
    invoke-virtual {p1}, Landroid/media/AudioGain;->defaultValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 230
    invoke-virtual {p1}, Landroid/media/AudioGain;->defaultValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->maxValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 229
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 231
    nop

    .line 232
    invoke-virtual {p1}, Landroid/media/AudioGain;->maxValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/media/AudioGain;->stepValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    .line 231
    :goto_2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 233
    nop

    .line 234
    invoke-virtual {p1}, Landroid/media/AudioGain;->defaultValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/AudioGain;->minValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/media/AudioGain;->stepValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    .line 233
    :goto_3
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 235
    return-object p1
.end method

.method private getEncodingFormat(Landroid/media/AudioDeviceInfo;)I
    .locals 1
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 182
    const/4 v0, 0x2

    return v0
.end method

.method private getMaxChannels(Landroid/media/AudioDeviceInfo;)I
    .locals 6
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 193
    const/4 v0, 0x1

    .line 194
    .local v0, "numChannels":I
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v1

    .line 195
    .local v1, "channelMasks":[I
    if-nez v1, :cond_0

    .line 196
    return v0

    .line 198
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 199
    .local v4, "channelMask":I
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    .line 200
    .local v5, "currentNumChannels":I
    if-le v5, v0, :cond_1

    .line 201
    move v0, v5

    .line 198
    .end local v4    # "channelMask":I
    .end local v5    # "currentNumChannels":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_2
    return v0
.end method

.method private getMaxSampleRate(Landroid/media/AudioDeviceInfo;)I
    .locals 4
    .param p1, "info"    # Landroid/media/AudioDeviceInfo;

    .line 167
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getSampleRates()[I

    move-result-object v0

    .line 168
    .local v0, "sampleRates":[I
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 171
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 172
    .local v1, "sampleRate":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 173
    aget v3, v0, v2

    if-le v3, v1, :cond_1

    .line 174
    aget v1, v0, v2

    .line 172
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 169
    .end local v1    # "sampleRate":I
    :cond_3
    :goto_1
    const v1, 0xbb80

    return v1
.end method

.method static parseDeviceAddress(Ljava/lang/String;)I
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .line 46
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "words":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 48
    .local v1, "addressParsed":I
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    :try_start_0
    aget-object v2, v0, v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v2

    .line 55
    :cond_0
    :goto_0
    if-gez v1, :cond_1

    .line 56
    const/4 v2, -0x1

    return v2

    .line 58
    :cond_1
    return v1
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 251
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mBusNumber:I

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 251
    const-string v3, "%sCarAudioDeviceInfo Bus(%d: %s)\n "

    invoke-virtual {p2, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 253
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 254
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getSampleRate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getEncodingFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getChannelCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    .line 253
    const-string v6, "%s\tsample rate / encoding format / channel count: %d %d %d\n"

    invoke-virtual {p2, v6, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 255
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget v2, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMinGain:I

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    iget v2, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMaxGain:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    iget v2, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mDefaultGain:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mCurrentGain:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 255
    const-string v0, "%s\tGain values (min / max / default/ current): %d %d %d %d\n"

    invoke-virtual {p2, v0, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 257
    return-void
.end method

.method getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    return-object v0
.end method

.method getAudioDevicePort()Landroid/media/AudioDevicePort;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v0

    return-object v0
.end method

.method getAudioGain()Landroid/media/AudioGain;
    .locals 6

    .line 213
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioDevicePort()Landroid/media/AudioDevicePort;

    move-result-object v0

    .line 214
    .local v0, "audioPort":Landroid/media/AudioDevicePort;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 215
    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 216
    .local v4, "audioGain":Landroid/media/AudioGain;
    invoke-virtual {v4}, Landroid/media/AudioGain;->mode()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 217
    invoke-direct {p0, v4}, Lcom/android/car/audio/CarAudioDeviceInfo;->checkAudioGainConfiguration(Landroid/media/AudioGain;)Landroid/media/AudioGain;

    move-result-object v1

    return-object v1

    .line 215
    .end local v4    # "audioGain":Landroid/media/AudioGain;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method getBusNumber()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mBusNumber:I

    return v0
.end method

.method getChannelCount()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mChannelCount:I

    return v0
.end method

.method getDefaultGain()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mDefaultGain:I

    return v0
.end method

.method getEncodingFormat()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mEncodingFormat:I

    return v0
.end method

.method getMaxGain()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMaxGain:I

    return v0
.end method

.method getMinGain()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMinGain:I

    return v0
.end method

.method getSampleRate()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mSampleRate:I

    return v0
.end method

.method setCurrentGain(I)V
    .locals 6
    .param p1, "gainInMillibels"    # I

    .line 131
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMinGain:I

    if-ge p1, v0, :cond_0

    .line 132
    iget p1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMinGain:I

    goto :goto_0

    .line 133
    :cond_0
    iget v0, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMaxGain:I

    if-le p1, v0, :cond_1

    .line 134
    iget p1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMaxGain:I

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioGain()Landroid/media/AudioGain;

    move-result-object v0

    .line 140
    .local v0, "audioGain":Landroid/media/AudioGain;
    const-string v1, "CAR.AUDIO"

    if-nez v0, :cond_2

    .line 141
    const-string v2, "getAudioGain() returned null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 146
    :cond_2
    nop

    .line 148
    invoke-virtual {v0}, Landroid/media/AudioGain;->channelMask()I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    .line 146
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v2

    .line 151
    .local v2, "audioGainConfig":Landroid/media/AudioGainConfig;
    if-nez v2, :cond_3

    .line 152
    const-string v3, "Failed to construct AudioGainConfig"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioDevicePort()Landroid/media/AudioDevicePort;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    move-result v3

    .line 157
    .local v3, "r":I
    if-nez v3, :cond_4

    .line 160
    iput p1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mCurrentGain:I

    goto :goto_1

    .line 162
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setAudioPortGain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bus number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mBusNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 241
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encodingFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getEncodingFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channelCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0}, Lcom/android/car/audio/CarAudioDeviceInfo;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentGain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mCurrentGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxGain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMaxGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " minGain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/audio/CarAudioDeviceInfo;->mMinGain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    return-object v0
.end method
