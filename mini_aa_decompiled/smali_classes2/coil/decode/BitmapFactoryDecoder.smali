.class public final Lcoil/decode/BitmapFactoryDecoder;
.super Ljava/lang/Object;
.source "BitmapFactoryDecoder.kt"

# interfaces
.implements Lcoil/decode/Decoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/decode/BitmapFactoryDecoder$Companion;,
        Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;,
        Lcoil/decode/BitmapFactoryDecoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapFactoryDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil/decode/BitmapFactoryDecoder\n+ 2 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 5 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n+ 6 Utils.kt\ncoil/util/-Utils\n*L\n1#1,227:1\n78#2,9:228\n1#3:237\n50#4:238\n28#5:239\n219#6:240\n223#6:241\n*S KotlinDebug\n*F\n+ 1 BitmapFactoryDecoder.kt\ncoil/decode/BitmapFactoryDecoder\n*L\n45#1:228,9\n92#1:238\n92#1:239\n144#1:240\n145#1:241\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0003\u0017\u0018\u0019B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0019\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000cB#\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\rJ\u000e\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010J\u000c\u0010\u000e\u001a\u00020\u000f*\u00020\u0011H\u0002J\u0014\u0010\u0012\u001a\u00020\u0013*\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0014\u0010\u0016\u001a\u00020\u0013*\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcoil/decode/BitmapFactoryDecoder;",
        "Lcoil/decode/Decoder;",
        "source",
        "Lcoil/decode/ImageSource;",
        "options",
        "Lcoil/request/Options;",
        "parallelismLock",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "exifOrientationPolicy",
        "Lcoil/decode/ExifOrientationPolicy;",
        "<init>",
        "(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;)V",
        "(Lcoil/decode/ImageSource;Lcoil/request/Options;)V",
        "(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V",
        "decode",
        "Lcoil/decode/DecodeResult;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Landroid/graphics/BitmapFactory$Options;",
        "configureConfig",
        "",
        "exifData",
        "Lcoil/decode/ExifData;",
        "configureScale",
        "Factory",
        "ExceptionCatchingSource",
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
.field public static final Companion:Lcoil/decode/BitmapFactoryDecoder$Companion;

.field public static final DEFAULT_MAX_PARALLELISM:I = 0x4


# instance fields
.field private final exifOrientationPolicy:Lcoil/decode/ExifOrientationPolicy;

.field private final options:Lcoil/request/Options;

.field private final parallelismLock:Lkotlinx/coroutines/sync/Semaphore;

.field private final source:Lcoil/decode/ImageSource;


# direct methods
.method public static synthetic $r8$lambda$JfaWZjat2AoVuXgGpv1j76E3ZlA(Lcoil/decode/BitmapFactoryDecoder;)Lcoil/decode/DecodeResult;
    .locals 0

    invoke-static {p0}, Lcoil/decode/BitmapFactoryDecoder;->decode$lambda$1$lambda$0(Lcoil/decode/BitmapFactoryDecoder;)Lcoil/decode/DecodeResult;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/decode/BitmapFactoryDecoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/decode/BitmapFactoryDecoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/decode/BitmapFactoryDecoder;->Companion:Lcoil/decode/BitmapFactoryDecoder$Companion;

    return-void
.end method

.method public synthetic constructor <init>(Lcoil/decode/ImageSource;Lcoil/request/Options;)V
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 36
    invoke-direct/range {v0 .. v6}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Kept for binary compatibility."
    .end annotation

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 43
    invoke-direct/range {v0 .. v6}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x2

    const/4 p4, 0x0

    const p5, 0x7fffffff

    const/4 v0, 0x0

    .line 42
    invoke-static {p5, v0, p3, p4}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p3

    .line 38
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;)V

    return-void
.end method

.method public constructor <init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcoil/decode/BitmapFactoryDecoder;->source:Lcoil/decode/ImageSource;

    .line 27
    iput-object p2, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    .line 28
    iput-object p3, p0, Lcoil/decode/BitmapFactoryDecoder;->parallelismLock:Lkotlinx/coroutines/sync/Semaphore;

    .line 29
    iput-object p4, p0, Lcoil/decode/BitmapFactoryDecoder;->exifOrientationPolicy:Lcoil/decode/ExifOrientationPolicy;

    return-void
.end method

