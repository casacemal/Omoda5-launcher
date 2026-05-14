.class public Lcom/chery/media/view/fragment/LocalMusicListFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "LocalMusicListFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

.field private dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

.field private handler:Landroid/os/Handler;

.field private isEditing:Z

.field private localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

.field private localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

.field private mParam1:Ljava/lang/String;

.field private mParam2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    const-string v1, "MEDIA"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateList()V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateCurrentPlayingItemPosition()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/chery/media/view/fragment/LocalMusicListFragment;Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;)Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/viewmodel/LocalMusicViewModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$1300(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateCurrentPlaying()V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateCurrentPlayingIconAnim()V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    return p0
.end method

.method static synthetic access$402(Lcom/chery/media/view/fragment/LocalMusicListFragment;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/LocalMusicListFragment;)Lcom/chery/media/view/adapter/LocalMusicListAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEdit()V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditAll()V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditCancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditDelete()V

    return-void
.end method

.method private initList()V
    .locals 3

    .line 288
    new-instance v0, Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-direct {v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    .line 289
    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$9;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->setOnItemClickListener(Lcom/chery/media/view/adapter/LocalMusicListAdapter$OnItemClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 305
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 306
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->sbMusicListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->llMusicListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$10;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$10;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 321
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$11;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$11;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 163
    sget-object v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->TAG:Ljava/lang/String;

    const-string v1, "initView"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->initList()V

    .line 166
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateList()V

    .line 167
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateCurrentPlaying()V

    .line 168
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateCurrentPlayingIconAnim()V

    .line 169
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateCurrentPlayingItemPosition()V

    .line 170
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateListMask()V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    .line 173
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEdit()V

    .line 174
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditAll()V

    .line 175
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditCancel()V

    .line 176
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditDelete()V

    .line 178
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$4;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$4;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivEdit:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$5;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditAll:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$6;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$7;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$7;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$8;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 137
    sget-object v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->TAG:Ljava/lang/String;

    const-string v1, "initViewModel"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/LocalMusicViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    .line 140
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicListFragment$1;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$1;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 147
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicListFragment$2;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$2;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 154
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/chery/media/view/fragment/LocalMusicListFragment$3;

    invoke-direct {v2, p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment$3;-><init>(Lcom/chery/media/view/fragment/LocalMusicListFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/chery/media/view/fragment/LocalMusicListFragment;
    .locals 3

    .line 75
    new-instance v0, Lcom/chery/media/view/fragment/LocalMusicListFragment;

    invoke-direct {v0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;-><init>()V

    .line 76
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "param1"

    .line 77
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "param2"

    .line 78
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateCurrentPlaying()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->setCurrentPlaying(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;)V

    return-void
.end method

.method private updateCurrentPlayingIconAnim()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->isPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->setPlaying(Z)V

    return-void
.end method

.method private updateCurrentPlayingItemPosition()V
    .locals 2

    .line 361
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->getMusicList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getCurrentPlaying()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 367
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

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

.method private updateEdit()V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivEdit:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivEdit:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditAll()V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditAll:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditAll:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditCancel()V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditCancel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditCancel:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditDelete()V
    .locals 7

    .line 270
    iget-boolean v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isEditing:Z

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-virtual {v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->getSelectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f0e0074

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 273
    iget-object v4, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "(%d)"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v4, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v4, v4, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_0
    iget-object v2, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 280
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 283
    :cond_2
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvEditDelete:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private updateList()V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->getLocalMusics()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 346
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->setMusicList(Ljava/util/List;)V

    .line 347
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->tvMusicCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0070

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->updateEditDelete()V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 380
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->mParam1:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "param2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->mParam2:Ljava/lang/String;

    .line 90
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    .line 98
    invoke-virtual {p1}, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicListAdapter:Lcom/chery/media/view/adapter/LocalMusicListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/LocalMusicListAdapter;->setMusicList(Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 133
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->binding:Lcom/chery/media/databinding/FragmentLocalMusicListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentLocalMusicListBinding;->rvMusicList:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onResume()V

    .line 112
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->isTopWhenStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/chery/media/view/activity/MediaActivity;

    invoke-virtual {v0}, Lcom/chery/media/view/activity/MediaActivity;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 114
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->localMusicViewModel:Lcom/chery/media/viewmodel/LocalMusicViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/LocalMusicViewModel;->requestAudioFocus()Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onStop()V

    .line 122
    iget-object v0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p0, p0, Lcom/chery/media/view/fragment/LocalMusicListFragment;->dialog:Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_TextConfirmCancel;->dismiss()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->initViewModel()V

    .line 106
    invoke-direct {p0}, Lcom/chery/media/view/fragment/LocalMusicListFragment;->initView()V

    return-void
.end method
