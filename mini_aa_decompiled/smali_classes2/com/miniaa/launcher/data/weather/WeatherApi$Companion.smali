.class public final Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;
.super Ljava/lang/Object;
.source "WeatherApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniaa/launcher/data/weather/WeatherApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;",
        "",
        "<init>",
        "()V",
        "BASE_URL",
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
.field static final synthetic $$INSTANCE:Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;

.field public static final BASE_URL:Ljava/lang/String; = "https://api.openweathermap.org/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;

    invoke-direct {v0}, Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;->$$INSTANCE:Lcom/miniaa/launcher/data/weather/WeatherApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
