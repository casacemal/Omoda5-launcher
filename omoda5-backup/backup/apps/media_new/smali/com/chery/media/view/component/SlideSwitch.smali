.class public Lcom/chery/media/view/component/SlideSwitch;
.super Landroid/view/View;
.source "SlideSwitch.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBgOff:Landroid/graphics/Bitmap;

.field private mBgOn:Landroid/graphics/Bitmap;

.field private mEnabled:Z

.field private mInit:Z

.field private mLeft:F

.field private mPaint:Landroid/graphics/Paint;

.field private mSelected:Z

.field private mThumbOff:Landroid/graphics/Bitmap;

.field private mThumbOn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/chery/media/view/component/SlideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/chery/media/view/component/SlideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mSelected:Z

    .line 28
    iput-boolean v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mEnabled:Z

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mLeft:F

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mInit:Z

    .line 46
    sget-object v1, Lcom/chery/media/R$styleable;->SlideSwitch:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Lcom/chery/media/view/component/SlideSwitch;->getAttr(Landroid/content/res/TypedArray;)V

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/component/SlideSwitch;->initPaint()V

    return-void
.end method

.method static synthetic access$002(Lcom/chery/media/view/component/SlideSwitch;F)F
    .locals 0

    .line 18
    iput p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mLeft:F

    return p1
.end method

.method private getAttr(Landroid/content/res/TypedArray;)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f07018b

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOn:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const v1, 0x7f07018a

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOff:Landroid/graphics/Bitmap;

    const/4 v0, 0x3

    const v1, 0x7f070188

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 119
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mThumbOn:Landroid/graphics/Bitmap;

    const/4 v0, 0x2

    const v1, 0x7f070189

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 123
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mThumbOff:Landroid/graphics/Bitmap;

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 143
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    iget-object p0, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private startAnimator(Z)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x42100000    # 36.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    aput v1, p1, v0

    .line 158
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x32

    .line 159
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    iget-object p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    iget-object p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 163
    iget-object p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/chery/media/view/component/SlideSwitch$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/component/SlideSwitch$1;-><init>(Lcom/chery/media/view/component/SlideSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-boolean v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mInit:Z

    const/high16 v1, 0x42100000    # 36.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 80
    :cond_0
    iget-boolean v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mSelected:Z

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOn:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mThumbOn:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOff:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mThumbOff:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mInit:Z

    goto :goto_1

    .line 91
    :cond_2
    iget v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mLeft:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOff:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mThumbOff:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mLeft:F

    iget-object p0, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOn:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mThumbOn:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/chery/media/view/component/SlideSwitch;->mLeft:F

    iget-object p0, p0, Lcom/chery/media/view/component/SlideSwitch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 54
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setBgOnEnabled(Z)V
    .locals 1

    .line 130
    iput-boolean p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07018b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOn:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07018a

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mBgOn:Landroid/graphics/Bitmap;

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/chery/media/view/component/SlideSwitch;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 66
    iget-boolean v0, p0, Lcom/chery/media/view/component/SlideSwitch;->mSelected:Z

    if-eq p1, v0, :cond_0

    .line 67
    iput-boolean p1, p0, Lcom/chery/media/view/component/SlideSwitch;->mSelected:Z

    .line 68
    invoke-direct {p0, p1}, Lcom/chery/media/view/component/SlideSwitch;->startAnimator(Z)V

    :cond_0
    return-void
.end method