.method public synthetic constructor <init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x2

    const/4 p6, 0x0

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 28
    invoke-static {v0, v1, p3, p6}, Lkotlinx/coroutines/sync/SemaphoreKt;->Semaphore$default(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/Semaphore;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 29
    sget-object p4, Lcoil/decode/ExifOrientationPolicy;->RESPECT_PERFORMANCE:Lcoil/decode/ExifOrientationPolicy;

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/decode/BitmapFactoryDecoder;-><init>(Lcoil/decode/ImageSource;Lcoil/request/Options;Lkotlinx/coroutines/sync/Semaphore;Lcoil/decode/ExifOrientationPolicy;)V

    return-void
.end method

.method private final configureConfig(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/ExifData;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 102
    invoke-virtual {p2}, Lcoil/decode/ExifData;->isFlipped()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcoil/decode/ExifUtilsKt;->isRotated(Lcoil/decode/ExifData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 103
    :cond_0
    invoke-static {v0}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 107
    :cond_1
    iget-object p0, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {p0}, Lcoil/request/Options;->getAllowRgb565()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, p0, :cond_2

    iget-object p0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string p2, "image/jpeg"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 108
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 112
    :cond_2
    iget-object p0, p1, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    sget-object p2, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne p0, p2, :cond_3

    sget-object p0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, p0, :cond_3

    .line 113
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    .line 116
    :cond_3
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private final configureScale(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/ExifData;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 123
    iget-object v2, v0, Lcoil/decode/BitmapFactoryDecoder;->source:Lcoil/decode/ImageSource;

    invoke-virtual {v2}, Lcoil/decode/ImageSource;->getMetadata()Lcoil/decode/ImageSource$Metadata;

    move-result-object v2

    .line 124
    instance-of v3, v2, Lcoil/decode/ResourceMetadata;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v3}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object v3

    invoke-static {v3}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 127
    check-cast v2, Lcoil/decode/ResourceMetadata;

    invoke-virtual {v2}, Lcoil/decode/ResourceMetadata;->getDensity()I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 128
    iget-object v0, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    return-void

    .line 133
    :cond_0
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x0

    if-lez v2, :cond_a

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v2, :cond_1

    goto/16 :goto_5

    .line 141
    :cond_1
    invoke-static/range {p2 .. p2}, Lcoil/decode/ExifUtilsKt;->isSwapped(Lcoil/decode/ExifData;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 142
    :goto_0
    invoke-static/range {p2 .. p2}, Lcoil/decode/ExifUtilsKt;->isSwapped(Lcoil/decode/ExifData;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    :cond_3
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 144
    :goto_1
    iget-object v6, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v6}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object v6

    iget-object v7, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v7}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v7

    .line 240
    invoke-static {v6}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v6, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v6

    invoke-static {v6, v7}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result v6

    .line 145
    :goto_2
    iget-object v7, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v7}, Lcoil/request/Options;->getSize()Lcoil/size/Size;

    move-result-object v7

    iget-object v8, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v8}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v8

    .line 241
    invoke-static {v7}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object v7

    invoke-static {v7, v8}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result v7

    .line 153
    :goto_3
    iget-object v8, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v8}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v8

    .line 148
    invoke-static {v2, v5, v6, v7, v8}, Lcoil/decode/DecodeUtils;->calculateInSampleSize(IIIILcoil/size/Scale;)I

    move-result v8

    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v8, v2

    .line 158
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v10, v2

    div-double v12, v8, v10

    int-to-double v8, v5

    .line 159
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v10, v2

    div-double v14, v8, v10

    int-to-double v5, v6

    int-to-double v7, v7

    .line 162
    iget-object v2, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v2}, Lcoil/request/Options;->getScale()Lcoil/size/Scale;

    move-result-object v20

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    .line 157
    invoke-static/range {v12 .. v20}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(DDDDLcoil/size/Scale;)D

    move-result-wide v5

    .line 166
    iget-object v0, v0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getAllowInexactSize()Z

    move-result v0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_6

    .line 167
    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtMost(DD)D

    move-result-wide v5

    :cond_6
    cmpg-double v0, v5, v7

    if-nez v0, :cond_7

    move v3, v4

    :cond_7
    xor-int/lit8 v0, v3, 0x1

    .line 170
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 171
    iget-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_9

    cmpl-double v0, v5, v7

    const v2, 0x7fffffff

    if-lez v0, :cond_8

    int-to-double v3, v2

    div-double/2addr v3, v5

    .line 174
    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 175
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    goto :goto_4

    .line 178
    :cond_8
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-double v2, v2

    mul-double/2addr v2, v5

    .line 179
    invoke-static {v2, v3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_9
    :goto_4
    return-void

    .line 134
    :cond_a
    :goto_5
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 135
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    return-void
.end method

.method private final decode(Landroid/graphics/BitmapFactory$Options;)Lcoil/decode/DecodeResult;
    .locals 8

    .line 50
    new-instance v0, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;

    iget-object v1, p0, Lcoil/decode/BitmapFactoryDecoder;->source:Lcoil/decode/ImageSource;

    invoke-virtual {v1}, Lcoil/decode/ImageSource;->source()Lokio/BufferedSource;

    move-result-object v1

    check-cast v1, Lokio/Source;

    invoke-direct {v0, v1}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;-><init>(Lokio/Source;)V

    .line 51
    move-object v1, v0

    check-cast v1, Lokio/Source;

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    const/4 v2, 0x1

    .line 54
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    invoke-interface {v1}, Lokio/BufferedSource;->peek()Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v3}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {v0}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    .line 57
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    sget-object v5, Lcoil/decode/ExifUtils;->INSTANCE:Lcoil/decode/ExifUtils;

    iget-object v6, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v7, p0, Lcoil/decode/BitmapFactoryDecoder;->exifOrientationPolicy:Lcoil/decode/ExifOrientationPolicy;

    invoke-virtual {v5, v6, v1, v7}, Lcoil/decode/ExifUtils;->getExifData(Ljava/lang/String;Lokio/BufferedSource;Lcoil/decode/ExifOrientationPolicy;)Lcoil/decode/ExifData;

    move-result-object v5

    .line 61
    invoke-virtual {v0}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v6

    if-nez v6, :cond_5

    .line 64
    iput-boolean v3, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 66
    iget-object v6, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v6}, Lcoil/request/Options;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 67
    iget-object v6, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v6}, Lcoil/request/Options;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v6

    iput-object v6, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 69
    :cond_0
    iget-object v6, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v6}, Lcoil/request/Options;->getPremultipliedAlpha()Z

    move-result v6

    iput-boolean v6, p1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 71
    invoke-direct {p0, p1, v5}, Lcoil/decode/BitmapFactoryDecoder;->configureConfig(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/ExifData;)V

    .line 72
    invoke-direct {p0, p1, v5}, Lcoil/decode/BitmapFactoryDecoder;->configureScale(Landroid/graphics/BitmapFactory$Options;Lcoil/decode/ExifData;)V

    .line 75
    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v6, v1

    check-cast v6, Lokio/BufferedSource;

    .line 76
    invoke-interface {v6}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v4, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    invoke-virtual {v0}, Lcoil/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v6, :cond_3

    .line 86
    iget-object v0, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {v0}, Lcoil/request/Options;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 89
    sget-object v0, Lcoil/decode/ExifUtils;->INSTANCE:Lcoil/decode/ExifUtils;

    invoke-virtual {v0, v6, v5}, Lcoil/decode/ExifUtils;->reverseTransformations(Landroid/graphics/Bitmap;Lcoil/decode/ExifData;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    new-instance v1, Lcoil/decode/DecodeResult;

    .line 92
    iget-object p0, p0, Lcoil/decode/BitmapFactoryDecoder;->options:Lcoil/request/Options;

    invoke-virtual {p0}, Lcoil/request/Options;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 239
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 238
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 93
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gt p0, v2, :cond_2

    iget-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 91
    :cond_2
    :goto_0
    invoke-direct {v1, v4, v2}, Lcoil/decode/DecodeResult;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object v1

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the input source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_4
    throw v0

    :catchall_0
    move-exception p0

    .line 75
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :cond_5
    throw v6

    .line 56
    :cond_6
    throw v3
.end method

.method private static final decode$lambda$1$lambda$0(Lcoil/decode/BitmapFactoryDecoder;)Lcoil/decode/DecodeResult;
    .locals 1

    .line 46
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-direct {p0, v0}, Lcoil/decode/BitmapFactoryDecoder;->decode(Landroid/graphics/BitmapFactory$Options;)Lcoil/decode/DecodeResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decode(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/decode/DecodeResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcoil/decode/BitmapFactoryDecoder$decode$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;

    iget v1, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;

    invoke-direct {v0, p0, p1}, Lcoil/decode/BitmapFactoryDecoder$decode$1;-><init>(Lcoil/decode/BitmapFactoryDecoder;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 45
    iget v2, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Semaphore;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Semaphore;

    iget-object v2, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcoil/decode/BitmapFactoryDecoder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcoil/decode/BitmapFactoryDecoder;->parallelismLock:Lkotlinx/coroutines/sync/Semaphore;

    .line 231
    iput-object p0, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/sync/Semaphore;->acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    .line 46
    :cond_4
    :goto_1
    :try_start_1
    new-instance v2, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcoil/decode/BitmapFactoryDecoder$$ExternalSyntheticLambda0;-><init>(Lcoil/decode/BitmapFactoryDecoder;)V

    iput-object p1, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$0:Ljava/lang/Object;

    const/4 p0, 0x0

    iput-object p0, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcoil/decode/BitmapFactoryDecoder$decode$1;->label:I

    invoke-static {p0, v2, v0, v4, p0}, Lkotlinx/coroutines/InterruptibleKt;->runInterruptible$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_2
    :try_start_2
    check-cast p1, Lcoil/decode/DecodeResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    invoke-interface {p0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    invoke-interface {p0}, Lkotlinx/coroutines/sync/Semaphore;->release()V

    throw p1
.end method
