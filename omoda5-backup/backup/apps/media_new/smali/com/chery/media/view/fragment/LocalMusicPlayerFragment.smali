.class public Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "LocalMusicPlayerFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

.field private handler:Landroid/os/Handler;

.field private localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;

.field private playerSeekBarTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-class v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->playerSeekBarTracking:Z

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePlaylist()V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePlayMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    return-object p0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->playerSeekBarTracking:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateTitleAndArtist()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCover()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePlayPauseIcon()V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateAlbumCoverAnim()V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCurrentPlayingIconAnim()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateDuration()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePosition()V

    return-void
.end method

.method private initPlaylist()V
    .locals 3

    .line 423
    new-instance v0, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/LocalMusicViewModel;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    .line 424
    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$19;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$19;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter$OnItemClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 433
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 434
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 435
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$20;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$20;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 449
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$21;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$21;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 194
    sget-object v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateTitleAndArtist()V

    .line 197
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCover()V

    .line 198
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePlayPauseIcon()V

    .line 199
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateDuration()V

    .line 200
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePosition()V

    .line 202
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initPlaylist()V

    .line 203
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePlaylist()V

    .line 204
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCurrentPlaying()V

    .line 205
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCurrentPlayingIconAnim()V

    .line 206
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateCurrentPlayingItemPosition()V

    .line 207
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateListMask()V

    .line 208
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updatePlayMode()V

    .line 209
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->updateAlbumCoverAnim()V

    .line 211
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivRetract:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$7;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$7;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$8;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$9;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$10;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivLast:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$11;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 256
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$12;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$12;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$13;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$13;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivNext:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$14;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$14;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 284
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$15;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$16;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivSoundEffects:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$17;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$17;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 146
    sget-object v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    .line 149
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPlaylist()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$1;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$2;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 165
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$3;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 173
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getDuration()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$4;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$4;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 179
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPosition()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$5;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$5;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 185
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPlayMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$6;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$6;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;
    .locals 3

    .line 83
    new-instance v0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 85
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 86
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateAlbumCoverAnim()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->startAnim()V

    goto :goto_0

    .line 536
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->pauseAnim()V

    :goto_0
    return-void
.end method

.method private updateCover()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0700fa

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->setAlbumCover(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-eqz v0, :cond_0

    .line 368
    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;

    invoke-direct {v1, p0, v0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;-><init>(Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    .line 389
    invoke-virtual {v1}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment$18;->start()V

    :cond_0
    return-void
.end method

.method private updateCurrentPlaying()V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    return-void
.end method

.method private updateCurrentPlayingIconAnim()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->setPlaying(Z)V

    return-void
.end method

.method private updateCurrentPlayingItemPosition()V
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->getMusicList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 494
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

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

    .line 404
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getDuration()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 405
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicDuration:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 507
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePlayMode()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPlayMode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    const v0, 0x7f0700f6

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    const v0, 0x7f0700f7

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->ivMusicMode:Landroid/widget/ImageView;

    const v0, 0x7f0700f8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updatePlayPauseIcon()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0700fe

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->ivPlaypause:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getContext()Landroid/content/Context;

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

    .line 473
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPlaylist()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->setMusicList(Ljava/util/List;)V

    .line 474
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicListTitle:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f0e007d

    .line 475
    invoke-virtual {p0, v2}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPlaylist()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s (%s)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 474
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePosition()V
    .locals 7

    .line 409
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->playerSeekBarTracking:Z

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getPosition()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 411
    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->tvMusicTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/chery/media/util/Utils;->getTimeString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v2}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getDuration()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 414
    div-long v4, v0, v2

    .line 415
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerTimeBar:Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/MediaPlayerTimeBarLayoutBinding;->sbTimeBar:Landroid/widget/SeekBar;

    long-to-int v0, v4

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 418
    :cond_1
    sget-object p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->TAG:Ljava/lang/String;

    const-string v0, "playerSeekBarTracking, ignore"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateTitleAndArtist()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    if-eqz v0, :cond_2

    .line 344
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    iget-object v2, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v2, v2, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v1, v1, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    const-string v2, "<unknown>"

    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;->originalMusicInfo:Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;

    iget-object v0, v0, Lcom/chery/media/model/business/MediaDef$UsbMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 351
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setVisibility(I)V

    .line 359
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicArtist:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->mParam1:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->mParam2:Ljava/lang/String;

    .line 98
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 105
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->getCarConfigInfoClient()Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chery/caradapter/carapi/client/CarConfigInfoClient;->isRudderRight()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0049

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0048

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    invoke-virtual {p0}, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 137
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->inPlayerControl:Lcom/chery/media/databinding/MediaPlayerLayoutBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/MediaPlayerLayoutBinding;->anAlbumCover:Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;

    invoke-virtual {v0}, Lcom/chery/media/view/component/MediaPlayerAlbumCoverAnim;->cancelAnim()V

    .line 138
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->tvMusicTitle:Lcom/chery/media/view/component/MarqueeTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicPlayerListAdapter:Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/LocalMusicPlayerListAdapter;->setMusicList(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 142
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicPlayerBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->requestAudioFocus()Z

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 118
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initViewModel()V

    .line 119
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicPlayerFragment;->initView()V

    return-void
.end method
