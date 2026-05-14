.class public Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MediaPlayerAlbumCoverAnim.java"


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b005b

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    invoke-direct {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b005b

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b005b

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    invoke-direct {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAnim()V

    return-void
.end method

.method private setAnim()V
    .locals 3

    const v0, 0x7f0800b7

    .line 40
    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 41
    fill-array-data v1, :array_0

    const-string v2, "rotation"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x1f40

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 43
    iget-object v0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 44
    iget-object v0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 45
    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method


# virtual methods
.method public cancelAnim()V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public endAnim()V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

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

    .line 58
    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    return-void
.end method

.method public setAlbumCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0800b6

    .line 75
    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public startAnim()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object p0, p0, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    :cond_1
    :goto_0
    return-void
.end method
