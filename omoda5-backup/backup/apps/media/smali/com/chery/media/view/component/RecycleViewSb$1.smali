.class Lcom/chery/media/view/component/RecycleViewSb$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecycleViewSb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/component/RecycleViewSb;->setUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/component/RecycleViewSb;


# direct methods
.method constructor <init>(Lcom/chery/media/view/component/RecycleViewSb;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 55
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {v0}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {p1, p2}, Lcom/chery/media/view/component/RecycleViewSb;->access$102(Lcom/chery/media/view/component/RecycleViewSb;Landroid/view/animation/AlphaAnimation;)Landroid/view/animation/AlphaAnimation;

    .line 58
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$100(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/animation/AlphaAnimation;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 59
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p2}, Lcom/chery/media/view/component/RecycleViewSb;->access$100(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/animation/AlphaAnimation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p0}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 68
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 69
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$200(Lcom/chery/media/view/component/RecycleViewSb;)V

    if-eqz p3, :cond_1

    .line 73
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p1}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 77
    iget-object p0, p0, Lcom/chery/media/view/component/RecycleViewSb$1;->this$0:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-static {p0}, Lcom/chery/media/view/component/RecycleViewSb;->access$000(Lcom/chery/media/view/component/RecycleViewSb;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
