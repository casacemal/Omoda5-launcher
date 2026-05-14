.class Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;
.super Ljava/lang/Object;
.source "UsbMusicPlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 344
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result p1

    .line 345
    iget-object p3, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p3}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlayingDuration(I)J

    move-result-wide v0

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    .line 346
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1700(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 352
    invoke-static {}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStartTrackingTouch"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1802(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 358
    invoke-static {}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1802(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;Z)Z

    .line 361
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlayingDuration(I)J

    move-result-wide v0

    .line 362
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {v3}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v4, p1

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->seekTo(IJ)V

    .line 363
    iget-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;->this$0:Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->play(I)V

    return-void
.end method
