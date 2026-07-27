.class public final Lcom/miniaa/launcher/data/media/MediaSessionRepository;
.super Ljava/lang/Object;
.source "MediaSessionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSessionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSessionRepository.kt\ncom/miniaa/launcher/data/media/MediaSessionRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1755#2,3:215\n1863#2,2:218\n1863#2,2:221\n1#3:220\n*S KotlinDebug\n*F\n+ 1 MediaSessionRepository.kt\ncom/miniaa/launcher/data/media/MediaSessionRepository\n*L\n116#1:215,3\n154#1:218,2\n195#1:221,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0018\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u001c\u001a\u00020\u0014J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0018\u0010\u001f\u001a\u00020\u001e2\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0016H\u0002J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0008\u0010#\u001a\u00020\u001eH\u0002J\u0006\u0010$\u001a\u00020\u001eJ\u0006\u0010%\u001a\u00020\u001eJ\u0006\u0010&\u001a\u00020\u001eJ\u0006\u0010\'\u001a\u00020\u001eJ\u000e\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*J\u0006\u0010+\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/miniaa/launcher/data/media/MediaSessionRepository;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "sessionManager",
        "Landroid/media/session/MediaSessionManager;",
        "componentName",
        "Landroid/content/ComponentName;",
        "_nowPlaying",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/miniaa/launcher/data/media/NowPlayingState;",
        "nowPlaying",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getNowPlaying",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "activeController",
        "Landroid/media/session/MediaController;",
        "isListening",
        "",
        "allControllers",
        "",
        "controllerCallback",
        "com/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1",
        "Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;",
        "sessionsChangedListener",
        "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;",
        "isNotificationListenerEnabled",
        "tryConnect",
        "",
        "attachToFirst",
        "controllers",
        "switchTo",
        "controller",
        "unregisterAll",
        "play",
        "pause",
        "skipToNext",
        "skipToPrevious",
        "seekTo",
        "position",
        "",
        "release",
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
.field private final _nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/miniaa/launcher/data/media/NowPlayingState;",
            ">;"
        }
    .end annotation
.end field

.field private activeController:Landroid/media/session/MediaController;

.field private allControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final controllerCallback:Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

.field private isListening:Z

.field private final nowPlaying:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/miniaa/launcher/data/media/NowPlayingState;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Landroid/media/session/MediaSessionManager;

