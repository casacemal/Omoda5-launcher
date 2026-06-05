.class Lcom/android/car/audio/CarVolumeTablesHelper;
.super Ljava/lang/Object;
.source "CarVolumeTablesHelper.java"


# static fields
.field private static final TAG_POINT:Ljava/lang/String; = "point"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mXmlConfiguration:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlConfiguration"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/car/audio/CarVolumeTablesHelper;->mContext:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/android/car/audio/CarVolumeTablesHelper;->mXmlConfiguration:I

    .line 45
    return-void
.end method

.method static synthetic lambda$parseVolumeTable$0(I)[Lcom/android/car/audio/CarVolumePoint;
    .locals 1
    .param p0, "x$0"    # I

    .line 100
    new-array v0, p0, [Lcom/android/car/audio/CarVolumePoint;

    return-object v0
.end method

.method private parseVolumeTable(ILandroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/android/car/audio/CarVolumeTable;
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

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumePoint;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 84
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 85
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_4

    .line 86
    :cond_1
    if-ne v3, v2, :cond_2

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "point"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "value":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 93
    new-instance v6, Lcom/android/car/audio/CarVolumePoint;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v6, v7, v4}, Lcom/android/car/audio/CarVolumePoint;-><init>(II)V

    move-object v4, v6

    .line 94
    .local v4, "point":Lcom/android/car/audio/CarVolumePoint;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "value":Ljava/lang/String;
    .end local v4    # "point":Lcom/android/car/audio/CarVolumePoint;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 99
    :cond_4
    new-instance v2, Lcom/android/car/audio/CarVolumeTable;

    iget-object v4, p0, Lcom/android/car/audio/CarVolumeTablesHelper;->mContext:Landroid/content/Context;

    .line 100
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;->INSTANCE:Lcom/android/car/audio/-$$Lambda$CarVolumeTablesHelper$aMKJw2LgBF6og-0lZQ9nTdmHIoo;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/car/audio/CarVolumePoint;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/car/audio/CarVolumeTable;-><init>(Landroid/content/Context;I[Lcom/android/car/audio/CarVolumePoint;)V

    .line 99
    return-object v2
.end method


# virtual methods
.method loadVolumeTables()[Lcom/android/car/audio/CarVolumeTable;
    .locals 10

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/car/audio/CarVolumeTablesHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/car/audio/CarVolumeTablesHelper;->mXmlConfiguration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 53
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

    .line 57
    :cond_0
    const-string v3, "volumes"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 61
    .local v3, "outerDepth":I
    const/4 v6, 0x0

    move v7, v6

    .line 62
    .local v7, "id":I
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v4, v8

    if-eq v8, v5, :cond_4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 63
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_4

    .line 64
    :cond_2
    if-ne v4, v8, :cond_3

    .line 65
    goto :goto_1

    .line 67
    :cond_3
    invoke-interface {v1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 68
    const-string v8, "volume"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    invoke-direct {p0, v7, v2, v1}, Lcom/android/car/audio/CarVolumeTablesHelper;->parseVolumeTable(ILandroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/android/car/audio/CarVolumeTable;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 72
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "outerDepth":I
    .end local v4    # "type":I
    .end local v7    # "id":I
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_3

    .line 58
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "type":I
    :cond_5
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Meta-data does not start with volumeGroups tag"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarVolumeTablesHelper;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    .restart local v0    # "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarVolumeTablesHelper;
    :catchall_0
    move-exception v2

    .end local v0    # "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Lcom/android/car/audio/CarVolumeTablesHelper;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 72
    .restart local v0    # "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/car/audio/CarVolumeTablesHelper;
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

    .end local v0    # "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    .end local p0    # "this":Lcom/android/car/audio/CarVolumeTablesHelper;
    :cond_6
    :goto_2
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "carVolumeTables":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/audio/CarVolumeTable;>;"
    .restart local p0    # "this":Lcom/android/car/audio/CarVolumeTablesHelper;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CAR.AUDIO"

    const-string v3, "Error parsing volume groups configuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/car/audio/CarVolumeTable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/car/audio/CarVolumeTable;

    return-object v1
.end method
