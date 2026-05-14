.class Lcom/chery/media/view/fragment/PictureViewerFragment$14;
.super Ljava/lang/Object;
.source "PictureViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/PictureViewerFragment;->startAutoChange()V
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

    .line 482
    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 485
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1800(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1900(Lcom/chery/media/view/fragment/PictureViewerFragment;I)V

    .line 486
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1800(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$200(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/PictureViewModel;->changeNext(I)V

    .line 489
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$1800(Lcom/chery/media/view/fragment/PictureViewerFragment;)I

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$700(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;->this$0:Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->access$600(Lcom/chery/media/view/fragment/PictureViewerFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
