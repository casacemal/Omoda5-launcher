.class public final Lcom/miniaa/launcher/data/weather/WeatherRepository;
.super Ljava/lang/Object;
.source "WeatherRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/data/weather/WeatherRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeatherRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeatherRepository.kt\ncom/miniaa/launcher/data/weather/WeatherRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,208:1\n1863#2,2:209\n1#3:211\n351#4,11:212\n351#4,11:223\n351#4,11:234\n*S KotlinDebug\n*F\n+ 1 WeatherRepository.kt\ncom/miniaa/launcher/data/weather/WeatherRepository\n*L\n82#1:209,2\n136#1:212,11\n144#1:223,11\n188#1:234,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0011\u001a\u00020\u0012H\u0087@\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0083@\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0083@\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0015H\u0083@\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/weather/WeatherRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "api",
        "Lcom/miniaa/launcher/data/weather/WeatherApi;",
        "hasPlayServices",
        "",
        "_weather",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/miniaa/launcher/data/weather/WeatherState;",
        "weather",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getWeather",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "refresh",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLocation",
        "Landroid/location/Location;",
        "getLocationFused",
        "getLocationSystem",
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
.field public static final $stable:I

.field private static final Companion:Lcom/miniaa/launcher/data/weather/WeatherRepository$Companion;

.field public static final TAG:Ljava/lang/String; = "WeatherRepo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final _weather:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/miniaa/launcher/data/weather/WeatherState;",
            ">;"
        }
    .end annotation
.end field

.field private final api:Lcom/miniaa/launcher/data/weather/WeatherApi;

.field private final context:Landroid/content/Context;

.field private final hasPlayServices:Z

