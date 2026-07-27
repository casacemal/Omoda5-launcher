.class final Lcoil/RealImageLoader$enqueue$job$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealImageLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/RealImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
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
        "Lcoil/request/ImageResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcoil/request/ImageResult;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "coil.RealImageLoader$enqueue$job$1"
    f = "RealImageLoader.kt"
    i = {}
    l = {
        0x71
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $request:Lcoil/request/ImageRequest;

.field label:I

.field final synthetic this$0:Lcoil/RealImageLoader;


# direct methods
.method constructor <init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/RealImageLoader;",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/RealImageLoader$enqueue$job$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/RealImageLoader$enqueue$job$1;->this$0:Lcoil/RealImageLoader;

    iput-object p2, p0, Lcoil/RealImageLoader$enqueue$job$1;->$request:Lcoil/request/ImageRequest;

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

    new-instance p1, Lcoil/RealImageLoader$enqueue$job$1;

    iget-object v0, p0, Lcoil/RealImageLoader$enqueue$job$1;->this$0:Lcoil/RealImageLoader;

    iget-object p0, p0, Lcoil/RealImageLoader$enqueue$job$1;->$request:Lcoil/request/ImageRequest;

    invoke-direct {p1, v0, p0, p2}, Lcoil/RealImageLoader$enqueue$job$1;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/RealImageLoader$enqueue$job$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcoil/RealImageLoader$enqueue$job$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil/RealImageLoader$enqueue$job$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil/RealImageLoader$enqueue$job$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget v1, p0, Lcoil/RealImageLoader$enqueue$job$1;->label:I

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

    .line 113
    iget-object p1, p0, Lcoil/RealImageLoader$enqueue$job$1;->this$0:Lcoil/RealImageLoader;

    iget-object v1, p0, Lcoil/RealImageLoader$enqueue$job$1;->$request:Lcoil/request/ImageRequest;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcoil/RealImageLoader$enqueue$job$1;->label:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Lcoil/RealImageLoader;->access$executeMain(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 112
    :cond_2
    :goto_0
    iget-object p0, p0, Lcoil/RealImageLoader$enqueue$job$1;->this$0:Lcoil/RealImageLoader;

    move-object v0, p1

    check-cast v0, Lcoil/request/ImageResult;

    .line 114
    instance-of v1, v0, Lcoil/request/ErrorResult;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcoil/RealImageLoader;->getLogger()Lcoil/util/Logger;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast v0, Lcoil/request/ErrorResult;

    invoke-virtual {v0}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "RealImageLoader"

    invoke-static {p0, v1, v0}, Lcoil/util/-Logs;->log(Lcoil/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object p1
.end method
