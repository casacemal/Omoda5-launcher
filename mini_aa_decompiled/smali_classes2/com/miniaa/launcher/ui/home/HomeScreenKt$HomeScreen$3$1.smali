.class final Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;
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
    c = "com.miniaa.launcher.ui.home.HomeScreenKt$HomeScreen$3$1"
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

.field final synthetic $settings$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Lcom/miniaa/launcher/data/settings/LauncherSettings;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$settings$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;

    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$settings$delegate:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 96
    iget v0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$settings$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$23(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/settings/LauncherSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/settings/LauncherSettings;->getDefaultPipApp()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$12(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LaunchedEffect: defaultPipApp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", embeddedPackage="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$12(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$settings$delegate:Landroidx/compose/runtime/State;

    invoke-static {v1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$23(Landroidx/compose/runtime/State;)Lcom/miniaa/launcher/data/settings/LauncherSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/settings/LauncherSettings;->getDefaultPipApp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.apps.maps"

    :cond_0
    invoke-static {p1, v1}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$13(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/HomeScreenKt$HomeScreen$3$1;->$embeddedPackage$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p0}, Lcom/miniaa/launcher/ui/home/HomeScreenKt;->access$HomeScreen$lambda$12(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Set initial embeddedPackage: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
