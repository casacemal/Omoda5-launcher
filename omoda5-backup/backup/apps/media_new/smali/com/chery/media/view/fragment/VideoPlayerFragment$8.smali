.class Lcom/chery/media/view/fragment/VideoPlayerFragment$8;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbVolume:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 281
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 282
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPopupVolIcon:Landroid/widget/ImageView;

    const p1, 0x7f0701b8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPopupVolIcon:Landroid/widget/ImageView;

    const p1, 0x7f0701b7

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 277
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
