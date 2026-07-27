.class public final Lcoil/intercept/EngineInterceptor;
.super Ljava/lang/Object;
.source "EngineInterceptor.kt"

# interfaces
.implements Lcoil/intercept/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/intercept/EngineInterceptor$Companion;,
        Lcoil/intercept/EngineInterceptor$ExecuteResult;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEngineInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\ncoil/util/-Utils\n+ 4 Logs.kt\ncoil/util/-Logs\n*L\n1#1,306:1\n1#2:307\n1#2:309\n1#2:311\n184#3:308\n188#3:310\n21#4,4:312\n21#4,4:316\n21#4,4:320\n*S KotlinDebug\n*F\n+ 1 EngineInterceptor.kt\ncoil/intercept/EngineInterceptor\n*L\n120#1:309\n121#1:311\n120#1:308\n121#1:310\n234#1:312,4\n266#1:316,4\n272#1:320,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 42\u00020\u0001:\u000234B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0002\u0010\u0012J.\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@\u00a2\u0006\u0002\u0010\u001dJ6\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@\u00a2\u0006\u0002\u0010#J>\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0082@\u00a2\u0006\u0002\u0010\'J0\u0010(\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0081@\u00a2\u0006\u0004\u0008*\u0010+J&\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u0010\"\u001a\u00020\u001a2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020201H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcoil/intercept/EngineInterceptor;",
        "Lcoil/intercept/Interceptor;",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "systemCallbacks",
        "Lcoil/util/SystemCallbacks;",
        "requestService",
        "Lcoil/request/RequestService;",
        "logger",
        "Lcoil/util/Logger;",
        "<init>",
        "(Lcoil/ImageLoader;Lcoil/util/SystemCallbacks;Lcoil/request/RequestService;Lcoil/util/Logger;)V",
        "memoryCacheService",
        "Lcoil/memory/MemoryCacheService;",
        "intercept",
        "Lcoil/request/ImageResult;",
        "chain",
        "Lcoil/intercept/Interceptor$Chain;",
        "(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "execute",
        "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
        "request",
        "Lcoil/request/ImageRequest;",
        "mappedData",
        "",
        "_options",
        "Lcoil/request/Options;",
        "eventListener",
        "Lcoil/EventListener;",
        "(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetch",
        "Lcoil/fetch/FetchResult;",
        "components",
        "Lcoil/ComponentRegistry;",
        "options",
        "(Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "decode",
        "fetchResult",
        "Lcoil/fetch/SourceResult;",
        "(Lcoil/fetch/SourceResult;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "transform",
        "result",
        "transform$coil_base_release",
        "(Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/ImageRequest;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "convertDrawableToBitmap",
        "Landroid/graphics/Bitmap;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "transformations",
        "",
        "Lcoil/transform/Transformation;",
        "ExecuteResult",
        "Companion",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcoil/intercept/EngineInterceptor$Companion;

.field private static final TAG:Ljava/lang/String; = "EngineInterceptor"


# instance fields
.field private final imageLoader:Lcoil/ImageLoader;

.field private final logger:Lcoil/util/Logger;

.field private final memoryCacheService:Lcoil/memory/MemoryCacheService;

.field private final requestService:Lcoil/request/RequestService;

.field private final systemCallbacks:Lcoil/util/SystemCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/intercept/EngineInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/intercept/EngineInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/intercept/EngineInterceptor;->Companion:Lcoil/intercept/EngineInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/ImageLoader;Lcoil/util/SystemCallbacks;Lcoil/request/RequestService;Lcoil/util/Logger;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcoil/intercept/EngineInterceptor;->imageLoader:Lcoil/ImageLoader;

    .line 44
    iput-object p2, p0, Lcoil/intercept/EngineInterceptor;->systemCallbacks:Lcoil/util/SystemCallbacks;

    .line 45
    iput-object p3, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/request/RequestService;

    .line 46
    iput-object p4, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    .line 49
    new-instance p2, Lcoil/memory/MemoryCacheService;

    invoke-direct {p2, p1, p3, p4}, Lcoil/memory/MemoryCacheService;-><init>(Lcoil/ImageLoader;Lcoil/request/RequestService;Lcoil/util/Logger;)V

    iput-object p2, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    return-void
