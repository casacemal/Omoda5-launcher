.class final Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncImagePainter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/compose/AsyncImagePainter$onRemembered$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcoil/request/ImageRequest;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcoil/compose/AsyncImagePainter$State;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0015\u0010\u0002\u001a\u00110\u0003\u00a2\u0006\u000c\u0008\u0004\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(\u0006H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcoil/compose/AsyncImagePainter$State;",
        "it",
        "Lcoil/request/ImageRequest;",
        "Lkotlin/ParameterName;",
        "name",
        "value"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "coil.compose.AsyncImagePainter$onRemembered$1$1$2"
    f = "AsyncImagePainter.kt"
    i = {}
    l = {
        0x133
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcoil/compose/AsyncImagePainter;


# direct methods
.method constructor <init>(Lcoil/compose/AsyncImagePainter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/compose/AsyncImagePainter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->this$0:Lcoil/compose/AsyncImagePainter;

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

    new-instance v0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;

    iget-object p0, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->this$0:Lcoil/compose/AsyncImagePainter;

    invoke-direct {v0, p0, p2}, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;-><init>(Lcoil/compose/AsyncImagePainter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/compose/AsyncImagePainter$State;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcoil/request/ImageRequest;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->invoke(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 307
    iget v1, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcoil/compose/AsyncImagePainter;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lcoil/request/ImageRequest;

    iget-object v1, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->this$0:Lcoil/compose/AsyncImagePainter;

    invoke-virtual {v1}, Lcoil/compose/AsyncImagePainter;->getImageLoader()Lcoil/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->this$0:Lcoil/compose/AsyncImagePainter;

    invoke-static {v4, p1}, Lcoil/compose/AsyncImagePainter;->access$updateRequest(Lcoil/compose/AsyncImagePainter;Lcoil/request/ImageRequest;)Lcoil/request/ImageRequest;

    move-result-object p1

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcoil/compose/AsyncImagePainter$onRemembered$1$1$2;->label:I

    invoke-interface {v3, p1, v4}, Lcoil/ImageLoader;->execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    check-cast p1, Lcoil/request/ImageResult;

    invoke-static {p0, p1}, Lcoil/compose/AsyncImagePainter;->access$toState(Lcoil/compose/AsyncImagePainter;Lcoil/request/ImageResult;)Lcoil/compose/AsyncImagePainter$State;

    move-result-object p0

    return-object p0
.end method
