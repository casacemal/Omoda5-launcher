.class Lcom/chery/media/view/fragment/VideoPlayerFragment$30;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoPlayerFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$30;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 751
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 753
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$30;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2800(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 756
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$30;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    :cond_1
    :goto_0
    return-void
.end method
