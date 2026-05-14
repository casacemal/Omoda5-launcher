.class Lcom/chery/media/view/fragment/PictureViewerFragment$11;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureViewerFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 389
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$900(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    .line 391
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 393
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$600(Lcom/chery/media/view/fragment/PictureViewerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 395
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0, v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1500(Lcom/chery/media/view/fragment/PictureViewerFragment;Z)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1600(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 404
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0, v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1500(Lcom/chery/media/view/fragment/PictureViewerFragment;Z)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    goto :goto_0

    .line 412
    :cond_3
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$11;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {p0, v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1700(Lcom/chery/media/view/fragment/PictureViewerFragment;Z)V

    :goto_0
    return-void
.end method
