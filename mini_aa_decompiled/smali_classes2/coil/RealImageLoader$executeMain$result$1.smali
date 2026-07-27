.class final Lcoil/RealImageLoader$executeMain$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealImageLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/RealImageLoader;->executeMain(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "coil.RealImageLoader$executeMain$result$1"
    f = "RealImageLoader.kt"
    i = {}
    l = {
        0xc4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $eventListener:Lcoil/EventListener;

.field final synthetic $placeholderBitmap:Landroid/graphics/Bitmap;

.field final synthetic $request:Lcoil/request/ImageRequest;

.field final synthetic $size:Lcoil/size/Size;

.field label:I

.field final synthetic this$0:Lcoil/RealImageLoader;


# direct methods
.method constructor <init>(Lcoil/request/ImageRequest;Lcoil/RealImageLoader;Lcoil/size/Size;Lcoil/EventListener;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lcoil/RealImageLoader;",
            "Lcoil/size/Size;",
            "Lcoil/EventListener;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/RealImageLoader$executeMain$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/RealImageLoader$executeMain$result$1;->$request:Lcoil/request/ImageRequest;

    iput-object p2, p0, Lcoil/RealImageLoader$executeMain$result$1;->this$0:Lcoil/RealImageLoader;

    iput-object p3, p0, Lcoil/RealImageLoader$executeMain$result$1;->$size:Lcoil/size/Size;

    iput-object p4, p0, Lcoil/RealImageLoader$executeMain$result$1;->$eventListener:Lcoil/EventListener;

    iput-object p5, p0, Lcoil/RealImageLoader$executeMain$result$1;->$placeholderBitmap:Landroid/graphics/Bitmap;

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

    new-instance p1, Lcoil/RealImageLoader$executeMain$result$1;

    iget-object v1, p0, Lcoil/RealImageLoader$executeMain$result$1;->$request:Lcoil/request/ImageRequest;

    iget-object v2, p0, Lcoil/RealImageLoader$executeMain$result$1;->this$0:Lcoil/RealImageLoader;

    iget-object v3, p0, Lcoil/RealImageLoader$executeMain$result$1;->$size:Lcoil/size/Size;

    iget-object v4, p0, Lcoil/RealImageLoader$executeMain$result$1;->$eventListener:Lcoil/EventListener;

    iget-object v5, p0, Lcoil/RealImageLoader$executeMain$result$1;->$placeholderBitmap:Landroid/graphics/Bitmap;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcoil/RealImageLoader$executeMain$result$1;-><init>(Lcoil/request/ImageRequest;Lcoil/RealImageLoader;Lcoil/size/Size;Lcoil/EventListener;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/RealImageLoader$executeMain$result$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcoil/RealImageLoader$executeMain$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil/RealImageLoader$executeMain$result$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil/RealImageLoader$executeMain$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 187
    iget v1, p0, Lcoil/RealImageLoader$executeMain$result$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 188
    new-instance p1, Lcoil/intercept/RealInterceptorChain;

    .line 189
    iget-object v4, p0, Lcoil/RealImageLoader$executeMain$result$1;->$request:Lcoil/request/ImageRequest;

    .line 190
    iget-object v1, p0, Lcoil/RealImageLoader$executeMain$result$1;->this$0:Lcoil/RealImageLoader;

    invoke-static {v1}, Lcoil/RealImageLoader;->access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;

    move-result-object v5

    .line 192
    iget-object v7, p0, Lcoil/RealImageLoader$executeMain$result$1;->$request:Lcoil/request/ImageRequest;

    .line 193
    iget-object v8, p0, Lcoil/RealImageLoader$executeMain$result$1;->$size:Lcoil/size/Size;

    .line 194
    iget-object v9, p0, Lcoil/RealImageLoader$executeMain$result$1;->$eventListener:Lcoil/EventListener;

    .line 195
    iget-object v1, p0, Lcoil/RealImageLoader$executeMain$result$1;->$placeholderBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    const/4 v6, 0x0

    move-object v3, p1

    .line 188
    invoke-direct/range {v3 .. v10}, Lcoil/intercept/RealInterceptorChain;-><init>(Lcoil/request/ImageRequest;Ljava/util/List;ILcoil/request/ImageRequest;Lcoil/size/Size;Lcoil/EventListener;Z)V

    .line 196
    iget-object v1, p0, Lcoil/RealImageLoader$executeMain$result$1;->$request:Lcoil/request/ImageRequest;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcoil/RealImageLoader$executeMain$result$1;->label:I

    invoke-virtual {p1, v1, v3}, Lcoil/intercept/RealInterceptorChain;->proceed(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method
