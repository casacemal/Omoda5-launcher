.class public Lcom/chery/media/view/component/PlayIconAnim;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PlayIconAnim.java"


# instance fields
.field private animatorSet1:Landroid/animation/AnimatorSet;

.field private animatorSet2:Landroid/animation/AnimatorSet;

.field private animatorSet3:Landroid/animation/AnimatorSet;

.field private animatorSet4:Landroid/animation/AnimatorSet;

.field private barHeight:F

.field private barInterval:F

.field private barSrc:Landroid/graphics/drawable/Drawable;

.field private barWidth:F

.field private iv1:Landroid/widget/ImageView;

.field private iv2:Landroid/widget/ImageView;

.field private iv3:Landroid/widget/ImageView;

.field private iv4:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/chery/media/view/component/PlayIconAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/chery/media/view/component/PlayIconAnim;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object p3, Lcom/chery/media/R$styleable;->PlayIconAnim:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    const/high16 v0, 0x40400000    # 3.0f

    .line 40
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    const/4 v0, 0x1

    const/high16 v1, 0x41f00000    # 30.0f

    .line 41
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    const/4 v0, 0x2

    const/high16 v1, 0x40c00000    # 6.0f

    .line 42
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/chery/media/view/component/PlayIconAnim;->barInterval:F

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/chery/media/view/component/PlayIconAnim;->barSrc:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/chery/media/view/component/PlayIconAnim;->barSrc:Landroid/graphics/drawable/Drawable;

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0b005a

    invoke-virtual {p2, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    .line 52
    iget-object v1, p0, Lcom/chery/media/view/component/PlayIconAnim;->barSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    const v1, 0x3e99999a    # 0.3f

    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v2, v1

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 55
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 56
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int v2, v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 57
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    float-to-int v2, v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 58
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/chery/media/view/component/PlayIconAnim;->addView(Landroid/view/View;)V

    .line 61
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    .line 62
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    iget v3, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v3, v2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 65
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 66
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int v2, v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 67
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    float-to-int v2, v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 68
    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->getId()I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 69
    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->getId()I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 70
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/chery/media/view/component/PlayIconAnim;->barInterval:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 71
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p2}, Lcom/chery/media/view/component/PlayIconAnim;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    .line 75
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    const v2, 0x3e4ccccd    # 0.2f

    iget v3, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v3, v2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 78
    new-instance p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 79
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int v2, v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 80
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    float-to-int v2, v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 81
    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->getId()I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 82
    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->getId()I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 83
    iget v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int v2, v2

    iget v3, p0, Lcom/chery/media/view/component/PlayIconAnim;->barInterval:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 84
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/chery/media/view/component/PlayIconAnim;->addView(Landroid/view/View;)V

    .line 87
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv4:Landroid/widget/ImageView;

    .line 88
    iget-object p1, p0, Lcom/chery/media/view/component/PlayIconAnim;->barSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object p1, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv4:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 91
    iget p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int p2, p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 92
    iget p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    float-to-int p2, p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 93
    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->getId()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 94
    invoke-virtual {p0}, Lcom/chery/media/view/component/PlayIconAnim;->getId()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 95
    iget p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int p2, p2

    iget v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->barInterval:F

    float-to-int v0, v0

    add-int/2addr p2, v0

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 96
    iget-object p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv4:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object p1, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv4:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/component/PlayIconAnim;->addView(Landroid/view/View;)V

    .line 99
    invoke-direct {p0}, Lcom/chery/media/view/component/PlayIconAnim;->setAnim()V

    return-void
.end method

.method private setAnim()V
    .locals 13

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    .line 128
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    const-string v6, "translationY"

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v7, 0x12c

    .line 129
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv1:Landroid/widget/ImageView;

    new-array v7, v1, [F

    aput v5, v7, v4

    iget v8, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v7, v3

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0x1f4

    .line 131
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v10, -0x1

    .line 132
    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 134
    iget-object v11, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    new-array v12, v1, [Landroid/animation/Animator;

    aput-object v0, v12, v4

    aput-object v2, v12, v3

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 136
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    .line 137
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    new-array v2, v1, [F

    iget v11, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v11, v9

    aput v11, v2, v4

    aput v5, v2, v3

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv2:Landroid/widget/ImageView;

    new-array v11, v1, [F

    aput v5, v11, v4

    iget v12, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v12, v9

    aput v12, v11, v3

    invoke-static {v2, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 142
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 143
    iget-object v11, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    new-array v12, v1, [Landroid/animation/Animator;

    aput-object v0, v12, v4

    aput-object v2, v12, v3

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 145
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    .line 146
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    new-array v2, v1, [F

    iget v11, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    aput v11, v2, v4

    aput v5, v2, v3

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v11, 0xc8

    .line 147
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    iget-object v2, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv3:Landroid/widget/ImageView;

    new-array v11, v1, [F

    aput v5, v11, v4

    iget v12, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v12, v9

    aput v12, v11, v3

    invoke-static {v2, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 149
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 150
    invoke-virtual {v2, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 151
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 152
    iget-object v11, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    new-array v12, v1, [Landroid/animation/Animator;

    aput-object v0, v12, v4

    aput-object v2, v12, v3

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 154
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    .line 155
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->iv4:Landroid/widget/ImageView;

    new-array v2, v1, [F

    aput v5, v2, v4

    iget v4, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    mul-float/2addr v4, v9

    aput v4, v2, v3

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 159
    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 195
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 197
    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method public endAnim()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 205
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 206
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 207
    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public isRunning()Z
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 104
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 107
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget p1, p0, Lcom/chery/media/view/component/PlayIconAnim;->barInterval:F

    float-to-int p1, p1

    mul-int/lit8 p1, p1, 0x3

    iget v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->barWidth:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    iget p2, p0, Lcom/chery/media/view/component/PlayIconAnim;->barHeight:F

    float-to-int p2, p2

    .line 123
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/chery/media/view/component/PlayIconAnim;->setMeasuredDimension(II)V

    return-void
.end method

.method public pauseAnim()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 185
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 186
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->pause()V

    .line 187
    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->pause()V

    return-void
.end method

.method public startAnim()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 168
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 169
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet1:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 174
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet2:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 175
    iget-object v0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet3:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->resume()V

    .line 176
    iget-object p0, p0, Lcom/chery/media/view/component/PlayIconAnim;->animatorSet4:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->resume()V

    :cond_2
    :goto_0
    return-void
.end method
