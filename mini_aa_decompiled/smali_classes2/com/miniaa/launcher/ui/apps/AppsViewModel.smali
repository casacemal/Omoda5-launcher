.class public final Lcom/miniaa/launcher/ui/apps/AppsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "AppsViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0015R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\n0\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u001d\u0010\u0013\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/miniaa/launcher/ui/apps/AppsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "repository",
        "Lcom/miniaa/launcher/data/apps/AppRepository;",
        "_allApps",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/miniaa/launcher/data/apps/AppModel;",
        "allApps",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getAllApps",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_mediaNavApps",
        "mediaNavApps",
        "getMediaNavApps",
        "pinnedPackages",
        "",
        "",
        "getPinnedPackages",
        "loadApps",
        "",
        "pinDefaults",
        "togglePin",
        "packageName",
        "app_systemRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final _allApps:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _mediaNavApps:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allApps:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mediaNavApps:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pinnedPackages:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/miniaa/launcher/data/apps/AppRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    new-instance v0, Lcom/miniaa/launcher/data/apps/AppRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/miniaa/launcher/data/apps/AppRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->repository:Lcom/miniaa/launcher/data/apps/AppRepository;

    .line 19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->_allApps:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 20
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->allApps:Lkotlinx/coroutines/flow/StateFlow;

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->_mediaNavApps:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 23
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->mediaNavApps:Lkotlinx/coroutines/flow/StateFlow;

    .line 25
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/apps/AppRepository;->getPinnedPackages()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 26
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->pinnedPackages:Lkotlinx/coroutines/flow/StateFlow;

    .line 29
    invoke-direct {p0}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->loadApps()V

    .line 30
    invoke-direct {p0}, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->pinDefaults()V

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/miniaa/launcher/ui/apps/AppsViewModel;)Lcom/miniaa/launcher/data/apps/AppRepository;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->repository:Lcom/miniaa/launcher/data/apps/AppRepository;

    return-object p0
.end method

.method private final loadApps()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->_allApps:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->repository:Lcom/miniaa/launcher/data/apps/AppRepository;

    invoke-virtual {v1}, Lcom/miniaa/launcher/data/apps/AppRepository;->getAllLaunchableApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->_mediaNavApps:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->repository:Lcom/miniaa/launcher/data/apps/AppRepository;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/apps/AppRepository;->getMediaAndNavApps()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final pinDefaults()V
    .locals 7

    .line 39
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$pinDefaults$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miniaa/launcher/ui/apps/AppsViewModel$pinDefaults$1;-><init>(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final getAllApps()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->allApps:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getMediaNavApps()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/miniaa/launcher/data/apps/AppModel;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->mediaNavApps:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getPinnedPackages()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/miniaa/launcher/ui/apps/AppsViewModel;->pinnedPackages:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final togglePin(Ljava/lang/String;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/miniaa/launcher/ui/apps/AppsViewModel$togglePin$1;-><init>(Lcom/miniaa/launcher/ui/apps/AppsViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
