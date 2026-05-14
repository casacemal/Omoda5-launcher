.class public Lcom/chery/media/view/fragment/DabPtyListFragment;
.super Lcom/chery/media/view/fragment/FragmentBase;
.source "DabPtyListFragment.java"


# static fields
.field private static final MSG_ALL_LIST_CHANGED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

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

.field private dabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabPtyNameListAdapter:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

.field private dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

.field private handler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

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

    .line 32
    const-class v0, Lcom/chery/media/view/fragment/DabPtyListFragment;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/fragment/DabPtyListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/chery/media/view/fragment/FragmentBase;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->handler:Landroid/os/Handler;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabList:Ljava/util/List;

    .line 164
    new-instance v0, Lcom/chery/media/view/fragment/DabPtyListFragment$5;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$5;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    .line 171
    new-instance v0, Lcom/chery/media/view/fragment/DabPtyListFragment$6;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$6;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    .line 198
    new-instance v0, Lcom/chery/media/view/fragment/DabPtyListFragment$7;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$7;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    .line 210
    new-instance v0, Lcom/chery/media/view/fragment/DabPtyListFragment$8;

    invoke-direct {v0, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$8;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/fragment/DabPtyListFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->updateListMask()V

    return-void
.end method

.method static synthetic access$100(Lcom/chery/media/view/fragment/DabPtyListFragment;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$300(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/view/adapter/DABAllListAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/media/view/fragment/DabPtyListFragment;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/view/adapter/DABPtyNameListAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyNameListAdapter:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/chery/media/view/fragment/DabPtyListFragment;)Lcom/chery/media/databinding/FragmentDabPtyListBinding;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 87
    new-instance v0, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-direct {v0, v1, v2}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;-><init>(Landroid/content/Context;Lcom/chery/media/viewmodel/DabViewModel;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyNameListAdapter:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    .line 88
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyNameListRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyNameListAdapter:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 90
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyNameListRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyNameListAdapter:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getAllPtyId()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->setData(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->tvEmptyList:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getALLList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    new-instance v0, Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    .line 95
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewDabSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 97
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 98
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->sbListBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v3, v3, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->llListBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v3}, Lcom/chery/media/view/component/RecycleViewDabSb;->setSeekBar(Landroid/widget/SeekBar;Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    new-instance v1, Lcom/chery/media/view/fragment/DabPtyListFragment$1;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$1;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewDabSb;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 114
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getAllPtyId()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v1}, Lcom/chery/media/viewmodel/DabViewModel;->getAllPtyId()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/chery/media/viewmodel/DabViewModel;->getDabListByPty(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    new-instance v1, Lcom/chery/media/view/fragment/DabPtyListFragment$2;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$2;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewDabSb;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/DabPtyListFragment$3;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$3;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABAllListAdapter$onItemClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyNameListAdapter:Lcom/chery/media/view/adapter/DABPtyNameListAdapter;

    new-instance v1, Lcom/chery/media/view/fragment/DabPtyListFragment$4;

    invoke-direct {v1, p0}, Lcom/chery/media/view/fragment/DabPtyListFragment$4;-><init>(Lcom/chery/media/view/fragment/DabPtyListFragment;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABPtyNameListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABPtyNameListAdapter$onItemClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->updateListMask()V

    return-void
.end method

.method private initViewModel()V
    .locals 3

    .line 158
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 159
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getCurPlayInfo()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->curPlayInfoObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 160
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->playingStateObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 161
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, p0}, Lcom/chery/media/viewmodel/DabViewModel;->addCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    return-void
.end method

.method private updateListMask()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v0}, Lcom/chery/media/view/component/RecycleViewDabSb;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v1}, Lcom/chery/media/view/component/RecycleViewDabSb;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x4

    .line 190
    div-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v2

    if-ne v1, v0, :cond_1

    .line 191
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->ivListMask:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->ivListMask:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->initViewModel()V

    .line 56
    invoke-direct {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->initView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/chery/media/view/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/chery/media/view/fragment/DabPtyListFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b0046

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    .line 74
    invoke-virtual {p1}, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public onDestroyView()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onDestroyView()V

    .line 80
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    iget-object v1, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->callback:Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;

    invoke-virtual {v0, v1}, Lcom/chery/media/viewmodel/DabViewModel;->removeCallback(Lcom/chery/media/model/business/DabBusiness$DabBusinessCallback;)V

    .line 81
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->dabPtyStationListAdapter:Lcom/chery/media/view/adapter/DABAllListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAllListAdapter;->setData(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {v0, v1}, Lcom/chery/media/view/component/RecycleViewDabSb;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object p0, p0, Lcom/chery/media/view/fragment/DabPtyListFragment;->binding:Lcom/chery/media/databinding/FragmentDabPtyListBinding;

    iget-object p0, p0, Lcom/chery/media/databinding/FragmentDabPtyListBinding;->dabPtyStationListRv:Lcom/chery/media/view/component/RecycleViewDabSb;

    invoke-virtual {p0, v1}, Lcom/chery/media/view/component/RecycleViewDabSb;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/chery/media/view/fragment/FragmentBase;->onPause()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/chery/media/view/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
