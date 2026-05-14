.class public Lcom/chery/media/view/component/RecycleViewSb;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecycleViewSb.java"


# instance fields
.field private scrollChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private seekBar:Landroid/widget/SeekBar;

.field private seekBarArea:Landroid/view/View;

.field private seekBarFadeOutAnim:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBarArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBarFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method static synthetic access$102(Lcom/chery/media/view/component/RecycleViewSb;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBarFadeOutAnim:Landroid/view/animation/AlphaAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/chery/media/view/component/RecycleViewSb;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewSb;->updateScrollbar()V

    return-void
.end method

.method private setUp()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/chery/media/view/component/RecycleViewSb;->scrollChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/RecycleViewSb;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 50
    :cond_0
    new-instance v0, Lcom/chery/media/view/component/RecycleViewSb$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/component/RecycleViewSb$1;-><init>(Lcom/chery/media/view/component/RecycleViewSb;)V

    iput-object v0, p0, Lcom/chery/media/view/component/RecycleViewSb;->scrollChangeListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 81
    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 83
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewSb;->updateScrollbar()V

    return-void
.end method

.method private updateScrollbar()V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 88
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewSb;->updateScrollbarOfGridLayoutManager()V

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewSb;->updateScrollbarOfLineLayoutManager()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateScrollbarOfGridLayoutManager()V
    .locals 5

    .line 121
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 122
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 123
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    if-gez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    div-int/lit8 v1, v1, 0x5

    .line 129
    div-int/lit8 v0, v0, 0x5

    .line 131
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    .line 132
    div-int/lit8 v3, v3, 0x5

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 135
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v4

    sub-int/2addr v0, v1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_2

    .line 140
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 125
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private updateScrollbarOfLineLayoutManager()V
    .locals 5

    .line 97
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 98
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 99
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    if-gez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 106
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_1
    sub-int/2addr v3, v4

    sub-int/2addr v0, v1

    sub-int/2addr v3, v0

    if-gtz v3, :cond_2

    .line 111
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

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

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBar:Landroid/widget/SeekBar;

    const/16 v0, 0x3e8

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 42
    iput-object p2, p0, Lcom/chery/media/view/component/RecycleViewSb;->seekBarArea:Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/component/RecycleViewSb;->setUp()V

    :cond_1
    :goto_0
    return-void
.end method
