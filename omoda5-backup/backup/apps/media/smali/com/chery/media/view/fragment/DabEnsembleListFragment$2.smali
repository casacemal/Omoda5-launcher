.class Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;
.super Ljava/lang/Object;
.source "DabEnsembleListFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabEnsembleListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChildViewAttachedToWindow$0$DabEnsembleListFragment$2()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$000(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)V

    return-void
.end method

.method public synthetic lambda$onChildViewDetachedFromWindow$1$DabEnsembleListFragment$2()V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$000(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$100(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabEnsembleListFragment$2$5qIVGXpjvUenK0QG3NGLJ3hP6g0;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabEnsembleListFragment$2$5qIVGXpjvUenK0QG3NGLJ3hP6g0;-><init>(Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;->access$100(Lcom/chery/media/view/fragment/DabEnsembleListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabEnsembleListFragment$2$YrodPTq6ZlcM3QbClLjvwkrJL94;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabEnsembleListFragment$2$YrodPTq6ZlcM3QbClLjvwkrJL94;-><init>(Lcom/chery/media/view/fragment/DabEnsembleListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
