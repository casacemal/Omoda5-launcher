.class public final Lcoil/memory/MemoryCacheService;
.super Ljava/lang/Object;
.source "MemoryCacheService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/MemoryCacheService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryCacheService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryCacheService.kt\ncoil/memory/MemoryCacheService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Collections.kt\ncoil/util/-Collections\n+ 4 Logs.kt\ncoil/util/-Logs\n+ 5 Dimension.kt\ncoil/size/-Dimensions\n+ 6 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 7 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,236:1\n1#2:237\n22#3,4:238\n21#4,4:242\n21#4,4:246\n21#4,4:252\n21#4,4:256\n57#5:250\n57#5:251\n50#6:260\n28#7:261\n*S KotlinDebug\n*F\n+ 1 MemoryCacheService.kt\ncoil/memory/MemoryCacheService\n*L\n62#1:238,4\n93#1:242,4\n116#1:246,4\n166#1:252,4\n176#1:256,4\n137#1:250\n138#1:251\n213#1:260\n213#1:261\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 ,2\u00020\u0001:\u0001,B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ(\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J(\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J5\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0001\u00a2\u0006\u0002\u0008\u001dJ0\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001f\u001a\u00020\u001b2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010 \u001a\u00020!J&\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010&\u001a\u00020\u001b*\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\u001a\u0010(\u001a\u0004\u0018\u00010)*\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcoil/memory/MemoryCacheService;",
        "",
        "imageLoader",
        "Lcoil/ImageLoader;",
        "requestService",
        "Lcoil/request/RequestService;",
        "logger",
        "Lcoil/util/Logger;",
        "<init>",
        "(Lcoil/ImageLoader;Lcoil/request/RequestService;Lcoil/util/Logger;)V",
        "newCacheKey",
        "Lcoil/memory/MemoryCache$Key;",
        "request",
        "Lcoil/request/ImageRequest;",
        "mappedData",
        "options",
        "Lcoil/request/Options;",
        "eventListener",
        "Lcoil/EventListener;",
        "getCacheValue",
        "Lcoil/memory/MemoryCache$Value;",
        "cacheKey",
        "size",
        "Lcoil/size/Size;",
        "scale",
        "Lcoil/size/Scale;",
        "isCacheValueValid",
        "",
        "cacheValue",
        "isCacheValueValid$coil_base_release",
        "isSizeValid",
        "setCacheValue",
        "result",
        "Lcoil/intercept/EngineInterceptor$ExecuteResult;",
        "newResult",
        "Lcoil/request/SuccessResult;",
        "chain",
        "Lcoil/intercept/Interceptor$Chain;",
        "isSampled",
        "(Lcoil/memory/MemoryCache$Value;)Z",
        "diskCacheKey",
        "",
        "getDiskCacheKey",
        "(Lcoil/memory/MemoryCache$Value;)Ljava/lang/String;",
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
.field public static final Companion:Lcoil/memory/MemoryCacheService$Companion;

.field public static final EXTRA_DISK_CACHE_KEY:Ljava/lang/String; = "coil#disk_cache_key"

.field public static final EXTRA_IS_SAMPLED:Ljava/lang/String; = "coil#is_sampled"

.field public static final EXTRA_TRANSFORMATION_INDEX:Ljava/lang/String; = "coil#transformation_"

.field public static final EXTRA_TRANSFORMATION_SIZE:Ljava/lang/String; = "coil#transformation_size"

.field private static final TAG:Ljava/lang/String; = "MemoryCacheService"


# instance fields
.field private final imageLoader:Lcoil/ImageLoader;

.field private final logger:Lcoil/util/Logger;

.field private final requestService:Lcoil/request/RequestService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/memory/MemoryCacheService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/memory/MemoryCacheService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/memory/MemoryCacheService;->Companion:Lcoil/memory/MemoryCacheService$Companion;

    return-void
.end method

