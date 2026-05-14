.class public Lcom/chery/media/view/component/ArcScaleView;
.super Landroid/view/View;
.source "ArcScaleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final BAND_AM:I

.field private final BAND_FM:I

.field private cellNum:I

.field private centreLineBitmap:Landroid/graphics/Bitmap;

.field private centreX:F

.field private centreY:F

.field private currentValue:I

.field private endX:F

.field private endY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isTouching:Z

.field private itemValue:I

.field private lastValue:I

.field private listener:Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;

.field private maxValue:I

.field private minValue:I

.field private paint:Landroid/graphics/Paint;

.field private radioBand:I

.field private radioRegion:I

.field private radius:F

.field private scaleDistance:F

.field private scrollDistance:F

.field private scroller:Landroid/widget/Scroller;

.field private shaderDown:Landroid/graphics/LinearGradient;

.field private shaderUp:Landroid/graphics/LinearGradient;

.field private simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private startX:F

.field private startY:F

.field private totalItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/chery/media/view/component/ArcScaleView;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/component/ArcScaleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 91
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    .line 92
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->BAND_FM:I

    const/4 p1, 0x2

    .line 93
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->BAND_AM:I

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    .line 110
    iput-boolean p1, p0, Lcom/chery/media/view/component/ArcScaleView;->isTouching:Z

    .line 366
    new-instance p1, Lcom/chery/media/view/component/ArcScaleView$1;

    invoke-direct {p1, p0}, Lcom/chery/media/view/component/ArcScaleView$1;-><init>(Lcom/chery/media/view/component/ArcScaleView;)V

    iput-object p1, p0, Lcom/chery/media/view/component/ArcScaleView;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 117
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x1

    .line 91
    iput v2, v0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    .line 92
    iput v2, v0, Lcom/chery/media/view/component/ArcScaleView;->BAND_FM:I

    const/4 v3, 0x2

    .line 93
    iput v3, v0, Lcom/chery/media/view/component/ArcScaleView;->BAND_AM:I

    const/4 v3, 0x0

    .line 101
    iput v3, v0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    .line 110
    iput-boolean v3, v0, Lcom/chery/media/view/component/ArcScaleView;->isTouching:Z

    .line 366
    new-instance v4, Lcom/chery/media/view/component/ArcScaleView$1;

    invoke-direct {v4, v0}, Lcom/chery/media/view/component/ArcScaleView$1;-><init>(Lcom/chery/media/view/component/ArcScaleView;)V

    iput-object v4, v0, Lcom/chery/media/view/component/ArcScaleView;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    const/high16 v4, 0x41600000    # 14.0f

    .line 119
    iput v4, v0, Lcom/chery/media/view/component/ArcScaleView;->scaleDistance:F

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/chery/media/view/component/ArcScaleView;->initScaleParam()V

    .line 122
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41d00000    # 26.0f

    .line 123
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    iget-object v2, v0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/chery/media/view/component/ArcScaleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x43af0000    # 350.0f

    const/4 v9, 0x0

    const v10, 0x19191919

    const/4 v11, -0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/chery/media/view/component/ArcScaleView;->shaderUp:Landroid/graphics/LinearGradient;

    .line 126
    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v14, 0x43af0000    # 350.0f

    const/4 v15, 0x0

    const/high16 v16, 0x442f0000    # 700.0f

    const/16 v17, 0x0

    const/16 v18, -0x1

    const v19, 0x19191919

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/chery/media/view/component/ArcScaleView;->shaderDown:Landroid/graphics/LinearGradient;

    .line 128
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/chery/media/view/component/ArcScaleView;->scroller:Landroid/widget/Scroller;

    .line 129
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, v0, Lcom/chery/media/view/component/ArcScaleView;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, v1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v0, Lcom/chery/media/view/component/ArcScaleView;->gestureDetector:Landroid/view/GestureDetector;

    .line 130
    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/component/ArcScaleView;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    return p0
.end method

