.class Lcom/android/car/audio/CarAudioZonesHelper;
.super Ljava/lang/Object;
.source "CarAudioZonesHelper.java"


# static fields
.field private static final ATTR_CONTEXT_NAME:Ljava/lang/String; = "context"

.field private static final ATTR_DEVICE_ADDRESS:Ljava/lang/String; = "address"

.field private static final ATTR_IS_PRIMARY:Ljava/lang/String; = "isPrimary"

.field private static final ATTR_PHYSICAL_PORT:Ljava/lang/String; = "port"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_ZONE_NAME:Ljava/lang/String; = "name"

.field private static final CONTEXT_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final NAMESPACE:Ljava/lang/String;

.field private static final SUPPORTED_VERSION:I = 0x1

.field private static final TAG_AUDIO_DEVICE:Ljava/lang/String; = "device"

.field private static final TAG_AUDIO_ZONE:Ljava/lang/String; = "zone"

.field private static final TAG_AUDIO_ZONES:Ljava/lang/String; = "zones"

.field private static final TAG_CONTEXT:Ljava/lang/String; = "context"

.field private static final TAG_DISPLAY:Ljava/lang/String; = "display"

.field private static final TAG_DISPLAYS:Ljava/lang/String; = "displays"

.field private static final TAG_ROOT:Ljava/lang/String; = "carAudioConfiguration"

.field private static final TAG_VOLUME_GROUP:Ljava/lang/String; = "group"

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

.field private mHasPrimaryZone:Z

.field private final mInputStream:Ljava/io/InputStream;

.field private mNextSecondaryZoneId:I

.field private final mPortIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    .line 72
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "music"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "navigation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "voice_command"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "call_ring"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alarm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notification"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "system_sound"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "call_bandwidth_8khz"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "call_bandwidth_24khz"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "call_bandwidth_32khz"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "call_bandwidth_48khz"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hicar_phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "voice_command_24k"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enhanced_siri"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/InputStream;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/InputStream;",
            "Landroid/util/SparseArray<",
            "Lcom/android/car/audio/CarAudioDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p3, "busToCarAudioDeviceInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/car/audio/CarAudioDeviceInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mInputStream:Ljava/io/InputStream;

    .line 101
    iput-object p3, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mNextSecondaryZoneId:I

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mPortIds:Ljava/util/Set;

    .line 105
    return-void
.end method

.method private getNextSecondaryZoneId()I
    .locals 2

    .line 307
    iget v0, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mNextSecondaryZoneId:I

    .line 308
    .local v0, "zoneId":I
    iget v1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mNextSecondaryZoneId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mNextSecondaryZoneId:I

    .line 309
    return v0
.end method

