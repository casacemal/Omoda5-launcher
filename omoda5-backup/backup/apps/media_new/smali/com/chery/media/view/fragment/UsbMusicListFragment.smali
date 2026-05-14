.class public Lcom/chery/media/view/fragment/UsbMusicListFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "UsbMusicListFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "usb"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

.field private handler:Landroid/os/Handler;

.field private listMode:I

.field private thisUsbType:I

.field private usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

.field private usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

.field private usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

.field private usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-class v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->listMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    return p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbScannerViewModel;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateUsbMusicsCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingIconAnim()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/UsbMusicListFragment;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->setListMode(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/UsbMusicListFragment;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initList()V
    .locals 4

    .line 253
    new-instance v0, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    invoke-direct {v0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    .line 254
    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$8;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/UsbMusicSongListAdapter$OnItemClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 265
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 266
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$9;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 281
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$10;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 303
    new-instance v0, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget-object v3, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-direct {v0, v1, v2, v3}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;-><init>(ILcom/chery/media/viewmodel/UsbScannerViewModel;Lcom/chery/media/viewmodel/UsbMusicViewModel;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    .line 304
    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$11;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter$OnItemClickListener;)V

    .line 326
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 327
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 328
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 329
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$12;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 343
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$13;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 177
    sget-object v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateUsbLabel()V

    .line 180
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateListTab()V

    .line 181
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->initList()V

    .line 182
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateList()V

    .line 183
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlaying()V

    .line 184
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingIconAnim()V

    .line 185
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingItemPosition()V

    .line 186
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateListMask()V

    .line 187
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateUsbMusicsCount()V

    .line 189
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$5;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabSongs:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$6;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$6;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabFolders:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicListFragment$7;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$7;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 134
    sget-object v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    .line 137
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$1;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->observeUsbScanStatusDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 147
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    .line 148
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicListFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$2;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlaylistDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 157
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicListFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$3;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 166
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicListFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment$4;-><init>(Lcom/chery/media/view/fragment/UsbMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayingStateDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(I)Lcom/chery/media/view/fragment/UsbMusicListFragment;
    .locals 3

    .line 73
    new-instance v0, Lcom/chery/media/view/fragment/UsbMusicListFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;-><init>()V

    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "usb"

    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setListMode(I)V
    .locals 1

    .line 445
    iget v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->listMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 448
    :cond_0
    iput p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->listMode:I

    .line 449
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateListTab()V

    .line 450
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateListMask()V

    return-void
.end method

.method private updateCurrentPlaying()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->setPlayingMusic(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 384
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setPlayingMusic(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    return-void
.end method

.method private updateCurrentPlayingIconAnim()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->isPlaying(I)Z

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->setPlaying(Z)V

    .line 390
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {p0, v0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setPlaying(Z)V

    return-void
.end method

.method private updateCurrentPlayingItemPosition()V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->getMusicList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 397
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v2, v3}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v2

    .line 398
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 400
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v2}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 408
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    if-nez v0, :cond_4

    .line 409
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v2, v3}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v2

    .line 412
    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->musicInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 414
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->isRootFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v2}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->getSubFolderInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    :goto_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 415
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    .line 418
    :cond_3
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateList()V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getMusics(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->setMusicList(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->mountPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->getFolderInfo()Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getFolderInfo(ILjava/lang/String;)Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 379
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 425
    iget v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->listMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    .line 426
    :goto_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 430
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 432
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 435
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateListTab()V
    .locals 4

    .line 238
    iget v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->listMode:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabSongs:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 240
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabFolders:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 241
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v3}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 242
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 245
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabSongs:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 246
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTabFolders:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 247
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    .line 248
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v3}, Lcom/chery/media/view/component/RecycleViewSb;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUsbLabel()V
    .locals 2

    .line 227
    iget v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvBigIconTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvBigIconTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateUsbMusicsCount()V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->tvMusicCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbScannerViewModel:Lcom/chery/media/viewmodel/UsbScannerViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    .line 441
    invoke-virtual {v3, p0}, Lcom/chery/media/viewmodel/UsbScannerViewModel;->getUsbDeviceInfo(I)Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;

    move-result-object p0

    iget p0, p0, Lcom/chery/media/model/business/MediaDef$UsbDeviceInfo;->musicsCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 440
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getThisUsbType()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    .line 89
    sget-object p1, Lcom/chery/media/view/fragment/UsbMusicListFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thisUsbType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    .line 99
    invoke-virtual {p1}, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 124
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicSongListAdapter:Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicSongListAdapter;->setMusicList(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 128
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicFolderListAdapter:Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicFolderListAdapter;->setFolderInfo(Lcom/chery/media/model/business/MediaDef$UsbFolderInfo;)V

    .line 129
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicListBinding;->rvFolderList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 113
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    invoke-virtual {v0, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->requestAudioFocus(I)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->initViewModel()V

    .line 107
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->initView()V

    return-void
.end method

.method public setThisUsbType(I)V
    .locals 2

    .line 212
    iget v0, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    if-ne p1, v0, :cond_0

    return-void

    .line 215
    :cond_0
    iput p1, p0, Lcom/chery/media/view/fragment/UsbMusicListFragment;->thisUsbType:I

    .line 216
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "usb"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateUsbLabel()V

    .line 219
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateList()V

    .line 220
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlaying()V

    .line 221
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingIconAnim()V

    .line 222
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateCurrentPlayingItemPosition()V

    .line 223
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicListFragment;->updateUsbMusicsCount()V

    return-void
.end method
