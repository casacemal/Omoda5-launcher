.class Lcom/chery/media/view/fragment/DabAllListFragment$2;
.super Ljava/lang/Object;
.source "DabAllListFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabAllListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabAllListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabAllListFragment;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChildViewAttachedToWindow$0$DabAllListFragment$2()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$000(Lcom/chery/media/view/fragment/DabAllListFragment;)V

    return-void
.end method

.method public synthetic lambda$onChildViewDetachedFromWindow$1$DabAllListFragment$2()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabAllListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$000(Lcom/chery/media/view/fragment/DabAllListFragment;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$100(Lcom/chery/media/view/fragment/DabAllListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabAllListFragment$2$rYwBG9p71Guk0-4Z1txptekjsnE;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabAllListFragment$2$rYwBG9p71Guk0-4Z1txptekjsnE;-><init>(Lcom/chery/media/view/fragment/DabAllListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabAllListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabAllListFragment;->access$100(Lcom/chery/media/view/fragment/DabAllListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabAllListFragment$2$-UllUp8egPYlCyehRZmLA6NifR4;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabAllListFragment$2$-UllUp8egPYlCyehRZmLA6NifR4;-><init>(Lcom/chery/media/view/fragment/DabAllListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
