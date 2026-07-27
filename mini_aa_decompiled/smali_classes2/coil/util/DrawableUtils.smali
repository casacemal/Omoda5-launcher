.class public final Lcoil/util/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableUtils.kt\ncoil/util/DrawableUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\ncoil/util/-Utils\n+ 4 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,96:1\n1#2:97\n219#3:98\n223#3:99\n219#3:105\n223#3:106\n95#4:100\n38#5:101\n49#5:102\n60#5:103\n71#5:104\n*S KotlinDebug\n*F\n+ 1 DrawableUtils.kt\ncoil/util/DrawableUtils\n*L\n54#1:98\n55#1:99\n89#1:105\n90#1:106\n61#1:100\n63#1:101\n63#1:102\n63#1:103\n63#1:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0002J(\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcoil/util/DrawableUtils;",
        "",
        "<init>",
        "()V",
        "DEFAULT_SIZE",
        "",
        "convertToBitmap",
        "Landroid/graphics/Bitmap;",
        "drawable",
        "Landroid/graphics/drawable/Drawable;",
        "config",
        "Landroid/graphics/Bitmap$Config;",
        "size",
        "Lcoil/size/Size;",
        "scale",
        "Lcoil/size/Scale;",
        "allowInexactSize",
        "",
        "isConfigValid",
        "bitmap",
        "isSizeValid",
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
.field private static final DEFAULT_SIZE:I = 0x200

.field public static final INSTANCE:Lcoil/util/DrawableUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcoil/util/DrawableUtils;

    invoke-direct {v0}, Lcoil/util/DrawableUtils;-><init>()V

    sput-object v0, Lcoil/util/DrawableUtils;->INSTANCE:Lcoil/util/DrawableUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isConfigValid(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z
    .locals 0

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p2}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSizeValid(ZLandroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/size/Scale;)Z
    .locals 3

    const/4 p0, 0x1

    if-eqz p1, :cond_0

    return p0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 88
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 105
    invoke-static {p3}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p3}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v1

    invoke-static {v1, p4}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result v1

    .line 106
    :goto_0
    invoke-static {p3}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p3}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object p2

    invoke-static {p2, p4}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result p2

    .line 86
    :goto_1
    invoke-static {p1, v0, v1, p2, p4}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method


# virtual methods
.method public final convertToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/Size;Lcoil/size/Scale;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 40
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0, p2}, Lcoil/util/DrawableUtils;->isConfigValid(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p5, v0, p3, p4}, Lcoil/util/DrawableUtils;->isSizeValid(ZLandroid/graphics/Bitmap;Lcoil/size/Size;Lcoil/size/Scale;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcoil/util/-Utils;->getWidth(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    const/16 p5, 0x200

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p5

    .line 50
    :goto_0
    invoke-static {p0}, Lcoil/util/-Utils;->getHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-lez v0, :cond_2

    move p5, v0

    .line 98
    :cond_2
    invoke-static {p3}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcoil/size/Size;->getWidth()Lcoil/size/Dimension;

    move-result-object v0

    invoke-static {v0, p4}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result v0

    .line 99
    :goto_1
    invoke-static {p3}, Lcoil/size/-Sizes;->isOriginal(Lcoil/size/Size;)Z

    move-result v1

    if-eqz v1, :cond_4

    move p3, p5

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcoil/size/Size;->getHeight()Lcoil/size/Dimension;

    move-result-object p3

    invoke-static {p3, p4}, Lcoil/util/-Utils;->toPx(Lcoil/size/Dimension;Lcoil/size/Scale;)I

    move-result p3

    .line 51
    :goto_2
    invoke-static {p1, p5, v0, p3, p4}, Lcoil/decode/DecodeUtils;->computeSizeMultiplier(IIIILcoil/size/Scale;)D

    move-result-wide p3

    int-to-double v0, p1

    mul-double/2addr v0, p3

    .line 58
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    int-to-double v0, p5

    mul-double/2addr p3, v0

    .line 59
    invoke-static {p3, p4}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p3

    .line 61
    invoke-static {p2}, Lcoil/util/-Bitmaps;->toSoftware(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;

    move-result-object p2

    .line 100
    invoke-static {p1, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 63
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 101
    iget p5, p4, Landroid/graphics/Rect;->left:I

    .line 102
    iget v0, p4, Landroid/graphics/Rect;->top:I

    .line 103
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 104
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v2, v2, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p0, p5, v0, v1, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p2
.end method
