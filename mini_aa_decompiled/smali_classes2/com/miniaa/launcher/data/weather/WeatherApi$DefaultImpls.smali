.class public final Lcom/miniaa/launcher/data/weather/WeatherApi$DefaultImpls;
.super Ljava/lang/Object;
.source "WeatherApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniaa/launcher/data/weather/WeatherApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getCurrentWeather$default(Lcom/miniaa/launcher/data/weather/WeatherApi;DDLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    .line 13
    const-string v0, "metric"

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p7

    .line 8
    invoke-interface/range {v1 .. v8}, Lcom/miniaa/launcher/data/weather/WeatherApi;->getCurrentWeather(DDLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getCurrentWeather"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic getForecast$default(Lcom/miniaa/launcher/data/weather/WeatherApi;DDLjava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    if-nez p10, :cond_2

    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "metric"

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p6

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    move v8, v0

    goto :goto_1

    :cond_1
    move/from16 v8, p7

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v9, p8

    .line 16
    invoke-interface/range {v1 .. v9}, Lcom/miniaa/launcher/data/weather/WeatherApi;->getForecast(DDLjava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getForecast"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
