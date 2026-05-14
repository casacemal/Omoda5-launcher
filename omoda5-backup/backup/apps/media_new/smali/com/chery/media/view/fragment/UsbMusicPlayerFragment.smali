.class public Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "UsbMusicPlayerFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

.field private currentUsbType:I

.field private handler:Landroid/os/Handler;

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private playerSeekBarTracking:Z

.field private usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

.field private usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->playerSeekBarTracking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    return p0
.end method

.method static synthetic access$002(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    return p1
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateArtistUsbIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePlayMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateAlbumCoverAnim()V

    return-void
.end method

.method static synthetic access$1400(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/viewmodel/UsbMusicViewModel;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->playerSeekBarTracking:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateTitleAndArtist()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCover()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePlayPauseIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateDuration()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePosition()V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePlaylist()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCurrentPlayingIconAnim()V

    return-void
.end method

.method private initPlaylist()V
    .locals 3

    .line 489
    new-instance v0, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/LocalMusicViewModel;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    .line 490
    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$21;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter$OnItemClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 499
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 500
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$22;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 515
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$23;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 249
    sget-object v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateArtistUsbIcon()V

    .line 252
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateTitleAndArtist()V

    .line 253
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCover()V

    .line 254
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePlayPauseIcon()V

    .line 255
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateDuration()V

    .line 256
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePosition()V

    .line 258
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initPlaylist()V

    .line 259
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePlaylist()V

    .line 260
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCurrentPlaying()V

    .line 261
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCurrentPlayingIconAnim()V

    .line 262
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateCurrentPlayingItemPosition()V

    .line 263
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateListMask()V

    .line 264
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updatePlayMode()V

    .line 265
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->updateAlbumCoverAnim()V

    .line 267
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$9;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$10;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$11;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$12;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$13;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$14;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$15;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$15;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$16;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$16;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 340
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$17;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 367
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$18;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$18;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$19;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$19;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 156
    sget-object v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    .line 159
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    .line 160
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$1;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 182
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$2;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlaylistDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 191
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$3;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observeCurrentPlayingDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 202
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$4;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayingStateDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 212
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$5;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$5;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayingDurationDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 220
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$6;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayingPositionDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 228
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$7;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$7;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->observePlayModeDatas(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 237
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    .line 238
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$8;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;
    .locals 3

    .line 92
    new-instance v0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;-><init>()V

    .line 93
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 94
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 95
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateAlbumCoverAnim()V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->startAnim()V

    goto :goto_0

    .line 605
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->pauseAnim()V

    :goto_0
    return-void
.end method

.method private updateArtistUsbIcon()V
    .locals 4

    .line 399
    iget v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    if-nez v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 402
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateCover()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0700fa

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAlbumCover(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    new-instance v1, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;-><init>(Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    .line 454
    invoke-virtual {v1}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment$20;->start()V

    :cond_0
    return-void
.end method

.method private updateCurrentPlaying()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;)V

    return-void
.end method

.method private updateCurrentPlayingIconAnim()V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->isPlaying(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->setPlaying(Z)V

    return-void
.end method

.method private updateCurrentPlayingItemPosition()V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->getMusicList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v1

    .line 560
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 562
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private updateDuration()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlayingDuration(I)J

    move-result-wide v0

    .line 471
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicDuration:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 573
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 576
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 579
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePlayMode()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlayMode(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 590
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updatePlayPauseIcon()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->isPlaying(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0700fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0700fd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updatePlaylist()V
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlaylist(I)Ljava/util/List;

    move-result-object v0

    .line 540
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->setMusicList(Ljava/util/List;)V

    .line 541
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicListTitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0e007d

    .line 542
    invoke-virtual {p0, v3}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    if-eqz v0, :cond_0

    .line 543
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "%s (%s)"

    .line 542
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 541
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePosition()V
    .locals 7

    .line 475
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->playerSeekBarTracking:Z

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlayingPosition(I)J

    move-result-wide v0

    .line 477
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v2, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v3, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v2, v3}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getPlayingDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 480
    div-long v4, v0, v2

    .line 481
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    long-to-int v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 484
    :cond_1
    sget-object p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "playerSeekBarTracking, ignore"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateTitleAndArtist()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    iget v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->currentUsbType:I

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentPlaying(I)Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 409
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    const-string v2, "<unknown>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 416
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 424
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->mParam1:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->mParam2:Ljava/lang/String;

    .line 107
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 114
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0054

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0053

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    .line 120
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 144
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 146
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->cancelAnim()V

    .line 147
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->setMusicList(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicPlayerListAdapter:Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/UsbMusicPlayerListAdapter;->clear()V

    .line 151
    iget-object v0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 152
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentUsbMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->usbMusicViewModel:Lcom/chery/media/viewmodel/UsbMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->getCurrentUsbData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chery/media/viewmodel/UsbMusicViewModel;->requestAudioFocus(I)Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initViewModel()V

    .line 128
    invoke-direct {p0}, Lcom/chery/media/view/fragment/UsbMusicPlayerFragment;->initView()V

    return-void
.end method
