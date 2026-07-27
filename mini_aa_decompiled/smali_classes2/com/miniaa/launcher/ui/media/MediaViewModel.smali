.class public final Lcom/miniaa/launcher/ui/media/MediaViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "MediaViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniaa/launcher/ui/media/MediaViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaViewModel.kt\ncom/miniaa/launcher/ui/media/MediaViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 *2\u00020\u0001:\u0001*B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0018\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0003H\u0002J\u001c\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00032\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0015H\u0002J\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020\u0019J\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010$\u001a\u00020\u0019J\u0006\u0010%\u001a\u00020\u0019J\u000e\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020(J\u0008\u0010)\u001a\u00020\u0019H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0016\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\u00a8\u0006+"
    }
    d2 = {
        "Lcom/miniaa/launcher/ui/media/MediaViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "repository",
        "Lcom/miniaa/launcher/data/media/MediaSessionRepository;",
        "settingsRepository",
        "Lcom/miniaa/launcher/data/settings/SettingsRepository;",
        "nowPlaying",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/miniaa/launcher/data/media/NowPlayingState;",
        "getNowPlaying",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_albumColors",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/miniaa/launcher/ui/media/AlbumColors;",
        "albumColors",
        "getAlbumColors",
        "_launchInPip",
        "",
        "launchInPip",
        "getLaunchInPip",
        "launchDefaultMusicApp",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bringLauncherBack",
        "app",
        "sendMediaPlay",
        "context",
        "targetPackage",
        "isNotificationListenerEnabled",
        "",
        "retryConnect",
        "onPlayPause",
        "onNext",
        "onPrevious",
        "onSeek",
        "position",
        "",
        "onCleared",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/miniaa/launcher/ui/media/MediaViewModel$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaVM"


# instance fields
.field private final _albumColors:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/miniaa/launcher/ui/media/AlbumColors;",
            ">;"
        }
    .end annotation
.end field

.field private final _launchInPip:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final albumColors:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/ui/media/AlbumColors;",
            ">;"
        }
    .end annotation
.end field

.field private final launchInPip:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nowPlaying:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/media/NowPlayingState;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

