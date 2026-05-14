.class public Lcom/chery/media/view/fragment/VideoPlayerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "VideoPlayerFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;

.field private static final brightnessKey:Ljava/lang/String; = "brightness"

.field private static final spName:Ljava/lang/String; = "video"


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

.field private brightnessGesturing:Z

.field private brightnessPending:F

.field private brightnessSeekBarTracking:Z

.field private currentUsbType:I

.field private fullscreenRun:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private playerSeekBarTracking:Z

.field private positionGesturePos:J

.field private positionGesturing:Z

.field private positionPending:F

.field private runHideVideoCover:Ljava/lang/Runnable;

.field private surfaceCreated:Z

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private systemBrightness:I

.field private videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

.field private videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

.field private volumeGesturing:Z

.field private volumePending:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 96
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->playerSeekBarTracking:Z

    .line 76
    iput-boolean v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->volumeGesturing:Z

    const/4 v2, 0x0

    .line 77
    iput v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->volumePending:F

    .line 79
    iput-boolean v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessGesturing:Z

    .line 80
    iput v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessPending:F

    .line 81
    iput-boolean v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessSeekBarTracking:Z

    .line 83
    iput-boolean v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionGesturing:Z

    .line 84
    iput v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionPending:F

    const-wide/16 v2, 0x0

    .line 85
    iput-wide v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionGesturePos:J

    .line 93
    iput-boolean v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceCreated:Z

    .line 94
    iput v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceWidth:I

    iput v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    return p0
.end method

