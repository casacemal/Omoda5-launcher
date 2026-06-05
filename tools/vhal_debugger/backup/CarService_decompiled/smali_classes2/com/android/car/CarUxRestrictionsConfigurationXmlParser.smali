.class public final Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfigurationXmlParser.java"


# static fields
.field private static final CONTENT_RESTRICTIONS:Ljava/lang/String; = "ContentRestrictions"

.field private static final DRIVING_STATE:Ljava/lang/String; = "DrivingState"

.field private static final INVALID_SPEED:F = -1.0f

.field private static final RESTRICTIONS:Ljava/lang/String; = "Restrictions"

.field private static final RESTRICTION_MAPPING:Ljava/lang/String; = "RestrictionMapping"

.field private static final RESTRICTION_PARAMETERS:Ljava/lang/String; = "RestrictionParameters"

.field private static final ROOT_ELEMENT:Ljava/lang/String; = "UxRestrictions"

.field private static final STRING_RESTRICTIONS:Ljava/lang/String; = "StringRestrictions"

.field private static final TAG:Ljava/lang/String; = "UxRConfigParser"

.field private static final UX_RESTRICTIONS_UNKNOWN:I = -0x1


# instance fields
.field private final mConfigBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mMaxContentDepth:I

.field private mMaxCumulativeContentItems:I

.field private mMaxRestrictedStringLength:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxRestrictedStringLength:I

    .line 60
    iput v0, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxCumulativeContentItems:I

    .line 61
    iput v0, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxContentDepth:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mConfigBuilders:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private getCurrentBuilder()Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mConfigBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    return-object v0
.end method

