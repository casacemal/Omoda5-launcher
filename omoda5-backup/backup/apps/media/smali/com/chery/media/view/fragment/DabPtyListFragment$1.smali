.class Lcom/chery/media/view/fragment/DabPtyListFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DabPtyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/DabPtyListFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$1;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 105
    iget-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment$1;->this$0:Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/DabPtyListFragment;->access$100(Lcom/chery/media/view/fragment/DabPtyListFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/fragment/DabPtyListFragment$1$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$1$1;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
