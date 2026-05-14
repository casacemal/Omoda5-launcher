.class Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;
.super Ljava/lang/Object;
.source "LocalMusicPlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 288
    iget-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getDuration()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    .line 289
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1300(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 295
    invoke-static {}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStartTrackingTouch"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1402(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 301
    invoke-static {}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1402(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;Z)Z

    .line 304
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getDuration()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {v2}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->seekTo(J)V

    .line 306
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;->this$0:Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-static {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->play()V

    return-void
.end method
