.class public final Lcoil/transform/RoundedCornersTransformation;
.super Ljava/lang/Object;
.source "RoundedCornersTransformation.kt"

# interfaces
.implements Lcoil/transform/Transformation;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoundedCornersTransformation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedCornersTransformation.kt\ncoil/transform/RoundedCornersTransformation\n+ 2 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Dimension.kt\ncoil/size/-Dimensions\n*L\n1#1,132:1\n95#2:133\n43#2,2:134\n45#2:137\n1#3:136\n57#4:138\n57#4:139\n*S KotlinDebug\n*F\n+ 1 RoundedCornersTransformation.kt\ncoil/transform/RoundedCornersTransformation\n*L\n58#1:133\n59#1:134,2\n59#1:137\n106#1:138\n107#1:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0013\u0008\u0016\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0096@\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u0017H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcoil/transform/RoundedCornersTransformation;",
        "Lcoil/transform/Transformation;",
        "topLeft",
        "",
        "topRight",
        "bottomLeft",
        "bottomRight",
        "<init>",
        "(FFFF)V",
        "radius",
        "(F)V",
        "cacheKey",
        "",
        "getCacheKey",
        "()Ljava/lang/String;",
        "transform",
        "Landroid/graphics/Bitmap;",
        "input",
        "size",
        "Lcoil/size/Size;",
        "(Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "calculateOutputSize",
        "Lkotlin/Pair;",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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


# instance fields
.field private final bottomLeft:F

.field private final bottomRight:F

.field private final cacheKey:Ljava/lang/String;

.field private final topLeft:F

.field private final topRight:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcoil/transform/RoundedCornersTransformation;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p1, p1, p1}, Lcoil/transform/RoundedCornersTransformation;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcoil/transform/RoundedCornersTransformation;->topLeft:F

    .line 38
    iput p2, p0, Lcoil/transform/RoundedCornersTransformation;->topRight:F

    .line 39
    iput p3, p0, Lcoil/transform/RoundedCornersTransformation;->bottomLeft:F

    .line 40
    iput p4, p0, Lcoil/transform/RoundedCornersTransformation;->bottomRight:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcoil/transform/RoundedCornersTransformation;->cacheKey:Ljava/lang/String;

    return-void

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All radii must be >= 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 36
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcoil/transform/RoundedCornersTransformation;-><init>(FFFF)V

    return-void
.end method

