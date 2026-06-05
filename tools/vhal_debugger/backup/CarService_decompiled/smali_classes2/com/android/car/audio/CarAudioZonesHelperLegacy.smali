.class Lcom/android/car/audio/CarAudioZonesHelperLegacy;
.super Ljava/lang/Object;
.source "CarAudioZonesHelperLegacy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG_CONTEXT:Ljava/lang/String; = "context"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TAG_VOLUME_GROUPS:Ljava/lang/String; = "volumeGroups"


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

.field private final mContext:Landroid/content/Context;

.field private final mContextToBus:Landroid/util/SparseIntArray;

.field private final mXmlConfiguration:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/util/SparseArray;Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlConfiguration"    # I
    .param p4, "audioControl"    # Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/SparseArray<",
            "Lcom/android/car/audio/CarAudioDeviceInfo;",
            ">;",
            "Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;",
            ")V"
        }
    .end annotation

    .line 60
    .local p3, "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mXmlConfiguration:I

    .line 63
    iput-object p3, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContextToBus:Landroid/util/SparseIntArray;

    .line 68
    :try_start_0
    sget-object v0, Lcom/android/car/audio/CarAudioDynamicRouting;->CONTEXT_NUMBERS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 69
    .local v3, "contextNumber":I
    iget-object v4, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-interface {p4, v3}, Landroid/hardware/automotive/audiocontrol/V1_0/IAudioControl;->getBusForContext(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v3    # "contextNumber":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.AUDIO"

    const-string v2, "Failed to query IAudioControl HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 75
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method static synthetic lambda$parseVolumeGroup$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseVolumeGroup$1(I)Z
    .locals 1
    .param p0, "i"    # I

    .line 145
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadVolumeGroups()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/audio/CarVolumeGroup;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mXmlConfiguration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 100
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_0

    const/4 v3, 0x2

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    const-string v3, "volumeGroups"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 109
    .local v3, "outerDepth":I
    const/4 v6, 0x0

    .line 110
    .local v6, "id":I
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v4, v7

    if-eq v7, v5, :cond_4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    .line 111
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_4

    .line 112
    :cond_2
    if-ne v4, v7, :cond_3

    .line 113
    goto :goto_1

    .line 115
    :cond_3
    const-string v7, "group"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 116
    invoke-direct {p0, v6, v2, v1}, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->parseVolumeGroup(ILandroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "outerDepth":I
    .end local v4    # "type":I
    .end local v6    # "id":I
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_3

    .line 106
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "type":I
    :cond_5
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Meta-data does not start with volumeGroups tag"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    .restart local v0    # "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    :catchall_0
    move-exception v2

    .end local v0    # "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 120
    .restart local v0    # "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_6

    :try_start_5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    .end local p0    # "this":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    :cond_6
    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeGroup;>;"
    .restart local p0    # "this":Lcom/android/car/audio/CarAudioZonesHelperLegacy;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CAR.AUDIO"

    const-string v3, "Error parsing volume groups configuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method

.method private parseVolumeGroup(ILandroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/android/car/audio/CarVolumeGroup;
    .locals 8
    .param p1, "id"    # I
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 131
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_3

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 132
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 133
    :cond_1
    if-ne v3, v2, :cond_2

    .line 134
    goto :goto_0

    .line 136
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "context"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/android/car/R$styleable;->volumeGroups_context:[I

    invoke-virtual {v2, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 139
    .local v2, "c":Landroid/content/res/TypedArray;
    const/4 v4, -0x1

    invoke-virtual {v2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v2    # "c":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 144
    :cond_3
    new-instance v2, Lcom/android/car/audio/CarVolumeGroup;

    iget-object v4, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContext:Landroid/content/Context;

    .line 145
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    sget-object v7, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$a_qUQniZEZrnCYadb8JWi46Doe8;

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    sget-object v7, Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarAudioZonesHelperLegacy$CHnHz6w92bXafaLHQzv5cqhNmbM;

    invoke-interface {v6, v7}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v6

    invoke-direct {v2, v4, v5, p1, v6}, Lcom/android/car/audio/CarVolumeGroup;-><init>(Landroid/content/Context;II[I)V

    .line 144
    return-object v2
.end method


# virtual methods
.method loadAudioZones()[Lcom/android/car/audio/CarAudioZone;
    .locals 10

    .line 78
    new-instance v0, Lcom/android/car/audio/CarAudioZone;

    const/4 v1, 0x0

    const-string v2, "Primary zone"

    invoke-direct {v0, v1, v2}, Lcom/android/car/audio/CarAudioZone;-><init>(ILjava/lang/String;)V

    .line 80
    .local v0, "zone":Lcom/android/car/audio/CarAudioZone;
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->loadVolumeGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/audio/CarVolumeGroup;

    .line 81
    .local v3, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {v0, v3}, Lcom/android/car/audio/CarAudioZone;->addVolumeGroup(Lcom/android/car/audio/CarVolumeGroup;)V

    .line 83
    invoke-virtual {v3}, Lcom/android/car/audio/CarVolumeGroup;->getContexts()[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_0

    aget v7, v4, v6

    .line 84
    .local v7, "contextNumber":I
    iget-object v8, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mContextToBus:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 85
    .local v8, "busNumber":I
    iget-object v9, p0, Lcom/android/car/audio/CarAudioZonesHelperLegacy;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/car/audio/CarAudioDeviceInfo;

    invoke-virtual {v3, v7, v8, v9}, Lcom/android/car/audio/CarVolumeGroup;->bind(IILcom/android/car/audio/CarAudioDeviceInfo;)V

    .line 83
    .end local v7    # "contextNumber":I
    .end local v8    # "busNumber":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    .end local v3    # "group":Lcom/android/car/audio/CarVolumeGroup;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/car/audio/CarAudioZone;

    aput-object v0, v2, v1

    return-object v2
.end method