.field private final weather:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/weather/WeatherState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miniaa/launcher/data/weather/WeatherRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->Companion:Lcom/miniaa/launcher/data/weather/WeatherRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->context:Landroid/content/Context;

    .line 46
    sget-object v2, Lcom/miniaa/launcher/di/AppModule;->INSTANCE:Lcom/miniaa/launcher/di/AppModule;

    invoke-virtual {v2}, Lcom/miniaa/launcher/di/AppModule;->provideWeatherApi()Lcom/miniaa/launcher/data/weather/WeatherApi;

    move-result-object v2

    iput-object v2, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->api:Lcom/miniaa/launcher/data/weather/WeatherApi;

    const/4 v2, 0x0

    .line 48
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v2, v1

    .line 47
    :catch_0
    :cond_0
    iput-boolean v2, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->hasPlayServices:Z

    .line 53
    new-instance v1, Lcom/miniaa/launcher/data/weather/WeatherState;

    const/16 v15, 0x7ff

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/miniaa/launcher/data/weather/WeatherState;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->_weather:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 54
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->weather:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getLocation(Lcom/miniaa/launcher/data/weather/WeatherRepository;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocationFused(Lcom/miniaa/launcher/data/weather/WeatherRepository;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationFused(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocationSystem(Lcom/miniaa/launcher/data/weather/WeatherRepository;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationSystem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;

    iget v1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;

    invoke-direct {v0, p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;-><init>(Lcom/miniaa/launcher/data/weather/WeatherRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 116
    iget v2, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/miniaa/launcher/data/weather/WeatherRepository;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    iget-boolean p1, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->hasPlayServices:Z

    if-eqz p1, :cond_5

    .line 121
    :try_start_1
    iput-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->label:I

    invoke-direct {p0, v0}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationFused(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 116
    :cond_4
    :goto_1
    check-cast p1, Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p1, :cond_5

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "FusedLocation failed, falling back to LocationManager: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WeatherRepo"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    :cond_5
    const/4 p1, 0x0

    .line 127
    iput-object p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocation$1;->label:I

    invoke-direct {p0, v0}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocationSystem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p1
.end method

.method private final getLocationFused(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;

    iget v1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;

    invoke-direct {v0, p0, p1}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;-><init>(Lcom/miniaa/launcher/data/weather/WeatherRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 130
    iget v2, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;

    iget-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/tasks/Task;

    iget-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/location/FusedLocationProviderClient;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 133
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object p0

    const-string p1, "getFusedLocationProviderClient(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :try_start_1
    invoke-interface {p0}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getLastLocation()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 212
    iput-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$1:Ljava/lang/Object;

    iput-object v0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->label:I

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    .line 213
    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v6, v2, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 219
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 220
    move-object v2, v6

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 137
    new-instance v7, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$lastLocation$1$1$1;

    invoke-direct {v7, v2}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$lastLocation$1$1$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    new-instance v8, Lcom/miniaa/launcher/data/weather/WeatherRepository$sam$com_google_android_gms_tasks_OnSuccessListener$0;

    invoke-direct {v8, v7}, Lcom/miniaa/launcher/data/weather/WeatherRepository$sam$com_google_android_gms_tasks_OnSuccessListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v8, Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-virtual {p1, v8}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 138
    new-instance v7, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$lastLocation$1$1$2;

    invoke-direct {v7, v2}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$lastLocation$1$1$2;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v7, Lcom/google/android/gms/tasks/OnFailureListener;

    invoke-virtual {p1, v7}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 221
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 212
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_4

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne p1, v1, :cond_5

    return-object v1

    .line 222
    :cond_5
    :goto_1
    check-cast p1, Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_6

    return-object p1

    .line 223
    :cond_6
    iput-object p0, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 224
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p1, v2, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 230
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 231
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 145
    new-instance v3, Lcom/google/android/gms/location/LocationRequest$Builder;

    const/16 v4, 0x66

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v6, v7}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    .line 147
    invoke-virtual {v3, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdates(I)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    const-string v4, "build(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    new-instance v4, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;

    invoke-direct {v4, p0, v2}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 156
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/location/LocationCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-interface {p0, v3, v5, v6}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 157
    new-instance v3, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;

    invoke-direct {v3, p0, v4}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$1;-><init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationFused$2$callback$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 232
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 223
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_7

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_7
    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    return-object p1
.end method

.method private final getLocationSystem(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/location/Location;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->context:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/location/LocationManager;

    const/4 v0, 0x2

    .line 166
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gps"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v3, "network"

    aput-object v3, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "WeatherRepo"

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    :try_start_0
    invoke-virtual {p0, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 171
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got last known from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ": "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 179
    :cond_1
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, v3

    .line 187
    :goto_0
    const-string v0, "Requesting fresh location from "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 241
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 242
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 189
    new-instance v3, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;-><init>(Landroid/location/LocationManager;Ljava/lang/String;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 203
    move-object v4, v3

    check-cast v4, Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 204
    new-instance v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;

    invoke-direct {v2, p0, v3}, Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$1;-><init>(Landroid/location/LocationManager;Lcom/miniaa/launcher/data/weather/WeatherRepository$getLocationSystem$3$listener$1;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 243
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 234
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    return-object p0

    .line 182
    :cond_4
    const-string p0, "No location provider enabled"

    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final getWeather()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/weather/WeatherState;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/miniaa/launcher/data/weather/WeatherRepository;->weather:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final refresh(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;

    iget v3, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;

    invoke-direct {v2, v1, v0}, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;-><init>(Lcom/miniaa/launcher/data/weather/WeatherRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v14

    .line 56
    iget v3, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    const/4 v4, 0x2

    const/4 v15, 0x3

    const/4 v13, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v13, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v15, :cond_1

    iget-object v1, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/miniaa/launcher/data/weather/WeatherResponse;

    iget-object v2, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/miniaa/launcher/data/weather/WeatherRepository;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    move-object v1, v2

    move v2, v13

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_e

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v3, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->D$1:D

    iget-wide v5, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->D$0:D

    iget-object v1, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v7, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/miniaa/launcher/data/weather/WeatherRepository;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v1

    move-object v1, v7

    move-wide/from16 v30, v3

    move-wide v4, v5

    move-wide/from16 v6, v30

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_e

    :cond_3
    iget-object v1, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;->_weather:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/miniaa/launcher/data/weather/WeatherState;

    const/16 v28, 0x1ff

    const/16 v29, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    invoke-static/range {v16 .. v29}, Lcom/miniaa/launcher/data/weather/WeatherState;->copy$default(Lcom/miniaa/launcher/data/weather/WeatherState;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 60
    :try_start_3
    iput-object v1, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$0:Ljava/lang/Object;

    iput v13, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    invoke-direct {v1, v2}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getLocation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_5

    return-object v14

    .line 56
    :cond_5
    :goto_1
    check-cast v0, Landroid/location/Location;

    if-nez v0, :cond_6

    .line 62
    iget-object v0, v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;->_weather:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/weather/WeatherState;

    const-string v14, "Location unavailable"

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v3 .. v16}, Lcom/miniaa/launcher/data/weather/WeatherState;->copy$default(Lcom/miniaa/launcher/data/weather/WeatherState;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 65
    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 66
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 68
    const-string v0, "b62af91d694ccdba63d4aaeeff63eeff"

    .line 69
    iget-object v3, v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;->api:Lcom/miniaa/launcher/data/weather/WeatherApi;

    iput-object v1, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$1:Ljava/lang/Object;

    iput-wide v11, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->D$0:D

    iput-wide v9, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->D$1:D

    iput v4, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-wide v4, v11

    move-wide v6, v9

    move-object v8, v0

    move-wide/from16 v19, v9

    move-object/from16 v9, v16

    move-object v10, v2

    move-wide/from16 v21, v11

    move/from16 v11, v17

    move-object/from16 v12, v18

    invoke-static/range {v3 .. v12}, Lcom/miniaa/launcher/data/weather/WeatherApi$DefaultImpls;->getCurrentWeather$default(Lcom/miniaa/launcher/data/weather/WeatherApi;DDLjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_7

    return-object v14

    :cond_7
    move-object v8, v0

    move-object v0, v3

    move-wide/from16 v6, v19

    move-wide/from16 v4, v21

    .line 56
    :goto_2
    check-cast v0, Lcom/miniaa/launcher/data/weather/WeatherResponse;

    .line 70
    iget-object v3, v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;->api:Lcom/miniaa/launcher/data/weather/WeatherApi;

    iput-object v1, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->L$1:Ljava/lang/Object;

    iput v15, v2, Lcom/miniaa/launcher/data/weather/WeatherRepository$refresh$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/16 v12, 0x8

    const/16 v16, 0x0

    move-object v11, v2

    move v2, v13

    move-object/from16 v13, v16

    invoke-static/range {v3 .. v13}, Lcom/miniaa/launcher/data/weather/WeatherApi$DefaultImpls;->getForecast$default(Lcom/miniaa/launcher/data/weather/WeatherApi;DDLjava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_8

    return-object v14

    :cond_8
    move-object/from16 v30, v3

    move-object v3, v0

    move-object/from16 v0, v30

    .line 56
    :goto_3
    check-cast v0, Lcom/miniaa/launcher/data/weather/ForecastResponse;

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v4

    .line 74
    new-instance v5, Lcom/miniaa/launcher/data/weather/HourlyForecast;

    .line 75
    const-string v6, "NOW"

    .line 76
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getMain()Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miniaa/launcher/data/weather/MainData;->getTemp()D

    move-result-wide v7

    double-to-int v7, v7

    .line 77
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getWeather()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    const/4 v9, 0x0

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getMain()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :cond_9
    move-object v8, v9

    :goto_4
    const-string v10, ""

    if-nez v8, :cond_a

    move-object v8, v10

    .line 78
    :cond_a
    :try_start_4
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getWeather()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getIcon()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_b
    move-object v11, v9

    :goto_5
    if-nez v11, :cond_c

    move-object v11, v10

    .line 74
    :cond_c
    invoke-direct {v5, v6, v7, v8, v11}, Lcom/miniaa/launcher/data/weather/HourlyForecast;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "ha"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 82
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/weather/ForecastResponse;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v7, "toUpperCase(...)"

    if-eqz v6, :cond_11

    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miniaa/launcher/data/weather/ForecastItem;

    .line 84
    new-instance v8, Lcom/miniaa/launcher/data/weather/HourlyForecast;

    .line 85
    new-instance v11, Ljava/util/Date;

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/ForecastItem;->getDt()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "format(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/ForecastItem;->getMain()Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miniaa/launcher/data/weather/MainData;->getTemp()D

    move-result-wide v12

    double-to-int v7, v12

    .line 87
    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/ForecastItem;->getWeather()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getMain()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_d
    move-object v12, v9

    :goto_7
    if-nez v12, :cond_e

    move-object v12, v10

    .line 88
    :cond_e
    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/ForecastItem;->getWeather()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getIcon()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_f
    move-object v6, v9

    :goto_8
    if-nez v6, :cond_10

    move-object v6, v10

    .line 84
    :cond_10
    invoke-direct {v8, v11, v7, v12, v6}, Lcom/miniaa/launcher/data/weather/HourlyForecast;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 72
    :cond_11
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 94
    iget-object v0, v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;->_weather:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 95
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getMain()Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miniaa/launcher/data/weather/MainData;->getTemp()D

    move-result-wide v4

    double-to-int v14, v4

    .line 96
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getMain()Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miniaa/launcher/data/weather/MainData;->getFeelsLike()D

    move-result-wide v4

    double-to-int v15, v4

    .line 97
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getMain()Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miniaa/launcher/data/weather/MainData;->getTempMax()D

    move-result-wide v4

    double-to-int v4, v4

    .line 98
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getMain()Lcom/miniaa/launcher/data/weather/MainData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miniaa/launcher/data/weather/MainData;->getTempMin()D

    move-result-wide v5

    double-to-int v5, v5

    .line 99
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getWeather()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getMain()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_12
    move-object v6, v9

    :goto_9
    if-nez v6, :cond_13

    move-object/from16 v18, v10

    goto :goto_a

    :cond_13
    move-object/from16 v18, v6

    .line 100
    :goto_a
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getWeather()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getDescription()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_14
    move-object v6, v9

    :goto_b
    if-nez v6, :cond_15

    move-object v6, v10

    .line 101
    :cond_15
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_16

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    int-to-char v11, v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    const-string v12, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "substring(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_c

    :cond_16
    move-object/from16 v19, v6

    .line 102
    :goto_c
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getWeather()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miniaa/launcher/data/weather/WeatherCondition;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/miniaa/launcher/data/weather/WeatherCondition;->getIcon()Ljava/lang/String;

    move-result-object v9

    :cond_17
    if-nez v9, :cond_18

    move-object/from16 v20, v10

    goto :goto_d

    :cond_18
    move-object/from16 v20, v9

    .line 103
    :goto_d
    invoke-virtual {v3}, Lcom/miniaa/launcher/data/weather/WeatherResponse;->getCityName()Ljava/lang/String;

    move-result-object v21

    .line 94
    new-instance v2, Lcom/miniaa/launcher/data/weather/WeatherState;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x400

    const/16 v26, 0x0

    move-object v13, v2

    move/from16 v16, v4

    move/from16 v17, v5

    invoke-direct/range {v13 .. v26}, Lcom/miniaa/launcher/data/weather/WeatherState;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_f

    :catch_2
    move-exception v0

    .line 108
    :goto_e
    sget-object v2, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "API failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "Weather"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miniaa/launcher/util/FileLogger;->e$default(Lcom/miniaa/launcher/util/FileLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 109
    iget-object v1, v1, Lcom/miniaa/launcher/data/weather/WeatherRepository;->_weather:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/weather/WeatherState;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 109
    invoke-static/range {v3 .. v16}, Lcom/miniaa/launcher/data/weather/WeatherState;->copy$default(Lcom/miniaa/launcher/data/weather/WeatherState;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)Lcom/miniaa/launcher/data/weather/WeatherState;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 114
    :goto_f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
