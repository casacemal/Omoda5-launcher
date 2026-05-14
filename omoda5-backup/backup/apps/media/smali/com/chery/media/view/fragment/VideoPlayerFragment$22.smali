.class Lcom/chery/media/view/fragment/VideoPlayerFragment$22;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 436
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 440
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object p3, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p3}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingDuration(I)J

    move-result-wide v0

    int-to-long p1, p2

    mul-long/2addr v0, p1

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    .line 441
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvFastMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 448
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStartTrackingTouch"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1802(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 451
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    .line 452
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 453
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llFastTime:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 458
    invoke-static {}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1802(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 461
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingDuration(I)J

    move-result-wide v0

    .line 462
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v3}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v4, p1

    mul-long/2addr v0, v4

    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long v4, p1

    div-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->seekTo(IJ)V

    .line 463
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/chery/media/viewmodel/VideoViewModel;->play(I)V

    .line 465
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2000(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)V

    return-void
.end method