.method private parseAudioZone(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/car/audio/CarAudioZone;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    .line 159
    const-string v1, "isPrimary"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 160
    .local v0, "isPrimary":Z
    if-eqz v0, :cond_0

    .line 161
    iget-boolean v1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mHasPrimaryZone:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Only one primary zone is allowed"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 162
    iput-boolean v2, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mHasPrimaryZone:Z

    .line 164
    :cond_0
    sget-object v1, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "zoneName":Ljava/lang/String;
    new-instance v2, Lcom/android/car/audio/CarAudioZone;

    .line 167
    if-eqz v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/car/audio/CarAudioZonesHelper;->getNextSecondaryZoneId()I

    move-result v3

    :goto_0
    invoke-direct {v2, v3, v1}, Lcom/android/car/audio/CarAudioZone;-><init>(ILjava/lang/String;)V

    .line 169
    .local v2, "zone":Lcom/android/car/audio/CarAudioZone;
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    .line 170
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "volumeGroups"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    invoke-direct {p0, p1, v2}, Lcom/android/car/audio/CarAudioZonesHelper;->parseVolumeGroups(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/car/audio/CarAudioZone;)V

    goto :goto_1

    .line 174
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "displays"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    invoke-direct {p0, p1, v2}, Lcom/android/car/audio/CarAudioZonesHelper;->parseDisplays(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/car/audio/CarAudioZone;)V

    goto :goto_1

    .line 177
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 180
    :cond_5
    return-object v2
.end method

.method private parseAudioZones(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Lcom/android/car/audio/CarAudioZone;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    .local p2, "carAudioZones":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarAudioZone;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->parseAudioZone(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/car/audio/CarAudioZone;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-boolean v0, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mHasPrimaryZone:Z

    const-string v1, "Requires one primary zone"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;->INSTANCE:Lcom/android/car/audio/-$$Lambda$7364NHkWOQanKBYtea7U_Ri_ci4;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 154
    return-void
.end method

.method private parseCarAudioZones(Ljava/util/List;Ljava/io/InputStream;)V
    .locals 5
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/audio/CarAudioZone;",
            ">;",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    .local p1, "carAudioZones":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarAudioZone;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 116
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 117
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 120
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    sget-object v1, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, "carAudioConfiguration"

    invoke-interface {v0, v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    .line 125
    const-string v4, "version"

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 126
    .local v1, "versionNumber":I
    if-ne v1, v2, :cond_4

    .line 132
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 133
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zones"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->parseAudioZones(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_1

    .line 137
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 140
    :cond_3
    return-void

    .line 127
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Support version:1 only, got version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseContextNumber(Ljava/lang/String;)I
    .locals 3
    .param p1, "context"    # Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->CONTEXT_NAME_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    .local v0, "contextId":I
    return v0
.end method

.method private parseDisplays(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/car/audio/CarAudioZone;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "zone"    # Lcom/android/car/audio/CarAudioZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 185
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 186
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->parsePhysicalDisplayAddress(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/DisplayAddress$Physical;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/car/audio/CarAudioZone;->addPhysicalDisplayAddress(Landroid/view/DisplayAddress$Physical;)V

    .line 190
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 192
    :cond_2
    return-void
.end method

.method private parsePhysicalDisplayAddress(Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/DisplayAddress$Physical;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 195
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    const-string v1, "port"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "port":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .local v1, "portId":J
    nop

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/car/audio/CarAudioZonesHelper;->validatePortIsUnique(Ljava/lang/Long;)V

    .line 203
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v3

    return-object v3

    .line 199
    .end local v1    # "portId":J
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private parseVolumeGroup(Lorg/xmlpull/v1/XmlPullParser;II)Lcom/android/car/audio/CarVolumeGroup;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "zoneId"    # I
    .param p3, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    new-instance v0, Lcom/android/car/audio/CarVolumeGroup;

    iget-object v1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lcom/android/car/audio/CarVolumeGroup;-><init>(Landroid/content/Context;II)V

    .line 231
    .local v0, "group":Lcom/android/car/audio/CarVolumeGroup;
    const/4 v1, 0x0

    .line 232
    .local v1, "tableId":I
    const/4 v2, 0x0

    .line 233
    .local v2, "needOnvolume":Z
    const/4 v3, 0x0

    const-string v4, "table"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "tableString":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 235
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 238
    :cond_0
    const-string v5, "onvolume"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "onVolumeString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 240
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 242
    const/4 v2, 0x1

    .line 245
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/car/audio/CarVolumeGroup;->setTableId(I)V

    .line 246
    invoke-virtual {v0, v2}, Lcom/android/car/audio/CarVolumeGroup;->setOnVolume(Z)V

    .line 247
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 248
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_0

    .line 249
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "device"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    sget-object v5, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    const-string v6, "address"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "address":Ljava/lang/String;
    nop

    .line 255
    invoke-static {v5}, Lcom/android/car/audio/CarAudioDeviceInfo;->parseDeviceAddress(Ljava/lang/String;)I

    move-result v6

    .line 254
    invoke-direct {p0, p1, v0, v6}, Lcom/android/car/audio/CarAudioZonesHelper;->parseVolumeGroupContexts(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/car/audio/CarVolumeGroup;I)V

    .line 256
    .end local v5    # "address":Ljava/lang/String;
    goto :goto_0

    .line 257
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 260
    :cond_4
    return-object v0
.end method

.method private parseVolumeGroupContexts(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/car/audio/CarVolumeGroup;I)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "group"    # Lcom/android/car/audio/CarVolumeGroup;
    .param p3, "busNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 267
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/android/car/audio/CarAudioZonesHelper;->NAMESPACE:Ljava/lang/String;

    .line 273
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/audio/CarAudioZonesHelper;->parseContextNumber(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mBusToCarAudioDeviceInfo:Landroid/util/SparseArray;

    .line 274
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/audio/CarAudioDeviceInfo;

    .line 272
    invoke-virtual {p2, v0, p3, v1}, Lcom/android/car/audio/CarVolumeGroup;->bind(IILcom/android/car/audio/CarAudioDeviceInfo;)V

    .line 277
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 279
    :cond_2
    return-void
.end method

.method private parseVolumeGroups(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/car/audio/CarAudioZone;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "zone"    # Lcom/android/car/audio/CarAudioZone;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "groupId":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 217
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {p2}, Lcom/android/car/audio/CarAudioZone;->getId()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/car/audio/CarAudioZonesHelper;->parseVolumeGroup(Lorg/xmlpull/v1/XmlPullParser;II)Lcom/android/car/audio/CarVolumeGroup;

    move-result-object v1

    .line 220
    .local v1, "group":Lcom/android/car/audio/CarVolumeGroup;
    invoke-virtual {p2, v1}, Lcom/android/car/audio/CarAudioZone;->addVolumeGroup(Lcom/android/car/audio/CarVolumeGroup;)V

    .line 221
    nop

    .end local v1    # "group":Lcom/android/car/audio/CarVolumeGroup;
    add-int/lit8 v0, v0, 0x1

    .line 222
    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/audio/CarAudioZonesHelper;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 226
    :cond_2
    return-void
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 285
    const/4 v0, 0x1

    .line 286
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_2

    .line 287
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 289
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 290
    goto :goto_1

    .line 292
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 293
    :goto_1
    goto :goto_0

    .line 296
    :cond_2
    return-void

    .line 283
    .end local v0    # "depth":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private validatePortIsUnique(Ljava/lang/Long;)V
    .locals 3
    .param p1, "portId"    # Ljava/lang/Long;

    .line 207
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mPortIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mPortIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    return-void

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port Id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already associated with a zone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method loadAudioZones()[Lcom/android/car/audio/CarAudioZone;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "carAudioZones":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarAudioZone;>;"
    iget-object v1, p0, Lcom/android/car/audio/CarAudioZonesHelper;->mInputStream:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/android/car/audio/CarAudioZonesHelper;->parseCarAudioZones(Ljava/util/List;Ljava/io/InputStream;)V

    .line 110
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/car/audio/CarAudioZone;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/car/audio/CarAudioZone;

    return-object v1
.end method
