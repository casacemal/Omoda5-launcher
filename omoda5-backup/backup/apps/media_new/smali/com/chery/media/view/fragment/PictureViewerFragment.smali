.class public Lcom/chery/media/view/fragment/PictureViewerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "PictureViewerFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final AUTO_CHANGE_INTERVAL:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoChangeLeftDuration:I

.field private binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

.field private btCallStateLiveData:Lcom/chery/btphone/livedata/BtCallStateLiveData;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private currentUsbType:I

.field private fullscreenRun:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private hardKeyListener:Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

.field private pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

.field private powerListener:Lcom/chery/caradapter/carapi/interfaces/IPowerListener;

.field private runAutoChange:Ljava/lang/Runnable;

.field private screenSwitchListener:Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lcom/chery/media/view/fragment/PictureViewerFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, -0x1

    .line 64
    iput v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->autoChangeLeftDuration:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->stopAutoChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->resumeAutoChange()V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/view/adapter/PictureViewerAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/btphone/livedata/BtCallStateLiveData;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->btCallStateLiveData:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/chery/media/view/fragment/PictureViewerFragment;)Lcom/chery/media/viewmodel/PictureViewModel;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/chery/media/view/fragment/PictureViewerFragment;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->showControls(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->pauseAutoChange()V

    return-void
.end method

.method static synthetic access$1700(Lcom/chery/media/view/fragment/PictureViewerFragment;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->switchControls(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/chery/media/view/fragment/PictureViewerFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->autoChangeLeftDuration:I

    return p0
.end method

.method static synthetic access$1900(Lcom/chery/media/view/fragment/PictureViewerFragment;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->setAutoChangeLeftDuration(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/PictureViewerFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    return p0
.end method

.method static synthetic access$2000(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->hideControls()V

    return-void
.end method

.method static synthetic access$202(Lcom/chery/media/view/fragment/PictureViewerFragment;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    return p1
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->updateList()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/PictureViewerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/PictureViewerFragment;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->resetAutoChangeLeftDuration()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->updatePictureCover()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/PictureViewerFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->resetFullScreenTimer()V

    return-void
.end method

.method private clearFullScreenTimer()V
    .locals 2

    .line 574
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "clearFullScreenTimer"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->fullscreenRun:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 576
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private hideControls()V
    .locals 2

    .line 592
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "hideControls"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 594
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->clearFullScreenTimer()V

    return-void
.end method

.method private initList()V
    .locals 2

    .line 385
    new-instance v0, Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    .line 386
    new-instance v1, Lcom/chery/media/view/fragment/PictureViewerFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$11;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/PictureViewerAdapter$OnItemClickListener;)V

    .line 416
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/PictureViewerFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$12;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->setOnCurrentItemListener(Lcom/chery/media/view/adapter/PictureViewerAdapter$OnCurrentItemListener;)V

    .line 439
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/PictureViewerFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$13;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->setOnPhotoViewScaleListener(Lcom/chery/media/view/adapter/PictureViewerAdapter$OnPhotoViewScaleChangeListener;)V

    .line 450
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/HackyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 451
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    const v0, 0x3fffffff    # 1.9999999f

    invoke-virtual {p0, v0}, Lcom/chery/media/view/component/HackyViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 280
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->initList()V

    .line 283
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->updateList()V

    .line 284
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->updateCurrentPlaying()V

    .line 286
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->inPictureCover:Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;->tvCoverHint:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->updatePictureCover()V

    .line 289
    new-instance v0, Lcom/chery/media/view/fragment/PictureViewerFragment$10;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$10;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    .line 367
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivBack:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoChangePaused:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivRotate:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoPlay:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivPlayPrior:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivPlayNext:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomIn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivZoomOut:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 214
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/PictureViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    .line 218
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    .line 219
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureViewerFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$4;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 232
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureViewerFragment$5;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$5;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/PictureViewModel;->observePlaylistDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 243
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureViewerFragment$6;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$6;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/PictureViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 254
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->getSpeedLimitView()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureViewerFragment$7;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$7;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 260
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->getSpeedLimitSetting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureViewerFragment$8;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$8;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 267
    new-instance v0, Lcom/chery/btphone/livedata/BtCallStateLiveData;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/btphone/livedata/BtCallStateLiveData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->btCallStateLiveData:Lcom/chery/btphone/livedata/BtCallStateLiveData;

    .line 268
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureViewerFragment$9;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$9;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/PictureViewerFragment;
    .locals 3

    .line 91
    new-instance v0, Lcom/chery/media/view/fragment/PictureViewerFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 93
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 94
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private pauseAutoChange()V
    .locals 2

    .line 506
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "pauseAutoChange"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 508
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "pauseAutoChange in"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoChangePaused:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private resetAutoChangeLeftDuration()V
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/PictureViewModel;->getPlaylist(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 540
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object v2, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    invoke-virtual {v2, v3}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    move-result-object v2

    .line 545
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 547
    invoke-direct {p0, v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->setAutoChangeLeftDuration(I)V

    return-void

    .line 551
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->setAutoChangeLeftDuration(I)V

    return-void

    .line 541
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->setAutoChangeLeftDuration(I)V

    return-void
.end method

.method private resetFullScreenTimer()V
    .locals 3

    .line 560
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "resetFullScreenTimer"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->fullscreenRun:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lcom/chery/media/view/fragment/PictureViewerFragment$15;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$15;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->fullscreenRun:Ljava/lang/Runnable;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->fullscreenRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 570
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->fullscreenRun:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resumeAutoChange()V
    .locals 4

    .line 516
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "resumeAutoChange"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 518
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "resumeAutoChange in"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoChangePaused:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setAutoChangeLeftDuration(I)V
    .locals 2

    .line 555
    iput p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->autoChangeLeftDuration:I

    .line 556
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->tvLeftDuration:Landroid/widget/TextView;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showControls(Z)V
    .locals 3

    .line 581
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showControls autoDismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->resetFullScreenTimer()V

    goto :goto_0

    .line 587
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->clearFullScreenTimer()V

    :goto_0
    return-void
.end method

.method private stopAutoChange()V
    .locals 2

    .line 526
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "stopAutoChange"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "stopAutoChange in"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 530
    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    .line 532
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->ivAutoChangePaused:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->tvLeftDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clSubControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private switchControls(Z)V
    .locals 3

    .line 598
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchControls autoDismiss:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->hideControls()V

    goto :goto_0

    .line 603
    :cond_0
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->showControls(Z)V

    :goto_0
    return-void
.end method

.method private updateCurrentPlaying()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/PictureViewModel;->getPlaylist(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 461
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    move-result-object v1

    .line 465
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    .line 470
    :cond_1
    iget-object v2, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    invoke-virtual {v2}, Lcom/chery/media/view/component/HackyViewPager;->getCurrentItem()I

    move-result v2

    .line 472
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v2, v0

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    .line 474
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/chery/media/view/component/HackyViewPager;->setCurrentItem(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/PictureViewModel;->getPlaylist(I)Ljava/util/List;

    move-result-object v0

    .line 456
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->setPictureList(Ljava/util/List;)V

    return-void
.end method

.method private updatePictureCover()V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->getSpeedLimitSetting()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/PictureViewModel;->getSpeedLimitView()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->inPictureCover:Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 612
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->inPictureCover:Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/PicturePlayerCoverLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->mParam1:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->mParam2:Ljava/lang/String;

    .line 107
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    .line 108
    new-instance p1, Lcom/chery/media/view/fragment/PictureViewerFragment$1;

    invoke-direct {p1, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$1;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->screenSwitchListener:Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;

    .line 117
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->screenSwitchListener:Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/MediaBusiness;->addScreenSwitchListener(Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;)V

    .line 119
    new-instance p1, Lcom/chery/media/view/fragment/PictureViewerFragment$2;

    invoke-direct {p1, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$2;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->hardKeyListener:Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;

    .line 127
    invoke-static {}, Lcom/chery/media/model/business/HardKeyBusiness;->getInstance()Lcom/chery/media/model/business/HardKeyBusiness;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->hardKeyListener:Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;

    invoke-virtual {p1, v0}, Lcom/chery/media/model/business/HardKeyBusiness;->addHardKeyListener(Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;)V

    .line 129
    new-instance p1, Lcom/chery/media/view/fragment/PictureViewerFragment$3;

    invoke-direct {p1, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$3;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->powerListener:Lcom/chery/caradapter/carapi/interfaces/IPowerListener;

    .line 137
    invoke-static {p1}, Lcom/chery/media/util/CarAdapterUse;->addCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 144
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p3

    invoke-virtual {p3}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0b004f

    .line 145
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    goto :goto_0

    :cond_0
    const p3, 0x7f0b004e

    .line 148
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    .line 150
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 196
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroy()V

    .line 197
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->screenSwitchListener:Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/MediaBusiness;->removeScreenSwitchListener(Lcom/chery/media/model/business/MediaBusiness$ScreenSwitchListener;)V

    .line 198
    invoke-static {}, Lcom/chery/media/model/business/HardKeyBusiness;->getInstance()Lcom/chery/media/model/business/HardKeyBusiness;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->hardKeyListener:Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/HardKeyBusiness;->removeHardKeyListener(Lcom/chery/media/model/business/HardKeyBusiness$HardKeyListener;)V

    .line 199
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->powerListener:Lcom/chery/caradapter/carapi/interfaces/IPowerListener;

    invoke-static {p0}, Lcom/chery/media/util/CarAdapterUse;->removeCarPowerClientListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 190
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->pictureViewerAdapter:Lcom/chery/media/view/adapter/PictureViewerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureViewerAdapter;->setPictureList(Ljava/util/List;)V

    .line 191
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->viewPager:Lcom/chery/media/view/component/HackyViewPager;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/HackyViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 206
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->showControls(Z)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->stopAutoChange()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/BaseActivity;

    .line 167
    invoke-virtual {v0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 168
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chery/media/model/business/MediaBusiness;->updateFullscreenState(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->isFromStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, v1}, Lcom/chery/media/view/fragment/PictureViewerFragment;->showControls(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onStop()V

    .line 180
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->stopAutoChange()V

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->showControls(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->initViewModel()V

    .line 158
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->initView()V

    return-void
.end method

.method public startAutoChange()V
    .locals 4

    .line 478
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "startAutoChange"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Lcom/chery/media/view/fragment/PictureViewerFragment;->TAG:Ljava/lang/String;

    const-string v1, "startAutoChange in"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v0, Lcom/chery/media/view/fragment/PictureViewerFragment$14;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/PictureViewerFragment$14;-><init>(Lcom/chery/media/view/fragment/PictureViewerFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->runAutoChange:Ljava/lang/Runnable;

    .line 496
    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 498
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->clSubControl:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 500
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureViewerFragment;->resetAutoChangeLeftDuration()V

    .line 501
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureViewerFragment;->binding:Lcom/chery/media/databinding/FragmentPictureViewerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureViewerBinding;->tvLeftDuration:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
