.class final Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AnchoredDraggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/unit/Velocity;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/compose/ui/unit/Velocity;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/unit/Velocity;",
        "T",
        "availableVelocity"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.AnchoredDraggableNode$onDragStopped$1$1"
    f = "AnchoredDraggable.kt"
    i = {
        0x0
    }
    l = {
        0x118
    }
    m = "invokeSuspend"
    n = {
        "availableVelocity"
    }
    s = {
        "J$0"
    }
.end annotation


# instance fields
.field synthetic J$0:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/foundation/gestures/AnchoredDraggableNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableNode<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;-><init>(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p0

    iput-wide p0, v0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->J$0:J

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->invoke-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 279
    iget v1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->J$0:J

    iget-object v2, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v3, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->J$0:J

    .line 280
    iget-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getState$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object v1

    iget-object v5, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$toFloat-TH1AsA0(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;J)F

    move-result v5

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->L$0:Ljava/lang/Object;

    iput-wide v3, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->J$0:J

    iput v2, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->label:I

    invoke-virtual {v1, v5, v6}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->settle(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v2, p1

    move-object p1, v1

    move-wide v0, v3

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {v2, p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$toVelocity-adjELrA(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;F)J

    move-result-wide v2

    .line 281
    iget-object p1, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getState$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->requireOffset()F

    move-result p1

    .line 282
    iget-object v4, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {v4}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getState$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->getAnchors()Landroidx/compose/foundation/gestures/DraggableAnchors;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/gestures/DraggableAnchors;->minAnchor()F

    move-result v4

    .line 283
    iget-object p0, p0, Landroidx/compose/foundation/gestures/AnchoredDraggableNode$onDragStopped$1$1;->this$0:Landroidx/compose/foundation/gestures/AnchoredDraggableNode;

    invoke-static {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableNode;->access$getState$p(Landroidx/compose/foundation/gestures/AnchoredDraggableNode;)Landroidx/compose/foundation/gestures/AnchoredDraggableState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/AnchoredDraggableState;->getAnchors()Landroidx/compose/foundation/gestures/DraggableAnchors;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/gestures/DraggableAnchors;->maxAnchor()F

    move-result p0

    cmpl-float p0, p1, p0

    if-gez p0, :cond_3

    cmpg-float p0, p1, v4

    if-gtz p0, :cond_4

    :cond_3
    move-wide v0, v2

    .line 288
    :cond_4
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p0

    return-object p0
.end method
