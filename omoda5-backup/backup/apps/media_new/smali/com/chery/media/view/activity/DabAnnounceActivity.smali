.class public Lcom/chery/media/view/activity/DabAnnounceActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "DabAnnounceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private announceListObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/chery/media/model/business/DabAnnounceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private binding:Lcom/chery/media/databinding/ActivityDabAnnounceBinding;

.field private dabAnnounceListAdapter:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/chery/media/view/activity/DabAnnounceActivity;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/DabAnnounceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/chery/media/view/activity/DabAnnounceActivity$3;

    invoke-direct {v0, p0}, Lcom/chery/media/view/activity/DabAnnounceActivity$3;-><init>(Lcom/chery/media/view/activity/DabAnnounceActivity;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->announceListObserver:Landroidx/lifecycle/Observer;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/activity/DabAnnounceActivity;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/activity/DabAnnounceActivity;)Lcom/chery/media/view/adapter/DABAnnounceListAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->dabAnnounceListAdapter:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 49
    new-instance v0, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->dabAnnounceListAdapter:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    .line 50
    iget-object v0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->binding:Lcom/chery/media/databinding/ActivityDabAnnounceBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabAnnounceBinding;->dabListAnnounceRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->dabAnnounceListAdapter:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 52
    iget-object v1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->binding:Lcom/chery/media/databinding/ActivityDabAnnounceBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityDabAnnounceBinding;->dabListAnnounceRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    iget-object v0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->dabAnnounceListAdapter:Lcom/chery/media/view/adapter/DABAnnounceListAdapter;

    new-instance v1, Lcom/chery/media/view/activity/DabAnnounceActivity$1;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabAnnounceActivity$1;-><init>(Lcom/chery/media/view/activity/DabAnnounceActivity;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABAnnounceListAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABAnnounceListAdapter$onItemClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->binding:Lcom/chery/media/databinding/ActivityDabAnnounceBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabAnnounceBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/activity/DabAnnounceActivity$2;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabAnnounceActivity$2;-><init>(Lcom/chery/media/view/activity/DabAnnounceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initViewModel()V
    .locals 2

    .line 74
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object v0, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 75
    invoke-virtual {v0}, Lcom/chery/media/viewmodel/DabViewModel;->getAnnounceList()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->announceListObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method protected getContainerId()I
    .locals 0

    const p0, 0x7f08007d

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/ActivityDabAnnounceBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityDabAnnounceBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/activity/DabAnnounceActivity;->binding:Lcom/chery/media/databinding/ActivityDabAnnounceBinding;

    .line 37
    invoke-virtual {p1}, Lcom/chery/media/databinding/ActivityDabAnnounceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabAnnounceActivity;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->initViewModel()V

    .line 40
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabAnnounceActivity;->initView()V

    return-void
.end method
