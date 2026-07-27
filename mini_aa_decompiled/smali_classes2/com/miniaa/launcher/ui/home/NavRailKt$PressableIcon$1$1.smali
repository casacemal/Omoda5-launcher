.class final Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NavRail.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/ui/home/NavRailKt;->PressableIcon-TN_CM5M(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;FZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
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
    c = "com.miniaa.launcher.ui.home.NavRailKt$PressableIcon$1$1"
    f = "NavRail.kt"
    i = {}
    l = {
        0x251
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $isPressed$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $wasTouched$delegate:Landroidx/compose/runtime/MutableState;
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
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$isPressed$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$wasTouched$delegate:Landroidx/compose/runtime/MutableState;

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

    new-instance p1, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;

    iget-object v0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$isPressed$delegate:Landroidx/compose/runtime/State;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$wasTouched$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p1, v0, p0, p2}, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 589
    iget v1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->label:I

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

    .line 590
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$isPressed$delegate:Landroidx/compose/runtime/State;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$PressableIcon_TN_CM5M$lambda$24(Landroidx/compose/runtime/State;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 591
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$wasTouched$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p0, v2}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$PressableIcon_TN_CM5M$lambda$27(Landroidx/compose/runtime/MutableState;Z)V

    goto :goto_1

    .line 592
    :cond_2
    iget-object p1, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$wasTouched$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$PressableIcon_TN_CM5M$lambda$26(Landroidx/compose/runtime/MutableState;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 593
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->label:I

    const-wide/16 v1, 0x190

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 594
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/miniaa/launcher/ui/home/NavRailKt$PressableIcon$1$1;->$wasTouched$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miniaa/launcher/ui/home/NavRailKt;->access$PressableIcon_TN_CM5M$lambda$27(Landroidx/compose/runtime/MutableState;Z)V

    .line 596
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