.method private mapDrivingStateToRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z
    .locals 9
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 162
    const-string v0, "UxRConfigParser"

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 167
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestrictionMapping"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parser not at RestrictionMapping element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v1

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/car/R$styleable;->UxRestrictions_RestrictionMapping:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 175
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 178
    .local v3, "portValue":I
    invoke-static {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validatePort(I)B

    move-result v4

    .line 179
    .local v4, "port":B
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->getCurrentBuilder()Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setPhysicalPort(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    .line 181
    .end local v3    # "portValue":I
    .end local v4    # "port":B
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    .end local v2    # "a":Landroid/content/res/TypedArray;
    const-string v2, "DrivingState"

    invoke-direct {p0, p1, v2}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->traverseToTag(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 185
    const-string v2, "No <DrivingState> tag in XML"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v1

    .line 189
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 190
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    .line 192
    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v6, Lcom/android/car/R$styleable;->UxRestrictions_DrivingState:[I

    invoke-virtual {v3, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 194
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 196
    .local v5, "drivingState":I
    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 198
    .local v4, "minSpeed":F
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 200
    .local v6, "maxSpeed":F
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    const-string v7, "Restrictions"

    invoke-direct {p0, p1, v7}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->traverseToTag(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 204
    const-string v2, "No <Restrictions> tag in XML"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return v1

    .line 209
    :cond_4
    invoke-direct {p0, v4, v6}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->parseSpeedRange(FF)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    move-result-object v7

    .line 210
    .local v7, "speedRange":Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    invoke-direct {p0, p1, p2, v5, v7}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->parseAllRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse restrictions for driving state:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return v1

    .line 215
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "minSpeed":F
    .end local v5    # "drivingState":I
    .end local v6    # "maxSpeed":F
    .end local v7    # "speedRange":Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    :cond_5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 217
    :cond_6
    return v4

    .line 163
    :cond_7
    :goto_1
    const-string v2, "Invalid arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1
.end method

.method private parse(I)Ljava/util/List;
    .locals 6
    .param p1, "xmlResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 85
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    const-string v2, "UxRConfigParser"

    if-nez v0, :cond_0

    .line 86
    const-string v3, "Invalid Xml resource"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v1

    .line 90
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->traverseUntilStartTag(Landroid/content/res/XmlResourceParser;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML root element invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v1

    .line 95
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->traverseUntilEndOfDocument(Landroid/content/res/XmlResourceParser;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 96
    const-string v3, "Could not parse XML to end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v1

    .line 100
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mConfigBuilders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    .line 102
    .local v3, "builder":Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    iget v4, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxRestrictedStringLength:I

    invoke-virtual {v3, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxCumulativeContentItems:I

    .line 103
    invoke-virtual {v4, v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v4

    iget v5, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxContentDepth:I

    .line 104
    invoke-virtual {v4, v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    .line 105
    invoke-virtual {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->build()Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v3    # "builder":Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    goto :goto_0

    .line 107
    :cond_3
    return-object v1
.end method

.method public static parse(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;

    invoke-direct {v0, p0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->parse(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private parseAllRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Z
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "drivingState"    # I
    .param p4, "speedRange"    # Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 226
    const/4 v0, 0x0

    const-string v1, "UxRConfigParser"

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 231
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Restrictions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parser not at Restrictions element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v0

    .line 235
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 236
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->parseRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object v2

    .line 239
    .local v2, "restrictions":Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    if-nez v2, :cond_2

    .line 240
    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v0

    .line 243
    :cond_2
    invoke-virtual {v2, p4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    .line 245
    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Map "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3
    const/4 v4, -0x1

    if-eq p3, v4, :cond_4

    .line 252
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->getCurrentBuilder()Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v4

    invoke-virtual {v4, p3, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    .line 255
    .end local v2    # "restrictions":Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    :cond_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_0

    .line 257
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_6
    :goto_1
    const-string v2, "Invalid arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v0
.end method

.method private parseRestrictionParameters(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z
    .locals 11
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 324
    const-string v0, "UxRConfigParser"

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 329
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RestrictionParameters"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parser not at RestrictionParameters element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 333
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    .line 334
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .line 336
    .local v2, "type":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 337
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 336
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    return v4

    .line 340
    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_9

    .line 341
    const/4 v6, 0x0

    .line 342
    .local v6, "a":Landroid/content/res/TypedArray;
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x4784c920    # 67986.25f

    const/4 v10, -0x1

    if-eq v8, v9, :cond_5

    const v9, 0x5f9644f8

    if-eq v8, v9, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v8, "StringRestrictions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v1

    goto :goto_2

    :cond_5
    const-string v8, "ContentRestrictions"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_2

    :goto_1
    move v7, v10

    :goto_2
    if-eqz v7, :cond_7

    if-eq v7, v4, :cond_6

    .line 362
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Restriction Parameters in XML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 352
    :cond_6
    iget-object v5, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v7, Lcom/android/car/R$styleable;->UxRestrictions_ContentRestrictions:[I

    invoke-virtual {v5, p2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 354
    invoke-virtual {v6, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxCumulativeContentItems:I

    .line 357
    invoke-virtual {v6, v4, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxContentDepth:I

    .line 360
    goto :goto_3

    .line 344
    :cond_7
    iget-object v4, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/car/R$styleable;->UxRestrictions_StringRestrictions:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 346
    invoke-virtual {v6, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mMaxRestrictedStringLength:I

    .line 350
    nop

    .line 368
    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    .line 369
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 372
    .end local v2    # "type":I
    .end local v6    # "a":Landroid/content/res/TypedArray;
    :cond_9
    goto/16 :goto_0

    .line 373
    :cond_a
    return v4

    .line 325
    :cond_b
    :goto_4
    const-string v2, "Invalid arguments"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v1
.end method

.method private parseRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 6
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 267
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    const/4 v0, -0x1

    .line 273
    .local v0, "restrictions":I
    const/4 v1, 0x0

    .line 274
    .local v1, "restrictionMode":I
    const/4 v2, 0x1

    .line 275
    .local v2, "requiresOpt":Z
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Restrictions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 277
    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v5, Lcom/android/car/R$styleable;->UxRestrictions_Restrictions:[I

    invoke-virtual {v3, p2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 279
    .local v3, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x1ff

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 282
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 284
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 287
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 289
    .end local v3    # "a":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 290
    :cond_1
    new-instance v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 291
    invoke-virtual {v3, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object v3

    .line 293
    invoke-virtual {v3, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setMode(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object v3

    .line 290
    return-object v3

    .line 268
    .end local v0    # "restrictions":I
    .end local v1    # "restrictionMode":I
    .end local v2    # "requiresOpt":Z
    :cond_2
    :goto_1
    const-string v0, "UxRConfigParser"

    const-string v1, "Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseSpeedRange(FF)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;
    .locals 2
    .param p1, "minSpeed"    # F
    .param p2, "maxSpeed"    # F

    .line 298
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-static {p2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-direct {v0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;-><init>(FF)V

    return-object v0

    .line 299
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private traverseToTag(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 311
    const/4 v1, 0x2

    if-ne v2, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    return v3

    .line 315
    :cond_1
    return v0

    .line 307
    .end local v2    # "type":I
    :cond_2
    :goto_0
    return v0
.end method

.method private traverseUntilEndOfDocument(Landroid/content/res/XmlResourceParser;)Z
    .locals 7
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 124
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 127
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 128
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2081b2b6

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const v5, 0x6338bb82

    if-eq v4, v5, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v4, "RestrictionMapping"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v6

    goto :goto_1

    :cond_3
    const-string v4, "RestrictionParameters"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v3, v2

    :goto_1
    const-string v1, "UxRConfigParser"

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->parseRestrictionParameters(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 142
    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    const-string v2, "Error reading restrictions parameters. Falling back to platform defaults."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 131
    :cond_5
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mConfigBuilders:Ljava/util/List;

    new-instance v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    invoke-direct {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->mapDrivingStateToRestrictions(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 134
    const-string v2, "Could not map driving state to restriction."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v6

    .line 149
    :cond_6
    :goto_2
    goto :goto_0

    .line 153
    :cond_7
    return v2
.end method

.method private traverseUntilStartTag(Landroid/content/res/XmlResourceParser;)Z
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 114
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UxRestrictions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
