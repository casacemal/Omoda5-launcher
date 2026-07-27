.class final Lcoil/intercept/EngineInterceptor$transform$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EngineInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/intercept/EngineInterceptor;->transform$coil_base_release(Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/ImageRequest;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$transform$3\n+ 2 Collections.kt\ncoil/util/-Collections\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 5 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,306:1\n32#2,3:307\n36#2:311\n1#3:310\n50#4:312\n28#5:313\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor$transform$3\n*L\n245#1:307,3\n245#1:311\n249#1:312\n249#1:313\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
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
    c = "coil.intercept.EngineInterceptor$transform$3"
    f = "EngineInterceptor.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xf6
    }
    m = "invokeSuspend"
    n = {
        "$this$withContext",
        "$this$foldIndices$iv",
        "i$iv"
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $eventListener:Lcoil/EventListener;

.field final synthetic $options:Lcoil/request/Options;

.field final synthetic $request:Lcoil/request/ImageRequest;

.field final synthetic $result:Lcoil/intercept/EngineInterceptor$ExecuteResult;

.field final synthetic $transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/transform/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcoil/intercept/EngineInterceptor;


# direct methods
.method constructor <init>(Lcoil/intercept/EngineInterceptor;Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/Options;Ljava/util/List;Lcoil/EventListener;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/EngineInterceptor;",
            "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
            "Lcoil/request/Options;",
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;",
            "Lcoil/EventListener;",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/intercept/EngineInterceptor$transform$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->this$0:Lcoil/intercept/EngineInterceptor;

    iput-object p2, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$result:Lcoil/intercept/EngineInterceptor$ExecuteResult;

    iput-object p3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$options:Lcoil/request/Options;

    iput-object p4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$transformations:Ljava/util/List;

    iput-object p5, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$eventListener:Lcoil/EventListener;

    iput-object p6, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$request:Lcoil/request/ImageRequest;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcoil/intercept/EngineInterceptor$transform$3;

    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v2, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$result:Lcoil/intercept/EngineInterceptor$ExecuteResult;

    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$options:Lcoil/request/Options;

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$transformations:Ljava/util/List;

    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$eventListener:Lcoil/EventListener;

    iget-object v6, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$request:Lcoil/request/ImageRequest;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcoil/intercept/EngineInterceptor$transform$3;-><init>(Lcoil/intercept/EngineInterceptor;Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/Options;Ljava/util/List;Lcoil/EventListener;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcoil/intercept/EngineInterceptor$transform$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/coroutines/Continuation;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$transform$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcoil/intercept/EngineInterceptor$transform$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcoil/intercept/EngineInterceptor$transform$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcoil/intercept/EngineInterceptor$transform$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 242
    iget v1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->I$1:I

    iget v3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->I$0:I

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lcoil/request/Options;

    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 243
    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->this$0:Lcoil/intercept/EngineInterceptor;

    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$result:Lcoil/intercept/EngineInterceptor$ExecuteResult;

    invoke-virtual {v3}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$options:Lcoil/request/Options;

    iget-object v5, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$transformations:Ljava/util/List;

    invoke-static {v1, v3, v4, v5}, Lcoil/intercept/EngineInterceptor;->access$convertDrawableToBitmap(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;Lcoil/request/Options;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$eventListener:Lcoil/EventListener;

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$request:Lcoil/request/ImageRequest;

    invoke-interface {v3, v4, v1}, Lcoil/EventListener;->transformStart(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 245
    iget-object v3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$transformations:Ljava/util/List;

    iget-object v4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$options:Lcoil/request/Options;

    .line 308
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    move v9, v6

    move-object v6, p1

    move-object p1, v1

    move v1, v5

    move-object v5, v3

    move v3, v9

    :goto_0
    if-ge v3, v1, :cond_3

    .line 309
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcoil/transform/Transformation;

    .line 246
    invoke-virtual {v4}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object v8

    iput-object v6, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcoil/intercept/EngineInterceptor$transform$3;->L$2:Ljava/lang/Object;

    iput v3, p0, Lcoil/intercept/EngineInterceptor$transform$3;->I$0:I

    iput v1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->I$1:I

    iput v2, p0, Lcoil/intercept/EngineInterceptor$transform$3;->label:I

    invoke-interface {v7, p1, v8, p0}, Lcoil/transform/Transformation;->transform(Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 242
    :cond_2
    :goto_1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 246
    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->ensureActive(Lkotlinx/coroutines/CoroutineScope;)V

    add-int/2addr v3, v2

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$eventListener:Lcoil/EventListener;

    iget-object v1, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$request:Lcoil/request/ImageRequest;

    invoke-interface {v0, v1, p1}, Lcoil/EventListener;->transformEnd(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap;)V

    .line 249
    iget-object v2, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$result:Lcoil/intercept/EngineInterceptor$ExecuteResult;

    iget-object p0, p0, Lcoil/intercept/EngineInterceptor$transform$3;->$request:Lcoil/request/ImageRequest;

    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 313
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 312
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 249
    invoke-static/range {v2 .. v8}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->copy$default(Lcoil/intercept/EngineInterceptor$ExecuteResult;Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;ILjava/lang/Object;)Lcoil/intercept/EngineInterceptor$ExecuteResult;

    move-result-object p0

    return-object p0
.end method
