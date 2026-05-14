.class Lcom/chery/media/view/fragment/RadioPlayerFragment$15;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RadioPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/RadioPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/RadioPlayerFragment;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 328
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-eqz p3, :cond_0

    .line 330
    iget-object p1, p0, Lcom/chery/media/view/fragment/RadioPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/RadioPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/RadioPlayerFragment;->access$500(Lcom/chery/media/view/fragment/RadioPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/chery/media/view/fragment/RadioPlayerFragment$15$1;

    invoke-direct {p2, p0}, Lcom/chery/media/view/fragment/RadioPlayerFragment$15$1;-><init>(Lcom/chery/media/view/fragment/RadioPlayerFragment$15;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
