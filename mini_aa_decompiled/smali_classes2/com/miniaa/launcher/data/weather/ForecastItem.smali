.class public final Lcom/miniaa/launcher/data/weather/ForecastItem;
.super Ljava/lang/Object;
.source "WeatherModels.kt"


# annotations
.annotation runtime Lcom/squareup/moshi/JsonClass;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0001\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J-\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0003\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/weather/ForecastItem;",
        "",
        "dt",
        "",
        "main",
        "Lcom/miniaa/launcher/data/weather/MainData;",
        "weather",
        "",
        "Lcom/miniaa/launcher/data/weather/WeatherCondition;",
        "<init>",
        "(JLcom/miniaa/launcher/data/weather/MainData;Ljava/util/List;)V",
        "getDt",
        "()J",
        "getMain",
        "()Lcom/miniaa/launcher/data/weather/MainData;",
        "getWeather",
        "()Ljava/util/List;",
        "component1",
        "component2",
        "component3",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final dt:J

.field private final main:Lcom/miniaa/launcher/data/weather/MainData;

.field private final weather:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/WeatherCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLcom/miniaa/launcher/data/weather/MainData;Ljava/util/List;)V
    .locals 1
    .param p1    # J
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "dt"
        .end annotation
    .end param
    .param p3    # Lcom/miniaa/launcher/data/weather/MainData;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "main"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "weather"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miniaa/launcher/data/weather/MainData;",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/WeatherCondition;",
            ">;)V"
        }
    .end annotation

    const-string v0, "main"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weather"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    .line 38
    iput-object p3, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    .line 39
    iput-object p4, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miniaa/launcher/data/weather/ForecastItem;JLcom/miniaa/launcher/data/weather/MainData;Ljava/util/List;ILjava/lang/Object;)Lcom/miniaa/launcher/data/weather/ForecastItem;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miniaa/launcher/data/weather/ForecastItem;->copy(JLcom/miniaa/launcher/data/weather/MainData;Ljava/util/List;)Lcom/miniaa/launcher/data/weather/ForecastItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    return-wide v0
.end method

.method public final component2()Lcom/miniaa/launcher/data/weather/MainData;
    .locals 0

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/WeatherCondition;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    return-object p0
.end method

.method public final copy(JLcom/miniaa/launcher/data/weather/MainData;Ljava/util/List;)Lcom/miniaa/launcher/data/weather/ForecastItem;
    .locals 0
    .param p1    # J
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "dt"
        .end annotation
    .end param
    .param p3    # Lcom/miniaa/launcher/data/weather/MainData;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "main"
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/Json;
            name = "weather"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miniaa/launcher/data/weather/MainData;",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/WeatherCondition;",
            ">;)",
            "Lcom/miniaa/launcher/data/weather/ForecastItem;"
        }
    .end annotation

    const-string p0, "main"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "weather"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/miniaa/launcher/data/weather/ForecastItem;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miniaa/launcher/data/weather/ForecastItem;-><init>(JLcom/miniaa/launcher/data/weather/MainData;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miniaa/launcher/data/weather/ForecastItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miniaa/launcher/data/weather/ForecastItem;

    iget-wide v3, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    iget-wide v5, p1, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    iget-object v3, p1, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    iget-object p1, p1, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDt()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    return-wide v0
.end method

.method public final getMain()Lcom/miniaa/launcher/data/weather/MainData;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    return-object p0
.end method

.method public final getWeather()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/weather/WeatherCondition;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/weather/MainData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->dt:J

    iget-object v2, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->main:Lcom/miniaa/launcher/data/weather/MainData;

    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/ForecastItem;->weather:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ForecastItem(dt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", main="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