.end method

.method public static final synthetic access$convertDrawableToBitmap(Lcoil/intercept/EngineInterceptor;Landroid/graphics/drawable/Drawable;Lcoil/request/Options;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcoil/intercept/EngineInterceptor;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;Lcoil/request/Options;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$decode(Lcoil/intercept/EngineInterceptor;Lcoil/fetch/SourceResult;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p7}, Lcoil/intercept/EngineInterceptor;->decode(Lcoil/fetch/SourceResult;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$execute(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lcoil/intercept/EngineInterceptor;->execute(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetch(Lcoil/intercept/EngineInterceptor;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p6}, Lcoil/intercept/EngineInterceptor;->fetch(Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMemoryCacheService$p(Lcoil/intercept/EngineInterceptor;)Lcoil/memory/MemoryCacheService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    return-object p0
.end method

.method public static final synthetic access$getSystemCallbacks$p(Lcoil/intercept/EngineInterceptor;)Lcoil/util/SystemCallbacks;
    .locals 0

    .line 42
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->systemCallbacks:Lcoil/util/SystemCallbacks;

    return-object p0
.end method

.method private final convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;Lcoil/request/Options;Ljava/util/List;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Lcoil/request/Options;",
            "Ljava/util/List<",
            "+",
            "Lcoil/transform/Transformation;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 260
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    const/16 v2, 0x2e

    const-string v3, " to apply transformations: "

    const/4 v4, 0x4

    const-string v5, "EngineInterceptor"

    if-eqz v0, :cond_1

    .line 261
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    invoke-static {v0}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 263
    invoke-static {}, Lcoil/util/-Utils;->getVALID_TRANSFORMATION_CONFIGS()[Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return-object v0

    .line 266
    :cond_0
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_2

    .line 316
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Converting bitmap with config "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 317
    invoke-interface {p0, v5, v4, p3, v1}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_2

    .line 320
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result v0

    if-gt v0, v4, :cond_2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Converting drawable of type "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 321
    invoke-interface {p0, v5, v4, p3, v1}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_2
    :goto_0
    sget-object v6, Lcoil/util/DrawableUtils;->INSTANCE:Lcoil/util/DrawableUtils;

    .line 281
    invoke-virtual {p2}, Lcoil/request/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 282
    invoke-virtual {p2}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object v9

    .line 283
    invoke-virtual {p2}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v10

    .line 284
    invoke-virtual {p2}, Lcoil/request/Options;->getAllowInexactSize()Z

    move-result v11

    move-object v7, p1

    .line 279
    invoke-virtual/range {v6 .. v11}, Lcoil/util/DrawableUtils;->convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final decode(Lcoil/fetch/SourceResult;Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/fetch/SourceResult;",
            "Lcoil/ComponentRegistry;",
            "Lcoil/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcoil/request/Options;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p7, Lcoil/intercept/EngineInterceptor$decode$1;

    if-eqz v0, :cond_0

    move-object v0, p7

    check-cast v0, Lcoil/intercept/EngineInterceptor$decode$1;

    iget v1, v0, Lcoil/intercept/EngineInterceptor$decode$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p7, v0, Lcoil/intercept/EngineInterceptor$decode$1;->label:I

    sub-int/2addr p7, v2

    iput p7, v0, Lcoil/intercept/EngineInterceptor$decode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/intercept/EngineInterceptor$decode$1;

    invoke-direct {v0, p0, p7}, Lcoil/intercept/EngineInterceptor$decode$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p7, v0, Lcoil/intercept/EngineInterceptor$decode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 186
    iget v2, v0, Lcoil/intercept/EngineInterceptor$decode$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcoil/intercept/EngineInterceptor$decode$1;->I$0:I

    iget-object p1, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lcoil/decode/Decoder;

    iget-object p2, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$6:Ljava/lang/Object;

    check-cast p2, Lcoil/EventListener;

    iget-object p3, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$5:Ljava/lang/Object;

    check-cast p3, Lcoil/request/Options;

    iget-object p4, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$4:Ljava/lang/Object;

    iget-object p5, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$3:Ljava/lang/Object;

    check-cast p5, Lcoil/request/ImageRequest;

    iget-object p6, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$2:Ljava/lang/Object;

    check-cast p6, Lcoil/ComponentRegistry;

    iget-object v2, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcoil/fetch/SourceResult;

    iget-object v4, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcoil/intercept/EngineInterceptor;

    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    move v0, p0

    move-object p0, v4

    move-object v4, v5

    move-object v6, p6

    move-object p6, p2

    move-object p2, v6

    move-object v7, p5

    move-object p5, p3

    move-object p3, v7

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p7, 0x0

    .line 197
    :goto_1
    iget-object v2, p0, Lcoil/intercept/EngineInterceptor;->imageLoader:Lcoil/ImageLoader;

    invoke-virtual {p2, p1, p5, v2, p7}, Lcoil/ComponentRegistry;->newDecoder(Lcoil/fetch/SourceResult;Lcoil/request/Options;Lcoil/ImageLoader;I)Lkotlin/Pair;

    move-result-object p7

    if-eqz p7, :cond_7

    .line 199
    invoke-virtual {p7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil/decode/Decoder;

    .line 200
    invoke-virtual {p7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Number;

    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    move-result p7

    add-int/2addr p7, v3

    .line 202
    invoke-interface {p6, p3, v2, p5}, Lcoil/EventListener;->decodeStart(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/request/Options;)V

    .line 203
    iput-object p0, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$5:Ljava/lang/Object;

    iput-object p6, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/intercept/EngineInterceptor$decode$1;->L$7:Ljava/lang/Object;

    iput p7, v0, Lcoil/intercept/EngineInterceptor$decode$1;->I$0:I

    iput v3, v0, Lcoil/intercept/EngineInterceptor$decode$1;->label:I

    invoke-interface {v2, v0}, Lcoil/decode/Decoder;->decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    move-object v6, v0

    move v0, p7

    move-object p7, v4

    move-object v4, v6

    .line 186
    :goto_2
    check-cast p7, Lcoil/decode/DecodeResult;

    .line 204
    invoke-interface {p6, p3, p1, p5, p7}, Lcoil/EventListener;->decodeEnd(Lcoil/request/ImageRequest;Lcoil/decode/Decoder;Lcoil/request/Options;Lcoil/decode/DecodeResult;)V

    if-eqz p7, :cond_6

    .line 213
    new-instance p0, Lcoil/intercept/EngineInterceptor$ExecuteResult;

    .line 214
    invoke-virtual {p7}, Lcoil/decode/DecodeResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 215
    invoke-virtual {p7}, Lcoil/decode/DecodeResult;->isSampled()Z

    move-result p2

    .line 216
    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getDataSource()Lcoil/decode/DataSource;

    move-result-object p3

    .line 217
    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getSource()Lcoil/decode/ImageSource;

    move-result-object p4

    instance-of p5, p4, Lcoil/decode/FileImageSource;

    const/4 p6, 0x0

    if-eqz p5, :cond_4

    check-cast p4, Lcoil/decode/FileImageSource;

    goto :goto_3

    :cond_4
    move-object p4, p6

    :goto_3
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcoil/decode/FileImageSource;->getDiskCacheKey$coil_base_release()Ljava/lang/String;

    move-result-object p6

    .line 213
    :cond_5
    invoke-direct {p0, p1, p2, p3, p6}, Lcoil/intercept/EngineInterceptor$ExecuteResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)V

    return-object p0

    :cond_6
    move p7, v0

    move-object p1, v2

    move-object v0, v4

    goto :goto_1

    .line 198
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to create a decoder that supports: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final execute(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcoil/request/Options;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lcoil/intercept/EngineInterceptor$execute$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcoil/intercept/EngineInterceptor$execute$1;

    iget v3, v2, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcoil/intercept/EngineInterceptor$execute$1;

    invoke-direct {v2, v0, v1}, Lcoil/intercept/EngineInterceptor$execute$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcoil/intercept/EngineInterceptor$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 106
    iget v2, v8, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcoil/EventListener;

    iget-object v4, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lcoil/request/ImageRequest;

    iget-object v5, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_3
    iget-object v0, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcoil/EventListener;

    iget-object v6, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    iget-object v7, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcoil/request/ImageRequest;

    iget-object v13, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcoil/intercept/EngineInterceptor;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 113
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, v0, Lcoil/intercept/EngineInterceptor;->imageLoader:Lcoil/ImageLoader;

    invoke-interface {v1}, Lcoil/ImageLoader;->getComponents()Lcoil/ComponentRegistry;

    move-result-object v1

    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 116
    :try_start_2
    iget-object v1, v0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/request/RequestService;

    iget-object v2, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcoil/request/Options;

    invoke-virtual {v1, v2}, Lcoil/request/RequestService;->updateOptionsOnWorkerThread(Lcoil/request/Options;)Lcoil/request/Options;

    move-result-object v1

    iput-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getFetcherFactory()Lkotlin/Pair;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getDecoderFactory()Lcoil/decode/Decoder$Factory;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 119
    :cond_5
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/ComponentRegistry;

    invoke-virtual {v1}, Lcoil/ComponentRegistry;->newBuilder()Lcoil/ComponentRegistry$Builder;

    move-result-object v1

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getFetcherFactory()Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 308
    invoke-virtual {v1}, Lcoil/ComponentRegistry$Builder;->getFetcherFactories$coil_base_release()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 121
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getDecoderFactory()Lcoil/decode/Decoder$Factory;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 310
    invoke-virtual {v1}, Lcoil/ComponentRegistry$Builder;->getDecoderFactories$coil_base_release()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    :cond_7
    invoke-virtual {v1}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object v1

    .line 119
    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 126
    :cond_8
    iget-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcoil/ComponentRegistry;

    iget-object v1, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lcoil/request/Options;

    iput-object v0, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p1

    iput-object v7, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    move-object/from16 v4, p4

    iput-object v4, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    iput-object v13, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    iput-object v14, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    iput-object v15, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    iput-object v15, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    iput v3, v8, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcoil/intercept/EngineInterceptor;->fetch(Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v9, :cond_9

    return-object v9

    :cond_9
    move-object/from16 v7, p1

    move-object/from16 v21, p2

    move-object/from16 v5, p4

    move-object v4, v13

    move-object/from16 v19, v14

    move-object v2, v15

    move-object v13, v0

    move-object v0, v2

    .line 106
    :goto_1
    :try_start_3
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 129
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcoil/fetch/FetchResult;

    .line 130
    instance-of v1, v0, Lcoil/fetch/SourceResult;

    if-eqz v1, :cond_b

    invoke-virtual {v7}, Lcoil/request/ImageRequest;->getDecoderDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;

    const/16 v24, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v13

    move-object/from16 v18, v2

    move-object/from16 v20, v7

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v24}, Lcoil/intercept/EngineInterceptor$execute$executeResult$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/request/ImageRequest;Ljava/lang/Object;Lkotlin/jvm/internal/Ref$ObjectRef;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v13, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v5, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v4, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    iput-object v2, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    iput v11, v8, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    invoke-static {v0, v1, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_a

    return-object v9

    :cond_a
    move-object v0, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v13

    :goto_2
    check-cast v1, Lcoil/intercept/EngineInterceptor$ExecuteResult;

    move-object v13, v5

    move-object/from16 v25, v1

    move-object v1, v0

    move-object/from16 v0, v25

    goto :goto_3

    .line 133
    :cond_b
    instance-of v0, v0, Lcoil/fetch/DrawableResult;

    if-eqz v0, :cond_11

    .line 134
    new-instance v0, Lcoil/intercept/EngineInterceptor$ExecuteResult;

    .line 135
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/fetch/DrawableResult;

    invoke-virtual {v1}, Lcoil/fetch/DrawableResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 136
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcoil/fetch/DrawableResult;

    invoke-virtual {v3}, Lcoil/fetch/DrawableResult;->isSampled()Z

    move-result v3

    .line 137
    iget-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcoil/fetch/DrawableResult;

    invoke-virtual {v6}, Lcoil/fetch/DrawableResult;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v6

    .line 134
    invoke-direct {v0, v1, v3, v6, v12}, Lcoil/intercept/EngineInterceptor$ExecuteResult;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/DataSource;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v4

    move-object v3, v5

    move-object v4, v7

    .line 144
    :goto_3
    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v5, v2, Lcoil/fetch/SourceResult;

    if-eqz v5, :cond_c

    check-cast v2, Lcoil/fetch/SourceResult;

    goto :goto_4

    :cond_c
    move-object v2, v12

    :goto_4
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcoil/fetch/SourceResult;->getSource()Lcoil/decode/ImageSource;

    move-result-object v2

    if-eqz v2, :cond_d

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    :cond_d
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcoil/request/Options;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$0:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$1:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$2:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$3:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$4:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$5:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$6:Ljava/lang/Object;

    iput-object v12, v8, Lcoil/intercept/EngineInterceptor$execute$1;->L$7:Ljava/lang/Object;

    iput v10, v8, Lcoil/intercept/EngineInterceptor$execute$1;->label:I

    move-object/from16 p0, v13

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move-object/from16 p4, v3

    move-object/from16 p5, v8

    invoke-virtual/range {p0 .. p5}, Lcoil/intercept/EngineInterceptor;->transform$coil_base_release(Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/ImageRequest;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_e

    return-object v9

    .line 106
    :cond_e
    :goto_5
    check-cast v1, Lcoil/intercept/EngineInterceptor$ExecuteResult;

    .line 149
    invoke-virtual {v1}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_f

    move-object v12, v0

    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    :cond_f
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_10
    return-object v1

    .line 129
    :cond_11
    :try_start_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    move-object v2, v15

    .line 144
    :goto_6
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v2, v1, Lcoil/fetch/SourceResult;

    if-eqz v2, :cond_12

    move-object v12, v1

    check-cast v12, Lcoil/fetch/SourceResult;

    :cond_12
    if-eqz v12, :cond_13

    invoke-virtual {v12}, Lcoil/fetch/SourceResult;->getSource()Lcoil/decode/ImageSource;

    move-result-object v1

    if-eqz v1, :cond_13

    check-cast v1, Ljava/io/Closeable;

    invoke-static {v1}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_13
    throw v0
.end method

.method private final fetch(Lcoil/ComponentRegistry;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/ComponentRegistry;",
            "Lcoil/request/ImageRequest;",
            "Ljava/lang/Object;",
            "Lcoil/request/Options;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lcoil/intercept/EngineInterceptor$fetch$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcoil/intercept/EngineInterceptor$fetch$1;

    iget v1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/intercept/EngineInterceptor$fetch$1;

    invoke-direct {v0, p0, p6}, Lcoil/intercept/EngineInterceptor$fetch$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p6, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 153
    iget v2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->I$0:I

    iget-object p1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lcoil/fetch/Fetcher;

    iget-object p2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$5:Ljava/lang/Object;

    check-cast p2, Lcoil/EventListener;

    iget-object p3, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$4:Ljava/lang/Object;

    check-cast p3, Lcoil/request/Options;

    iget-object p4, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$3:Ljava/lang/Object;

    iget-object p5, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$2:Ljava/lang/Object;

    check-cast p5, Lcoil/request/ImageRequest;

    iget-object v2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcoil/ComponentRegistry;

    iget-object v4, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcoil/intercept/EngineInterceptor;

    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    move v0, p0

    move-object p0, v4

    move-object v4, v5

    move-object v6, p5

    move-object p5, p2

    move-object p2, v6

    move-object v7, p4

    move-object p4, p3

    move-object p3, v7

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p6, 0x0

    .line 163
    :goto_1
    iget-object v2, p0, Lcoil/intercept/EngineInterceptor;->imageLoader:Lcoil/ImageLoader;

    invoke-virtual {p1, p3, p4, v2, p6}, Lcoil/ComponentRegistry;->newFetcher(Ljava/lang/Object;Lcoil/request/Options;Lcoil/ImageLoader;I)Lkotlin/Pair;

    move-result-object p6

    if-eqz p6, :cond_7

    .line 165
    invoke-virtual {p6}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcoil/fetch/Fetcher;

    .line 166
    invoke-virtual {p6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result p6

    add-int/2addr p6, v3

    .line 168
    invoke-interface {p5, p2, v2, p4}, Lcoil/EventListener;->fetchStart(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/request/Options;)V

    .line 169
    iput-object p0, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$3:Ljava/lang/Object;

    iput-object p4, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$4:Ljava/lang/Object;

    iput-object p5, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->L$6:Ljava/lang/Object;

    iput p6, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->I$0:I

    iput v3, v0, Lcoil/intercept/EngineInterceptor$fetch$1;->label:I

    invoke-interface {v2, v0}, Lcoil/fetch/Fetcher;->fetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    move-object v6, v0

    move v0, p6

    move-object p6, v4

    move-object v4, v6

    .line 153
    :goto_2
    check-cast p6, Lcoil/fetch/FetchResult;

    .line 171
    :try_start_0
    invoke-interface {p5, p2, p1, p4, p6}, Lcoil/EventListener;->fetchEnd(Lcoil/request/ImageRequest;Lcoil/fetch/Fetcher;Lcoil/request/Options;Lcoil/fetch/FetchResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p6, :cond_4

    return-object p6

    :cond_4
    move p6, v0

    move-object p1, v2

    move-object v0, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 174
    instance-of p1, p6, Lcoil/fetch/SourceResult;

    if-eqz p1, :cond_5

    check-cast p6, Lcoil/fetch/SourceResult;

    goto :goto_3

    :cond_5
    const/4 p6, 0x0

    :goto_3
    if-eqz p6, :cond_6

    invoke-virtual {p6}, Lcoil/fetch/SourceResult;->getSource()Lcoil/decode/ImageSource;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 175
    :cond_6
    throw p0

    .line 164
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to create a fetcher that supports: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public intercept(Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/Interceptor$Chain;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcoil/intercept/EngineInterceptor$intercept$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/intercept/EngineInterceptor$intercept$1;

    iget v1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/intercept/EngineInterceptor$intercept$1;

    invoke-direct {v0, p0, p2}, Lcoil/intercept/EngineInterceptor$intercept$1;-><init>(Lcoil/intercept/EngineInterceptor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget v2, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lcoil/intercept/Interceptor$Chain;

    iget-object p0, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcoil/intercept/EngineInterceptor;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    :try_start_1
    invoke-interface {p1}, Lcoil/intercept/Interceptor$Chain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object p2

    .line 55
    invoke-interface {p1}, Lcoil/intercept/Interceptor$Chain;->getSize()Lcoil/size/Size;

    move-result-object v2

    .line 56
    invoke-static {p1}, Lcoil/util/-Utils;->getEventListener(Lcoil/intercept/Interceptor$Chain;)Lcoil/EventListener;

    move-result-object v9

    .line 57
    iget-object v4, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/request/RequestService;

    invoke-virtual {v4, v6, v2}, Lcoil/request/RequestService;->options(Lcoil/request/ImageRequest;Lcoil/size/Size;)Lcoil/request/Options;

    move-result-object v8

    .line 58
    invoke-virtual {v8}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v4

    .line 61
    invoke-interface {v9, v6, p2}, Lcoil/EventListener;->mapStart(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 62
    iget-object v5, p0, Lcoil/intercept/EngineInterceptor;->imageLoader:Lcoil/ImageLoader;

    invoke-interface {v5}, Lcoil/ImageLoader;->getComponents()Lcoil/ComponentRegistry;

    move-result-object v5

    invoke-virtual {v5, p2, v8}, Lcoil/ComponentRegistry;->map(Ljava/lang/Object;Lcoil/request/Options;)Ljava/lang/Object;

    move-result-object v7

    .line 63
    invoke-interface {v9, v6, v7}, Lcoil/EventListener;->mapEnd(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 66
    iget-object p2, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    invoke-virtual {p2, v6, v7, v8, v9}, Lcoil/memory/MemoryCacheService;->newCacheKey(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;)Lcoil/memory/MemoryCache$Key;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 67
    iget-object p2, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    invoke-virtual {p2, v6, v10, v2, v4}, Lcoil/memory/MemoryCacheService;->getCacheValue(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/size/Size;Lcoil/size/Scale;)Lcoil/memory/MemoryCache$Value;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 71
    iget-object v0, p0, Lcoil/intercept/EngineInterceptor;->memoryCacheService:Lcoil/memory/MemoryCacheService;

    invoke-virtual {v0, p1, v6, v10, p2}, Lcoil/memory/MemoryCacheService;->newResult(Lcoil/intercept/Interceptor$Chain;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;)Lcoil/request/SuccessResult;

    move-result-object p0

    return-object p0

    .line 75
    :cond_4
    invoke-virtual {v6}, Lcoil/request/ImageRequest;->getFetcherDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcoil/intercept/EngineInterceptor$intercept$2;

    const/4 v12, 0x0

    move-object v4, v2

    move-object v5, p0

    move-object v11, p1

    invoke-direct/range {v4 .. v12}, Lcoil/intercept/EngineInterceptor$intercept$2;-><init>(Lcoil/intercept/EngineInterceptor;Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;Lcoil/memory/MemoryCache$Key;Lcoil/intercept/Interceptor$Chain;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcoil/intercept/EngineInterceptor$intercept$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 97
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    .line 100
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->requestService:Lcoil/request/RequestService;

    invoke-interface {p1}, Lcoil/intercept/Interceptor$Chain;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcoil/request/RequestService;->errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;

    move-result-object p0

    return-object p0

    .line 98
    :cond_6
    throw p2
.end method

.method public final transform$coil_base_release(Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/ImageRequest;Lcoil/request/Options;Lcoil/EventListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
            "Lcoil/request/ImageRequest;",
            "Lcoil/request/Options;",
            "Lcoil/EventListener;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object v4

    .line 230
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getAllowConversionToBitmap()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    iget-object p0, p0, Lcoil/intercept/EngineInterceptor;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_1

    .line 312
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result p2

    const/4 p3, 0x4

    if-gt p2, p3, :cond_1

    .line 235
    invoke-virtual {p1}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    .line 236
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "allowConversionToBitmap=false, skipping transformations for type "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p4, 0x2e

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    .line 313
    const-string p5, "EngineInterceptor"

    invoke-interface {p0, p5, p3, p2, p4}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object p1

    .line 242
    :cond_2
    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getTransformationDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcoil/intercept/EngineInterceptor$transform$3;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcoil/intercept/EngineInterceptor$transform$3;-><init>(Lcoil/intercept/EngineInterceptor;Lcoil/intercept/EngineInterceptor$ExecuteResult;Lcoil/request/Options;Ljava/util/List;Lcoil/EventListener;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
