.class public Lcom/chery/media/view/fragment/DabFavorListFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "DabFavorListFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

.field private callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

.field private curPlayInfoObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

.field private dabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private handler:Landroid/os/Handler;

.field private playingStateObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/chery/media/view/fragment/DabFavorListFragment;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/DabFavorListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->handler:Landroid/os/Handler;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabList:Ljava/util/List;

    .line 143
    new-instance v0, Lcom/chery/media/view/fragment/DabFavorListFragment$4;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabFavorListFragment$4;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    .line 150
    new-instance v0, Lcom/chery/media/view/fragment/DabFavorListFragment$5;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabFavorListFragment$5;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    .line 176
    new-instance v0, Lcom/chery/media/view/fragment/DabFavorListFragment$6;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabFavorListFragment$6;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/DabFavorListFragment;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/DabFavorListFragment;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/DabFavorListFragment;)Lcom/chery/media/databinding/FragmentDabAllListBinding;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    return-object p0
.end method

.method private initView()V
    .locals 3

    .line 82
    new-instance v0, Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    .line 83
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 85
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabAllListBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v2, v2, Lcom/chery/media/databinding/FragmentDabAllListBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Lcom/chery/media/view/component/RecycleViewSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/DabFavorListFragment$1;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabFavorListFragment$1;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 101
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getFavorList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->tvNoFavor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getFavorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    new-instance v1, Lcom/chery/media/view/fragment/DabFavorListFragment$2;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabFavorListFragment$2;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/DabFavorListFragment$3;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabFavorListFragment$3;-><init>(Lcom/chery/media/view/fragment/DabFavorListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->updateListMask()V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 137
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 138
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 139
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 140
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, p0}, Lcom/chery/media/viewmodel/DabViewModel;->addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    return-void
.end method

.method private updateListMask()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 168
    div-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    if-ne v1, v0, :cond_1

    .line 169
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->initViewModel()V

    .line 51
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->initView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabFavorListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b0043

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentDabAllListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentDabAllListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    .line 69
    invoke-virtual {p1}, Lcom/chery/media/databinding/FragmentDabAllListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 75
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/DabViewModel;->removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    .line 76
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->dabFavorListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabFavorListFragment;->binding:Lcom/chery/media/databinding/FragmentDabAllListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabAllListBinding;->dabAllListRv:Lcom/chery/media/view/component/RecycleViewSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
