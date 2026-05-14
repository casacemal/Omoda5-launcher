.class public Lcom/chery/media/view/activity/VideoPlayerActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "VideoPlayerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public videoPlayerFragment:Lcom/chery/media/view/fragment/VideoPlayerFragment;

.field private videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/media/view/activity/VideoPlayerActivity;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/VideoPlayerActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 26
    invoke-static {v0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/VideoPlayerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/view/activity/VideoPlayerActivity;->videoPlayerFragment:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    return-void
.end method


# virtual methods
.method protected getContainerId()I
    .locals 0

    const p0, 0x7f0801f2

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0024

    .line 33
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoPlayerActivity;->setContentView(I)V

    .line 35
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/VideoViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/VideoPlayerActivity;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    .line 36
    invoke-virtual {p1}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/chery/media/view/activity/VideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/VideoPlayerActivity$1;-><init>(Lcom/chery/media/view/activity/VideoPlayerActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 47
    iget-object p1, p0, Lcom/chery/media/view/activity/VideoPlayerActivity;->videoPlayerFragment:Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/VideoPlayerActivity;->replaceAll(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
