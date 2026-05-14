.class Lcom/chery/media/view/fragment/DabFavorListFragment$2;
.super Ljava/lang/Object;
.source "DabFavorListFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabFavorListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChildViewAttachedToWindow$0$DabFavorListFragment$2()V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$000(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    return-void
.end method

.method public synthetic lambda$onChildViewDetachedFromWindow$1$DabFavorListFragment$2()V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$000(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$100(Lcom/chery/media/view/fragment/DabFavorListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabFavorListFragment$2$Bmsxe8dd_8x-e9Mkfro8zL82eIU;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabFavorListFragment$2$Bmsxe8dd_8x-e9Mkfro8zL82eIU;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment$2;->this$0:Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabFavorListFragment;->access$100(Lcom/chery/media/view/fragment/DabFavorListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/-$$Lambda$DabFavorListFragment$2$jZeDrXfKPmtGovzL75bqmFdmFdc;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/-$$Lambda$DabFavorListFragment$2$jZeDrXfKPmtGovzL75bqmFdmFdc;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