.method public constructor <init>(Lcoil/ImageLoader;Lcoil/request/RequestService;Lcoil/util/Logger;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcoil/memory/MemoryCacheService;->imageLoader:Lcoil/ImageLoader;

    .line 32
    iput-object p2, p0, Lcoil/memory/MemoryCacheService;->requestService:Lcoil/request/RequestService;

    .line 33
    iput-object p3, p0, Lcoil/memory/MemoryCacheService;->logger:Lcoil/util/Logger;

    return-void
.end method

.method private final getDiskCacheKey(Lcoil/memory/MemoryCache$Value;)Ljava/lang/String;
    .locals 0

    .line 226
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$Value;->getExtras()Ljava/util/Map;

    move-result-object p0

    const-string p1, "coil#disk_cache_key"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final isSampled(Lcoil/memory/MemoryCache$Value;)Z
    .locals 0

    .line 223
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$Value;->getExtras()Ljava/util/Map;

    move-result-object p0

    const-string p1, "coil#is_sampled"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private final isSizeValid(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;Lcoil/size/Size;Lcoil/size/Scale;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 113
    invoke-direct {v0, v1}, Lcoil/memory/MemoryCacheService;->isSampled(Lcoil/memory/MemoryCache$Value;)Z

    move-result v3

    .line 114
    invoke-static/range {p4 .. p4}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const-string v8, "MemoryCacheService"

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    .line 116
    iget-object v0, v0, Lcoil/memory/MemoryCacheService;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v1

    if-gt v1, v7, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Requested original size, but cached image is sampled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {v0, v8, v7, v1, v5}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v6

    :cond_1
    return v9

    .line 128
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcoil/memory/MemoryCache$Key;->getExtras()Ljava/util/Map;

    move-result-object v4

    const-string v10, "coil#transformation_size"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 131
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 135
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcoil/memory/MemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 136
    invoke-virtual/range {p3 .. p3}, Lcoil/memory/MemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 137
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v10

    .line 250
    instance-of v11, v10, Lcoil/size/Dimension$Pixels;

    const v12, 0x7fffffff

    if-eqz v11, :cond_4

    check-cast v10, Lcoil/size/Dimension$Pixels;

    iget v10, v10, Lcoil/size/Dimension$Pixels;->px:I

    goto :goto_0

    :cond_4
    move v10, v12

    .line 138
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object v11

    .line 251
    instance-of v13, v11, Lcoil/size/Dimension$Pixels;

    if-eqz v13, :cond_5

    check-cast v11, Lcoil/size/Dimension$Pixels;

    iget v12, v11, Lcoil/size/Dimension$Pixels;->px:I

    .line 139
    :cond_5
    invoke-static {v4, v1, v10, v12, v2}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v13

    .line 150
    invoke-static/range {p1 .. p1}, Lcoil/util/-Requests;->getAllowInexactSize(Lcoil/request/ImageRequest;)Z

    move-result v11

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-eqz v11, :cond_7

    .line 152
    invoke-static {v13, v14, v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v15

    move-object/from16 v17, v8

    int-to-double v7, v10

    int-to-double v9, v4

    mul-double/2addr v9, v15

    sub-double/2addr v7, v9

    .line 153
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-lez v7, :cond_6

    int-to-double v7, v12

    int-to-double v9, v1

    mul-double/2addr v15, v9

    sub-double/2addr v7, v15

    .line 154
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v5

    if-gtz v7, :cond_9

    :cond_6
    const/4 v7, 0x1

    return v7

    :cond_7
    move-object/from16 v17, v8

    move v7, v9

    .line 158
    invoke-static {v10}, Lcoil/util/-Utils;->isMinOrMax(I)Z

    move-result v8

    if-nez v8, :cond_8

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v7, :cond_9

    .line 159
    :cond_8
    invoke-static {v12}, Lcoil/util/-Utils;->isMinOrMax(I)Z

    move-result v8

    if-nez v8, :cond_f

    sub-int/2addr v12, v1

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v7, :cond_9

    goto/16 :goto_2

    :cond_9
    cmpg-double v7, v13, v5

    .line 165
    const-string v8, ")."

    const-string v9, ": Cached image\'s request size ("

    const-string v10, ", "

    if-nez v7, :cond_b

    :cond_a
    move-object/from16 v7, v17

    goto :goto_1

    :cond_b
    if-nez v11, :cond_a

    .line 166
    iget-object v0, v0, Lcoil/memory/MemoryCacheService;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_c

    .line 252
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    const/4 v5, 0x3

    if-gt v3, v5, :cond_c

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string v3, ") does not exactly match the requested size ("

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v7, v17

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 253
    invoke-interface {v0, v7, v3, v1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    const/4 v0, 0x0

    return v0

    :goto_1
    cmpl-double v5, v13, v5

    if-lez v5, :cond_e

    if-eqz v3, :cond_e

    .line 176
    iget-object v0, v0, Lcoil/memory/MemoryCacheService;->logger:Lcoil/util/Logger;

    if-eqz v0, :cond_d

    .line 256
    invoke-interface {v0}, Lcoil/util/Logger;->getLevel()I

    move-result v3

    const/4 v5, 0x3

    if-gt v3, v5, :cond_d

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string v3, ") is smaller than the requested size ("

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v3

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    invoke-virtual/range {p4 .. p4}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object v3

    .line 177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 257
    invoke-interface {v0, v7, v3, v1, v2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_2
    move v0, v7

    return v0
.end method


# virtual methods
.method public final getCacheValue(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/size/Size;Lcoil/size/Scale;)Lcoil/memory/MemoryCache$Value;
    .locals 8

    .line 77
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/CachePolicy;->getReadEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcoil/memory/MemoryCacheService;->imageLoader:Lcoil/ImageLoader;

    invoke-interface {v0}, Lcoil/ImageLoader;->getMemoryCache()Lcoil/memory/MemoryCache;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lcoil/memory/MemoryCache;->get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$Value;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    move-object v7, p4

    .line 79
    invoke-virtual/range {v2 .. v7}, Lcoil/memory/MemoryCacheService;->isCacheValueValid$coil_base_release(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;Lcoil/size/Size;Lcoil/size/Scale;)Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public final isCacheValueValid$coil_base_release(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;Lcoil/size/Size;Lcoil/size/Scale;)Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcoil/memory/MemoryCacheService;->requestService:Lcoil/request/RequestService;

    invoke-virtual {p3}, Lcoil/memory/MemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcoil/request/RequestService;->isConfigValidForHardware(Lcoil/request/ImageRequest;Landroid/graphics/Bitmap$Config;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object p0, p0, Lcoil/memory/MemoryCacheService;->logger:Lcoil/util/Logger;

    if-eqz p0, :cond_0

    .line 242
    invoke-interface {p0}, Lcoil/util/Logger;->getLevel()I

    move-result p2

    const/4 p3, 0x3

    if-gt p2, p3, :cond_0

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": Cached bitmap is hardware-backed, which is incompatible with the request."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 243
    const-string p4, "MemoryCacheService"

    invoke-interface {p0, p4, p3, p1, p2}, Lcoil/util/Logger;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 101
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcoil/memory/MemoryCacheService;->isSizeValid(Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;Lcoil/size/Size;Lcoil/size/Scale;)Z

    move-result p0

    return p0
.end method

.method public final newCacheKey(Lcoil/request/ImageRequest;Ljava/lang/Object;Lcoil/request/Options;Lcoil/EventListener;)Lcoil/memory/MemoryCache$Key;
    .locals 4

    .line 44
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getMemoryCacheKey()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 47
    :cond_0
    invoke-interface {p4, p1, p2}, Lcoil/EventListener;->keyStart(Lcoil/request/ImageRequest;Ljava/lang/Object;)V

    .line 48
    iget-object p0, p0, Lcoil/memory/MemoryCacheService;->imageLoader:Lcoil/ImageLoader;

    invoke-interface {p0}, Lcoil/ImageLoader;->getComponents()Lcoil/ComponentRegistry;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcoil/ComponentRegistry;->key(Ljava/lang/Object;Lcoil/request/Options;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-interface {p4, p1, p0}, Lcoil/EventListener;->keyEnd(Lcoil/request/ImageRequest;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p0, :cond_1

    return-object p2

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object p4

    .line 54
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getParameters()Lcoil/request/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/Parameters;->memoryCacheKeys()Ljava/util/Map;

    move-result-object v0

    .line 55
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p2, p3, p2}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 61
    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    .line 62
    invoke-virtual {p1}, Lcoil/request/ImageRequest;->getTransformations()Ljava/util/List;

    move-result-object p1

    .line 238
    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    .line 239
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil/transform/Transformation;

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "coil#transformation_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcoil/transform/Transformation;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p3}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcoil/size/Size;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "coil#transformation_size"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_4
    new-instance p1, Lcoil/memory/MemoryCache$Key;

    invoke-direct {p1, p0, p2}, Lcoil/memory/MemoryCache$Key;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public final newResult(Lcoil/intercept/Interceptor$Chain;Lcoil/request/ImageRequest;Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;)Lcoil/request/SuccessResult;
    .locals 9

    .line 212
    new-instance v8, Lcoil/request/SuccessResult;

    .line 213
    invoke-virtual {p4}, Lcoil/memory/MemoryCache$Value;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 260
    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 215
    sget-object v3, Lcoil/decode/DataSource;->MEMORY_CACHE:Lcoil/decode/DataSource;

    .line 217
    invoke-direct {p0, p4}, Lcoil/memory/MemoryCacheService;->getDiskCacheKey(Lcoil/memory/MemoryCache$Value;)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-direct {p0, p4}, Lcoil/memory/MemoryCacheService;->isSampled(Lcoil/memory/MemoryCache$Value;)Z

    move-result v6

    .line 219
    invoke-static {p1}, Lcoil/util/-Utils;->isPlaceholderCached(Lcoil/intercept/Interceptor$Chain;)Z

    move-result v7

    move-object v0, v8

    move-object v2, p2

    move-object v4, p3

    .line 212
    invoke-direct/range {v0 .. v7}, Lcoil/request/SuccessResult;-><init>(Landroid/graphics/drawable/Drawable;Lcoil/request/ImageRequest;Lcoil/decode/DataSource;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;ZZ)V

    return-object v8
.end method

.method public final setCacheValue(Lcoil/memory/MemoryCache$Key;Lcoil/request/ImageRequest;Lcoil/intercept/EngineInterceptor$ExecuteResult;)Z
    .locals 3

    .line 193
    invoke-virtual {p2}, Lcoil/request/ImageRequest;->getMemoryCachePolicy()Lcoil/request/CachePolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcoil/request/CachePolicy;->getWriteEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 194
    :cond_0
    iget-object p0, p0, Lcoil/memory/MemoryCacheService;->imageLoader:Lcoil/ImageLoader;

    invoke-interface {p0}, Lcoil/ImageLoader;->getMemoryCache()Lcoil/memory/MemoryCache;

    move-result-object p0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p3}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 199
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 200
    invoke-virtual {p3}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->isSampled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "coil#is_sampled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p3}, Lcoil/intercept/EngineInterceptor$ExecuteResult;->getDiskCacheKey()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v1, "coil#disk_cache_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_4
    new-instance p3, Lcoil/memory/MemoryCache$Value;

    invoke-direct {p3, p2, v0}, Lcoil/memory/MemoryCache$Value;-><init>(Landroid/graphics/Bitmap;Ljava/util/Map;)V

    invoke-interface {p0, p1, p3}, Lcoil/memory/MemoryCache;->set(Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$Value;)V

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v0
.end method
