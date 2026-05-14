.class Lcom/chery/media/view/fragment/VideoPlayerFragment$4;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoPlayerFragment;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;)V
    .locals 2

    .line 241
    iget v0, p1, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;->usbType:I

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 242
    iget p1, p1, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;->playingState:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 243
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clLoadFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clLoadFailed:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 248
    :goto_0
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 249
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$800(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 238
    check-cast p1, Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;->onChanged(Lcom/chery/media/viewmodel/VideoViewModel$PlayingStateData;)V

    return-void
.end method
