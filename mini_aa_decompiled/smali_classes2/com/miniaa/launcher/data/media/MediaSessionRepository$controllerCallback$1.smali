.class public final Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;
.super Landroid/media/session/MediaController$Callback;
.source "MediaSessionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniaa/launcher/data/media/MediaSessionRepository;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaSessionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaSessionRepository.kt\ncom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1#2:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1",
        "Landroid/media/session/MediaController$Callback;",
        "onPlaybackStateChanged",
        "",
        "state",
        "Landroid/media/session/PlaybackState;",
        "onMetadataChanged",
        "metadata",
        "Landroid/media/MediaMetadata;",
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


# instance fields
.field final synthetic this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;


# direct methods
.method constructor <init>(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    .line 46
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 73
    :cond_0
    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 74
    const-string v2, "android.media.metadata.ART_URI"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 75
    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v6, v2

    .line 77
    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 78
    const-string v2, "android.media.metadata.ART"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 79
    const-string v2, "android.media.metadata.DISPLAY_ICON"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    :cond_2
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    move v7, v5

    :goto_0
    if-eqz v2, :cond_4

    .line 85
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "x"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    :cond_4
    const-string v8, "null"

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Metadata changed: title="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", artUri="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", hasBitmap="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", bitmapSize="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string v7, "MediaSession"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 89
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_6
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_7
    move-object v7, v4

    .line 92
    iget-object v2, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-static {v2}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$get_nowPlaying$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iget-object v0, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-static {v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$get_nowPlaying$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniaa/launcher/data/media/NowPlayingState;

    .line 93
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-nez v3, :cond_8

    .line 94
    const-string v3, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    move-object v5, v4

    goto :goto_1

    :cond_8
    move-object v5, v3

    .line 96
    :goto_1
    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 97
    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v20, v4

    goto :goto_2

    :cond_9
    move-object/from16 v20, v3

    .line 101
    :goto_2
    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const/16 v18, 0x7b0

    const/16 v19, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v0

    move-object v4, v5

    move-object/from16 v5, v20

    .line 92
    invoke-static/range {v3 .. v19}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 20

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 52
    iget-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-static {v1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$getAllControllers$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v3, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/media/session/MediaController;

    .line 53
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    if-ne v7, v2, :cond_1

    .line 54
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    invoke-static {v3}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$getActiveController$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Landroid/media/session/MediaController;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v5

    :cond_2
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v4

    .line 52
    :cond_3
    check-cast v5, Landroid/media/session/MediaController;

    if-eqz v5, :cond_4

    .line 57
    iget-object v0, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-static {v0, v5}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$switchTo(Lcom/miniaa/launcher/data/media/MediaSessionRepository;Landroid/media/session/MediaController;)V

    return-void

    .line 62
    :cond_4
    iget-object v1, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-static {v1}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$get_nowPlaying$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iget-object v0, v0, Lcom/miniaa/launcher/data/media/MediaSessionRepository$controllerCallback$1;->this$0:Lcom/miniaa/launcher/data/media/MediaSessionRepository;

    invoke-static {v0}, Lcom/miniaa/launcher/data/media/MediaSessionRepository;->access$get_nowPlaying$p(Lcom/miniaa/launcher/data/media/MediaSessionRepository;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/miniaa/launcher/data/media/NowPlayingState;

    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v9

    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v13

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v15

    const/16 v18, 0x64f

    const/16 v19, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 62
    invoke-static/range {v3 .. v19}, Lcom/miniaa/launcher/data/media/NowPlayingState;->copy$default(Lcom/miniaa/launcher/data/media/NowPlayingState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZJJJFLjava/lang/String;ZILjava/lang/Object;)Lcom/miniaa/launcher/data/media/NowPlayingState;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
