.class public final Lcoil/RealImageLoader;
.super Ljava/lang/Object;
.source "RealImageLoader.kt"

# interfaces
.implements Lcoil/ImageLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/RealImageLoader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRealImageLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealImageLoader.kt\ncoil/RealImageLoader\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 ComponentRegistry.kt\ncoil/ComponentRegistry$Builder\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Utils.kt\ncoil/util/-Utils\n+ 6 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 7 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 8 Logs.kt\ncoil/util/-Logs\n*L\n1#1,301:1\n279#1,15:331\n279#1,15:350\n44#2,4:302\n138#3:306\n138#3:307\n138#3:308\n138#3:309\n138#3:310\n138#3:311\n146#3:312\n146#3:313\n154#3:314\n154#3:315\n154#3:316\n154#3:317\n154#3:318\n154#3:319\n154#3:320\n154#3:321\n1#4:322\n1#4:324\n173#5:323\n50#6:325\n28#7:326\n21#8,4:327\n21#8,4:346\n21#8,4:365\n*S KotlinDebug\n*F\n+ 1 RealImageLoader.kt\ncoil/RealImageLoader\n*L\n246#1:331,15\n260#1:350,15\n78#1:302,4\n85#1:306\n86#1:307\n87#1:308\n88#1:309\n89#1:310\n90#1:311\n92#1:312\n93#1:313\n95#1:314\n96#1:315\n97#1:316\n98#1:317\n99#1:318\n100#1:319\n101#1:320\n102#1:321\n175#1:324\n175#1:323\n176#1:325\n176#1:326\n243#1:327,4\n257#1:346,4\n266#1:365,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \\2\u00020\u0001:\u0001\\Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@H\u0016J\u0016\u0010A\u001a\u00020B2\u0006\u0010?\u001a\u00020@H\u0096@\u00a2\u0006\u0002\u0010CJ\u001e\u0010D\u001a\u00020B2\u0006\u0010E\u001a\u00020@2\u0006\u0010F\u001a\u00020GH\u0083@\u00a2\u0006\u0002\u0010HJ\u0015\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020GH\u0000\u00a2\u0006\u0002\u0008LJ\u0008\u0010;\u001a\u00020JH\u0016J\u0008\u0010M\u001a\u00020NH\u0016J\"\u0010O\u001a\u00020J2\u0006\u0010P\u001a\u00020Q2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020UH\u0002J\"\u0010V\u001a\u00020J2\u0006\u0010P\u001a\u00020W2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020UH\u0002J\u0018\u0010X\u001a\u00020J2\u0006\u0010?\u001a\u00020@2\u0006\u0010T\u001a\u00020UH\u0002J1\u0010Y\u001a\u00020J2\u0006\u0010P\u001a\u00020B2\u0008\u0010R\u001a\u0004\u0018\u00010S2\u0006\u0010T\u001a\u00020U2\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020J0[H\u0082\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0019\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010-\u001a\u0004\u0018\u00010\u00088VX\u0096\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u00080\u00101*\u0004\u0008.\u0010/R\u001d\u00102\u001a\u0004\u0018\u00010\n8VX\u0096\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u00084\u00105*\u0004\u00083\u0010/R\u0014\u00106\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010\"R\u0014\u00108\u001a\u0008\u0012\u0004\u0012\u00020:09X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006]"
    }
    d2 = {
        "Lcoil/RealImageLoader;",
        "Lcoil/ImageLoader;",
        "context",
        "Landroid/content/Context;",
        "defaults",
        "Lcoil/request/DefaultRequestOptions;",
        "memoryCacheLazy",
        "Lkotlin/Lazy;",
        "Lcoil/memory/MemoryCache;",
        "diskCacheLazy",
        "Lcoil/disk/DiskCache;",
        "callFactoryLazy",
        "Lokhttp3/Call$Factory;",
        "eventListenerFactory",
        "Lcoil/EventListener$Factory;",
        "componentRegistry",
        "Lcoil/ComponentRegistry;",
        "options",
        "Lcoil/util/ImageLoaderOptions;",
        "logger",
        "Lcoil/util/Logger;",
        "<init>",
        "(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getDefaults",
        "()Lcoil/request/DefaultRequestOptions;",
        "getMemoryCacheLazy",
        "()Lkotlin/Lazy;",
        "getDiskCacheLazy",
        "getCallFactoryLazy",
        "getEventListenerFactory",
        "()Lcoil/EventListener$Factory;",
        "getComponentRegistry",
        "()Lcoil/ComponentRegistry;",
        "getOptions",
        "()Lcoil/util/ImageLoaderOptions;",
        "getLogger",
        "()Lcoil/util/Logger;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "systemCallbacks",
        "Lcoil/util/SystemCallbacks;",
        "requestService",
        "Lcoil/request/RequestService;",
        "memoryCache",
        "getMemoryCache$delegate",
        "(Lcoil/RealImageLoader;)Ljava/lang/Object;",
        "getMemoryCache",
        "()Lcoil/memory/MemoryCache;",
        "diskCache",
        "getDiskCache$delegate",
        "getDiskCache",
        "()Lcoil/disk/DiskCache;",
        "components",
        "getComponents",
        "interceptors",
        "",
        "Lcoil/intercept/Interceptor;",
        "shutdown",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "enqueue",
        "Lcoil/request/Disposable;",
        "request",
        "Lcoil/request/ImageRequest;",
        "execute",
        "Lcoil/request/ImageResult;",
        "(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeMain",
        "initialRequest",
        "type",
        "",
        "(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onTrimMemory",
        "",
        "level",
        "onTrimMemory$coil_base_release",
        "newBuilder",
        "Lcoil/ImageLoader$Builder;",
        "onSuccess",
        "result",
        "Lcoil/request/SuccessResult;",
        "target",
        "Lcoil/target/Target;",
        "eventListener",
        "Lcoil/EventListener;",
        "onError",
        "Lcoil/request/ErrorResult;",
        "onCancel",
        "transition",
        "setDrawable",
        "Lkotlin/Function0;",
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
.field public static final Companion:Lcoil/RealImageLoader$Companion;

.field private static final REQUEST_TYPE_ENQUEUE:I = 0x0

.field private static final REQUEST_TYPE_EXECUTE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RealImageLoader"


# instance fields
.field private final callFactoryLazy:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final componentRegistry:Lcoil/ComponentRegistry;

.field private final components:Lcoil/ComponentRegistry;

.field private final context:Landroid/content/Context;

.field private final defaults:Lcoil/request/DefaultRequestOptions;

.field private final diskCacheLazy:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcoil/disk/DiskCache;",
            ">;"
        }
    .end annotation
