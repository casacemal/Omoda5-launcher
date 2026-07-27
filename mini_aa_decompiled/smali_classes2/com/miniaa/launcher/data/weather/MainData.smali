.class public final Lcom/miniaa/launcher/data/weather/MainData;
.super Ljava/lang/Object;
.source "WeatherModels.kt"


# annotations
.annotation runtime Lcom/squareup/moshi/JsonClass;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/weather/MainData;",
        "",
        "temp",
        "",
        "feelsLike",
        "tempMin",
        "tempMax",
        "<init>",
        "(DDDD)V",
        "getTemp",
        "()D",
        "getFeelsLike",
        "getTempMin",
        "getTempMax",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final feelsLike:D

.field private final temp:D

.field private final tempMax:D

.field private final tempMin:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0
    .param p1    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "temp"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "feels_like"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "temp_min"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "temp_max"
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    .line 17
    iput-wide p3, p0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    .line 18
    iput-wide p5, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    .line 19
    iput-wide p7, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    return-void
.end method

.method public synthetic constructor <init>(DDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p9, 0x2

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, p3

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p5

    :goto_1
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_2

    move-wide v10, v1

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p7

    :goto_2
    move-object v3, p0

    move-wide v4, p1

    .line 15
    invoke-direct/range {v3 .. v11}, Lcom/miniaa/launcher/data/weather/MainData;-><init>(DDDD)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/data/weather/MainData;DDDDILjava/lang/Object;)Lcom/miniaa/launcher/data/weather/MainData;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/miniaa/launcher/data/weather/MainData;->copy(DDDD)Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    return-wide v0
.end method

.method public final copy(DDDD)Lcom/miniaa/launcher/data/weather/MainData;
    .locals 10
    .param p1    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "temp"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "feels_like"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "temp_min"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "temp_max"
        .end annotation
    .end param

    new-instance v9, Lcom/miniaa/launcher/data/weather/MainData;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/miniaa/launcher/data/weather/MainData;-><init>(DDDD)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/data/weather/MainData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/data/weather/MainData;

    iget-wide v3, p0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    iget-wide v5, p1, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    iget-wide v5, p1, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    iget-wide v5, p1, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    iget-wide p0, p1, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFeelsLike()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    return-wide v0
.end method

.method public final getTemp()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    return-wide v0
.end method

.method public final getTempMax()D
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    return-wide v0
.end method

.method public final getTempMin()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/MainData;->temp:D

    iget-wide v2, p0, Lcom/miniaa/launcher/data/weather/MainData;->feelsLike:D

    iget-wide v4, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMin:D

    iget-wide v6, p0, Lcom/miniaa/launcher/data/weather/MainData;->tempMax:D

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v8, "MainData(temp="

    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", feelsLike="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", tempMin="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", tempMax="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
