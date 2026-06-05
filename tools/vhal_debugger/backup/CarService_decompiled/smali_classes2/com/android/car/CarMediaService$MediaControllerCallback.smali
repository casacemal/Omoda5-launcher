.class Lcom/android/car/CarMediaService$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "CarMediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field private final mMediaController:Landroid/media/session/MediaController;

.field private mPreviousPlaybackState:I

.field final synthetic this$0:Lcom/android/car/CarMediaService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarMediaService;Landroid/media/session/MediaController;)V
    .locals 1
    .param p2, "mediaController"    # Landroid/media/session/MediaController;

    .line 383
    iput-object p1, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->this$0:Lcom/android/car/CarMediaService;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 384
    iput-object p2, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mMediaController:Landroid/media/session/MediaController;

    .line 385
    invoke-virtual {p2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    .line 386
    .local p1, "state":Landroid/media/session/PlaybackState;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mPreviousPlaybackState:I

    .line 387
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarMediaService;Landroid/media/session/MediaController;Lcom/android/car/CarMediaService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarMediaService;
    .param p2, "x1"    # Landroid/media/session/MediaController;
    .param p3, "x2"    # Lcom/android/car/CarMediaService$1;

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarMediaService$MediaControllerCallback;-><init>(Lcom/android/car/CarMediaService;Landroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/car/CarMediaService$MediaControllerCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService$MediaControllerCallback;

    .line 378
    invoke-direct {p0}, Lcom/android/car/CarMediaService$MediaControllerCallback;->register()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/car/CarMediaService$MediaControllerCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarMediaService$MediaControllerCallback;

    .line 378
    invoke-direct {p0}, Lcom/android/car/CarMediaService$MediaControllerCallback;->unregister()V

    return-void
.end method

.method private register()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 391
    return-void
.end method

.method private unregister()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 395
    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "state"    # Landroid/media/session/PlaybackState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 399
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 400
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    iget v1, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mPreviousPlaybackState:I

    if-eq v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->this$0:Lcom/android/car/CarMediaService;

    iget-object v1, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mMediaController:Landroid/media/session/MediaController;

    .line 402
    invoke-static {v2}, Lcom/android/car/CarMediaService;->access$1200(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-static {v0, v1, v2}, Lcom/android/car/CarMediaService;->access$400(Lcom/android/car/CarMediaService;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 403
    .local v0, "mediaSource":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v1}, Lcom/android/car/CarMediaService;->access$100(Lcom/android/car/CarMediaService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 404
    const-string v2, "CAR.MEDIA"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing media source due to playback state change: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->this$0:Lcom/android/car/CarMediaService;

    invoke-static {v1, v0}, Lcom/android/car/CarMediaService;->access$300(Lcom/android/car/CarMediaService;Landroid/content/ComponentName;)V

    .line 410
    .end local v0    # "mediaSource":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarMediaService$MediaControllerCallback;->mPreviousPlaybackState:I

    .line 411
    return-void
.end method