.end field

.field private final eventListenerFactory:Lcoil/EventListener$Factory;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcoil/intercept/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcoil/util/Logger;

.field private final memoryCacheLazy:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lcoil/util/ImageLoaderOptions;

.field private final requestService:Lcoil/request/RequestService;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final systemCallbacks:Lcoil/util/SystemCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/RealImageLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/RealImageLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/RealImageLoader;->Companion:Lcoil/RealImageLoader$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcoil/request/DefaultRequestOptions;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;Lcoil/EventListener$Factory;Lcoil/ComponentRegistry;Lcoil/util/ImageLoaderOptions;Lcoil/util/Logger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcoil/request/DefaultRequestOptions;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil/memory/MemoryCache;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil/disk/DiskCache;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;",
            "Lcoil/EventListener$Factory;",
            "Lcoil/ComponentRegistry;",
            "Lcoil/util/ImageLoaderOptions;",
            "Lcoil/util/Logger;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcoil/RealImageLoader;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcoil/RealImageLoader;->defaults:Lcoil/request/DefaultRequestOptions;

    .line 68
    iput-object p3, p0, Lcoil/RealImageLoader;->memoryCacheLazy:Lkotlin/Lazy;

    .line 69
    iput-object p4, p0, Lcoil/RealImageLoader;->diskCacheLazy:Lkotlin/Lazy;

    .line 70
    iput-object p5, p0, Lcoil/RealImageLoader;->callFactoryLazy:Lkotlin/Lazy;

    .line 71
    iput-object p6, p0, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    .line 72
    iput-object p7, p0, Lcoil/RealImageLoader;->componentRegistry:Lcoil/ComponentRegistry;

    .line 73
    iput-object p8, p0, Lcoil/RealImageLoader;->options:Lcoil/util/ImageLoaderOptions;

    .line 74
    iput-object p9, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 77
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    invoke-virtual {p2}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    .line 302
    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p3, Lcoil/RealImageLoader$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p3, p2, p0}, Lcoil/RealImageLoader$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcoil/RealImageLoader;)V

    check-cast p3, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 305
    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 77
    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 79
    new-instance p1, Lcoil/util/SystemCallbacks;

    invoke-direct {p1, p0}, Lcoil/util/SystemCallbacks;-><init>(Lcoil/RealImageLoader;)V

    iput-object p1, p0, Lcoil/RealImageLoader;->systemCallbacks:Lcoil/util/SystemCallbacks;

    .line 80
    new-instance p2, Lcoil/request/RequestService;

    move-object p3, p0

    check-cast p3, Lcoil/ImageLoader;

    invoke-direct {p2, p3, p1, p9}, Lcoil/request/RequestService;-><init>(Lcoil/ImageLoader;Lcoil/util/SystemCallbacks;Lcoil/util/Logger;)V

    iput-object p2, p0, Lcoil/RealImageLoader;->requestService:Lcoil/request/RequestService;

    .line 83
    invoke-virtual {p7}, Lcoil/ComponentRegistry;->newBuilder()Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 85
    new-instance p7, Lcoil/map/HttpUrlMapper;

    invoke-direct {p7}, Lcoil/map/HttpUrlMapper;-><init>()V

    check-cast p7, Lcoil/map/Mapper;

    .line 306
    const-class v0, Lokhttp3/HttpUrl;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 86
    new-instance p7, Lcoil/map/StringMapper;

    invoke-direct {p7}, Lcoil/map/StringMapper;-><init>()V

    check-cast p7, Lcoil/map/Mapper;

    .line 307
    const-class v0, Ljava/lang/String;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 87
    new-instance p7, Lcoil/map/FileUriMapper;

    invoke-direct {p7}, Lcoil/map/FileUriMapper;-><init>()V

    check-cast p7, Lcoil/map/Mapper;

    .line 308
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 88
    new-instance p7, Lcoil/map/ResourceUriMapper;

    invoke-direct {p7}, Lcoil/map/ResourceUriMapper;-><init>()V

    check-cast p7, Lcoil/map/Mapper;

    .line 309
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 89
    new-instance p7, Lcoil/map/ResourceIntMapper;

    invoke-direct {p7}, Lcoil/map/ResourceIntMapper;-><init>()V

    check-cast p7, Lcoil/map/Mapper;

    .line 310
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 90
    new-instance p7, Lcoil/map/ByteArrayMapper;

    invoke-direct {p7}, Lcoil/map/ByteArrayMapper;-><init>()V

    check-cast p7, Lcoil/map/Mapper;

    .line 311
    const-class v0, [B

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/map/Mapper;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 92
    new-instance p7, Lcoil/key/UriKeyer;

    invoke-direct {p7}, Lcoil/key/UriKeyer;-><init>()V

    check-cast p7, Lcoil/key/Keyer;

    .line 312
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/key/Keyer;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 93
    new-instance p7, Lcoil/key/FileKeyer;

    invoke-virtual {p8}, Lcoil/util/ImageLoaderOptions;->getAddLastModifiedToFileCacheKey()Z

    move-result v0

    invoke-direct {p7, v0}, Lcoil/key/FileKeyer;-><init>(Z)V

    check-cast p7, Lcoil/key/Keyer;

    .line 313
    const-class v0, Ljava/io/File;

    invoke-virtual {p6, p7, v0}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/key/Keyer;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p6

    .line 95
    new-instance p7, Lcoil/fetch/HttpUriFetcher$Factory;

    invoke-virtual {p8}, Lcoil/util/ImageLoaderOptions;->getRespectCacheHeaders()Z

    move-result v0

    invoke-direct {p7, p5, p4, v0}, Lcoil/fetch/HttpUriFetcher$Factory;-><init>(Lkotlin/Lazy;Lkotlin/Lazy;Z)V

    check-cast p7, Lcoil/fetch/Fetcher$Factory;

    .line 314
    const-class p4, Landroid/net/Uri;

    invoke-virtual {p6, p7, p4}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 96
    new-instance p5, Lcoil/fetch/FileFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/FileFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 315
    const-class p6, Ljava/io/File;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 97
    new-instance p5, Lcoil/fetch/AssetUriFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/AssetUriFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 316
    const-class p6, Landroid/net/Uri;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 98
    new-instance p5, Lcoil/fetch/ContentUriFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/ContentUriFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 317
    const-class p6, Landroid/net/Uri;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 99
    new-instance p5, Lcoil/fetch/ResourceUriFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/ResourceUriFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 318
    const-class p6, Landroid/net/Uri;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 100
    new-instance p5, Lcoil/fetch/DrawableFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/DrawableFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 319
    const-class p6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 101
    new-instance p5, Lcoil/fetch/BitmapFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/BitmapFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 320
    const-class p6, Landroid/graphics/Bitmap;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 102
    new-instance p5, Lcoil/fetch/ByteBufferFetcher$Factory;

    invoke-direct {p5}, Lcoil/fetch/ByteBufferFetcher$Factory;-><init>()V

    check-cast p5, Lcoil/fetch/Fetcher$Factory;

    .line 321
    const-class p6, Ljava/nio/ByteBuffer;

    invoke-virtual {p4, p5, p6}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/fetch/Fetcher$Factory;Ljava/lang/Class;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 104
    new-instance p5, Lcoil/decode/BitmapFactoryDecoder$Factory;

    invoke-virtual {p8}, Lcoil/util/ImageLoaderOptions;->getBitmapFactoryMaxParallelism()I

    move-result p6

    invoke-virtual {p8}, Lcoil/util/ImageLoaderOptions;->getBitmapFactoryExifOrientationPolicy()Lcoil/decode/ExifOrientationPolicy;

    move-result-object p7

    invoke-direct {p5, p6, p7}, Lcoil/decode/BitmapFactoryDecoder$Factory;-><init>(ILcoil/decode/ExifOrientationPolicy;)V

    check-cast p5, Lcoil/decode/Decoder$Factory;

    invoke-virtual {p4, p5}, Lcoil/ComponentRegistry$Builder;->add(Lcoil/decode/Decoder$Factory;)Lcoil/ComponentRegistry$Builder;

    move-result-object p4

    .line 105
    invoke-virtual {p4}, Lcoil/ComponentRegistry$Builder;->build()Lcoil/ComponentRegistry;

    move-result-object p4

    iput-object p4, p0, Lcoil/RealImageLoader;->components:Lcoil/ComponentRegistry;

    .line 106
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getComponents()Lcoil/ComponentRegistry;

    move-result-object p4

    invoke-virtual {p4}, Lcoil/ComponentRegistry;->getInterceptors()Ljava/util/List;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    .line 107
    new-instance p5, Lcoil/intercept/EngineInterceptor;

    invoke-direct {p5, p3, p1, p2, p9}, Lcoil/intercept/EngineInterceptor;-><init>(Lcoil/ImageLoader;Lcoil/util/SystemCallbacks;Lcoil/request/RequestService;Lcoil/util/Logger;)V

    .line 106
    invoke-static {p4, p5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcoil/RealImageLoader;->interceptors:Ljava/util/List;

    .line 108
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcoil/RealImageLoader;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$executeMain(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcoil/RealImageLoader;->executeMain(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInterceptors$p(Lcoil/RealImageLoader;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcoil/RealImageLoader;->interceptors:Ljava/util/List;

    return-object p0
.end method

.method private final executeMain(Lcoil/request/ImageRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcoil/RealImageLoader$executeMain$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcoil/RealImageLoader$executeMain$1;

    iget v4, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcoil/RealImageLoader$executeMain$1;

    invoke-direct {v3, v1, v2}, Lcoil/RealImageLoader$executeMain$1;-><init>(Lcoil/RealImageLoader;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 148
    iget v5, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcoil/EventListener;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcoil/request/ImageRequest;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil/request/RequestDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcoil/RealImageLoader;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object v1, v3

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v10, v1

    move-object v1, v3

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcoil/EventListener;

    iget-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcoil/request/ImageRequest;

    iget-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcoil/request/RequestDelegate;

    iget-object v8, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcoil/RealImageLoader;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v16, v0

    move-object v10, v1

    move-object v1, v8

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v10, v1

    move-object v4, v5

    move-object v5, v7

    move-object v1, v8

    goto/16 :goto_8

    :cond_3
    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcoil/EventListener;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcoil/request/ImageRequest;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcoil/request/RequestDelegate;

    iget-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcoil/RealImageLoader;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v10

    move-object v10, v1

    move-object/from16 v1, v18

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v4, v5

    move-object v5, v8

    move-object/from16 v18, v10

    move-object v10, v1

    move-object/from16 v1, v18

    goto/16 :goto_8

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 151
    iget-object v2, v1, Lcoil/RealImageLoader;->requestService:Lcoil/request/RequestService;

    invoke-interface {v3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcoil/request/RequestService;->requestDelegate(Lcoil/request/ImageRequest;Lkotlinx/coroutines/Job;)Lcoil/request/RequestDelegate;

    move-result-object v5

    .line 152
    invoke-interface {v5}, Lcoil/request/RequestDelegate;->assertActive()V

    .line 155
    invoke-static {v0, v9, v8, v9}, Lcoil/request/ImageRequest;->newBuilder$default(Lcoil/request/ImageRequest;Landroid/content/Context;ILjava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcoil/RealImageLoader;->getDefaults()Lcoil/request/DefaultRequestOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcoil/request/ImageRequest$Builder;->defaults(Lcoil/request/DefaultRequestOptions;)Lcoil/request/ImageRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object v2

    .line 158
    iget-object v0, v1, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    invoke-interface {v0, v2}, Lcoil/EventListener$Factory;->create(Lcoil/request/ImageRequest;)Lcoil/EventListener;

    move-result-object v10

    .line 162
    :try_start_3
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v0

    sget-object v11, Lcoil/request/NullRequestData;->INSTANCE:Lcoil/request/NullRequestData;

    if-eq v0, v11, :cond_10

    .line 167
    invoke-interface {v5}, Lcoil/request/RequestDelegate;->start()V

    if-nez p2, :cond_6

    .line 171
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput v8, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-static {v0, v3}, Lcoil/util/-Lifecycles;->awaitStarted(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    return-object v4

    :cond_5
    move-object v8, v5

    move-object v5, v2

    :goto_1
    move-object v2, v5

    move-object v5, v8

    .line 175
    :cond_6
    invoke-virtual {v1}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/MemoryCache;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getPlaceholderMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 323
    invoke-interface {v0, v8}, Lcoil/memory/MemoryCache;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;

    move-result-object v0

    goto :goto_2

    :cond_7
    move-object v0, v9

    :goto_2
    if-eqz v0, :cond_8

    .line 175
    invoke-virtual {v0}, Lcoil/memory/MemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_8
    move-object v0, v9

    :goto_3
    if-eqz v0, :cond_9

    .line 176
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 325
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 326
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 176
    check-cast v11, Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 177
    :goto_4
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-interface {v8, v11}, Lcoil/target/Target;->onStart(Landroid/graphics/drawable/Drawable;)V

    .line 178
    :cond_a
    invoke-interface {v10, v2}, Lcoil/EventListener;->onStart(Lcoil/request/ImageRequest;)V

    .line 179
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-interface {v8, v2}, Lcoil/request/ImageRequest$Listener;->onStart(Lcoil/request/ImageRequest;)V

    .line 182
    :cond_b
    invoke-interface {v10, v2}, Lcoil/EventListener;->resolveSizeStart(Lcoil/request/ImageRequest;)V

    .line 183
    invoke-virtual {v2}, Lcoil/request/ImageRequest;->getSizeResolver()Lcoil/size/SizeResolver;

    move-result-object v8

    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v0, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput v7, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-interface {v8, v3}, Lcoil/size/SizeResolver;->size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-ne v7, v4, :cond_c

    return-object v4

    :cond_c
    move-object/from16 v16, v0

    move-object/from16 v18, v5

    move-object v5, v2

    move-object v2, v7

    move-object/from16 v7, v18

    .line 148
    :goto_5
    :try_start_4
    move-object v14, v2

    check-cast v14, Lcoil/size/Size;

    .line 184
    invoke-interface {v10, v5, v14}, Lcoil/EventListener;->resolveSizeEnd(Lcoil/request/ImageRequest;Lcoil/size/Size;)V

    .line 187
    invoke-virtual {v5}, Lcoil/request/ImageRequest;->getInterceptorDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcoil/RealImageLoader$executeMain$result$1;

    const/16 v17, 0x0

    move-object v11, v2

    move-object v12, v5

    move-object v13, v1

    move-object v15, v10

    invoke-direct/range {v11 .. v17}, Lcoil/RealImageLoader$executeMain$result$1;-><init>(Lcoil/request/ImageRequest;Lcoil/RealImageLoader;Lcoil/size/Size;Lcoil/EventListener;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object v1, v3, Lcoil/RealImageLoader$executeMain$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcoil/RealImageLoader$executeMain$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcoil/RealImageLoader$executeMain$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lcoil/RealImageLoader$executeMain$1;->L$3:Ljava/lang/Object;

    iput-object v9, v3, Lcoil/RealImageLoader$executeMain$1;->L$4:Ljava/lang/Object;

    iput v6, v3, Lcoil/RealImageLoader$executeMain$1;->label:I

    invoke-static {v0, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v2, v4, :cond_d

    return-object v4

    :cond_d
    move-object v4, v5

    move-object v5, v7

    .line 148
    :goto_6
    :try_start_5
    check-cast v2, Lcoil/request/ImageResult;

    .line 201
    instance-of v0, v2, Lcoil/request/SuccessResult;

    if-eqz v0, :cond_e

    move-object v0, v2

    check-cast v0, Lcoil/request/SuccessResult;

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v3

    invoke-direct {v1, v0, v3, v10}, Lcoil/RealImageLoader;->onSuccess(Lcoil/request/SuccessResult;Lcoil/target/Target;Lcoil/EventListener;)V

    goto :goto_7

    .line 202
    :cond_e
    instance-of v0, v2, Lcoil/request/ErrorResult;

    if-eqz v0, :cond_f

    move-object v0, v2

    check-cast v0, Lcoil/request/ErrorResult;

    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v3

    invoke-direct {v1, v0, v3, v10}, Lcoil/RealImageLoader;->onError(Lcoil/request/ErrorResult;Lcoil/target/Target;Lcoil/EventListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 216
    :goto_7
    invoke-interface {v5}, Lcoil/request/RequestDelegate;->complete()V

    return-object v2

    .line 200
    :cond_f
    :try_start_6
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v4, v5

    move-object v5, v7

    goto :goto_8

    .line 163
    :cond_10
    :try_start_7
    new-instance v0, Lcoil/request/NullRequestDataException;

    invoke-direct {v0}, Lcoil/request/NullRequestDataException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v2

    .line 206
    :goto_8
    :try_start_8
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_11

    .line 211
    iget-object v2, v1, Lcoil/RealImageLoader;->requestService:Lcoil/request/RequestService;

    invoke-virtual {v2, v4, v0}, Lcoil/request/RequestService;->errorResult(Lcoil/request/ImageRequest;Ljava/lang/Throwable;)Lcoil/request/ErrorResult;

    move-result-object v0

    .line 212
    invoke-virtual {v4}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v2

    invoke-direct {v1, v0, v2, v10}, Lcoil/RealImageLoader;->onError(Lcoil/request/ErrorResult;Lcoil/target/Target;Lcoil/EventListener;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 216
    invoke-interface {v5}, Lcoil/request/RequestDelegate;->complete()V

    return-object v0

    .line 207
    :cond_11
    :try_start_9
    invoke-direct {v1, v4, v10}, Lcoil/RealImageLoader;->onCancel(Lcoil/request/ImageRequest;Lcoil/EventListener;)V

    .line 208
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    .line 216
    invoke-interface {v5}, Lcoil/request/RequestDelegate;->complete()V

    throw v0
.end method

.method private static getDiskCache$delegate(Lcoil/RealImageLoader;)Ljava/lang/Object;
    .locals 0

    .line 82
    iget-object p0, p0, Lcoil/RealImageLoader;->diskCacheLazy:Lkotlin/Lazy;

    return-object p0
.end method

.method private static getMemoryCache$delegate(Lcoil/RealImageLoader;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lcoil/RealImageLoader;->memoryCacheLazy:Lkotlin/Lazy;

    return-object p0
.end method

.method private final onCancel(Lcoil/request/ImageRequest;Lcoil/EventListener;)V
    .locals 4

    .line 266
    iget-object p0, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\ud83c\udfd7  Cancelled - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 366
    const-string v3, "RealImageLoader"

    invoke-interface {p0, v3, v1, v0, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    :cond_0
    invoke-interface {p2, p1}, Lcoil/EventListener;->onCancel(Lcoil/request/ImageRequest;)V

    .line 270
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcoil/request/ImageRequest$Listener;->onCancel(Lcoil/request/ImageRequest;)V

    :cond_1
    return-void
.end method

.method private final onError(Lcoil/request/ErrorResult;Lcoil/target/Target;Lcoil/EventListener;)V
    .locals 5

    .line 256
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    .line 257
    iget-object p0, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_0

    .line 346
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\ud83d\udea8 Failed - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 347
    const-string v4, "RealImageLoader"

    invoke-interface {p0, v4, v2, v1, v3}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 350
    :cond_0
    instance-of p0, p2, Lcoil/transition/TransitionTarget;

    if-nez p0, :cond_1

    if-eqz p2, :cond_3

    goto :goto_0

    .line 355
    :cond_1
    move-object p0, p1

    check-cast p0, Lcoil/request/ImageResult;

    invoke-virtual {p0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getTransitionFactory()Lcoil/transition/Transition$Factory;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcoil/transition/TransitionTarget;

    invoke-interface {v1, v2, p0}, Lcoil/transition/Transition$Factory;->create(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)Lcoil/transition/Transition;

    move-result-object v1

    .line 356
    instance-of v2, v1, Lcoil/transition/NoneTransition;

    if-eqz v2, :cond_2

    .line 260
    :goto_0
    invoke-virtual {p1}, Lcoil/request/ErrorResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p2, p0}, Lcoil/target/Target;->onError(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p3, p2, v1}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V

    .line 362
    invoke-interface {v1}, Lcoil/transition/Transition;->transition()V

    .line 363
    invoke-virtual {p0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p0

    invoke-interface {p3, p0, v1}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V

    .line 261
    :cond_3
    :goto_1
    invoke-interface {p3, v0, p1}, Lcoil/EventListener;->onError(Lcoil/request/ImageRequest;Lcoil/request/ErrorResult;)V

    .line 262
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, v0, p1}, Lcoil/request/ImageRequest$Listener;->onError(Lcoil/request/ImageRequest;Lcoil/request/ErrorResult;)V

    :cond_4
    return-void
.end method

.method private final onSuccess(Lcoil/request/SuccessResult;Lcoil/target/Target;Lcoil/EventListener;)V
    .locals 5

    .line 241
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDataSource()Lcoil/decode/DataSource;

    move-result-object v1

    .line 243
    iget-object p0, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_0

    .line 327
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcoil/util/-Utils;->getEmoji(Lcoil/decode/DataSource;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Successful ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcoil/decode/DataSource;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 328
    const-string v4, "RealImageLoader"

    invoke-interface {p0, v4, v3, v1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    :cond_0
    instance-of p0, p2, Lcoil/transition/TransitionTarget;

    if-nez p0, :cond_1

    if-eqz p2, :cond_3

    goto :goto_0

    .line 336
    :cond_1
    move-object p0, p1

    check-cast p0, Lcoil/request/ImageResult;

    invoke-virtual {p0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcoil/request/ImageRequest;->getTransitionFactory()Lcoil/transition/Transition$Factory;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Lcoil/transition/TransitionTarget;

    invoke-interface {v1, v2, p0}, Lcoil/transition/Transition$Factory;->create(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)Lcoil/transition/Transition;

    move-result-object v1

    .line 337
    instance-of v2, v1, Lcoil/transition/NoneTransition;

    if-eqz v2, :cond_2

    .line 246
    :goto_0
    invoke-virtual {p1}, Lcoil/request/SuccessResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p2, p0}, Lcoil/target/Target;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p3, p2, v1}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V

    .line 343
    invoke-interface {v1}, Lcoil/transition/Transition;->transition()V

    .line 344
    invoke-virtual {p0}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p0

    invoke-interface {p3, p0, v1}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V

    .line 247
    :cond_3
    :goto_1
    invoke-interface {p3, v0, p1}, Lcoil/EventListener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/SuccessResult;)V

    .line 248
    invoke-virtual {v0}, Lcoil/request/ImageRequest;->getListener()Lcoil/request/ImageRequest$Listener;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, v0, p1}, Lcoil/request/ImageRequest$Listener;->onSuccess(Lcoil/request/ImageRequest;Lcoil/request/SuccessResult;)V

    :cond_4
    return-void
.end method

.method private final transition(Lcoil/request/ImageResult;Lcoil/target/Target;Lcoil/EventListener;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageResult;",
            "Lcoil/target/Target;",
            "Lcoil/EventListener;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 279
    instance-of p0, p2, Lcoil/transition/TransitionTarget;

    if-nez p0, :cond_0

    .line 280
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcoil/request/ImageRequest;->getTransitionFactory()Lcoil/transition/Transition$Factory;

    move-result-object p0

    check-cast p2, Lcoil/transition/TransitionTarget;

    invoke-interface {p0, p2, p1}, Lcoil/transition/Transition$Factory;->create(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;)Lcoil/transition/Transition;

    move-result-object p0

    .line 285
    instance-of p2, p0, Lcoil/transition/NoneTransition;

    if-eqz p2, :cond_1

    .line 286
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 290
    :cond_1
    invoke-virtual {p1}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p2

    invoke-interface {p3, p2, p0}, Lcoil/EventListener;->transitionStart(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V

    .line 291
    invoke-interface {p0}, Lcoil/transition/Transition;->transition()V

    .line 292
    invoke-virtual {p1}, Lcoil/request/ImageResult;->getRequest()Lcoil/request/ImageRequest;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcoil/EventListener;->transitionEnd(Lcoil/request/ImageRequest;Lcoil/transition/Transition;)V

    return-void
.end method


# virtual methods
.method public enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;
    .locals 6

    .line 112
    iget-object v0, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcoil/RealImageLoader$enqueue$job$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcoil/RealImageLoader$enqueue$job$1;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p0

    .line 119
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    instance-of v0, v0, Lcoil/target/ViewTarget;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object p1

    check-cast p1, Lcoil/target/ViewTarget;

    invoke-interface {p1}, Lcoil/target/ViewTarget;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcoil/util/-Utils;->getRequestManager(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcoil/request/ViewTargetRequestManager;->getDisposable(Lkotlinx/coroutines/Deferred;)Lcoil/request/ViewTargetDisposable;

    move-result-object p0

    check-cast p0, Lcoil/request/Disposable;

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Lcoil/request/OneShotDisposable;

    invoke-direct {p1, p0}, Lcoil/request/OneShotDisposable;-><init>(Lkotlinx/coroutines/Deferred;)V

    move-object p0, p1

    check-cast p0, Lcoil/request/Disposable;

    :goto_0
    return-object p0
.end method

.method public execute(Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/request/ImageRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/request/ImageResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTarget()Lcoil/target/Target;

    move-result-object v0

    instance-of v0, v0, Lcoil/target/ViewTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcoil/RealImageLoader$execute$2;

    invoke-direct {v0, p1, p0, v1}, Lcoil/RealImageLoader$execute$2;-><init>(Lcoil/request/ImageRequest;Lcoil/RealImageLoader;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcoil/RealImageLoader$execute$3;

    invoke-direct {v2, p0, p1, v1}, Lcoil/RealImageLoader$execute$3;-><init>(Lcoil/RealImageLoader;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCallFactoryLazy()Lkotlin/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcoil/RealImageLoader;->callFactoryLazy:Lkotlin/Lazy;

    return-object p0
.end method

.method public final getComponentRegistry()Lcoil/ComponentRegistry;
    .locals 0

    .line 72
    iget-object p0, p0, Lcoil/RealImageLoader;->componentRegistry:Lcoil/ComponentRegistry;

    return-object p0
.end method

.method public getComponents()Lcoil/ComponentRegistry;
    .locals 0

    .line 83
    iget-object p0, p0, Lcoil/RealImageLoader;->components:Lcoil/ComponentRegistry;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcoil/RealImageLoader;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getDefaults()Lcoil/request/DefaultRequestOptions;
    .locals 0

    .line 67
    iget-object p0, p0, Lcoil/RealImageLoader;->defaults:Lcoil/request/DefaultRequestOptions;

    return-object p0
.end method

.method public getDiskCache()Lcoil/disk/DiskCache;
    .locals 0

    .line 82
    iget-object p0, p0, Lcoil/RealImageLoader;->diskCacheLazy:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil/disk/DiskCache;

    return-object p0
.end method

.method public final getDiskCacheLazy()Lkotlin/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcoil/disk/DiskCache;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcoil/RealImageLoader;->diskCacheLazy:Lkotlin/Lazy;

    return-object p0
.end method

.method public final getEventListenerFactory()Lcoil/EventListener$Factory;
    .locals 0

    .line 71
    iget-object p0, p0, Lcoil/RealImageLoader;->eventListenerFactory:Lcoil/EventListener$Factory;

    return-object p0
.end method

.method public final getLogger()Lcoil/util/Logger;
    .locals 0

    .line 74
    iget-object p0, p0, Lcoil/RealImageLoader;->logger:Lcoil/util/Logger;

    return-object p0
.end method

.method public getMemoryCache()Lcoil/memory/MemoryCache;
    .locals 0

    .line 81
    iget-object p0, p0, Lcoil/RealImageLoader;->memoryCacheLazy:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil/memory/MemoryCache;

    return-object p0
.end method

.method public final getMemoryCacheLazy()Lkotlin/Lazy;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcoil/memory/MemoryCache;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lcoil/RealImageLoader;->memoryCacheLazy:Lkotlin/Lazy;

    return-object p0
.end method

.method public final getOptions()Lcoil/util/ImageLoaderOptions;
    .locals 0

    .line 73
    iget-object p0, p0, Lcoil/RealImageLoader;->options:Lcoil/util/ImageLoaderOptions;

    return-object p0
.end method

.method public newBuilder()Lcoil/ImageLoader$Builder;
    .locals 1

    .line 234
    new-instance v0, Lcoil/ImageLoader$Builder;

    invoke-direct {v0, p0}, Lcoil/ImageLoader$Builder;-><init>(Lcoil/RealImageLoader;)V

    return-object v0
.end method

.method public final onTrimMemory$coil_base_release(I)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcoil/RealImageLoader;->memoryCacheLazy:Lkotlin/Lazy;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil/memory/MemoryCache;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcoil/memory/MemoryCache;->trimMemory(I)V

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcoil/RealImageLoader;->shutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcoil/RealImageLoader;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcoil/RealImageLoader;->systemCallbacks:Lcoil/util/SystemCallbacks;

    invoke-virtual {v0}, Lcoil/util/SystemCallbacks;->shutdown()V

    .line 231
    invoke-virtual {p0}, Lcoil/RealImageLoader;->getMemoryCache()Lcoil/memory/MemoryCache;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcoil/memory/MemoryCache;->clear()V

    :cond_1
    return-void
.end method