.method static synthetic access$002(Lcom/chery/media/view/fragment/VideoPlayerFragment;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    return p1
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateSurface()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessSeekBarTracking:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessSeekBarTracking:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateVideoCover()V

    return-void
.end method

.method static synthetic access$1302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceCreated:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/viewmodel/VideoViewModel;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/chery/media/view/fragment/VideoPlayerFragment;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$1602(Lcom/chery/media/view/fragment/VideoPlayerFragment;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceHeight:I

    return p1
.end method

.method static synthetic access$1700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->resetFullScreenTimer()V

    return-void
.end method

.method static synthetic access$1802(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->playerSeekBarTracking:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->setFullScreenView()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateVideoName()V

    return-void
.end method

.method static synthetic access$2000(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->setControlView(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionGesturing:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionGesturing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessGesturing:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessGesturing:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->volumeGesturing:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/chery/media/view/fragment/VideoPlayerFragment;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->volumeGesturing:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionPending:F

    return p0
.end method

.method static synthetic access$2402(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionPending:F

    return p1
.end method

.method static synthetic access$2500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionGesturePos:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/chery/media/view/fragment/VideoPlayerFragment;J)J
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->positionGesturePos:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessPending:F

    return p0
.end method

.method static synthetic access$2602(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->brightnessPending:F

    return p1
.end method

.method static synthetic access$2700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->volumePending:F

    return p0
.end method

.method static synthetic access$2702(Lcom/chery/media/view/fragment/VideoPlayerFragment;F)F
    .locals 0

    .line 49
    iput p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->volumePending:F

    return p1
.end method

.method static synthetic access$2800(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->clearFullScreenTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updatePlayPauseIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateDuration()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updatePosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateList()V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateListCurrentPlaying()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateListCurrentPlayingIconAnim()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/VideoPlayerFragment;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    return-object p0
.end method

.method private clearFullScreenTimer()V
    .locals 2

    .line 789
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "clearFullScreenTimer"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->fullscreenRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 791
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private initList()V
    .locals 3

    .line 736
    new-instance v0, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-static {v2}, Lcom/chery/media/model/business/ThumbnailCache;->getThumbnailCache(I)Lcom/chery/media/model/business/ThumbnailCache;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/model/business/ThumbnailCache;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    .line 737
    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$29;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$29;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/VideoPlayerListAdapter$OnItemClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 746
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 747
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 748
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$30;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$30;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 316
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    .line 320
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateSurface()V

    .line 321
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateVideoName()V

    .line 322
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updatePlayPauseIcon()V

    .line 323
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateDuration()V

    .line 324
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updatePosition()V

    .line 325
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->initList()V

    .line 326
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateList()V

    .line 327
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateListCurrentPlaying()V

    .line 328
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateListCurrentPlayingIconAnim()V

    .line 329
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->updateVideoCover()V

    .line 331
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$12;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 355
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$13;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivList:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$14;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayPause:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$15;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$15;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayPrior:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$16;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$16;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayPrior:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$17;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$17;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayPrior:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$18;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$18;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$19;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$19;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$20;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$20;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$21;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$21;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 436
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$22;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 469
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbVolume:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolumeMin()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 470
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbVolume:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 471
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbVolume:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolume()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 472
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivVolSetting:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$23;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$23;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getBrightnessMin()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMin(I)V

    .line 482
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getBrightnessMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 483
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbBrightness:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getBrightness()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 484
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivBrightnessSetting:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$24;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$24;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$25;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 595
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivTouch:Landroid/widget/ImageView;

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;

    invoke-direct {v2, p0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$26;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 621
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbVolume:Landroid/widget/SeekBar;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$27;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$27;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 640
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbBrightness:Landroid/widget/SeekBar;

    new-instance v1, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$28;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 197
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    .line 201
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    .line 202
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$1;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 220
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$2;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observePlaylistDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 229
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$3;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 238
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$4;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observePlayingStateDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 253
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$5;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$5;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observePlayingDurationDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 261
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$6;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$6;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observePlayingPositionDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 269
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$7;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$7;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observeVideoSizeDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 277
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getVolume()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$8;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 289
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getBrightness()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$9;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$9;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 301
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getSpeedLimitSetting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$10;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$10;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 307
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getSpeedLimitView()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoPlayerFragment$11;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$11;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/VideoPlayerFragment;
    .locals 3

    .line 110
    new-instance v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;-><init>()V

    .line 111
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 112
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 113
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private resetFullScreenTimer()V
    .locals 3

    .line 775
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "resetFullScreenTimer"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->fullscreenRun:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lcom/chery/media/view/fragment/VideoPlayerFragment$31;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment$31;-><init>(Lcom/chery/media/view/fragment/VideoPlayerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->fullscreenRun:Ljava/lang/Runnable;

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->fullscreenRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 785
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->fullscreenRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setControlView(Z)V
    .locals 3

    .line 819
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControlView autoDismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clPlayControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvVideoName:Lcom/chery/media/view/component/MarqueeTextView;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 825
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVideoList:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 826
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clBrightnessSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 827
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVolSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 828
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llFastTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->resetFullScreenTimer()V

    goto :goto_0

    .line 834
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->clearFullScreenTimer()V

    :goto_0
    return-void
.end method

.method private setFullScreenView()V
    .locals 2

    .line 839
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "setFullScreenView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 842
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVideoList:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clBrightnessSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->clVolSetting:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->llFastTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 847
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->clearFullScreenTimer()V

    return-void
.end method

.method private updateDuration()V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingDuration(I)J

    move-result-wide v0

    .line 714
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvMusicDuration:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvMusicDuration:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvFastMusicDuration:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateList()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlaylist(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->setVideoList(Ljava/util/List;)V

    return-void
.end method

.method private updateListCurrentPlaying()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->setCurrentVideoInfo(Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    return-void
.end method

.method private updateListCurrentPlayingIconAnim()V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingState(I)I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->setPlaying(Z)V

    return-void
.end method

.method private updatePlayPauseIcon()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingState(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 709
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->ivPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const v0, 0x7f0701a0

    goto :goto_1

    :cond_1
    const v0, 0x7f07019f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updatePosition()V
    .locals 7

    .line 720
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->playerSeekBarTracking:Z

    if-nez v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingPosition(I)J

    move-result-wide v0

    .line 722
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v2, v3}, Lcom/chery/media/viewmodel/VideoViewModel;->getPlayingDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 726
    :cond_0
    iget-object v4, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v0

    div-long/2addr v4, v2

    .line 727
    :goto_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->sbTimeBar:Landroid/widget/SeekBar;

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 728
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 731
    :cond_1
    sget-object p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "playerSeekBarTracking, ignore"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateSurface()V
    .locals 10

    .line 666
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceCreated:Z

    if-nez v0, :cond_0

    .line 667
    sget-object p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "surface not created"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getVideoSize(I)Landroid/util/Size;

    move-result-object v0

    const/16 v1, 0x2d0

    const/16 v2, 0x780

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    .line 674
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 675
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v2

    .line 677
    :goto_0
    sget-object v4, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "dest size(%s*%s)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v4, v3, 0x2d0

    mul-int/lit16 v6, v0, 0x780

    if-le v4, v6, :cond_2

    .line 681
    div-int v1, v6, v3

    goto :goto_1

    .line 685
    :cond_2
    div-int v2, v4, v0

    .line 687
    :goto_1
    sget-object v0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const-string v4, "dest scale size(%s*%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceWidth:I

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->surfaceHeight:I

    if-ne v1, v0, :cond_3

    .line 690
    sget-object p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "dest scale size same with current surface"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 693
    :cond_3
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 694
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 695
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 696
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->surface:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private updateVideoCover()V
    .locals 5

    .line 796
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isPartNumberBrazil()Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0e00cf

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvCoverHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    .line 799
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->getCountry()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 800
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvCoverHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 802
    :cond_1
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 803
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvCoverHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvCoverHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    :goto_0
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isPartNumberBrazil()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    .line 810
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    invoke-virtual {v0}, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->getSpeedLimitView()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_3

    .line 813
    :cond_4
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    invoke-virtual {v0}, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    .line 814
    invoke-virtual {v2}, Lcom/chery/media/viewmodel/VideoViewModel;->getSpeedLimitSetting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/VideoViewModel;->getSpeedLimitView()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    .line 813
    :goto_2
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateVideoName()V
    .locals 4

    .line 701
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvVideoName:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->inVideoCover:Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/VideoPlayerCoverLayoutBinding;->tvVideoName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;->name:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->mParam1:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->mParam2:Ljava/lang/String;

    .line 125
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 132
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p3

    invoke-virtual {p3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0b0058

    .line 133
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    goto :goto_0

    :cond_0
    const p3, 0x7f0b0057

    .line 136
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    .line 139
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 187
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 189
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->tvVideoName:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoPlayerListAdapter:Lcom/chery/media/view/adapter/VideoPlayerListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoPlayerListAdapter;->setVideoList(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 193
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentVideoPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoPlayerBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 152
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onStart()V

    .line 154
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->setControlView(Z)V

    .line 157
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1, v0}, Lcom/chery/media/viewmodel/VideoViewModel;->setUiEnablePlay(Z)V

    .line 158
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->requestAudioFocus()Z

    .line 160
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/VideoViewModel;->getBrightness()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->systemBrightness:I

    .line 162
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "brightness"

    .line 163
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 164
    sget-object v1, Lcom/chery/media/view/fragment/VideoPlayerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sp read brightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 166
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {p0, v0}, Lcom/chery/media/viewmodel/VideoViewModel;->changeBrightness(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 173
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onStop()V

    .line 175
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->setControlView(Z)V

    .line 178
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->freeze(I)V

    .line 180
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v1, v0}, Lcom/chery/media/viewmodel/VideoViewModel;->setUiEnablePlay(Z)V

    .line 181
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/VideoPlayerFragment;->systemBrightness:I

    invoke-virtual {v0, p0}, Lcom/chery/media/viewmodel/VideoViewModel;->changeBrightness(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->initViewModel()V

    .line 147
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoPlayerFragment;->initView()V

    return-void
.end method