.field private final sessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# direct methods
.method public static synthetic $r8$lambda$uiKDmFjtg2_vm7reVTbD-I2rIBk(Lcom/miniaa/launcher/data/media/MediaSessionRepository;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionsChangedListener$lambda$0(Lcom/miniaa/launcher/data/media/MediaSessionRepository;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->context:Landroid/content/Context;

    .line 35
    const-string v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.media.session.MediaSessionManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/media/session/MediaSessionManager;

    iput-object v2, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionManager:Landroid/media/session/MediaSessionManager;

    .line 36
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/miniaa/launcher/service/MediaListenerService;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->componentName:Landroid/content/ComponentName;

    .line 38
    new-instance v1, Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-object v4, v1

    const/16 v19, 0x7ff

    const/16 v20, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v4 .. v20}, Lcom/miniaa/launcher/data/media/NowPlayingState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 39
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    .line 44
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->allControllers:Ljava/util/List;

    .line 46
    new-instance v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

    invoke-direct {v1, v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;-><init>(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)V

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->controllerCallback:Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

    .line 107
    new-instance v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository$$ExternalSyntheticLambda0;-><init>(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)V

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-void
.end method

.method public static final synthetic access$getActiveController$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Landroid/media/session/MediaController;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    return-object p0
.end method

.method public static final synthetic access$getAllControllers$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->allControllers:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$get_nowPlaying$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$switchTo(Lcom/miniaa/launcher/data/media/MediaSessionRepository;Landroid/media/session/MediaController;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->switchTo(Landroid/media/session/MediaController;)V

    return-void
.end method

.method private final attachToFirst(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 150
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->unregisterAll()V

    .line 153
    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->allControllers:Ljava/util/List;

    .line 154
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .line 218
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/session/MediaController;

    .line 154
    iget-object v6, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->controllerCallback:Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

    check-cast v6, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v5, v6}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/media/session/MediaController;

    .line 158
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    if-ne v7, v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v3

    .line 157
    :goto_1
    check-cast v5, Landroid/media/session/MediaController;

    if-nez v5, :cond_8

    .line 161
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    check-cast v5, Landroid/media/session/MediaController;

    if-nez v5, :cond_8

    .line 162
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/media/session/MediaController;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_6

    move-object v3, v4

    :cond_7
    move-object v5, v3

    check-cast v5, Landroid/media/session/MediaController;

    if-nez v5, :cond_8

    .line 163
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/media/session/MediaController;

    .line 165
    :cond_8
    iput-object v5, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_c

    .line 167
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 168
    iget-object v2, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/miniaa/launcher/data/media/NowPlayingState;

    .line 169
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    if-ne v3, v6, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    move v12, v3

    .line 170
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v13

    .line 171
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v17

    .line 172
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v19

    const/16 v22, 0x64f

    const/16 v23, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v15, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 168
    invoke-static/range {v7 .. v23}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 175
    :cond_a
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->controllerCallback:Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

    invoke-virtual {v2, v1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 176
    :cond_b
    iget-object v0, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v19, v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v21, 0x5ff

    const/16 v22, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-static/range {v6 .. v22}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_c
    return-void

    .line 142
    :cond_d
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->unregisterAll()V

    .line 143
    iput-object v3, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    .line 144
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->allControllers:Ljava/util/List;

    .line 145
    iget-object v0, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-object v1, v15

    const/16 v16, 0x3ff

    const/16 v17, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x1

    move-object/from16 v24, v15

    move/from16 v15, v18

    invoke-direct/range {v1 .. v17}, Lcom/miniaa/launcher/data/media/NowPlayingState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final sessionsChangedListener$lambda$0(Lcom/miniaa/launcher/data/media/MediaSessionRepository;Ljava/util/List;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->attachToFirst(Ljava/util/List;)V

    return-void
.end method

.method private final switchTo(Landroid/media/session/MediaController;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 181
    iput-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v3, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/miniaa/launcher/data/media/NowPlayingState;

    .line 184
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v10, v4

    .line 185
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v11

    .line 186
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v15

    .line 187
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v17

    const/16 v20, 0x64f

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 183
    invoke-static/range {v5 .. v21}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v2

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 190
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->controllerCallback:Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

    invoke-virtual {v3, v2}, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 191
    :cond_2
    iget-object v0, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/media/NowPlayingState;

    invoke-virtual/range {p1 .. p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    const-string v2, "getPackageName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x5ff

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-static/range {v3 .. v19}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final unregisterAll()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->allControllers:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 221
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->controllerCallback:Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;

    check-cast v2, Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
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

    .line 39
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->nowPlaying:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final isNotificationListenerEnabled()Z
    .locals 8

    .line 113
    iget-object v0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    const-string v1, "enabled_notification_listeners"

    .line 112
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 116
    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v4, ":"

    aput-object v4, v3, v1

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 215
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 117
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final pause()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_0
    return-void
.end method

.method public final play()V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_0
    return-void
.end method

.method public final release()V
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->unregisterAll()V

    .line 208
    iget-boolean v0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->isListening:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->isListening:Z

    :cond_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public final skipToNext()V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    :cond_0
    return-void
.end method

.method public final skipToPrevious()V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->activeController:Landroid/media/session/MediaController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_0
    return-void
.end method

.method public final tryConnect()V
    .locals 20

    move-object/from16 v1, p0

    .line 123
    iget-boolean v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->isListening:Z

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->isNotificationListenerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miniaa/launcher/data/media/NowPlayingState;

    const/16 v17, 0x3ff

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v18}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    const-string v2, "getActiveSessions(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {v1, v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->attachToFirst(Ljava/util/List;)V

    .line 131
    iget-object v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->sessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->isListening:Z

    .line 133
    iget-object v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miniaa/launcher/data/media/NowPlayingState;

    const/16 v18, 0x3ff

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v3 .. v19}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    sget-object v2, Lcom/miniaa/launcher/util/FileLogger;->INSTANCE:Lcom/miniaa/launcher/util/FileLogger;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No notification listener permission: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Media"

    invoke-virtual {v2, v3, v0}, Lcom/miniaa/launcher/util/FileLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, v1, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->_nowPlaying:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/miniaa/launcher/data/media/NowPlayingState;

    const/16 v17, 0x3ff

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v18}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
