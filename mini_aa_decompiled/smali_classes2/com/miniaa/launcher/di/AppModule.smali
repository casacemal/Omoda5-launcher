.class public final Lcom/miniaa/launcher/di/AppModule;
.super Ljava/lang/Object;
.source "AppModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u000f\u001a\u00020\u0010R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/miniaa/launcher/di/AppModule;",
        "",
        "<init>",
        "()V",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "getMoshi",
        "()Lcom/squareup/moshi/Moshi;",
        "moshi$delegate",
        "Lkotlin/Lazy;",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "getRetrofit",
        "()Lretrofit2/Retrofit;",
        "retrofit$delegate",
        "provideWeatherApi",
        "Lcom/miniaa/launcher/data/weather/WeatherApi;",
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

.field public static final INSTANCE:Lcom/miniaa/launcher/di/AppModule;

.field private static final moshi$delegate:Lkotlin/Lazy;

.field private static final retrofit$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Pe8Mf4-a8qf4KQqn3eqQFV3sIbw()Lretrofit2/Retrofit;
    .locals 1

    invoke-static {}, Lcom/miniaa/launcher/di/AppModule;->retrofit_delegate$lambda$1()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$UcNyvN-I-K04QjyAGS_rNWMD4rY()Lcom/squareup/moshi/Moshi;
    .locals 1

    invoke-static {}, Lcom/miniaa/launcher/di/AppModule;->moshi_delegate$lambda$0()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miniaa/launcher/di/AppModule;

    invoke-direct {v0}, Lcom/miniaa/launcher/di/AppModule;-><init>()V

    sput-object v0, Lcom/miniaa/launcher/di/AppModule;->INSTANCE:Lcom/miniaa/launcher/di/AppModule;

    .line 11
    new-instance v0, Lcom/miniaa/launcher/di/AppModule$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miniaa/launcher/di/AppModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/di/AppModule;->moshi$delegate:Lkotlin/Lazy;

    .line 17
    new-instance v0, Lcom/miniaa/launcher/di/AppModule$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/miniaa/launcher/di/AppModule$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/miniaa/launcher/di/AppModule;->retrofit$delegate:Lkotlin/Lazy;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/di/AppModule;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getMoshi()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 11
    sget-object p0, Lcom/miniaa/launcher/di/AppModule;->moshi$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/squareup/moshi/Moshi;

    return-object p0
.end method

.method private final getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 17
    sget-object p0, Lcom/miniaa/launcher/di/AppModule;->retrofit$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lretrofit2/Retrofit;

    return-object p0
.end method

.method private static final moshi_delegate$lambda$0()Lcom/squareup/moshi/Moshi;
    .locals 2

    .line 12
    new-instance v0, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v0}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    .line 13
    new-instance v1, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;

    invoke-direct {v1}, Lcom/squareup/moshi/kotlin/reflect/KotlinJsonAdapterFactory;-><init>()V

    check-cast v1, Lcom/squareup/moshi/JsonAdapter$Factory;

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/Moshi$Builder;->add(Lcom/squareup/moshi/JsonAdapter$Factory;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    return-object v0
.end method

.method private static final retrofit_delegate$lambda$1()Lretrofit2/Retrofit;
    .locals 2

    .line 18
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 19
    const-string v1, "https://api.openweathermap.org/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/miniaa/launcher/di/AppModule;->INSTANCE:Lcom/miniaa/launcher/di/AppModule;

    invoke-direct {v1}, Lcom/miniaa/launcher/di/AppModule;->getMoshi()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    invoke-static {v1}, Lretrofit2/converter/moshi/MoshiConverterFactory;->create(Lcom/squareup/moshi/Moshi;)Lretrofit2/converter/moshi/MoshiConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final provideWeatherApi()Lcom/miniaa/launcher/data/weather/WeatherApi;
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/miniaa/launcher/di/AppModule;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object p0

    const-class v0, Lcom/miniaa/launcher/data/weather/WeatherApi;

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "create(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/miniaa/launcher/data/weather/WeatherApi;

    return-object p0
.end method
