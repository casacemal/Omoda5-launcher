.class Lcom/chery/media/view/fragment/VideoPlayerFragment$14;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/VideoPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 365
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvVideoName:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 366
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVideoList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 367
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clPlayControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 368
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    return-void
.end method
