.class public final Lcoil/util/-Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/util/-Utils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncoil/util/-Utils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Dimension.kt\ncoil/size/-Dimensions\n+ 4 Contexts.kt\ncoil/util/-Contexts\n+ 5 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,302:1\n1#2:303\n57#3:304\n78#4:305\n78#4:307\n31#5:306\n31#5:308\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncoil/util/-Utils\n*L\n226#1:304\n258#1:305\n270#1:307\n258#1:306\n270#1:308\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u001a\u000c\u0010\u0014\u001a\u00020\u0015*\u00020\u0016H\u0000\u001a\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u0006*\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006H\u0000\u001a\u000e\u00108\u001a\u000205*\u0004\u0018\u000105H\u0000\u001a\u000e\u00108\u001a\u000209*\u0004\u0018\u000109H\u0000\u001a\u000e\u00108\u001a\u00020:*\u0004\u0018\u00010:H\u0000\u001a\u0008\u0010;\u001a\u00020\u0012H\u0000\u001a\u001f\u0010@\u001a\u0004\u0018\u0001HA\"\u0004\u0008\u0000\u0010A*\u0008\u0012\u0004\u0012\u0002HA0BH\u0000\u00a2\u0006\u0002\u0010C\u001a\u0019\u0010D\u001a\u0004\u0018\u00010E*\u00020F2\u0008\u0010G\u001a\u0004\u0018\u00010HH\u0080\n\u001a+\u0010N\u001a\u00020O*\u00020O2\u001c\u0010P\u001a\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030R\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030S\u0018\u00010QH\u0080\u0008\u001a\u0017\u0010N\u001a\u00020O*\u00020O2\u0008\u0010T\u001a\u0004\u0018\u00010UH\u0080\u0008\u001a\u0014\u0010V\u001a\u00020\u000b*\u00020\u00062\u0006\u0010W\u001a\u00020\u000bH\u0000\u001a\u000c\u0010X\u001a\u00020\u0015*\u00020YH\u0000\u001a\u000c\u0010e\u001a\u00020\u0012*\u00020\u000bH\u0000\u001a#\u0010f\u001a\u00020\u000b*\u00020g2\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u000b0iH\u0080\u0008\u001a#\u0010j\u001a\u00020\u000b*\u00020g2\u0006\u0010\u0017\u001a\u00020\u00182\u000c\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u000b0iH\u0080\u0008\u001a\u0014\u0010k\u001a\u00020\u000b*\u00020l2\u0006\u0010\u0017\u001a\u00020\u0018H\u0000\u001a\u0008\u0010m\u001a\u00020nH\u0000\u001a\u0010\u0010p\u001a\u00020\u00122\u0006\u0010q\u001a\u00020 H\u0000\u001a\u0014\u0010r\u001a\u00020s*\u00020s2\u0006\u0010t\u001a\u00020\u0006H\u0000\u001a\u000c\u0010u\u001a\u00020v*\u00020wH\u0000\u001a\u0010\u0010{\u001a\u00020y2\u0006\u0010|\u001a\u00020KH\u0000\u001a\u0018\u0010~\u001a\u00020\u000b2\u0006\u0010|\u001a\u00020K2\u0006\u0010\u007f\u001a\u00020yH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0006*\u00020\u00078@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\"\u0018\u0010\n\u001a\u00020\u000b*\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\"\u0018\u0010\u000f\u001a\u00020\u000b*\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000e\"\u0018\u0010\u0011\u001a\u00020\u0012*\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013\"\u0018\u0010\u0017\u001a\u00020\u0018*\u00020\u00198@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\"\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u0006*\u00020 8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\"\u0018\u0010#\u001a\u00020\u000b*\u00020$8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\"\u001c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010,\u001a\u0004\u0008*\u0010+\"\u0014\u0010-\u001a\u00020)X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/\"\u0016\u00100\u001a\u0004\u0018\u000101X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103\"\u0014\u00104\u001a\u000205X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107\"\u0019\u0010<\u001a\u00020\u000b*\u00020=8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\"\u0018\u0010I\u001a\u00020J*\u00020K8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010M\"\u000e\u0010Z\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010[\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\\\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010]\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010^\u001a\u00020\u0012*\u00020_8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010`\"\u0018\u0010a\u001a\u00020b*\u00020_8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010d\"\u000e\u0010o\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010x\u001a\u00020yX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010z\u001a\u00020yX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010}\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0080\u0001"
    }
    d2 = {
        "requestManager",
        "Lcoil/request/ViewTargetRequestManager;",
        "Landroid/view/View;",
        "getRequestManager",
        "(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;",
        "emoji",
        "",
        "Lcoil/decode/DataSource;",
        "getEmoji",
        "(Lcoil/decode/DataSource;)Ljava/lang/String;",
        "width",
        "",
        "Landroid/graphics/drawable/Drawable;",
        "getWidth",
        "(Landroid/graphics/drawable/Drawable;)I",
        "height",
        "getHeight",
        "isVector",
        "",
        "(Landroid/graphics/drawable/Drawable;)Z",
        "closeQuietly",
        "",
        "Ljava/io/Closeable;",
        "scale",
        "Lcoil/size/Scale;",
        "Landroid/widget/ImageView;",
        "getScale",
        "(Landroid/widget/ImageView;)Lcoil/size/Scale;",
        "getMimeTypeFromUrl",
        "Landroid/webkit/MimeTypeMap;",
        "url",
        "firstPathSegment",
        "Landroid/net/Uri;",
        "getFirstPathSegment",
        "(Landroid/net/Uri;)Ljava/lang/String;",
        "nightMode",
        "Landroid/content/res/Configuration;",
        "getNightMode",
        "(Landroid/content/res/Configuration;)I",
        "VALID_TRANSFORMATION_CONFIGS",
        "",
        "Landroid/graphics/Bitmap$Config;",
        "getVALID_TRANSFORMATION_CONFIGS",
        "()[Landroid/graphics/Bitmap$Config;",
        "[Landroid/graphics/Bitmap$Config;",
        "DEFAULT_BITMAP_CONFIG",
        "getDEFAULT_BITMAP_CONFIG",
        "()Landroid/graphics/Bitmap$Config;",
        "NULL_COLOR_SPACE",
        "Landroid/graphics/ColorSpace;",
        "getNULL_COLOR_SPACE",
        "()Landroid/graphics/ColorSpace;",
        "EMPTY_HEADERS",
        "Lokhttp3/Headers;",
        "getEMPTY_HEADERS",
        "()Lokhttp3/Headers;",
        "orEmpty",
        "Lcoil/request/Tags;",
        "Lcoil/request/Parameters;",
        "isMainThread",
        "identityHashCode",
        "",
        "getIdentityHashCode",
        "(Ljava/lang/Object;)I",
        "getCompletedOrNull",
        "T",
        "Lkotlinx/coroutines/Deferred;",
        "(Lkotlinx/coroutines/Deferred;)Ljava/lang/Object;",
        "get",
        "Lcoil/memory/MemoryCache$Value;",
        "Lcoil/memory/MemoryCache;",
        "key",
        "Lcoil/memory/MemoryCache$Key;",
        "safeCacheDir",
        "Ljava/io/File;",
        "Landroid/content/Context;",
        "getSafeCacheDir",
        "(Landroid/content/Context;)Ljava/io/File;",
        "addFirst",
        "Lcoil/ComponentRegistry$Builder;",
        "pair",
        "Lkotlin/Pair;",
        "Lcoil/fetch/Fetcher$Factory;",
        "Ljava/lang/Class;",
        "factory",
        "Lcoil/decode/Decoder$Factory;",
        "toNonNegativeInt",
        "defaultValue",
        "abortQuietly",
        "Lcoil/disk/DiskCache$Editor;",
        "MIME_TYPE_JPEG",
        "MIME_TYPE_WEBP",
        "MIME_TYPE_HEIC",
        "MIME_TYPE_HEIF",
        "isPlaceholderCached",
        "Lcoil/intercept/Interceptor$Chain;",
        "(Lcoil/intercept/Interceptor$Chain;)Z",
        "eventListener",
        "Lcoil/EventListener;",
        "getEventListener",
        "(Lcoil/intercept/Interceptor$Chain;)Lcoil/EventListener;",
        "isMinOrMax",
        "widthPx",
        "Lcoil/size/Size;",
        "original",
        "Lkotlin/Function0;",
        "heightPx",
        "toPx",
        "Lcoil/size/Dimension;",
        "unsupported",
        "",
        "ASSET_FILE_PATH_ROOT",
        "isAssetUri",
        "uri",
        "addUnsafeNonAscii",
        "Lokhttp3/Headers$Builder;",
        "line",
        "requireBody",
        "Lokhttp3/ResponseBody;",
        "Lokhttp3/Response;",
        "STANDARD_MEMORY_MULTIPLIER",
        "",
        "LOW_MEMORY_MULTIPLIER",
        "defaultMemoryCacheSizePercent",
        "context",
        "DEFAULT_MEMORY_CLASS_MEGABYTES",
        "calculateMemoryCacheSize",
        "percent",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ASSET_FILE_PATH_ROOT:Ljava/lang/String; = "android_asset"

.field private static final DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DEFAULT_MEMORY_CLASS_MEGABYTES:I = 0x100

.field private static final EMPTY_HEADERS:Lokhttp3/Headers;

.field private static final LOW_MEMORY_MULTIPLIER:D = 0.15

.field public static final MIME_TYPE_HEIC:Ljava/lang/String; = "image/heic"

.field public static final MIME_TYPE_HEIF:Ljava/lang/String; = "image/heif"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIME_TYPE_WEBP:Ljava/lang/String; = "image/webp"

.field private static final NULL_COLOR_SPACE:Landroid/graphics/ColorSpace; = null

.field private static final STANDARD_MEMORY_MULTIPLIER:D = 0.2

.field private static final VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 133
    new-array v0, v0, [Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    aput-object v2, v0, v1

    .line 132
    sput-object v0, Lcoil/util/-Utils;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    .line 143
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    .line 142
    sput-object v0, Lcoil/util/-Utils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 151
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    sput-object v0, Lcoil/util/-Utils;->EMPTY_HEADERS:Lokhttp3/Headers;

    return-void
.end method

.method public static final abortQuietly(Lcoil/disk/DiskCache$Editor;)V
    .locals 0

    .line 201
    :try_start_0
    invoke-interface {p0}, Lcoil/disk/DiskCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final addFirst(Lcoil/ComponentRegistry$Builder;Lcoil/decode/Decoder$Factory;)Lcoil/ComponentRegistry$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcoil/ComponentRegistry$Builder;->getDecoderFactories$coil_base_release()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static final addFirst(Lcoil/ComponentRegistry$Builder;Lkotlin/Pair;)Lcoil/ComponentRegistry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/ComponentRegistry$Builder;",
            "Lkotlin/Pair<",
            "+",
            "Lcoil/fetch/Fetcher$Factory<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcoil/ComponentRegistry$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcoil/ComponentRegistry$Builder;->getFetcherFactories$coil_base_release()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static final addUnsafeNonAscii(Lokhttp3/Headers$Builder;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 6

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "substring(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected header: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final calculateMemoryCacheSize(Landroid/content/Context;D)I
    .locals 2

    .line 308
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 270
    check-cast v0, Landroid/app/ActivityManager;

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    .line 272
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0x100

    :goto_0
    int-to-double v0, p0

    mul-double/2addr p1, v0

    const/16 p0, 0x400

    int-to-double v0, p0

    mul-double/2addr p1, v0

    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public static final closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 92
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    .line 94
    throw p0
.end method

.method public static final defaultMemoryCacheSizePercent(Landroid/content/Context;)D
    .locals 3

    const-wide v0, 0x3fc999999999999aL    # 0.2

    .line 306
    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    check-cast p0, Landroid/app/ActivityManager;

    .line 259
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const-wide v0, 0x3fc3333333333333L    # 0.15

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static final get(Lcoil/memory/MemoryCache;Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;
    .locals 0

    if-eqz p1, :cond_0

    .line 173
    invoke-interface {p0, p1}, Lcoil/memory/MemoryCache;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getCompletedOrNull(Lkotlinx/coroutines/Deferred;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-interface {p0}, Lkotlinx/coroutines/Deferred;->getCompleted()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final getDEFAULT_BITMAP_CONFIG()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 142
    sget-object v0, Lcoil/util/-Utils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static final getEMPTY_HEADERS()Lokhttp3/Headers;
    .locals 1

    .line 151
    sget-object v0, Lcoil/util/-Utils;->EMPTY_HEADERS:Lokhttp3/Headers;

    return-object v0
.end method

.method public static final getEmoji(Lcoil/decode/DataSource;)Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcoil/util/-Utils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcoil/decode/DataSource;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 78
    const-string p0, "\u2601\ufe0f "

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 77
    :cond_1
    const-string p0, "\ud83d\udcbe"

    goto :goto_0

    .line 76
    :cond_2
    const-string p0, "\ud83e\udde0"

    :goto_0
    return-object p0
.end method

.method public static final getEventListener(Lcoil/intercept/Interceptor$Chain;)Lcoil/EventListener;
    .locals 1

    .line 214
    instance-of v0, p0, Lcoil/intercept/RealInterceptorChain;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->getEventListener()Lcoil/EventListener;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcoil/EventListener;->NONE:Lcoil/EventListener;

    :goto_0
    return-object p0
.end method

.method public static final getFirstPathSegment(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final getHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 85
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final getIdentityHashCode(Ljava/lang/Object;)I
    .locals 0

    .line 162
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final getMimeTypeFromUrl(Landroid/webkit/MimeTypeMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 109
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    const/4 v2, 0x2

    .line 114
    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f

    .line 115
    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 116
    invoke-static {p1, v0, v1, v2, v1}, Lkotlin/text/StringsKt;->substringAfterLast$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 117
    const-string v1, ""

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static final getNULL_COLOR_SPACE()Landroid/graphics/ColorSpace;
    .locals 1

    .line 149
    sget-object v0, Lcoil/util/-Utils;->NULL_COLOR_SPACE:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public static final getNightMode(Landroid/content/res/Configuration;)I
    .locals 0

    .line 126
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    return p0
.end method

.method public static final getRequestManager(Landroid/view/View;)Lcoil/request/ViewTargetRequestManager;
    .locals 3

    .line 57
    sget v0, Lcoil/base/R$id;->coil_request_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcoil/request/ViewTargetRequestManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcoil/request/ViewTargetRequestManager;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 59
    monitor-enter p0

    .line 61
    :try_start_0
    sget v0, Lcoil/base/R$id;->coil_request_manager:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcoil/request/ViewTargetRequestManager;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcoil/request/ViewTargetRequestManager;

    :cond_1
    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lcoil/request/ViewTargetRequestManager;

    invoke-direct {v0, p0}, Lcoil/request/ViewTargetRequestManager;-><init>(Landroid/view/View;)V

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 66
    sget v1, Lcoil/base/R$id;->coil_request_manager:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static final getSafeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    return-object p0

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cacheDir == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getScale(Landroid/widget/ImageView;)Lcoil/size/Scale;
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcoil/util/-Utils$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 101
    sget-object p0, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    goto :goto_1

    .line 100
    :cond_1
    sget-object p0, Lcoil/size/Scale;->FIT:Lcoil/size/Scale;

    :goto_1
    return-object p0
.end method

.method public static final getVALID_TRANSFORMATION_CONFIGS()[Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 132
    sget-object v0, Lcoil/util/-Utils;->VALID_TRANSFORMATION_CONFIGS:[Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public static final getWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 82
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final heightPx(Lcoil/size/Size;Lcoil/size/Scale;Lkotlin/jvm/functions/Function0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/size/Size;",
            "Lcoil/size/Scale;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 223
    invoke-static {p0}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object p0

    invoke-static {p0, p1}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final isAssetUri(Landroid/net/Uri;)Z
    .locals 2

    .line 238
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcoil/util/-Utils;->getFirstPathSegment(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "android_asset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isMainThread()Z
    .locals 2

    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isMinOrMax(I)Z
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isPlaceholderCached(Lcoil/intercept/Interceptor$Chain;)Z
    .locals 1

    .line 211
    instance-of v0, p0, Lcoil/intercept/RealInterceptorChain;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil/intercept/RealInterceptorChain;

    invoke-virtual {p0}, Lcoil/intercept/RealInterceptorChain;->isPlaceholderCached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isVector(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 88
    instance-of v0, p0, Landroid/graphics/drawable/VectorDrawable;

    if-nez v0, :cond_1

    instance-of p0, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final orEmpty(Lcoil/request/Parameters;)Lcoil/request/Parameters;
    .locals 0

    if-nez p0, :cond_0

    .line 157
    sget-object p0, Lcoil/request/Parameters;->EMPTY:Lcoil/request/Parameters;

    :cond_0
    return-object p0
.end method

.method public static final orEmpty(Lcoil/request/Tags;)Lcoil/request/Tags;
    .locals 0

    if-nez p0, :cond_0

    .line 155
    sget-object p0, Lcoil/request/Tags;->EMPTY:Lcoil/request/Tags;

    :cond_0
    return-object p0
.end method

.method public static final orEmpty(Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 0

    if-nez p0, :cond_0

    .line 153
    sget-object p0, Lcoil/util/-Utils;->EMPTY_HEADERS:Lokhttp3/Headers;

    :cond_0
    return-object p0
.end method

.method public static final requireBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "response body == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toNonNegativeInt(Ljava/lang/String;I)I
    .locals 2

    .line 191
    invoke-static {p0}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_0
    return p0

    :cond_2
    return p1
.end method

.method public static final toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I
    .locals 1

    .line 304
    instance-of v0, p0, Lcoil/size/Dimension$Pixels;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil/size/Dimension$Pixels;

    iget p0, p0, Lcoil/size/Dimension$Pixels;->px:I

    goto :goto_0

    .line 227
    :cond_0
    sget-object p0, Lcoil/util/-Utils$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcoil/size/Scale;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method public static final unsupported()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 233
    const-string v1, "Unsupported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final widthPx(Lcoil/size/Size;Lcoil/size/Scale;Lkotlin/jvm/functions/Function0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/size/Size;",
            "Lcoil/size/Scale;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 219
    invoke-static {p0}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object p0

    invoke-static {p0, p1}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result p0

    :goto_0
    return p0
.end method
