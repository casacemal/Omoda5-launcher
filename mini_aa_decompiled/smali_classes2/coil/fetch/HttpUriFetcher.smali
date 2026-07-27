.class public final Lcoil/fetch/HttpUriFetcher;
.super Ljava/lang/Object;
.source "HttpUriFetcher.kt"

# interfaces
.implements Lcoil/fetch/Fetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/HttpUriFetcher$Companion;,
        Lcoil/fetch/HttpUriFetcher$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpUriFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpUriFetcher.kt\ncoil/fetch/HttpUriFetcher\n+ 2 FileSystem.kt\nokio/FileSystem\n+ 3 Okio.kt\nokio/Okio__OkioKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n80#2:305\n165#2:306\n81#2:307\n82#2:312\n80#2:341\n165#2:342\n81#2:343\n82#2:348\n80#2:377\n165#2:378\n81#2:379\n82#2:384\n67#2:417\n68#2:422\n52#3,4:308\n60#3,10:313\n56#3,18:323\n52#3,4:344\n60#3,10:349\n56#3,18:359\n52#3,4:380\n60#3,10:385\n56#3,18:395\n66#3:416\n52#3,4:418\n60#3,10:423\n56#3,3:433\n71#3,3:436\n216#4,2:413\n1#5:415\n*S KotlinDebug\n*F\n+ 1 HttpUriFetcher.kt\ncoil/fetch/HttpUriFetcher\n*L\n162#1:305\n162#1:306\n162#1:307\n162#1:312\n167#1:341\n167#1:342\n167#1:343\n167#1:348\n170#1:377\n170#1:378\n170#1:379\n170#1:384\n255#1:417\n255#1:422\n162#1:308,4\n162#1:313,10\n162#1:323,18\n167#1:344,4\n167#1:349,10\n167#1:359,18\n170#1:380,4\n170#1:385,10\n170#1:395,18\n255#1:416\n255#1:418,4\n255#1:423,10\n255#1:433,3\n255#1:436,3\n190#1:413,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 22\u00020\u0001:\u000212B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u0010H\u0096@\u00a2\u0006\u0002\u0010\u0011J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J.\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0016\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0016\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0002\u0010\u001eJ!\u0010\u001f\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0001\u00a2\u0006\u0002\u0008\"J\u0018\u0010#\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u000e\u0010$\u001a\u0004\u0018\u00010\u001b*\u00020\u0013H\u0002J\u000c\u0010%\u001a\u00020&*\u00020\u0013H\u0002J\u000c\u0010%\u001a\u00020&*\u00020\'H\u0002J\u000c\u0010(\u001a\u00020)*\u00020\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u0014\u0010-\u001a\u00020.8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100\u00a8\u00063"
    }
    d2 = {
        "Lcoil/fetch/HttpUriFetcher;",
        "Lcoil/fetch/Fetcher;",
        "url",
        "",
        "options",
        "Lcoil/request/Options;",
        "callFactory",
        "Lkotlin/Lazy;",
        "Lokhttp3/Call$Factory;",
        "diskCache",
        "Lcoil/disk/DiskCache;",
        "respectCacheHeaders",
        "",
        "<init>",
        "(Ljava/lang/String;Lcoil/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Z)V",
        "fetch",
        "Lcoil/fetch/FetchResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readFromDiskCache",
        "Lcoil/disk/DiskCache$Snapshot;",
        "writeToDiskCache",
        "snapshot",
        "request",
        "Lokhttp3/Request;",
        "response",
        "Lokhttp3/Response;",
        "cacheResponse",
        "Lcoil/network/CacheResponse;",
        "newRequest",
        "executeNetworkRequest",
        "(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMimeType",
        "contentType",
        "Lokhttp3/MediaType;",
        "getMimeType$coil_base_release",
        "isCacheable",
        "toCacheResponse",
        "toImageSource",
        "Lcoil/decode/ImageSource;",
        "Lokhttp3/ResponseBody;",
        "toDataSource",
        "Lcoil/decode/DataSource;",
        "diskCacheKey",
        "getDiskCacheKey",
        "()Ljava/lang/String;",
        "fileSystem",
        "Lokio/FileSystem;",
        "getFileSystem",
        "()Lokio/FileSystem;",
        "Factory",
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
.field private static final CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

.field private static final CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

.field public static final Companion:Lcoil/fetch/HttpUriFetcher$Companion;

.field private static final MIME_TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# instance fields
.field private final callFactory:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lokhttp3/Call$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final diskCache:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcoil/disk/DiskCache;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lcoil/request/Options;

.field private final respectCacheHeaders:Z

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/fetch/HttpUriFetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/fetch/HttpUriFetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/fetch/HttpUriFetcher;->Companion:Lcoil/fetch/HttpUriFetcher$Companion;

    .line 299
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noStore()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lcoil/fetch/HttpUriFetcher;->CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    .line 301
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lcoil/fetch/HttpUriFetcher;->CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcoil/request/Options;Lkotlin/Lazy;Lkotlin/Lazy;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcoil/request/Options;",
            "Lkotlin/Lazy<",
            "+",
            "Lokhttp3/Call$Factory;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcoil/disk/DiskCache;",
            ">;Z)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    .line 34
    iput-object p3, p0, Lcoil/fetch/HttpUriFetcher;->callFactory:Lkotlin/Lazy;

    .line 35
    iput-object p4, p0, Lcoil/fetch/HttpUriFetcher;->diskCache:Lkotlin/Lazy;

    .line 36
    iput-boolean p5, p0, Lcoil/fetch/HttpUriFetcher;->respectCacheHeaders:Z

    return-void
.end method

.method public static final synthetic access$executeNetworkRequest(Lcoil/fetch/HttpUriFetcher;Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcoil/fetch/HttpUriFetcher;->executeNetworkRequest(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final executeNetworkRequest(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lokhttp3/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    iget v1, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;

    invoke-direct {v0, p0, p2}, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;-><init>(Lcoil/fetch/HttpUriFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 212
    iget v2, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 213
    invoke-static {}, Lcoil/util/-Utils;->isMainThread()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 214
    iget-object p2, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {p2}, Lcoil/request/Options;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 220
    iget-object p0, p0, Lcoil/fetch/HttpUriFetcher;->callFactory:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Call$Factory;

    invoke-interface {p0, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    goto :goto_2

    .line 217
    :cond_3
    new-instance p0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw p0

    .line 224
    :cond_4
    iget-object p0, p0, Lcoil/fetch/HttpUriFetcher;->callFactory:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Call$Factory;

    invoke-interface {p0, p1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    iput v3, v0, Lcoil/fetch/HttpUriFetcher$executeNetworkRequest$1;->label:I

    invoke-static {p0, v0}, Lcoil/util/-Calls;->await(Lokhttp3/Call;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 212
    :cond_5
    :goto_1
    move-object p0, p2

    check-cast p0, Lokhttp3/Response;

    .line 226
    :goto_2
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 p2, 0x130

    if-eq p1, p2, :cond_7

    .line 227
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 228
    :cond_6
    new-instance p1, Lcoil/network/HttpException;

    invoke-direct {p1, p0}, Lcoil/network/HttpException;-><init>(Lokhttp3/Response;)V

    throw p1

    :cond_7
    return-object p0
.end method

.method private final getDiskCacheKey()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private final getFileSystem()Lokio/FileSystem;
    .locals 0

    .line 278
    iget-object p0, p0, Lcoil/fetch/HttpUriFetcher;->diskCache:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcoil/disk/DiskCache;

    invoke-interface {p0}, Lcoil/disk/DiskCache;->getFileSystem()Lokio/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method private final isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-boolean p0, p0, Lcoil/fetch/HttpUriFetcher;->respectCacheHeaders:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcoil/network/CacheStrategy;->Companion:Lcoil/network/CacheStrategy$Companion;

    invoke-virtual {p0, p1, p2}, Lcoil/network/CacheStrategy$Companion;->isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final newRequest()Lokhttp3/Request;
    .locals 5

    .line 184
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 185
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v1}, Lcoil/request/Options;->getHeaders()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v1}, Lcoil/request/Options;->getTags()Lcoil/request/Tags;

    move-result-object v1

    invoke-virtual {v1}, Lcoil/request/Tags;->asMap()Ljava/util/Map;

    move-result-object v1

    .line 413
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type java.lang.Class<kotlin.Any>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 192
    :cond_0
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v1}, Lcoil/request/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v1

    .line 193
    iget-object v2, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v2}, Lcoil/request/Options;->getNetworkCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 196
    sget-object p0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 198
    iget-object p0, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {p0}, Lcoil/request/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 199
    sget-object p0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 201
    :cond_2
    sget-object p0, Lcoil/fetch/HttpUriFetcher;->CACHE_CONTROL_FORCE_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 205
    sget-object p0, Lcoil/fetch/HttpUriFetcher;->CACHE_CONTROL_NO_NETWORK_NO_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 209
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private final readFromDiskCache()Lcoil/disk/DiskCache$Snapshot;
    .locals 2

    .line 126
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getDiskCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcoil/fetch/HttpUriFetcher;->diskCache:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcoil/disk/DiskCache;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getDiskCacheKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcoil/disk/DiskCache;->openSnapshot(Ljava/lang/String;)Lcoil/disk/DiskCache$Snapshot;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private final toCacheResponse(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;
    .locals 2

    const/4 v0, 0x0

    .line 255
    :try_start_0
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object p0

    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->getMetadata()Lokio/Path;

    move-result-object p1

    .line 417
    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :try_start_1
    move-object p1, p0

    check-cast p1, Lokio/BufferedSource;

    .line 256
    new-instance v1, Lcoil/network/CacheResponse;

    invoke-direct {v1, p1}, Lcoil/network/CacheResponse;-><init>(Lokio/BufferedSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 424
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 416
    :try_start_4
    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    move-object p0, p1

    move-object v1, v0

    :goto_2
    if-nez p0, :cond_2

    return-object v1

    .line 436
    :cond_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v0
.end method

.method private final toDataSource(Lokhttp3/Response;)Lcoil/decode/DataSource;
    .locals 0

    .line 273
    invoke-virtual {p1}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    goto :goto_0

    :cond_0
    sget-object p0, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    :goto_0
    return-object p0
.end method

.method private final toImageSource(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;
    .locals 2

    .line 265
    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->getData()Lokio/Path;

    move-result-object v0

    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object v1

    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getDiskCacheKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Ljava/io/Closeable;

    invoke-static {v0, v1, p0, p1}, Lcoil/decode/ImageSources;->create(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;)Lcoil/decode/ImageSource;

    move-result-object p0

    return-object p0
.end method

.method private final toImageSource(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;
    .locals 0

    .line 269
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    iget-object p0, p0, Lcoil/fetch/HttpUriFetcher;->options:Lcoil/request/Options;

    invoke-virtual {p0}, Lcoil/request/Options;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0}, Lcoil/decode/ImageSources;->create(Lokio/BufferedSource;Landroid/content/Context;)Lcoil/decode/ImageSource;

    move-result-object p0

    return-object p0
.end method

.method private final writeToDiskCache(Lcoil/disk/DiskCache$Snapshot;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/CacheResponse;)Lcoil/disk/DiskCache$Snapshot;
    .locals 4

    .line 140
    invoke-direct {p0, p2, p3}, Lcoil/fetch/HttpUriFetcher;->isCacheable(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 141
    check-cast p1, Ljava/io/Closeable;

    invoke-static {p1}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 147
    invoke-interface {p1}, Lcoil/disk/DiskCache$Snapshot;->closeAndOpenEditor()Lcoil/disk/DiskCache$Editor;

    move-result-object p1

    goto :goto_0

    .line 149
    :cond_2
    iget-object p1, p0, Lcoil/fetch/HttpUriFetcher;->diskCache:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcoil/disk/DiskCache;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getDiskCacheKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcoil/disk/DiskCache;->openEditor(Ljava/lang/String;)Lcoil/disk/DiskCache$Editor;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_4

    return-object v0

    .line 157
    :cond_4
    :try_start_0
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result p2

    const/16 v1, 0x130

    const/4 v2, 0x0

    if-ne p2, v1, :cond_7

    if-eqz p4, :cond_7

    .line 159
    invoke-virtual {p3}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p2

    .line 160
    sget-object v1, Lcoil/network/CacheStrategy;->Companion:Lcoil/network/CacheStrategy$Companion;

    invoke-virtual {p4}, Lcoil/network/CacheResponse;->getResponseHeaders()Lokhttp3/Headers;

    move-result-object p4

    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v1, p4, v3}, Lcoil/network/CacheStrategy$Companion;->combineHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object p4

    invoke-virtual {p2, p4}, Lokhttp3/Response$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Response$Builder;

    move-result-object p2

    .line 161
    invoke-virtual {p2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p2

    .line 162
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object p0

    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->getMetadata()Lokio/Path;

    move-result-object p4

    .line 307
    invoke-virtual {p0, p4, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 311
    :try_start_1
    move-object p4, p0

    check-cast p4, Lokio/BufferedSink;

    .line 163
    new-instance v1, Lcoil/network/CacheResponse;

    invoke-direct {v1, p2}, Lcoil/network/CacheResponse;-><init>(Lokhttp3/Response;)V

    invoke-virtual {v1, p4}, Lcoil/network/CacheResponse;->writeTo(Lokio/BufferedSink;)V

    .line 164
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_5

    .line 314
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v0, p2

    if-eqz p0, :cond_5

    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 333
    :try_start_4
    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    goto/16 :goto_6

    .line 338
    :cond_6
    throw v0

    .line 167
    :cond_7
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object p2

    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->getMetadata()Lokio/Path;

    move-result-object p4

    .line 343
    invoke-virtual {p2, p4, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p2

    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 347
    :try_start_5
    move-object p4, p2

    check-cast p4, Lokio/BufferedSink;

    .line 168
    new-instance v1, Lcoil/network/CacheResponse;

    invoke-direct {v1, p3}, Lcoil/network/CacheResponse;-><init>(Lokhttp3/Response;)V

    invoke-virtual {v1, p4}, Lcoil/network/CacheResponse;->writeTo(Lokio/BufferedSink;)V

    .line 169
    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz p2, :cond_8

    .line 350
    :try_start_6
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    goto :goto_4

    :cond_8
    :goto_2
    move-object p2, v0

    goto :goto_4

    :catchall_4
    move-exception p4

    if-eqz p2, :cond_9

    :try_start_7
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    .line 369
    :try_start_8
    invoke-static {p4, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    move-object p2, p4

    :goto_4
    if-nez p2, :cond_c

    .line 170
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object p0

    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->getData()Lokio/Path;

    move-result-object p2

    .line 379
    invoke-virtual {p0, p2, v2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 383
    :try_start_9
    move-object p2, p0

    check-cast p2, Lokio/BufferedSink;

    .line 171
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p4

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p4

    check-cast p2, Lokio/Sink;

    invoke-interface {p4, p2}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz p0, :cond_a

    .line 386
    :try_start_a
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_5

    :catchall_7
    move-exception p2

    move-object v0, p2

    if-eqz p0, :cond_a

    :try_start_b
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception p0

    .line 405
    :try_start_c
    invoke-static {v0, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    if-nez v0, :cond_b

    .line 174
    :goto_6
    invoke-interface {p1}, Lcoil/disk/DiskCache$Editor;->commitAndOpenSnapshot()Lcoil/disk/DiskCache$Snapshot;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 179
    check-cast p3, Ljava/io/Closeable;

    invoke-static {p3}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    .line 410
    :cond_b
    :try_start_d
    throw v0

    .line 374
    :cond_c
    throw p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 176
    :try_start_e
    invoke-static {p1}, Lcoil/util/-Utils;->abortQuietly(Lcoil/disk/DiskCache$Editor;)V

    .line 177
    throw p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 179
    :goto_7
    check-cast p3, Ljava/io/Closeable;

    invoke-static {p3}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public fetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/fetch/FetchResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcoil/fetch/HttpUriFetcher$fetch$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcoil/fetch/HttpUriFetcher$fetch$1;

    iget v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/fetch/HttpUriFetcher$fetch$1;

    invoke-direct {v0, p0, p1}, Lcoil/fetch/HttpUriFetcher$fetch$1;-><init>(Lcoil/fetch/HttpUriFetcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lokhttp3/Response;

    iget-object v1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcoil/disk/DiskCache$Snapshot;

    iget-object v0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcoil/fetch/HttpUriFetcher;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lcoil/network/CacheStrategy;

    iget-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcoil/disk/DiskCache$Snapshot;

    iget-object v4, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcoil/fetch/HttpUriFetcher;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v10

    goto/16 :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_6

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->readFromDiskCache()Lcoil/disk/DiskCache$Snapshot;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 46
    :try_start_2
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->getFileSystem()Lokio/FileSystem;

    move-result-object p1

    invoke-interface {v2}, Lcoil/disk/DiskCache$Snapshot;->getMetadata()Lokio/Path;

    move-result-object v6

    invoke-virtual {p1, v6}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-nez p1, :cond_5

    .line 47
    new-instance p1, Lcoil/fetch/SourceResult;

    .line 48
    invoke-direct {p0, v2}, Lcoil/fetch/HttpUriFetcher;->toImageSource(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcoil/fetch/HttpUriFetcher;->getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object p0

    .line 50
    sget-object v1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 47
    invoke-direct {p1, v0, p0, v1}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object p1

    .line 55
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcoil/fetch/HttpUriFetcher;->respectCacheHeaders:Z

    if-eqz p1, :cond_6

    .line 56
    new-instance p1, Lcoil/network/CacheStrategy$Factory;

    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->newRequest()Lokhttp3/Request;

    move-result-object v6

    invoke-direct {p0, v2}, Lcoil/fetch/HttpUriFetcher;->toCacheResponse(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;

    move-result-object v7

    invoke-direct {p1, v6, v7}, Lcoil/network/CacheStrategy$Factory;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V

    invoke-virtual {p1}, Lcoil/network/CacheStrategy$Factory;->compute()Lcoil/network/CacheStrategy;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcoil/network/CacheStrategy;->getNetworkRequest()Lokhttp3/Request;

    move-result-object v6

    if-nez v6, :cond_9

    invoke-virtual {p1}, Lcoil/network/CacheStrategy;->getCacheResponse()Lcoil/network/CacheResponse;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 58
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 59
    invoke-direct {p0, v2}, Lcoil/fetch/HttpUriFetcher;->toImageSource(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    move-result-object v1

    .line 60
    iget-object v3, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcoil/network/CacheStrategy;->getCacheResponse()Lcoil/network/CacheResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/network/CacheResponse;->getContentType()Lokhttp3/MediaType;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcoil/fetch/HttpUriFetcher;->getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object p0

    .line 61
    sget-object p1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 58
    invoke-direct {v0, v1, p0, p1}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object v0

    .line 66
    :cond_6
    new-instance p1, Lcoil/fetch/SourceResult;

    .line 67
    invoke-direct {p0, v2}, Lcoil/fetch/HttpUriFetcher;->toImageSource(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcoil/fetch/HttpUriFetcher;->toCacheResponse(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcoil/network/CacheResponse;->getContentType()Lokhttp3/MediaType;

    move-result-object v5

    :cond_7
    invoke-virtual {p0, v1, v5}, Lcoil/fetch/HttpUriFetcher;->getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object p0

    .line 69
    sget-object v1, Lcoil/decode/DataSource;->DISK:Lcoil/decode/DataSource;

    .line 66
    invoke-direct {p1, v0, p0, v1}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object p1

    .line 73
    :cond_8
    new-instance p1, Lcoil/network/CacheStrategy$Factory;

    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->newRequest()Lokhttp3/Request;

    move-result-object v6

    invoke-direct {p1, v6, v5}, Lcoil/network/CacheStrategy$Factory;-><init>(Lokhttp3/Request;Lcoil/network/CacheResponse;)V

    invoke-virtual {p1}, Lcoil/network/CacheStrategy$Factory;->compute()Lcoil/network/CacheStrategy;

    move-result-object p1

    .line 77
    :cond_9
    invoke-virtual {p1}, Lcoil/network/CacheStrategy;->getNetworkRequest()Lokhttp3/Request;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    invoke-direct {p0, v6, v0}, Lcoil/fetch/HttpUriFetcher;->executeNetworkRequest(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_a

    return-object v1

    .line 39
    :cond_a
    :goto_2
    check-cast v4, Lokhttp3/Response;

    .line 78
    invoke-static {v4}, Lcoil/util/-Utils;->requireBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :try_start_3
    invoke-virtual {p1}, Lcoil/network/CacheStrategy;->getNetworkRequest()Lokhttp3/Request;

    move-result-object v7

    .line 85
    invoke-virtual {p1}, Lcoil/network/CacheStrategy;->getCacheResponse()Lcoil/network/CacheResponse;

    move-result-object p1

    .line 81
    invoke-direct {p0, v2, v7, v4, p1}, Lcoil/fetch/HttpUriFetcher;->writeToDiskCache(Lcoil/disk/DiskCache$Snapshot;Lokhttp3/Request;Lokhttp3/Response;Lcoil/network/CacheResponse;)Lcoil/disk/DiskCache$Snapshot;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz p1, :cond_c

    .line 88
    :try_start_4
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 89
    invoke-direct {p0, p1}, Lcoil/fetch/HttpUriFetcher;->toImageSource(Lcoil/disk/DiskCache$Snapshot;)Lcoil/decode/ImageSource;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcoil/fetch/HttpUriFetcher;->toCacheResponse(Lcoil/disk/DiskCache$Snapshot;)Lcoil/network/CacheResponse;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcoil/network/CacheResponse;->getContentType()Lokhttp3/MediaType;

    move-result-object v5

    :cond_b
    invoke-virtual {p0, v2, v5}, Lcoil/fetch/HttpUriFetcher;->getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object p0

    .line 91
    sget-object v2, Lcoil/decode/DataSource;->NETWORK:Lcoil/decode/DataSource;

    .line 88
    invoke-direct {v0, v1, p0, v2}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object v0

    .line 96
    :cond_c
    invoke-virtual {v6}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    const-wide/16 v7, 0x1

    invoke-interface {v2, v7, v8}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 97
    new-instance v0, Lcoil/fetch/SourceResult;

    .line 98
    invoke-direct {p0, v6}, Lcoil/fetch/HttpUriFetcher;->toImageSource(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcoil/fetch/HttpUriFetcher;->getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-direct {p0, v4}, Lcoil/fetch/HttpUriFetcher;->toDataSource(Lokhttp3/Response;)Lcoil/decode/DataSource;

    move-result-object p0

    .line 97
    invoke-direct {v0, v1, v2, p0}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V

    return-object v0

    .line 105
    :cond_d
    move-object v2, v4

    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    invoke-direct {p0}, Lcoil/fetch/HttpUriFetcher;->newRequest()Lokhttp3/Request;

    move-result-object v2

    iput-object p0, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcoil/fetch/HttpUriFetcher$fetch$1;->label:I

    invoke-direct {p0, v2, v0}, Lcoil/fetch/HttpUriFetcher;->executeNetworkRequest(Lokhttp3/Request;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-ne v0, v1, :cond_e

    return-object v1

    :cond_e
    move-object v1, p1

    move-object p1, v0

    move-object v0, p0

    move-object p0, v4

    .line 39
    :goto_3
    :try_start_5
    check-cast p1, Lokhttp3/Response;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 107
    :try_start_6
    invoke-static {p1}, Lcoil/util/-Utils;->requireBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object p0

    .line 109
    new-instance v2, Lcoil/fetch/SourceResult;

    .line 110
    invoke-direct {v0, p0}, Lcoil/fetch/HttpUriFetcher;->toImageSource(Lokhttp3/ResponseBody;)Lcoil/decode/ImageSource;

    move-result-object v3

    .line 111
    iget-object v4, v0, Lcoil/fetch/HttpUriFetcher;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcoil/fetch/HttpUriFetcher;->getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-direct {v0, p1}, Lcoil/fetch/HttpUriFetcher;->toDataSource(Lokhttp3/Response;)Lcoil/decode/DataSource;

    move-result-object v0

    .line 109
    invoke-direct {v2, v3, p0, v0}, Lcoil/fetch/SourceResult;-><init>(Lcoil/decode/ImageSource;Ljava/lang/String;Lcoil/decode/DataSource;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return-object v2

    :catch_2
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v1, p1

    move-object p1, p0

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v1, v2

    :goto_4
    move-object p0, v4

    .line 116
    :goto_5
    :try_start_7
    check-cast p0, Ljava/io/Closeable;

    invoke-static {p0}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    move-exception p0

    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_f

    .line 120
    check-cast v2, Ljava/io/Closeable;

    invoke-static {v2}, Lcoil/util/-Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 121
    :cond_f
    throw p0
.end method

.method public final getMimeType$coil_base_release(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 241
    invoke-virtual {p2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 242
    const-string v1, "text/plain"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, p0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {v1, p1}, Lcoil/util/-Utils;->getMimeTypeFromUrl(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    const/16 p1, 0x3b

    .line 245
    invoke-static {p2, p1, p0, v0, p0}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method