.method private final calculateOutputSize(Landroid/graphics/Bitmap;Lcoil/size/Size;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcoil/size/Size;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    invoke-static {p2}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 98
    :cond_0
    invoke-virtual {p2}, Lcoil/size/Size;->component1()Lcoil/size/Dimension;

    move-result-object p0

    invoke-virtual {p2}, Lcoil/size/Size;->component2()Lcoil/size/Dimension;

    move-result-object v0

    .line 99
    instance-of v1, p0, Lcoil/size/Dimension$Pixels;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcoil/size/Dimension$Pixels;

    if-eqz v1, :cond_1

    .line 100
    check-cast p0, Lcoil/size/Dimension$Pixels;

    iget p0, p0, Lcoil/size/Dimension$Pixels;->px:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v0, Lcoil/size/Dimension$Pixels;

    iget p1, v0, Lcoil/size/Dimension$Pixels;->px:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    .line 104
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 106
    invoke-virtual {p2}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v1

    .line 138
    instance-of v2, v1, Lcoil/size/Dimension$Pixels;

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_2

    check-cast v1, Lcoil/size/Dimension$Pixels;

    iget v1, v1, Lcoil/size/Dimension$Pixels;->px:I

    goto :goto_0

    :cond_2
    move v1, v3

    .line 107
    :goto_0
    invoke-virtual {p2}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object p2

    .line 139
    instance-of v2, p2, Lcoil/size/Dimension$Pixels;

    if-eqz v2, :cond_3

    check-cast p2, Lcoil/size/Dimension$Pixels;

    iget v3, p2, Lcoil/size/Dimension$Pixels;->px:I

    .line 108
    :cond_3
    sget-object p2, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    .line 103
    invoke-static {p0, v0, v1, v3, p2}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-double v2, p0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p0

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-double p1, p1

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lcoil/transform/RoundedCornersTransformation;

    if-eqz v1, :cond_1

    .line 118
    iget v1, p0, Lcoil/transform/RoundedCornersTransformation;->topLeft:F

    check-cast p1, Lcoil/transform/RoundedCornersTransformation;

    iget v2, p1, Lcoil/transform/RoundedCornersTransformation;->topLeft:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 119
    iget v1, p0, Lcoil/transform/RoundedCornersTransformation;->topRight:F

    iget v2, p1, Lcoil/transform/RoundedCornersTransformation;->topRight:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 120
    iget v1, p0, Lcoil/transform/RoundedCornersTransformation;->bottomLeft:F

    iget v2, p1, Lcoil/transform/RoundedCornersTransformation;->bottomLeft:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    .line 121
    iget p0, p0, Lcoil/transform/RoundedCornersTransformation;->bottomRight:F

    iget p1, p1, Lcoil/transform/RoundedCornersTransformation;->bottomRight:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcoil/transform/RoundedCornersTransformation;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 125
    iget v0, p0, Lcoil/transform/RoundedCornersTransformation;->topLeft:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget v1, p0, Lcoil/transform/RoundedCornersTransformation;->topRight:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget v1, p0, Lcoil/transform/RoundedCornersTransformation;->bottomLeft:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget p0, p0, Lcoil/transform/RoundedCornersTransformation;->bottomRight:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public transform(Landroid/graphics/Bitmap;Lcoil/size/Size;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcoil/size/Size;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 54
    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 56
    invoke-direct {p0, p1, p2}, Lcoil/transform/RoundedCornersTransformation;->calculateOutputSize(Landroid/graphics/Bitmap;Lcoil/size/Size;)Lkotlin/Pair;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 58
    invoke-static {p1}, Lcoil/util/-Bitmaps;->getSafeConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 133
    invoke-static {v1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 68
    sget-object v8, Lcoil/size/Scale;->FILL:Lcoil/size/Scale;

    .line 63
    invoke-static {v6, v7, v1, p2, v8}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide v6

    double-to-float v6, v6

    int-to-float v1, v1

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    sub-float/2addr v1, v7

    const/4 v7, 0x2

    int-to-float v8, v7

    div-float/2addr v1, v8

    int-to-float p2, p2

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    sub-float/2addr p2, v9

    div-float/2addr p2, v8

    .line 72
    invoke-virtual {v4, v1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 73
    invoke-virtual {v4, v6, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 75
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v1, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 76
    invoke-virtual {p2, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 77
    check-cast p2, Landroid/graphics/Shader;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 80
    iget p1, p0, Lcoil/transform/RoundedCornersTransformation;->topLeft:F

    .line 81
    iget p2, p0, Lcoil/transform/RoundedCornersTransformation;->topRight:F

    .line 82
    iget v1, p0, Lcoil/transform/RoundedCornersTransformation;->bottomRight:F

    .line 83
    iget p0, p0, Lcoil/transform/RoundedCornersTransformation;->bottomLeft:F

    const/16 v4, 0x8

    new-array v4, v4, [F

    aput p1, v4, v5

    const/4 v5, 0x1

    aput p1, v4, v5

    aput p2, v4, v7

    aput p2, v4, v0

    const/4 p1, 0x4

    aput v1, v4, p1

    const/4 p1, 0x5

    aput v1, v4, p1

    const/4 p1, 0x6

    aput p0, v4, p1

    const/4 p1, 0x7

    aput p0, v4, p1

    .line 85
    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p0, v4, p2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 87
    invoke-virtual {v3, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v2
.end method
