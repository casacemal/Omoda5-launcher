.class final Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EmbeddedAppView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->TaskViewContainer(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
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
    c = "com.miniaa.launcher.taskview.EmbeddedAppViewKt$TaskViewContainer$3$1"
    f = "EmbeddedAppView.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $wrapper$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/miniaa/launcher/taskview/TaskViewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/miniaa/launcher/taskview/TaskViewWrapper;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$wrapper$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance p1, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;

    iget-object v0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$wrapper$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;-><init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 356
    iget v0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 357
    sget-object p1, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    iget-object v0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$wrapper$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$TaskViewContainer$lambda$41(Landroidx/compose/runtime/MutableState;)Lcom/miniaa/launcher/taskview/TaskViewWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TaskViewContainer: LaunchedEffect for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", wrapper="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Embed"

    invoke-virtual {p1, v1, v0}, Lcom/miniaa/launcher/util/FileLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$wrapper$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt;->access$TaskViewContainer$lambda$41(Landroidx/compose/runtime/MutableState;)Lcom/miniaa/launcher/taskview/TaskViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miniaa/launcher/taskview/EmbeddedAppViewKt$TaskViewContainer$3$1;->$packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/miniaa/launcher/taskview/TaskViewWrapper;->startApp(Ljava/lang/String;)V

    .line 359
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 356
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