.method static synthetic access$002(Lcom/chery/media/view/component/ArcScaleView;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    return p1
.end method

.method static synthetic access$100(Lcom/chery/media/view/component/ArcScaleView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/component/ArcScaleView;->calculateCurrentValue()V

    return-void
.end method

.method private calculateCurrentValue()V
    .locals 5

    .line 423
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->scaleDistance:F

    div-float v2, v0, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/2addr v2, v3

    iget v4, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    rem-float/2addr v0, v1

    .line 424
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    .line 425
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    if-le v2, v0, :cond_0

    .line 426
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->totalItem:I

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    goto :goto_0

    .line 428
    :cond_0
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    if-ge v2, v0, :cond_1

    .line 429
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->totalItem:I

    mul-int/2addr v0, v3

    add-int/2addr v2, v0

    iput v2, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 433
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/chery/media/view/component/ArcScaleView;->invalidate()V

    .line 434
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->lastValue:I

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->listener:Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;

    if-eqz v0, :cond_2

    .line 435
    invoke-interface {v0, v1}, Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;->onValueChanged(I)V

    .line 436
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->lastValue:I

    :cond_2
    return-void
.end method

.method private drawScale(Landroid/graphics/Canvas;II)V
    .locals 11

    .line 260
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->scaleDistance:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    .line 261
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    const/high16 v0, 0x428c0000    # 70.0f

    .line 262
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    .line 263
    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    add-int/lit8 p2, p2, -0x19

    mul-int/2addr p2, p3

    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/2addr p2, p3

    add-int/2addr v1, p2

    .line 264
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    if-le v1, p2, :cond_0

    .line 265
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->totalItem:I

    mul-int/2addr p2, p3

    sub-int/2addr v1, p2

    goto :goto_0

    .line 267
    :cond_0
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    if-ge v1, p2, :cond_1

    .line 268
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->totalItem:I

    mul-int/2addr p2, p3

    add-int/2addr v1, p2

    .line 272
    :cond_1
    :goto_0
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    const/4 p3, 0x0

    const/high16 v2, 0x42640000    # 57.0f

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x2

    if-ne p2, v3, :cond_a

    .line 273
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    sub-int p2, v1, p2

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    iget v7, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/2addr v3, v7

    rem-int/2addr p2, v3

    if-nez p2, :cond_9

    .line 276
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endX:F

    .line 277
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endY:F

    .line 278
    invoke-direct {p0, v1}, Lcom/chery/media/view/component/ArcScaleView;->fmFreqFormat(I)Ljava/lang/String;

    move-result-object p2

    .line 279
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 280
    iget-object v2, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p2, p3, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 282
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    if-ne p3, v6, :cond_4

    .line 284
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iget v2, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/lit8 v3, v3, 0x19

    add-int/2addr v2, v3

    if-gt p3, v2, :cond_2

    const p3, 0x1a3ec

    if-eq v1, p3, :cond_8

    :cond_2
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iget v2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/lit8 v3, v3, 0x19

    sub-int/2addr v2, v3

    if-lt p3, v2, :cond_3

    const p3, 0x155cc

    if-ne v1, p3, :cond_3

    goto :goto_1

    .line 287
    :cond_3
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v6

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    if-ne p3, v2, :cond_7

    .line 291
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iget v2, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/lit8 v3, v3, 0x19

    add-int/2addr v2, v3

    if-gt p3, v2, :cond_5

    const p3, 0x1a5e0

    if-eq v1, p3, :cond_8

    :cond_5
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iget v2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/lit8 v3, v3, 0x19

    sub-int/2addr v2, v3

    if-lt p3, v2, :cond_6

    const p3, 0x128e0

    if-ne v1, p3, :cond_6

    goto :goto_1

    .line 294
    :cond_6
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v6

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 297
    :cond_7
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v6

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 299
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_4

    .line 302
    :cond_9
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endX:F

    .line 303
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    sub-float/2addr p2, v2

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endY:F

    .line 304
    iget-object p2, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_4

    :cond_a
    if-ne p2, v6, :cond_11

    .line 308
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    sub-int p2, v1, p2

    iget v7, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    iget v8, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/2addr v7, v8

    rem-int/2addr p2, v7

    if-nez p2, :cond_10

    .line 311
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endX:F

    .line 312
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    sub-float/2addr p2, v0

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endY:F

    .line 313
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 314
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 315
    iget-object v2, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, p2, p3, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 317
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    if-eqz p3, :cond_c

    if-ne p3, v3, :cond_b

    goto :goto_2

    .line 325
    :cond_b
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v6

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 319
    :cond_c
    :goto_2
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iget v2, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/lit8 v3, v3, 0x19

    add-int/2addr v2, v3

    if-gt p3, v2, :cond_d

    const/16 p3, 0x64b

    if-eq v1, p3, :cond_f

    :cond_d
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iget v2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    iget v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    mul-int/lit8 v3, v3, 0x19

    sub-int/2addr v2, v3

    if-lt p3, v2, :cond_e

    const/16 p3, 0x213

    if-ne v1, p3, :cond_e

    goto :goto_3

    .line 322
    :cond_e
    iget p3, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v6

    int-to-float v1, v1

    sub-float/2addr p3, v1

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    add-float/2addr v1, v5

    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 328
    :cond_f
    :goto_3
    iget-object p2, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_4

    .line 331
    :cond_10
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endX:F

    .line 332
    iget p2, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    sub-float/2addr p2, v2

    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->endY:F

    .line 333
    iget-object p2, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 337
    :cond_11
    :goto_4
    iget v6, p0, Lcom/chery/media/view/component/ArcScaleView;->startX:F

    iget v7, p0, Lcom/chery/media/view/component/ArcScaleView;->startY:F

    iget v8, p0, Lcom/chery/media/view/component/ArcScaleView;->endX:F

    iget v9, p0, Lcom/chery/media/view/component/ArcScaleView;->endY:F

    iget-object v10, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fmFreqFormat(I)Ljava/lang/String;
    .locals 4

    .line 385
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p0

    const/4 v0, 0x0

    .line 386
    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    int-to-double v0, p1

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v0, v2

    .line 387
    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIntegerPosition()V
    .locals 4

    .line 403
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->scaleDistance:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    .line 404
    iput v1, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    goto :goto_0

    :cond_0
    neg-float v3, v1

    div-float/2addr v3, v2

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    neg-float v0, v1

    .line 407
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 410
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->scrollDistance:F

    .line 412
    :goto_0
    invoke-direct {p0}, Lcom/chery/media/view/component/ArcScaleView;->calculateCurrentValue()V

    .line 413
    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->listener:Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;

    if-eqz v0, :cond_2

    .line 414
    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    invoke-interface {v0, v1}, Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;->onChangeFinished(I)V

    .line 415
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->lastValue:I

    :cond_2
    return-void
.end method

.method private initScaleParam()V
    .locals 13

    .line 137
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    const/16 v1, 0x9

    const/16 v2, 0x65d

    const/16 v3, 0x64

    const v4, 0x1a5e0

    const/16 v5, 0x213

    const/4 v6, 0x2

    const/4 v7, 0x1

    const v8, 0x155cc

    const/16 v9, 0xa

    if-nez v0, :cond_1

    .line 138
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, v7, :cond_0

    .line 139
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 140
    iput v4, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 141
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 142
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 143
    iput v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto/16 :goto_0

    :cond_0
    if-ne v0, v6, :cond_b

    .line 146
    iput v5, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 147
    iput v2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 148
    iput v5, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 149
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 150
    iput v1, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x6ae

    const/16 v11, 0x212

    if-ne v0, v6, :cond_3

    .line 154
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, v7, :cond_2

    .line 155
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    const v0, 0x1a57c

    .line 156
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 157
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 158
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    const/16 v0, 0xc8

    .line 159
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto/16 :goto_0

    :cond_2
    if-ne v0, v6, :cond_b

    .line 162
    iput v11, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 163
    iput v10, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 164
    iput v11, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 165
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 166
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto/16 :goto_0

    :cond_3
    if-ne v0, v7, :cond_5

    .line 170
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, v7, :cond_4

    .line 171
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 172
    iput v4, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 173
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    const/16 v0, 0x14

    .line 174
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    const/16 v0, 0x32

    .line 175
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto/16 :goto_0

    :cond_4
    if-ne v0, v6, :cond_b

    .line 178
    iput v5, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 179
    iput v2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 180
    iput v5, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 181
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 182
    iput v1, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto :goto_0

    :cond_5
    const/4 v12, 0x3

    if-ne v0, v12, :cond_7

    .line 186
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, v7, :cond_6

    .line 187
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 188
    iput v4, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 189
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 190
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 191
    iput v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto :goto_0

    :cond_6
    if-ne v0, v6, :cond_b

    .line 194
    iput v11, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 195
    iput v10, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 196
    iput v11, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 197
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 198
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto :goto_0

    :cond_7
    const/4 v12, 0x4

    if-ne v0, v12, :cond_9

    .line 201
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, v7, :cond_8

    const v0, 0x128e0

    .line 202
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 203
    iput v4, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 204
    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 205
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 206
    iput v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto :goto_0

    :cond_8
    if-ne v0, v6, :cond_b

    .line 209
    iput v11, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 210
    iput v10, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 211
    iput v11, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 212
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 213
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto :goto_0

    .line 217
    :cond_9
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, v7, :cond_a

    .line 218
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 219
    iput v4, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 220
    iput v8, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 221
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 222
    iput v3, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    goto :goto_0

    :cond_a
    if-ne v0, v6, :cond_b

    .line 225
    iput v5, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 226
    iput v2, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    .line 227
    iput v5, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    .line 228
    iput v9, p0, Lcom/chery/media/view/component/ArcScaleView;->cellNum:I

    .line 229
    iput v1, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    .line 233
    :cond_b
    :goto_0
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->maxValue:I

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->minValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/chery/media/view/component/ArcScaleView;->itemValue:I

    div-int/2addr v0, v1

    add-int/2addr v0, v7

    iput v0, p0, Lcom/chery/media/view/component/ArcScaleView;->totalItem:I

    return-void
.end method

.method private isBrazilSpecial(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCurrentValue()I
    .locals 0

    .line 496
    iget p0, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 238
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 242
    iget-object v0, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/chery/media/view/component/ArcScaleView;->shaderUp:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    .line 244
    invoke-direct {p0, p1, v1, v0}, Lcom/chery/media/view/component/ArcScaleView;->drawScale(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/chery/media/view/component/ArcScaleView;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/chery/media/view/component/ArcScaleView;->shaderDown:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    const/16 v1, 0x32

    if-gt v2, v1, :cond_1

    .line 248
    invoke-direct {p0, p1, v2, v0}, Lcom/chery/media/view/component/ArcScaleView;->drawScale(Landroid/graphics/Canvas;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/chery/media/view/component/ArcScaleView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 354
    :cond_1
    iput-boolean v1, p0, Lcom/chery/media/view/component/ArcScaleView;->isTouching:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/chery/media/view/component/ArcScaleView;->isTouching:Z

    .line 358
    invoke-direct {p0}, Lcom/chery/media/view/component/ArcScaleView;->getIntegerPosition()V

    goto :goto_0

    .line 351
    :cond_3
    iput-boolean v1, p0, Lcom/chery/media/view/component/ArcScaleView;->isTouching:Z

    .line 361
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/component/ArcScaleView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public setBandAndRegion(II)V
    .locals 2

    .line 479
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    if-ne v0, p2, :cond_0

    .line 480
    sget-object p0, Lcom/chery/media/view/component/ArcScaleView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBandAndRegion: \u5f53\u524dradioBand\u5df2\u7ecf\u662f -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",radioRegion\u5df2\u7ecf\u662f -- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_0
    iput p2, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    .line 485
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    .line 486
    invoke-direct {p0}, Lcom/chery/media/view/component/ArcScaleView;->initScaleParam()V

    .line 487
    invoke-virtual {p0}, Lcom/chery/media/view/component/ArcScaleView;->invalidate()V

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 1

    .line 447
    iget-boolean v0, p0, Lcom/chery/media/view/component/ArcScaleView;->isTouching:Z

    if-eqz v0, :cond_0

    return-void

    .line 450
    :cond_0
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    .line 451
    invoke-virtual {p0}, Lcom/chery/media/view/component/ArcScaleView;->invalidate()V

    .line 452
    iget-object p1, p0, Lcom/chery/media/view/component/ArcScaleView;->listener:Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;

    if-eqz p1, :cond_1

    .line 454
    iget p1, p0, Lcom/chery/media/view/component/ArcScaleView;->currentValue:I

    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->lastValue:I

    :cond_1
    return-void
.end method

.method public setOnValueChangedListener(Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/chery/media/view/component/ArcScaleView;->listener:Lcom/chery/media/view/component/ArcScaleView$OnValueChangedListener;

    return-void
.end method

.method public setRadioBand(I)V
    .locals 1

    .line 459
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    if-ne v0, p1, :cond_0

    return-void

    .line 463
    :cond_0
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->radioBand:I

    .line 464
    invoke-direct {p0}, Lcom/chery/media/view/component/ArcScaleView;->initScaleParam()V

    .line 465
    invoke-virtual {p0}, Lcom/chery/media/view/component/ArcScaleView;->invalidate()V

    return-void
.end method

.method public setRadioRegion(I)V
    .locals 2

    .line 469
    iget v0, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    if-ne v0, p1, :cond_0

    .line 470
    sget-object p0, Lcom/chery/media/view/component/ArcScaleView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioRegion: \u5f53\u524dradioRegion\u5df2\u7ecf\u662f -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 473
    :cond_0
    iput p1, p0, Lcom/chery/media/view/component/ArcScaleView;->radioRegion:I

    .line 474
    invoke-direct {p0}, Lcom/chery/media/view/component/ArcScaleView;->initScaleParam()V

    .line 475
    invoke-virtual {p0}, Lcom/chery/media/view/component/ArcScaleView;->invalidate()V

    return-void
.end method
