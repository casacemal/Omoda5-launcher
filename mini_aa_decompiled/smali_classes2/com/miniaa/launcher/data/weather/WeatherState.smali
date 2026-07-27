.class public final Lcom/miniaa/launcher/data/weather/WeatherState;
.super Ljava/lang/Object;
.source "WeatherRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\"\u0008\u0087\u0008\u0018\u00002\u00020\u0001B}\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00c6\u0003J\t\u0010(\u001a\u00020\u0008H\u00c6\u0003J\t\u0010)\u001a\u00020\u0008H\u00c6\u0003J\u000f\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u00c6\u0003J\t\u0010+\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u007f\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00082\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010.\u001a\u00020\u00102\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u00020\u0003H\u00d6\u0001J\t\u00101\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001aR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001aR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010 R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001a\u00a8\u00062"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/weather/WeatherState;",
        "",
        "temperature",
        "",
        "feelsLike",
        "tempHigh",
        "tempLow",
        "condition",
        "",
        "description",
        "iconCode",
        "cityName",
        "hourly",
        "",
        "Lcom/miniaa/launcher/data/weather/HourlyForecast;",
        "isLoading",
        "",
        "error",
        "<init>",
        "(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V",
        "getTemperature",
        "()I",
        "getFeelsLike",
        "getTempHigh",
        "getTempLow",
        "getCondition",
        "()Ljava/lang/String;",
        "getDescription",
        "getIconCode",
        "getCityName",
        "getHourly",
        "()Ljava/util/List;",
        "()Z",
        "getError",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final cityName:Ljava/lang/String;

.field private final condition:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final error:Ljava/lang/String;

.field private final feelsLike:I

.field private final hourly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/HourlyForecast;",
            ">;"
        }
    .end annotation
.end field

.field private final iconCode:Ljava/lang/String;

.field private final isLoading:Z

.field private final tempHigh:I

.field private final tempLow:I

.field private final temperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/miniaa/launcher/data/weather/WeatherState;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/HourlyForecast;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "condition"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cityName"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hourly"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    .line 28
    iput p2, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    .line 29
    iput p3, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    .line 30
    iput p4, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    .line 31
    iput-object p5, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    .line 36
    iput-boolean p10, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    .line 37
    iput-object p11, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 26
    const-string v0, ""

    if-eqz p13, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p9

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    const/4 p10, 0x1

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    const/4 p11, 0x0

    .line 26
    :cond_a
    invoke-direct/range {p0 .. p11}, Lcom/miniaa/launcher/data/weather/WeatherState;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/data/weather/WeatherState;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)Lcom/miniaa/launcher/data/weather/WeatherState;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move p1, v2

    move p2, v3

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/miniaa/launcher/data/weather/WeatherState;->copy(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    return p0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    return p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    return p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/HourlyForecast;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    return-object p0
.end method

.method public final copy(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)Lcom/miniaa/launcher/data/weather/WeatherState;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/HourlyForecast;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/miniaa/launcher/data/weather/WeatherState;"
        }
    .end annotation

    const-string v0, "condition"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCode"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cityName"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hourly"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miniaa/launcher/data/weather/WeatherState;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/miniaa/launcher/data/weather/WeatherState;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/data/weather/WeatherState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/data/weather/WeatherState;

    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    iget v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    iget v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    iget v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    iget v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    iget-object v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    iget-boolean v3, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    iget-object p1, p1, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getCityName()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCondition()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getError()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final getFeelsLike()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    return p0
.end method

.method public final getHourly()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/HourlyForecast;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    return-object p0
.end method

.method public final getIconCode()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getTempHigh()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    return p0
.end method

.method public final getTempLow()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    return p0
.end method

.method public final getTemperature()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isLoading()Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->temperature:I

    iget v1, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->feelsLike:I

    iget v2, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempHigh:I

    iget v3, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->tempLow:I

    iget-object v4, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->condition:Ljava/lang/String;

    iget-object v5, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->description:Ljava/lang/String;

    iget-object v6, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->iconCode:Ljava/lang/String;

    iget-object v7, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->cityName:Ljava/lang/String;

    iget-object v8, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->hourly:Ljava/util/List;

    iget-boolean v9, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->isLoading:Z

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherState;->error:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "WeatherState(temperature="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", feelsLike="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tempHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tempLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hourly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
