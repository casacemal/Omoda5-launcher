.class public Lcom/chery/media/view/activity/DabListActivity;
.super Lcom/chery/media/view/activity/BaseActivity;
.source "DabListActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private binding:Lcom/chery/media/databinding/ActivityDabListBinding;

.field private dabMenuAdapter:Lcom/chery/media/view/adapter/DABMenuAdapter;

.field private dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/chery/media/view/activity/DabListActivity;

    const-string v1, "DAB"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/media/view/activity/DabListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/chery/media/view/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/view/activity/DabListActivity;)Lcom/chery/media/viewmodel/DabViewModel;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/chery/media/view/activity/DabListActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/media/view/activity/DabListActivity;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->gotoPage(I)V

    return-void
.end method

.method private gotoPage(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Lcom/chery/media/view/fragment/DabFavorListFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabFavorListFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance p1, Lcom/chery/media/view/fragment/DabPtyListFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabPtyListFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 90
    :cond_2
    new-instance p1, Lcom/chery/media/view/fragment/DabEnsembleListFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabEnsembleListFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 87
    :cond_3
    new-instance p1, Lcom/chery/media/view/fragment/DabAllListFragment;

    invoke-direct {p1}, Lcom/chery/media/view/fragment/DabAllListFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->gotoFragment(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 3

    .line 56
    new-instance v0, Lcom/chery/media/view/adapter/DABMenuAdapter;

    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chery/media/view/adapter/DABMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chery/media/view/activity/DabListActivity;->dabMenuAdapter:Lcom/chery/media/view/adapter/DABMenuAdapter;

    .line 57
    iget-object v0, p0, Lcom/chery/media/view/activity/DabListActivity;->binding:Lcom/chery/media/databinding/ActivityDabListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabListBinding;->dabListMenuRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/chery/media/view/activity/DabListActivity;->dabMenuAdapter:Lcom/chery/media/view/adapter/DABMenuAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    iget-object v1, p0, Lcom/chery/media/view/activity/DabListActivity;->binding:Lcom/chery/media/databinding/ActivityDabListBinding;

    iget-object v1, v1, Lcom/chery/media/databinding/ActivityDabListBinding;->dabListMenuRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/chery/media/view/activity/DabListActivity;->dabMenuAdapter:Lcom/chery/media/view/adapter/DABMenuAdapter;

    invoke-virtual {v1, v0}, Lcom/chery/media/view/adapter/DABMenuAdapter;->setData(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/chery/media/view/activity/DabListActivity;->dabMenuAdapter:Lcom/chery/media/view/adapter/DABMenuAdapter;

    new-instance v1, Lcom/chery/media/view/activity/DabListActivity$1;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabListActivity$1;-><init>(Lcom/chery/media/view/activity/DabListActivity;)V

    invoke-virtual {v0, v1}, Lcom/chery/media/view/adapter/DABMenuAdapter;->setItemClickListener(Lcom/chery/media/view/adapter/DABMenuAdapter$onItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/chery/media/view/activity/DabListActivity;->binding:Lcom/chery/media/databinding/ActivityDabListBinding;

    iget-object v0, v0, Lcom/chery/media/databinding/ActivityDabListBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcom/chery/media/view/activity/DabListActivity$2;

    invoke-direct {v1, p0}, Lcom/chery/media/view/activity/DabListActivity$2;-><init>(Lcom/chery/media/view/activity/DabListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 40
    invoke-super {p0, p1}, Lcom/chery/media/view/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/chery/media/view/activity/DabListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/chery/media/databinding/ActivityDabListBinding;->bind(Landroid/view/View;)Lcom/chery/media/databinding/ActivityDabListBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/chery/media/view/activity/DabListActivity;->binding:Lcom/chery/media/databinding/ActivityDabListBinding;

    .line 42
    invoke-virtual {p1}, Lcom/chery/media/databinding/ActivityDabListBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->setContentView(Landroid/view/View;)V

    .line 44
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/chery/media/viewmodel/DabViewModel;

    iput-object p1, p0, Lcom/chery/media/view/activity/DabListActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    .line 45
    invoke-direct {p0}, Lcom/chery/media/view/activity/DabListActivity;->initView()V

    .line 46
    iget-object p1, p0, Lcom/chery/media/view/activity/DabListActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p1}, Lcom/chery/media/viewmodel/DabViewModel;->getLastListPage()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/chery/media/view/activity/DabListActivity;->gotoPage(I)V

    .line 47
    iget-object p1, p0, Lcom/chery/media/view/activity/DabListActivity;->dabMenuAdapter:Lcom/chery/media/view/adapter/DABMenuAdapter;

    iget-object p0, p0, Lcom/chery/media/view/activity/DabListActivity;->dabViewModel:Lcom/chery/media/viewmodel/DabViewModel;

    invoke-virtual {p0}, Lcom/chery/media/viewmodel/DabViewModel;->getLastListPage()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/chery/media/view/adapter/DABMenuAdapter;->setCurIndex(I)V

    return-void
.end method