.field private final settingsRepository:Lcom/miniaa/launcher/data/settings/SettingsRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miniaa/launcher/ui/media/MediaViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->Companion:Lcom/miniaa/launcher/ui/media/MediaViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 13

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 34
    new-instance v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    .line 35
    new-instance v1, Lcom/miniaa/launcher/data/settings/SettingsRepository;

    invoke-direct {v1, p1}, Lcom/miniaa/launcher/data/settings/SettingsRepository;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->settingsRepository:Lcom/miniaa/launcher/data/settings/SettingsRepository;

    .line 37
    invoke-virtual {v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    .line 39
    new-instance p1, Lcom/miniaa/launcher/ui/media/AlbumColors;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/miniaa/launcher/ui/media/AlbumColors;-><init>(JJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->_albumColors:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 40
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->albumColors:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->_launchInPip:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->launchInPip:Lkotlinx/coroutines/flow/StateFlow;

    .line 47
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;

    invoke-direct {v2, p0, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel$1;-><init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 84
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v7

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$2;

    invoke-direct {v0, p0, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel$2;-><init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$getRepository$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lcom/miniaa/launcher/data/media/MediaSessionRepository;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    return-object p0
.end method

.method public static final synthetic access$get_albumColors$p(Lcom/miniaa/launcher/ui/media/MediaViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->_albumColors:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$launchDefaultMusicApp(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->launchDefaultMusicApp(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final bringLauncherBack(Landroid/app/Application;)V
    .locals 1

    .line 150
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1, p0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final launchDefaultMusicApp(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;

    iget v1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;

    invoke-direct {v0, p0, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;-><init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "MediaVM"

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/app/Application;

    iget-object v0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->I$0:I

    iget-object v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/app/Application;

    iget-object v8, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    move-object v2, v5

    move-object v5, v8

    goto/16 :goto_4

    :cond_3
    iget-object p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/app/Application;

    iget-object v5, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/Application;

    iget-object v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/miniaa/launcher/ui/media/MediaViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 106
    iget-object v2, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->settingsRepository:Lcom/miniaa/launcher/data/settings/SettingsRepository;

    invoke-virtual {v2}, Lcom/miniaa/launcher/data/settings/SettingsRepository;->getSettings()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    .line 104
    :goto_1
    check-cast p1, Lcom/miniaa/launcher/data/settings/LauncherSettings;

    .line 107
    invoke-virtual {p1}, Lcom/miniaa/launcher/data/settings/LauncherSettings;->getDefaultMusicApp()Ljava/lang/String;

    move-result-object p1

    .line 109
    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_6

    .line 114
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Starting default music: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, v2, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->sendMediaPlay(Landroid/app/Application;Ljava/lang/String;)V

    .line 118
    iput-object p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    const-wide/16 v8, 0xbb8

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8

    return-object v1

    :cond_8
    move-object v5, p0

    move-object p0, p1

    .line 119
    :goto_2
    iget-object p1, v5, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->tryConnect()V

    .line 121
    iget-object p1, v5, Lcom/miniaa/launcher/ui/media/MediaViewModel;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 122
    const-string p0, "Music started via media button \u2014 no UI launch needed"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 127
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v8, "Launching "

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, " in PIP panel"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, v5, Lcom/miniaa/launcher/ui/media/MediaViewModel;->_launchInPip:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object p1, p0

    move p0, v6

    :goto_3
    const/16 v8, 0xb

    if-ge p0, v8, :cond_d

    .line 132
    iput-object v5, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$2:Ljava/lang/Object;

    iput p0, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->I$0:I

    iput v4, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_a

    return-object v1

    .line 133
    :cond_a
    :goto_4
    iget-object v8, v5, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {v8}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->tryConnect()V

    .line 134
    iget-object v8, v5, Lcom/miniaa/launcher/ui/media/MediaViewModel;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {v8}, Lcom/miniaa/launcher/data/media/NowPlayingState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v4, "Session found for "

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-object v5, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$launchDefaultMusicApp$1;->label:I

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    return-object v1

    :cond_b
    move-object p0, p1

    move-object v1, v2

    move-object v0, v5

    .line 137
    :goto_5
    iget-object p1, v0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->play()V

    .line 138
    invoke-direct {v0, v1, p0}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->sendMediaPlay(Landroid/app/Application;Ljava/lang/String;)V

    .line 139
    const-string p0, "Play command sent"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_c
    add-int/2addr p0, v6

    goto :goto_3

    .line 145
    :cond_d
    invoke-direct {v5, v2, p1}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->sendMediaPlay(Landroid/app/Application;Ljava/lang/String;)V

    .line 146
    const-string p0, "Sent media play as fallback"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 110
    :cond_e
    :goto_6
    const-string p0, "No default music app configured"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final sendMediaPlay(Landroid/app/Application;Ljava/lang/String;)V
    .locals 6

    .line 159
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x7e

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    check-cast v1, Landroid/os/Parcelable;

    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_0
    invoke-virtual {p1, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct {v1, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_1
    invoke-virtual {p1, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_2

    .line 173
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    new-instance p2, Landroid/view/KeyEvent;

    invoke-direct {p2, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p1, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance p2, Landroid/view/KeyEvent;

    invoke-direct {p2, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    check-cast p2, Landroid/os/Parcelable;

    invoke-virtual {p0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method static synthetic sendMediaPlay$default(Lcom/miniaa/launcher/ui/media/MediaViewModel;Landroid/app/Application;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 157
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miniaa/launcher/ui/media/MediaViewModel;->sendMediaPlay(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getAlbumColors()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/ui/media/AlbumColors;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->albumColors:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getLaunchInPip()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->launchInPip:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getNowPlaying()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/media/NowPlayingState;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isNotificationListenerEnabled()Z
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->isNotificationListenerEnabled()Z

    move-result p0

    return p0
.end method

.method protected onCleared()V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->release()V

    return-void
.end method

.method public final onNext()V
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->skipToNext()V

    .line 193
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$onNext$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miniaa/launcher/ui/media/MediaViewModel$onNext$1;-><init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onPlayPause()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/media/NowPlayingState;->isPlaying()Z

    move-result v0

    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->pause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->play()V

    :goto_0
    return-void
.end method

.method public final onPrevious()V
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->skipToPrevious()V

    .line 203
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/miniaa/launcher/ui/media/MediaViewModel$onPrevious$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miniaa/launcher/ui/media/MediaViewModel$onPrevious$1;-><init>(Lcom/miniaa/launcher/ui/media/MediaViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSeek(J)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {p0, p1, p2}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->seekTo(J)V

    return-void
.end method

.method public final retryConnect()V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/miniaa/launcher/ui/media/MediaViewModel;->repository:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-virtual {p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->tryConnect()V

    return-void
.end method
