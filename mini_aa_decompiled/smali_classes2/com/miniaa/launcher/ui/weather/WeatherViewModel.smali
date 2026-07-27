.class public final Lcom/miniaa/launcher/ui/weather/WeatherViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "WeatherViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/ui/weather/WeatherViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0010\u0008\u0007\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0012\u001a\u00020\u0013H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/miniaa/launcher/ui/weather/WeatherViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "repository",
        "Lcom/miniaa/launcher/data/weather/WeatherRepository;",
        "weather",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/miniaa/launcher/data/weather/WeatherState;",
        "getWeather",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "connectivityManager",
        "Landroid/net/ConnectivityManager;",
        "networkCallback",
        "com/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1",
        "Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;",
        "onCleared",
        "",
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

.field public static final Companion:Lcom/miniaa/launcher/ui/weather/WeatherViewModel$Companion;

.field private static final TAG:Ljava/lang/String; = "WeatherVM"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final networkCallback:Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;

.field private final repository:Lcom/miniaa/launcher/data/weather/WeatherRepository;

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

    new-instance v0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->Companion:Lcom/miniaa/launcher/ui/weather/WeatherViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 8

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 27
    new-instance v0, Lcom/miniaa/launcher/data/weather/WeatherRepository;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miniaa/launcher/data/weather/WeatherRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->repository:Lcom/miniaa/launcher/data/weather/WeatherRepository;

    .line 28
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/weather/WeatherRepository;->getWeather()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->weather:Lkotlinx/coroutines/flow/StateFlow;

    .line 31
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 33
    new-instance v0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;

    invoke-direct {v0, p0}, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;-><init>(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;)V

    iput-object v0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->networkCallback:Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;

    .line 45
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v1, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$1;-><init>(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 53
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 54
    invoke-virtual {p0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    .line 56
    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;)Lcom/miniaa/launcher/data/weather/WeatherRepository;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->repository:Lcom/miniaa/launcher/data/weather/WeatherRepository;

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

    .line 28
    iget-object p0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->weather:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method protected onCleared()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->connectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel;->networkCallback:Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;

    check-cast p0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
