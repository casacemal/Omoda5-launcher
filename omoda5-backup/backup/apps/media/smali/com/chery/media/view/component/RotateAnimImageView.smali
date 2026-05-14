.class public Lcom/chery/media/view/component/RotateAnimImageView;
.super Landroid/widget/ImageView;
.source "RotateAnimImageView.java"


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/chery/media/view/component/RotateAnimImageView;->initAnim(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/chery/media/view/component/RotateAnimImageView;->initAnim(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/chery/media/view/component/RotateAnimImageView;->initAnim(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/chery/media/view/component/RotateAnimImageView;->initAnim(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAnim(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/16 v0, 0x3e8

    if-eqz p2, :cond_1

    .line 42
    sget-object v1, Lcom/chery/media/R$styleable;->PlayIconAnim:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 48
    fill-array-data p1, :array_0

    const-string p2, "rotation"

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    int-to-long v0, v0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 50
    iget-object p1, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 51
    iget-object p1, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 52
    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnim()V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public endAnim()V
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pauseAnim()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    return-void
.end method

.method public startAnim()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object p0, p0, Lcom/chery/media/view/component/RotateAnimImageView;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_1
    :goto_0
    return-void
.end method
