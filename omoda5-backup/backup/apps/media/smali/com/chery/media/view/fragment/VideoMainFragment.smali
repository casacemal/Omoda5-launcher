.class public Lcom/chery/media/view/fragment/VideoMainFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "VideoMainFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "usbType"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

.field private currentViewUsbType:I

.field private handler:Landroid/os/Handler;

.field private listMode:I

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

.field private videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

.field private videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

.field private videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/chery/media/view/fragment/VideoMainFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/VideoMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->listMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/VideoMainFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateUsbState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/VideoMainFragment;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/VideoMainFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->setListMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/view/adapter/VideoFolderListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/databinding/FragmentVideoMainBinding;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/VideoMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateFolderBackVisible()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/VideoMainFragment;)Lcom/chery/media/viewmodel/VideoViewModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    return-object p0
.end method

.method private clearList()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->setVideoList(Ljava/util/List;)V

    .line 392
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    return-void
.end method

.method private initList()V
    .locals 6

    .line 281
    new-instance v0, Lcom/chery/media/view/adapter/VideoAllListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-static {v2}, Lcom/chery/media/model/business/ThumbnailCache;->getThumbnailCache(I)Lcom/chery/media/model/business/ThumbnailCache;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/VideoAllListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/model/business/ThumbnailCache;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    .line 282
    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$8;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/VideoAllListAdapter$OnItemClickListener;)V

    .line 292
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 293
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 294
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentVideoMainBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoMainBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 295
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$9;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 309
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$10;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 331
    new-instance v0, Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget-object v4, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget v5, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-static {v5}, Lcom/chery/media/model/business/ThumbnailCache;->getThumbnailCache(I)Lcom/chery/media/model/business/ThumbnailCache;

    move-result-object v5

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/UsbScannerViewModel;Lcom/chery/media/viewmodel/VideoViewModel;Lcom/chery/media/model/business/ThumbnailCache;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    .line 332
    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$11;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/VideoFolderListAdapter$OnItemClickListener;)V

    .line 350
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 351
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 352
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentVideoMainBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentVideoMainBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$12;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 367
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$13;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 166
    sget-object v0, Lcom/chery/media/view/fragment/VideoMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->initList()V

    .line 170
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvTabUsb1:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$4;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$4;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvAllVideos:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$5;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvFolders:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$6;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$6;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/VideoMainFragment$7;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$7;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 132
    sget-object v0, Lcom/chery/media/view/fragment/VideoMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 135
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoMainFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$1;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbMountStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 144
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoMainFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$2;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbScanStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 154
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/VideoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/VideoViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    .line 155
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/VideoMainFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/VideoMainFragment$3;-><init>(Lcom/chery/media/view/fragment/VideoMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/VideoViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(I)Lcom/chery/media/view/fragment/VideoMainFragment;
    .locals 3

    .line 74
    new-instance v0, Lcom/chery/media/view/fragment/VideoMainFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/VideoMainFragment;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "usbType"

    .line 76
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/VideoMainFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setListMode(I)V
    .locals 1

    .line 441
    iget v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->listMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 444
    :cond_0
    iput p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->listMode:I

    .line 445
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateListTab()V

    .line 446
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateListMask()V

    .line 447
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateFolderBackVisible()V

    return-void
.end method

.method private updateCurrentPlaying()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoViewModel:Lcom/chery/media/viewmodel/VideoViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/VideoViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->setCurrentVideoInfo(Lcom/chery/media/model/business/MediaDef$UsbVideoInfo;)V

    return-void
.end method

.method private updateFolderBackVisible()V
    .locals 4

    .line 426
    iget v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->listMode:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->isRootFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clFolderListBack:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 428
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbTabs:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbTabs:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 432
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clFolderListBack:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getVideos(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->setVideoList(Ljava/util/List;)V

    .line 398
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v2, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 407
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateFolderBackVisible()V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 411
    iget v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->listMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 412
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 416
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 417
    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_2

    .line 418
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 421
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateListTab()V
    .locals 4

    .line 227
    iget v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->listMode:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvAllVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvFolders:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 230
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 231
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 234
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvAllVideos:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 235
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvFolders:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 237
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUsbState()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->isMounted(I)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->ivUsbState:Landroid/widget/ImageView;

    const v3, 0x7f070194

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvUsbState:Landroid/widget/TextView;

    const v3, 0x7f0e00cb

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 247
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clVideoContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v3}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbScanStatus(I)I

    move-result v0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_2

    .line 252
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v3}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->ivUsbState:Landroid/widget/ImageView;

    const v3, 0x7f070195

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvUsbState:Landroid/widget/TextView;

    const v3, 0x7f0e00cc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 256
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 257
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clVideoContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 261
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clVideoContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v3}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->videosCount:I

    if-nez v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->ivUsbState:Landroid/widget/ImageView;

    const v3, 0x7f070196

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvUsbState:Landroid/widget/TextView;

    const v3, 0x7f0e00cd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 270
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clVideoContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 274
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->clVideoContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUsbTab()V
    .locals 1

    .line 218
    iget v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    if-nez v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvTabUsb1:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->tvTabUsb1:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "usbType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    .line 87
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 94
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0056

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentVideoMainBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentVideoMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0055

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentVideoMainBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentVideoMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentVideoMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 122
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoAllListAdapter:Lcom/chery/media/view/adapter/VideoAllListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoAllListAdapter;->setVideoList(Ljava/util/List;)V

    .line 123
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvVideoList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 126
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->videoFolderListAdapter:Lcom/chery/media/view/adapter/VideoFolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/VideoFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 127
    iget-object v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 128
    iget-object p0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->binding:Lcom/chery/media/databinding/FragmentVideoMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentVideoMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->initViewModel()V

    .line 108
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->initView()V

    .line 110
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateUsbTab()V

    .line 111
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateListTab()V

    .line 112
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateUsbState()V

    .line 113
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateList()V

    .line 114
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateListMask()V

    .line 115
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateCurrentPlaying()V

    return-void
.end method

.method public setCurrentViewUsbType(I)V
    .locals 2

    .line 204
    iget v0, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 207
    :cond_0
    iput p1, p0, Lcom/chery/media/view/fragment/VideoMainFragment;->currentViewUsbType:I

    .line 208
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "usbType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateUsbTab()V

    .line 211
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateUsbState()V

    .line 212
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->clearList()V

    .line 213
    invoke-direct {p0}, Lcom/chery/media/view/fragment/VideoMainFragment;->updateList()V

    const/4 p1, 0x0

    .line 214
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/VideoMainFragment;->setListMode(I)V

    return-void
.end method
