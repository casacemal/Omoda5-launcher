.class Lcom/chery/media/view/fragment/PictureMainFragment$13;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PictureMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureMainFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$13;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 389
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment$13;->this$0:Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->access$1200(Lcom/chery/media/view/fragment/PictureMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/fragment/PictureMainFragment$13$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$13$1;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment$13;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
