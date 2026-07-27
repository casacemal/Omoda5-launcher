.class final Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/HomeScreenKt;->HomeScreen(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lcom/miniaa/launcher/ui/weather/WeatherViewModel;Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lcom/miniaa/launcher/ui/settings/SettingsViewModel;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miniaa.launcher.ui.home.HomeScreenKt$HomeScreen$2$1"
    f = "HomeScreen.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastPipLaunch$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pipLaunch$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showAppDrawer$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showSettings$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$pipLaunch$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$lastPipLaunch$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$showAppDrawer$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$showSettings$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$pipLaunch$delegate:Landroidx/compose/runtime/State;

    iget-object v2, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$lastPipLaunch$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$showAppDrawer$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$showSettings$delegate:Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 79
    iget v0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$pipLaunch$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$18(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$lastPipLaunch$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v2, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$showAppDrawer$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$2$1;->$showSettings$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-static {v0}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$20(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pipLaunch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HomeScreen"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v0, p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$21(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 84
    invoke-static {v1, p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$13(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 85
    invoke-static {v2, p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$2(Landroidx/compose/runtime/MutableState;Z)V

    .line 86
    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$5(Landroidx/compose/runtime/MutableState;Z)V

    .line 89
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
