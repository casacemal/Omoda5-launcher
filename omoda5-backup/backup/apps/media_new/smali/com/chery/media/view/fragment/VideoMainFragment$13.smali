.class Lcom/chery/media/view/fragment/VideoMainFragment$13;
.super Ljava/lang/Object;
.source "VideoMainFragment.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoMainFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoMainFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$13;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 370
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$13;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$1100(Lcom/chery/media/view/fragment/VideoMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/VideoMainFragment$13$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$13$1;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment$13;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment$13;->this$0:Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->access$1100(Lcom/chery/media/view/fragment/VideoMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/fragment/VideoMainFragment$13$2;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$13$2;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment$13;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
