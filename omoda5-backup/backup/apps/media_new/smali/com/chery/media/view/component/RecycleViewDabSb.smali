.class public Lcom/chery/media/view/component/RecycleViewDabSb;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecycleViewDabSb.java"


# instance fields
.field private scrollChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private seekBar:Landroid/widget/SeekBar;

.field private seekBarArea:Landroid/view/View;

.field private seekBarFadeOutAnim:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/component/RecycleViewDabSb;)Landroid/view/View;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBarArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/component/RecycleViewDabSb;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBarFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/media/view/component/RecycleViewDabSb;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBarFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/view/component/RecycleViewDabSb;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->updateScrollbar()V

    return-void
.end method

.method private setUp()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->scrollChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 48
    :cond_0
    new-instance v0, Lcom/chery/media/view/component/RecycleViewDabSb$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/component/RecycleViewDabSb$1;-><init>(Lcom/chery/media/view/component/RecycleViewDabSb;)V

    iput-object v0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->scrollChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 79
    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 81
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->updateScrollbar()V

    return-void
.end method

.method private updateScrollbar()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 86
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->updateScrollbarOfGridLayoutManager()V

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->updateScrollbarOfLineLayoutManager()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateScrollbarOfGridLayoutManager()V
    .locals 5

    .line 119
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 120
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 121
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    if-gez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    div-int/lit8 v1, v1, 0x4

    .line 127
    div-int/lit8 v0, v0, 0x4

    .line 129
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    .line 130
    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 133
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v4

    sub-int/2addr v0, v1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_2

    .line 138
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 123
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private updateScrollbarOfLineLayoutManager()V
    .locals 5

    .line 95
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 96
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 97
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    if-gez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 104
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v4

    sub-int/2addr v0, v1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_2

    .line 109
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 99
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x3e8

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 40
    iput-object p2, p0, Lcom/chery/media/view/component/RecycleViewDabSb;->seekBarArea:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewDabSb;->setUp()V

    :cond_1
    :goto_0
    return-void
.end method
