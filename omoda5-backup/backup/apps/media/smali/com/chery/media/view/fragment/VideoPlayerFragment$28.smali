.class Lcom/chery/media/view/fragment/VideoPlayerFragment$28;
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

    .line 640
    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 644
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/chery/media/viewmodel/VideoViewModel;->changeBrightness(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 650
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1002(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 651
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$2800(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 656
    iget-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1002(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z

    .line 657
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;->this$0:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->access$1700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    return-void
.end method
