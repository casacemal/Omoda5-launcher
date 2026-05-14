.class public Lcom/chery/media/view/fragment/PictureMainFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "PictureMainFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "usbType"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

.field private currentViewUsbType:I

.field private handler:Landroid/os/Handler;

.field private listMode:I

.field private pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

.field private pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

.field private pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/chery/media/view/fragment/PictureMainFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/PictureMainFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->listMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/PictureMainFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateUsbState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/view/adapter/PictureAllListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/PictureMainFragment;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateList()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/PictureMainFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->setListMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/view/adapter/PictureFolderListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    return-object p0
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/databinding/FragmentPictureMainBinding;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/PictureMainFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateFolderBackVisible()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/PictureMainFragment;)Lcom/chery/media/viewmodel/PictureViewModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    return-object p0
.end method

.method private clearList()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->setPictureList(Ljava/util/List;)V

    .line 423
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    return-void
.end method

.method private initList()V
    .locals 5

    .line 310
    new-instance v0, Lcom/chery/media/view/adapter/PictureAllListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    .line 311
    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$9;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/PictureAllListAdapter$OnItemClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 323
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 324
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureMainBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentPictureMainBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$10;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 339
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$11;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 361
    new-instance v0, Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget-object v4, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-direct {v0, v1, v2, v4}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/UsbScannerViewModel;Lcom/chery/media/viewmodel/PictureViewModel;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    .line 362
    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$12;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/PictureFolderListAdapter$OnItemClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 382
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 383
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentPictureMainBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentPictureMainBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$13;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 398
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$14;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 178
    sget-object v0, Lcom/chery/media/view/fragment/PictureMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->initList()V

    .line 182
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvTabUsb1:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$4;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$4;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvAllPictures:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$5;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvFolders:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$6;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$6;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$7;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$7;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivFullscreen:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/PictureMainFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$8;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 144
    sget-object v0, Lcom/chery/media/view/fragment/PictureMainFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 147
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureMainFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$1;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbMountStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureMainFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$2;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbScanStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 166
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/PictureViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/PictureViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    .line 167
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/PictureMainFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/PictureMainFragment$3;-><init>(Lcom/chery/media/view/fragment/PictureMainFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/PictureViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(I)Lcom/chery/media/view/fragment/PictureMainFragment;
    .locals 3

    .line 74
    new-instance v0, Lcom/chery/media/view/fragment/PictureMainFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/PictureMainFragment;-><init>()V

    .line 75
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "usbType"

    .line 76
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/PictureMainFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setListMode(I)V
    .locals 1

    .line 475
    iget v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->listMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 478
    :cond_0
    iput p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->listMode:I

    .line 479
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateListTab()V

    .line 480
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateListMask()V

    .line 481
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateFolderBackVisible()V

    return-void
.end method

.method private updateCurrentPlaying()V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureViewModel:Lcom/chery/media/viewmodel/PictureViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/PictureViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->setCurrentPictureInfo(Lcom/chery/media/model/business/MediaDef$UsbPictureInfo;)V

    return-void
.end method

.method private updateFolderBackVisible()V
    .locals 4

    .line 460
    iget v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->listMode:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->isRootFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clFolderListBack:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 462
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbTabs:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbTabs:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 466
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clFolderListBack:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getPictures(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->setPictureList(Ljava/util/List;)V

    .line 430
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    .line 431
    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v2, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 441
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateFolderBackVisible()V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 445
    iget v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->listMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 446
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 449
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 450
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 451
    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x5

    if-ne v0, v1, :cond_2

    .line 452
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 455
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateListTab()V
    .locals 4

    .line 256
    iget v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->listMode:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvAllPictures:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 258
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvFolders:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 259
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 260
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 263
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvAllPictures:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 264
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvFolders:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 266
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUsbState()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->isMounted(I)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivUsbState:Landroid/widget/ImageView;

    const v3, 0x7f070194

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvUsbState:Landroid/widget/TextView;

    const v3, 0x7f0e00cb

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 276
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clPictureContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v3}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbScanStatus(I)I

    move-result v0

    const/16 v3, 0x23

    if-eq v0, v3, :cond_2

    .line 281
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v3}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivUsbState:Landroid/widget/ImageView;

    const v3, 0x7f070195

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvUsbState:Landroid/widget/TextView;

    const v3, 0x7f0e00cc

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 285
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 286
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clPictureContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 290
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clPictureContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    invoke-virtual {v0, v3}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->picturesCount:I

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->ivUsbState:Landroid/widget/ImageView;

    const v3, 0x7f070196

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvUsbState:Landroid/widget/TextView;

    const v3, 0x7f0e00cd

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 299
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clPictureContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clUsbState:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 303
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->clPictureContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUsbTab()V
    .locals 1

    .line 247
    iget v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    if-nez v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvTabUsb1:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->tvTabUsb1:Landroid/widget/TextView;

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
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "usbType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    .line 87
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->handler:Landroid/os/Handler;

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
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b004d

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentPictureMainBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentPictureMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b004c

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentPictureMainBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentPictureMainBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    .line 100
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentPictureMainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 132
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureAllListAdapter:Lcom/chery/media/view/adapter/PictureAllListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureAllListAdapter;->setPictureList(Ljava/util/List;)V

    .line 135
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 136
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvPictureList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 138
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->pictureFolderListAdapter:Lcom/chery/media/view/adapter/PictureFolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/PictureFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 139
    iget-object v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object p0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->binding:Lcom/chery/media/databinding/FragmentPictureMainBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentPictureMainBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/BaseActivity;

    .line 124
    invoke-virtual {v0}, Lcom/chery/media/view/activity/BaseActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 125
    invoke-static {}, Lcom/chery/media/model/business/MediaBusiness;->getInstance()Lcom/chery/media/model/business/MediaBusiness;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chery/media/model/business/MediaBusiness;->updateFullscreenState(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->initViewModel()V

    .line 108
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->initView()V

    .line 110
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateUsbTab()V

    .line 111
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateListTab()V

    .line 112
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateUsbState()V

    .line 113
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateList()V

    .line 114
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateListMask()V

    .line 115
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateCurrentPlaying()V

    return-void
.end method

.method public setCurrentViewUsbType(I)V
    .locals 2

    .line 233
    iget v0, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 236
    :cond_0
    iput p1, p0, Lcom/chery/media/view/fragment/PictureMainFragment;->currentViewUsbType:I

    .line 237
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "usbType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateUsbTab()V

    .line 240
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateUsbState()V

    .line 241
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->clearList()V

    .line 242
    invoke-direct {p0}, Lcom/chery/media/view/fragment/PictureMainFragment;->updateList()V

    const/4 p1, 0x0

    .line 243
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/PictureMainFragment;->setListMode(I)V

    return-void
.end method
