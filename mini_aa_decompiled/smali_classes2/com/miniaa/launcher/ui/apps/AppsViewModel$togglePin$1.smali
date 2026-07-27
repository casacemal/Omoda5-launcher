.class final Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppsViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/apps/AppsViewModel;->togglePin(Ljava/lang/String;)V
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
    c = "com.miniaa.launcher.ui.apps.AppsViewModel$togglePin$1"
    f = "AppsViewModel.kt"
    i = {}
    l = {
        0x32,
        0x34
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miniaa/launcher/ui/apps/AppsViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->$packageName:Ljava/lang/String;

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

    new-instance p1, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;

    iget-object v0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->$packageName:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;-><init>(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 48
    iget v1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->getPinnedPackages()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->$packageName:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    iget-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->access$getRepository$p(Lcom/miniaa/launcher/ui/apps/AppsViewModel;)Lcom/miniaa/launcher/data/apps/AppRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->$packageName:Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->label:I

    invoke-virtual {p1, v1, v2}, Lcom/miniaa/launcher/data/apps/AppRepository;->unpinApp(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-virtual {p1}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->getPinnedPackages()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_4

    .line 52
    iget-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->this$0:Lcom/miniaa/launcher/ui/apps/AppsViewModel;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->access$getRepository$p(Lcom/miniaa/launcher/ui/apps/AppsViewModel;)Lcom/miniaa/launcher/data/apps/AppRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->$packageName:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcom/miniaa/launcher/data/apps/AppRepository;->pinApp(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    .line 54
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
