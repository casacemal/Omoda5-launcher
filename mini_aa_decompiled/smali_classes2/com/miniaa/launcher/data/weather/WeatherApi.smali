.class public interface abstract Lcom/miniaa/launcher/data/weather/WeatherApi;
.super Ljava/lang/Object;
.source "WeatherApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;,
        Lcom/miniaa/launcher/data/weather/WeatherApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J6\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\nJ@\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\u00082\u0008\u0008\u0003\u0010\r\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/weather/WeatherApi;",
        "",
        "getCurrentWeather",
        "Lcom/miniaa/launcher/data/weather/WeatherResponse;",
        "lat",
        "",
        "lon",
        "apiKey",
        "",
        "units",
        "(DDLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getForecast",
        "Lcom/miniaa/launcher/data/weather/ForecastResponse;",
        "count",
        "",
        "(DDLjava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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
.field public static final BASE_URL:Ljava/lang/String; = "https://api.openweathermap.org/"

.field public static final Companion:Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;->$$INSTANCE:Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;

    sput-object v0, Lcom/miniaa/launcher/data/weather/WeatherApi;->Companion:Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract getCurrentWeather(DDLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "lat"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "lon"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "appid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "units"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/weather/WeatherResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "data/2.5/weather"
    .end annotation
.end method

.method public abstract getForecast(DDLjava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "lat"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "lon"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "appid"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "units"
        .end annotation
    .end param
    .param p7    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "cnt"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/data/weather/ForecastResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "data/2.5/forecast"
    .end annotation
.end method
