.class final Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StatusBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->ScrollingTrafficNews(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.miniaa.launcher.ui.statusbar.StatusBarKt$ScrollingTrafficNews$1$1"
    f = "StatusBar.kt"
    i = {}
    l = {
        0x239
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

.field final synthetic $singleWidthPx$delegate:Landroidx/compose/runtime/MutableFloatState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Landroidx/compose/runtime/MutableFloatState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$singleWidthPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

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

    new-instance p1, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;

    iget-object v0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$singleWidthPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-direct {p1, v0, p0, p2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 561
    iget v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 562
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$singleWidthPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$45(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 563
    :cond_2
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1, v1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$49(Landroidx/compose/runtime/MutableFloatState;F)V

    .line 565
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$48(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v1, v3

    invoke-static {p1, v1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$49(Landroidx/compose/runtime/MutableFloatState;F)V

    .line 566
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$48(Landroidx/compose/runtime/MutableFloatState;)F

    move-result p1

    iget-object v1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$singleWidthPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {v1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$45(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    neg-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_4

    .line 567
    iget-object p1, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$offsetPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$48(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v1

    iget-object v3, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->$singleWidthPx$delegate:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {v3}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$45(Landroidx/compose/runtime/MutableFloatState;)F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {p1, v1}, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt;->access$ScrollingTrafficNews$lambda$49(Landroidx/compose/runtime/MutableFloatState;F)V

    .line 569
    :cond_4
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/miniaa/launcher/ui/statusbar/StatusBarKt$ScrollingTrafficNews$1$1;->label:I

    const-wide/16 v3, 0x10

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0
.end method
