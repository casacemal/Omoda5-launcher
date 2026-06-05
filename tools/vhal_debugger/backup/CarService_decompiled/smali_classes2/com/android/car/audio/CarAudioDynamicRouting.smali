.class Lcom/android/car/audio/CarAudioDynamicRouting;
.super Ljava/lang/Object;
.source "CarAudioDynamicRouting.java"


# static fields
.field static final CONTEXT_NUMBERS:[I

.field static final DEFAULT_AUDIO_USAGE:I = 0x1

.field static final STREAM_TYPES:[I

.field static final STREAM_TYPE_USAGES:[I

.field static final USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;


# instance fields
.field private final mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 39
    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/car/audio/CarAudioDynamicRouting;->CONTEXT_NUMBERS:[I

    .line 57
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    .line 63
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPES:[I

    .line 68
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->STREAM_TYPE_USAGES:[I

    .line 75
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v5, 0x2

    const/4 v6, 0x5

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v7, 0x9

    const/16 v8, 0x11

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v8, 0xa

    const/16 v9, 0x12

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v9, 0xb

    const/16 v10, 0x13

    invoke-virtual {v2, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v10, 0xc

    const/16 v11, 0x14

    invoke-virtual {v2, v11, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v11, 0x6

    const/4 v12, 0x4

    invoke-virtual {v2, v12, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/4 v13, 0x7

    invoke-virtual {v2, v6, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v13, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v6, 0x8

    invoke-virtual {v2, v6, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v7, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v10, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v6, 0xe

    invoke-virtual {v2, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v1, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v1, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v1, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x6
    .end array-data
.end method

.method constructor <init>([Lcom/android/car/audio/CarAudioZone;)V
    .locals 0
    .param p1, "carAudioZones"    # [Lcom/android/car/audio/CarAudioZone;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/car/audio/CarAudioDynamicRouting;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    .line 116
    return-void
.end method

.method private getUsagesForContext(I)[I
    .locals 3
    .param p1, "contextNumber"    # I

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 174
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 175
    sget-object v2, Lcom/android/car/audio/CarAudioDynamicRouting;->USAGE_TO_CONTEXT:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/audio/-$$Lambda$CarAudioDynamicRouting$FrUgIaed6Z5vwZ9HGmqoKXbQyP4;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioDynamicRouting$FrUgIaed6Z5vwZ9HGmqoKXbQyP4;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$getUsagesForContext$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private setupAudioDynamicRoutingForGroup(Lcom/android/car/audio/CarVolumeGroup;Landroid/media/audiopolicy/AudioPolicy$Builder;)V
    .locals 19
    .param p1, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p2, "builder"    # Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 134
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/car/audio/CarVolumeGroup;->getBusNumbers()[I

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    .line 135
    .local v5, "busNumber":I
    const/4 v6, 0x0

    .line 136
    .local v6, "hasContext":Z
    invoke-virtual {v0, v5}, Lcom/android/car/audio/CarVolumeGroup;->getCarAudioDeviceInfoForBus(I)Lcom/android/car/audio/CarAudioDeviceInfo;

    move-result-object v7

    .line 137
    .local v7, "info":Lcom/android/car/audio/CarAudioDeviceInfo;
    new-instance v8, Landroid/media/AudioFormat$Builder;

    invoke-direct {v8}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 138
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getSampleRate()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 139
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getEncodingFormat()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 140
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getChannelCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 141
    invoke-virtual {v8}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    .line 142
    .local v8, "mixFormat":Landroid/media/AudioFormat;
    new-instance v9, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v9}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 143
    .local v9, "mixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    invoke-virtual {v0, v5}, Lcom/android/car/audio/CarVolumeGroup;->getContextsForBus(I)[I

    move-result-object v10

    array-length v11, v10

    move v12, v6

    const/4 v6, 0x0

    .end local v6    # "hasContext":Z
    .local v12, "hasContext":Z
    :goto_1
    if-ge v6, v11, :cond_1

    aget v14, v10, v6

    .line 144
    .local v14, "contextNumber":I
    const/4 v12, 0x1

    .line 145
    move-object/from16 v15, p0

    invoke-direct {v15, v14}, Lcom/android/car/audio/CarAudioDynamicRouting;->getUsagesForContext(I)[I

    move-result-object v3

    .line 146
    .local v3, "usages":[I
    array-length v13, v3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v13, :cond_0

    move-object/from16 v16, v1

    aget v1, v3, v0

    .line 147
    .local v1, "usage":I
    move/from16 v17, v2

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 148
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 147
    move/from16 v18, v1

    const/4 v1, 0x1

    .end local v1    # "usage":I
    .local v18, "usage":I
    invoke-virtual {v9, v2, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addRule(Landroid/media/AudioAttributes;I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 146
    .end local v18    # "usage":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_2

    .line 151
    :cond_0
    move-object/from16 v16, v1

    move/from16 v17, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bus number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contextNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " usages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "CAR.AUDIO"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v3    # "usages":[I
    .end local v14    # "contextNumber":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    goto :goto_1

    .line 157
    :cond_1
    move-object/from16 v15, p0

    move-object/from16 v16, v1

    move/from16 v17, v2

    if-eqz v12, :cond_2

    .line 161
    new-instance v0, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-virtual {v9}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 162
    invoke-virtual {v0, v8}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v7}, Lcom/android/car/audio/CarAudioDeviceInfo;->getAudioDeviceInfo()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setDevice(Landroid/media/AudioDeviceInfo;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    .line 166
    .local v0, "audioMix":Landroid/media/audiopolicy/AudioMix;
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    goto :goto_3

    .line 157
    .end local v0    # "audioMix":Landroid/media/audiopolicy/AudioMix;
    :cond_2
    move-object/from16 v1, p2

    .line 134
    .end local v5    # "busNumber":I
    .end local v7    # "info":Lcom/android/car/audio/CarAudioDeviceInfo;
    .end local v8    # "mixFormat":Landroid/media/AudioFormat;
    .end local v9    # "mixingRuleBuilder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    .end local v12    # "hasContext":Z
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0

    .line 169
    :cond_3
    move-object/from16 v15, p0

    move-object/from16 v1, p2

    return-void
.end method


# virtual methods
.method setupAudioDynamicRouting(Landroid/media/audiopolicy/AudioPolicy$Builder;)V
    .locals 9
    .param p1, "builder"    # Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 119
    iget-object v0, p0, Lcom/android/car/audio/CarAudioDynamicRouting;->mCarAudioZones:[Lcom/android/car/audio/CarAudioZone;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 120
    .local v4, "zone":Lcom/android/car/audio/CarAudioZone;
    invoke-virtual {v4}, Lcom/android/car/audio/CarAudioZone;->getVolumeGroups()[Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 121
    .local v8, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-direct {p0, v8, p1}, Lcom/android/car/audio/CarAudioDynamicRouting;->setupAudioDynamicRoutingForGroup(Lcom/android/car/audio/CarVolumeGroup;Landroid/media/audiopolicy/AudioPolicy$Builder;)V

    .line 120
    .end local v8    # "group":Lcom/android/car/audio/CarVolumeGroup;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 119
    .end local v4    # "zone":Lcom/android/car/audio/CarAudioZone;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    return-void
.end method
