.class Lcom/chery/media/view/fragment/DabPlayerFragment$15;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DabPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPlayerFragment;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onScrolled$0$DabPlayerFragment$15()V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$900(Lcom/chery/media/view/fragment/DabPlayerFragment;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 299
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 301
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/DabPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPlayerFragment;->access$800(Lcom/chery/media/view/fragment/DabPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$15$9seOvLlmYAFNUPUwjwSUgWfJ2PE;

    invoke-direct {p2, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabPlayerFragment$15$9seOvLlmYAFNUPUwjwSUgWfJ2PE;-><init>(Lcom/chery/media/view/fragment/DabPlayerFragment$15;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
