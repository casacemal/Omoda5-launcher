.class public final Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WeatherViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/weather/WeatherViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "onAvailable",
        "",
        "network",
        "Landroid/net/Network;",
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


# instance fields
.field final synthetic this$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;->this$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    .line 33
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string p1, "WeatherVM"

    const-string v0, "Network available \u2014 refreshing weather"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object p1, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;->this$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1$onAvailable$1;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1;->this$0:Lcom/miniaa/launcher/ui/weather/WeatherViewModel;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/miniaa/launcher/ui/weather/WeatherViewModel$networkCallback$1$onAvailable$1;-><init>(Lcom/miniaa/launcher/ui/weather/WeatherViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
